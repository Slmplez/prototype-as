"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003488; bytecode file offset 0x90206c"
!SGImplValueConfig methodsFor: 'recovered'!
doPreDump: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003d48; bytecode file offset 0x90206c"
!SGImplValueConfig methodsFor: 'recovered'!
xmlValuesToWrite: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004a48; bytecode file offset 0x90206c"
!SGImplValueConfig methodsFor: 'recovered'!
makeComplexElementConsistent: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20007610; bytecode file offset 0x908be4"
!SGImplValueConfig methodsFor: 'recovered'!
asdModelLink
    | recoveredValue0 |
    recoveredValue0 := (self) asdDatabaseLink.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008090; bytecode file offset 0x908be4"
!SGImplValueConfig methodsFor: 'recovered'!
importLabel
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008f24; bytecode file offset 0x908be4"
!SGImplValueConfig methodsFor: 'recovered'!
implLabel
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000afd0; bytecode file offset 0x908be4"
!SGImplValueConfig methodsFor: 'recovered'!
isDisallowOverwriteSet
    | recoveredValue0 |
    recoveredValue0 := (self) isDisallowOverwrite.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bf30; bytecode file offset 0x908be4"
!SGImplValueConfig methodsFor: 'recovered'!
referencedItemsForExport
    | recoveredValue0 |
    recoveredValue0 := (self) allReferencedNonPrimitiveItems.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d244; bytecode file offset 0x909e08"
!SGImplValueConfig methodsFor: 'recovered'!
checkCorrectContextElement: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000dcd4; bytecode file offset 0x90ab8c"
!SGImplValueConfig methodsFor: 'recovered'!
isUniqueConfiguredElement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000def0; bytecode file offset 0x90ab8c"
!SGImplValueConfig methodsFor: 'recovered'!
isValidForComponent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f534; bytecode file offset 0x90bef8"
!SGImplValueConfig methodsFor: 'recovered'!
adjustConfig: recoveredArg1 forElement: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f56c; bytecode file offset 0x90bef8"
!SGImplValueConfig methodsFor: 'recovered'!
getRealGetConfigElementFor: recoveredArg1 element: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f690; bytecode file offset 0x90bff0"
!SGImplValueConfig methodsFor: 'recovered'!
ascetLink: recoveredArg1 on: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20032d04; bytecode file offset 0x934580"
!SGImplValueConfig methodsFor: 'recovered'!
applicationFlag
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) applicationFlag.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039d4c; bytecode file offset 0x938608"
!SGImplValueConfig methodsFor: 'recovered'!
allDependentProxiesWithUnloaded: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) allPartProxiesWithUnloaded: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003aa6c; bytecode file offset 0x938608"
!SGImplValueConfig methodsFor: 'recovered'!
dataElementConfigForElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) configForElement: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041f44; bytecode file offset 0x93e7f8"
!SGImplValueConfig methodsFor: 'recovered'!
hasTextDocumentation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := textDocumentation.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e420; bytecode file offset 0x94d048"
!SGImplValueConfig methodsFor: 'recovered'!
reinitValues
    (self) initValues.
    ^self
! !

"ASDBase.ic method 0x2004e69c; bytecode file offset 0x94d048"
!SGImplValueConfig methodsFor: 'recovered'!
allConfiguredElements
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f41c; bytecode file offset 0x94d048"
!SGImplValueConfig methodsFor: 'recovered'!
isDefaultConfig
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f9bc; bytecode file offset 0x94d048"
!SGImplValueConfig methodsFor: 'recovered'!
relatedClassConfig
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20051f4c; bytecode file offset 0x94f0e0"
!SGImplValueConfig methodsFor: 'recovered'!
getReferencedByKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) readReferences.
    recoveredValue2 := (recoveredValue1) getIsReferencedBy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200536c4; bytecode file offset 0x9505d0"
!SGImplValueConfig methodsFor: 'recovered'!
defaultConfigFor: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20058668; bytecode file offset 0x956284"
!SGImplValueConfig methodsFor: 'recovered'!
preDump: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) deepCopy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) doPreDump: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059ae8; bytecode file offset 0x9566ac"
!SGImplValueConfig methodsFor: 'recovered'!
checkEntry: recoveredArg1 forType: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059b6c; bytecode file offset 0x9566ac"
!SGImplValueConfig methodsFor: 'recovered'!
updateElement: recoveredArg1 forNewConfig: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006bbc8; bytecode file offset 0x96873c"
!SGImplValueConfig methodsFor: 'recovered'!
primitiveValuesKey
    | recoveredValue0 |
    recoveredValue0 := primitiveValues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c0cc; bytecode file offset 0x9692b0"
!SGImplValueConfig methodsFor: 'recovered'!
complexValues
    | recoveredValue0 |
    recoveredValue0 := complexValues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d070; bytecode file offset 0x969c04"
!SGImplValueConfig methodsFor: 'recovered'!
sgClassKey
    | recoveredValue0 |
    recoveredValue0 := sgClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d754; bytecode file offset 0x96a390"
!SGImplValueConfig methodsFor: 'recovered'!
textDocumentationKey
    | recoveredValue0 |
    recoveredValue0 := textDocumentation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006de90; bytecode file offset 0x96a9dc"
!SGImplValueConfig methodsFor: 'recovered'!
customerDataBasic
    | recoveredValue0 |
    recoveredValue0 := customerData.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007a674; bytecode file offset 0x97c330"
!SGImplValueConfig methodsFor: 'recovered'!
supportsLimitOverflowEdit
    ^false
! !

"ASDBase.ic method 0x2007aa2c; bytecode file offset 0x97c330"
!SGImplValueConfig methodsFor: 'recovered'!
isDisallowOverwrite
    ^false
! !

"ASDBase.ic method 0x2007aaa4; bytecode file offset 0x97c330"
!SGImplValueConfig methodsFor: 'recovered'!
isFolder
    ^false
! !

"ASDBase.ic method 0x20080fd0; bytecode file offset 0x97d89c"
!SGImplValueConfig methodsFor: 'recovered'!
sizeForDBObject
    ^1000
! !

"ASDBase.ic method 0x20082458; bytecode file offset 0x97ed58"
!SGImplValueConfig methodsFor: 'recovered'!
sgClassIfUndefined: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := sgClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getObjectIfUndefined: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20084000; bytecode file offset 0x98093c"
!SGImplValueConfig methodsFor: 'recovered'!
removeEntryForElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) removeEntryForElement: (recoveredValue0) setModified: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008472c; bytecode file offset 0x981ca4"
!SGImplValueConfig methodsFor: 'recovered'!
systemDefaultConfigFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) defaultConfigFor: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20089838; bytecode file offset 0x986134"
!SGImplValueConfig methodsFor: 'recovered'!
initPrimitiveValues
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    primitiveValues := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200898c4; bytecode file offset 0x986180"
!SGImplValueConfig methodsFor: 'recovered'!
initComplexValues
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    complexValues := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008b9c0; bytecode file offset 0x988284"
!SGImplValueConfig methodsFor: 'recovered'!
duplicateCustomerData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := customerData.
    recoveredValue1 := (recoveredValue0) deepCopy.
    customerData := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20098bd4; bytecode file offset 0x995850"
!SGImplValueConfig methodsFor: 'recovered'!
applicationFlag: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) applicationFlag: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009bf74; bytecode file offset 0x998840"
!SGImplValueConfig methodsFor: 'recovered'!
createCustomerDataBasic
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDCustomerDataComponentEntry.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    customerData := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009cb10; bytecode file offset 0x999628"
!SGImplValueConfig methodsFor: 'recovered'!
initCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCodeArchive.
    recoveredValue1 := (recoveredValue0) create.
    (self) code: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a8e08; bytecode file offset 0x9a57cc"
!SGImplValueConfig methodsFor: 'recovered'!
walkthrough: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Set.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) walkthrough: (recoveredValue0) visited: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a904c; bytecode file offset 0x9a5904"
!SGImplValueConfig methodsFor: 'recovered'!
xmlCollectDependent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := textDocumentation.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200af99c; bytecode file offset 0x9ac258"
!SGImplValueConfig methodsFor: 'recovered'!
scopeCorrectedConfigForElement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) correctConfigForScopeOfElement: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) configForElement: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b206c; bytecode file offset 0x9aea94"
!SGImplValueConfig methodsFor: 'recovered'!
availableInstanceConfigurationKeys
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := (self) subclassResponsibility.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b430c; bytecode file offset 0x9b0bd0"
!SGImplValueConfig methodsFor: 'recovered'!
isApplicationTimeStampOutOfDate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) dbObject.
    recoveredValue2 := (self) sgClassKey.
    recoveredValue3 := (recoveredValue0) isConfigTimeStamp: (recoveredValue1) olderThanComponentTimeStamp: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b4ac8; bytecode file offset 0x9b1394"
!SGImplValueConfig methodsFor: 'recovered'!
isCodeGenerated
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) applicationFlag.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) = (1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ba720; bytecode file offset 0x9b708c"
!SGImplValueConfig methodsFor: 'recovered'!
initFor: recoveredArg1
    | recoveredValue0 |
    (self) initialize.
    recoveredValue0 := recoveredArg1.
    (self) sgClassBasic: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200bb960; bytecode file offset 0x9b823c"
!SGImplValueConfig methodsFor: 'recovered'!
sgClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) sgClassBasic: (recoveredValue0).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200c35d0; bytecode file offset 0x9c058c"
!SGImplValueConfig methodsFor: 'recovered'!
xmlSgClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sgClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3f64; bytecode file offset 0x9c0bf0"
!SGImplValueConfig methodsFor: 'recovered'!
xmlTextDocumentation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    textDocumentation := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d9140; bytecode file offset 0x9d5b4c"
!SGImplValueConfig methodsFor: 'recovered'!
writeXMLMeta: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) writeXMLCommon: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) writeXMLTimeStamp: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200df328; bytecode file offset 0x9dbc24"
!SGImplValueConfig methodsFor: 'recovered'!
initTextDocumentation
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SGTextDocumentation.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) textDocumentation: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e14a4; bytecode file offset 0x9ddd60"
!SGImplValueConfig methodsFor: 'recovered'!
sgClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c33fcArg1 | 
    nil
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e4938; bytecode file offset 0x9e1200"
!SGImplValueConfig methodsFor: 'recovered'!
clearCodeGenerated
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (self) applicationFlag.
    recoveredValue2 := (recoveredValue1) bitAnd: (65534).
    (recoveredValue0) updateApplicationFlag: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e49c8; bytecode file offset 0x9e128c"
!SGImplValueConfig methodsFor: 'recovered'!
setCodeGenerated
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (self) applicationFlag.
    recoveredValue2 := (recoveredValue1) bitOr: (1).
    (recoveredValue0) updateApplicationFlag: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200f1b90; bytecode file offset 0x9ee450"
!SGImplValueConfig methodsFor: 'recovered'!
initValues
    values := 'unused'.
    (self) initPrimitiveValues.
    (self) initComplexValues.
    ^self
! !

"ASDBase.ic method 0x200f75e4; bytecode file offset 0x9f4e38"
!SGImplValueConfig methodsFor: 'recovered'!
primitiveElements
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allConfiguredElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c46d4Arg1 | 
    | block280c46d4Value0 block280c46d4Value1 |
    block280c46d4Value0 := block280c46d4Arg1.
    block280c46d4Value1 := (block280c46d4Value0) isPrimitive.
    block280c46d4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f7a4c; bytecode file offset 0x9f4e38"
!SGImplValueConfig methodsFor: 'recovered'!
customerDataInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerDataBasic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4d70Arg1 | 
    | block280c4d70Value0 block280c4d70Value1 |
    block280c4d70Value0 := block280c4d70Arg1.
    block280c4d70Value1 := (block280c4d70Value0) getDataInformationForConfiguration.
    block280c4d70Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200fac10; bytecode file offset 0x9f75ac"
!SGImplValueConfig methodsFor: 'recovered'!
isCodeGeneration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    ^false
].
    recoveredValue1 := (self) sgClassIfUndefined: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) isCodeGeneration.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200fac60; bytecode file offset 0x9f75ac"
!SGImplValueConfig methodsFor: 'recovered'!
isRead
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    ^false
].
    recoveredValue1 := (self) sgClassIfUndefined: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) isRead.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200fac80; bytecode file offset 0x9f75ac"
!SGImplValueConfig methodsFor: 'recovered'!
modifiable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    ^false
].
    recoveredValue1 := (self) sgClassIfUndefined: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) modifiable.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200fac90; bytecode file offset 0x9f75ac"
!SGImplValueConfig methodsFor: 'recovered'!
isExecute
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    ^false
].
    recoveredValue1 := (self) sgClassIfUndefined: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) isExecute.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200facb0; bytecode file offset 0x9f75ac"
!SGImplValueConfig methodsFor: 'recovered'!
isWrite
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    ^false
].
    recoveredValue1 := (self) sgClassIfUndefined: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) isWrite.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200facd0; bytecode file offset 0x9f75ac"
!SGImplValueConfig methodsFor: 'recovered'!
isCalibrate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    ^false
].
    recoveredValue1 := (self) sgClassIfUndefined: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) isCalibrate.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200fdec8; bytecode file offset 0x9fa794"
!SGImplValueConfig methodsFor: 'recovered'!
makeConsistent: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) makePrimitiveElementConsistent: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20102f70; bytecode file offset 0x9ff8dc"
!SGImplValueConfig methodsFor: 'recovered'!
createCustomerDataInfo
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateCustomerDataBasic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateDataInformationForConfiguration.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20103bac; bytecode file offset 0xa0046c"
!SGImplValueConfig methodsFor: 'recovered'!
doWithReferencesNonPrimitiveItems: recoveredArg1 recursive: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) doWithReferencesNonPrimitiveItems: (recoveredValue2) recursive: (recoveredValue3) visitColl: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2010631c; bytecode file offset 0xa02bf8"
!SGImplValueConfig methodsFor: 'recovered'!
xmlCustomerDataBasic
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := customerData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) createCustomerDataBasic.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := customerData.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010c2f0; bytecode file offset 0xa08ba8"
!SGImplValueConfig methodsFor: 'recovered'!
code
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := code.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    ^nil
].
    recoveredValue2 := (recoveredValue0) getObjectIfUndefined: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20112958; bytecode file offset 0xa0f254"
!SGImplValueConfig methodsFor: 'recovered'!
allImplConfiguredElements
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) allImplConfiguredElements.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20112994; bytecode file offset 0xa0f254"
!SGImplValueConfig methodsFor: 'recovered'!
allDataConfiguredElements
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) allDataConfiguredElements.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201135c0; bytecode file offset 0xa0ff2c"
!SGImplValueConfig methodsFor: 'recovered'!
customerDataInfoForElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerDataBasic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataInformationForElement: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20113620; bytecode file offset 0xa0ff2c"
!SGImplValueConfig methodsFor: 'recovered'!
createCustomerDataInfoForElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateCustomerDataBasic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateDataInformationForElement: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201153cc; bytecode file offset 0xa11c94"
!SGImplValueConfig methodsFor: 'recovered'!
xmlInit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDXMLImportDBDummy.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) xmlInit.
    dbObject := recoveredValue2.
    (self) initValues.
    (self) initCode.
    ^self
! !

"ASDBase.ic method 0x20117510; bytecode file offset 0xa13e2c"
!SGImplValueConfig methodsFor: 'recovered'!
allAvailablePartKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kk') == ('Call_71182').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (self) allPartProxies.
    recoveredValue3 := (recoveredValue1) withAll: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2013429c; bytecode file offset 0xa30bd8"
!SGImplValueConfig methodsFor: 'recovered'!
customerData: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value0) customerData: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    recoveredValue1 := (self) setDataBlock: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201342ec; bytecode file offset 0xa30bd8"
!SGImplValueConfig methodsFor: 'recovered'!
userData: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value0) userData: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    recoveredValue1 := (self) setDataBlock: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201371f4; bytecode file offset 0xa33b30"
!SGImplValueConfig methodsFor: 'recovered'!
customerData
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerDataInfo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerData.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20137254; bytecode file offset 0xa33b30"
!SGImplValueConfig methodsFor: 'recovered'!
userData
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerDataInfo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20139130; bytecode file offset 0xa359ec"
!SGImplValueConfig methodsFor: 'recovered'!
customerDataInfo: recoveredArg1 forElement: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateCustomerDataBasic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) setDataInformation: (recoveredStack1) forElement: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201411e4; bytecode file offset 0xa3daa0"
!SGImplValueConfig methodsFor: 'recovered'!
makeConsistent
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    ^nil
].
    (self) sgClassIfUndefined: (recoveredValue0).
    (self) makeConsistentBasic.
    ^self
! !

"ASDBase.ic method 0x201499a4; bytecode file offset 0xa4626c"
!SGImplValueConfig methodsFor: 'recovered'!
hierarchicalAvailableInstanceConfigurations
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) appendAllConfigurationsToClassConfigTableRecursive: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20149d1c; bytecode file offset 0xa465dc"
!SGImplValueConfig methodsFor: 'recovered'!
getOrCreateCustomerDataBasic
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerDataBasic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) createCustomerDataBasic.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerDataBasic.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014b19c; bytecode file offset 0xa47a58"
!SGImplValueConfig methodsFor: 'recovered'!
checkEntry: recoveredArg1 forElement: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
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
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkEntry: (recoveredStack1) forType: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014b380; bytecode file offset 0xa47c3c"
!SGImplValueConfig methodsFor: 'recovered'!
copyConfigforElement: recoveredArg1 toConfig: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEntryForElement: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setConfig: (recoveredStack1) forElement: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015620c; bytecode file offset 0xa52acc"
!SGImplValueConfig methodsFor: 'recovered'!
fixWrongSgClassFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) sgClass: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015a5b4; bytecode file offset 0xa56e80"
!SGImplValueConfig methodsFor: 'recovered'!
userDataForElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerDataInfoForElement: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015a5c4; bytecode file offset 0xa56e80"
!SGImplValueConfig methodsFor: 'recovered'!
customerDataForElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerDataInfoForElement: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerData.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015d2a4; bytecode file offset 0xa59b64"
!SGImplValueConfig methodsFor: 'recovered'!
primitiveValues
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := primitiveValues.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := LookupTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    primitiveValues := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    recoveredValue2 := (recoveredValue0) getObjectIfUndefined: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201637d0; bytecode file offset 0xa60094"
!SGImplValueConfig methodsFor: 'recovered'!
allMethodsForAscetLinks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    ^#()
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) sgClass.
    recoveredValue3 := (recoveredValue2) allMethods.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20173128; bytecode file offset 0xa6f9f4"
!SGImplValueConfig methodsFor: 'recovered'!
initialize
    super initialize.
    (self) initValues.
    (self) initializeRBDBObject.
    (self) modified.
    (self) initCode.
    ^self
! !

"ASDBase.ic method 0x20175f78; bytecode file offset 0xa72834"
!SGImplValueConfig methodsFor: 'recovered'!
sgClassBasic: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isDbObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRBDBReference.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            sgClass := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            sgClass := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017a428; bytecode file offset 0xa76cf0"
!SGImplValueConfig methodsFor: 'recovered'!
exportItems
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClassConfig.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) relatedClassConfig.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWith: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017b890; bytecode file offset 0xa7815c"
!SGImplValueConfig methodsFor: 'recovered'!
sgClassLabel
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) label.
    ^recoveredBlock4Value1
].
    recoveredValue1 := (self) sgClassIfUndefined: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) label.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2017f02c; bytecode file offset 0xa7b8f8"
!SGImplValueConfig methodsFor: 'recovered'!
dbXmlUpdateReferences
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := complexValues.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) values.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:block280cf654Arg1 | 
    | block280cf654Value0 block280cf654Value1 |
    block280cf654Value0 := block280cf654Arg1.
    block280cf654Value1 := (block280cf654Value0) isReferenceData.
    block280cf654Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) reject: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSet.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) adjustReferences: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20183420; bytecode file offset 0xa7fd20"
!SGImplValueConfig methodsFor: 'recovered'!
changed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super changed.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d04d0Arg1 | 
    | block280d04d0Value0 block280d04d0Value1 |
    block280d04d0Value0 := block280d04d0Arg1.
    block280d04d0Value1 := (block280d04d0Value0) changed.
    block280d04d0Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20185214; bytecode file offset 0xa81ad4"
!SGImplValueConfig methodsFor: 'recovered'!
removeEntryForElements: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) removeEntryForElement: (recoveredBlock5Value0) setModified: (false).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x20186d1c; bytecode file offset 0xa83618"
!SGImplValueConfig methodsFor: 'recovered'!
ascetLink: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := (self) ascetLink: (recoveredBlock7Value0) on: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (recoveredValue0) ascetLinkWithStream: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20189870; bytecode file offset 0xa86134"
!SGImplValueConfig methodsFor: 'recovered'!
xmlLabel
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'badFix'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 'default'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018c57c; bytecode file offset 0xa88e50"
!SGImplValueConfig methodsFor: 'recovered'!
setDataBlock: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCustomerDataInfo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20191bb8; bytecode file offset 0xa8e478"
!SGImplValueConfig methodsFor: 'recovered'!
textDocumentation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) textDocumentationKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) initTextDocumentation.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) textDocumentationKey.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 |
    recoveredBlock13Value0 := (self) initTextDocumentation.
    ^recoveredBlock13Value0
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019922c; bytecode file offset 0xa95aec"
!SGImplValueConfig methodsFor: 'recovered'!
isValidForComponent
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280d1eb0Arg1 | 
    nil
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidForComponent: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019b8cc; bytecode file offset 0xa981a8"
!SGImplValueConfig methodsFor: 'recovered'!
textDocumentation: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) textDocumentationKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRBDBPartOfChild.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asRBDBPartOfChild.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            textDocumentation := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019c21c; bytecode file offset 0xa98af0"
!SGImplValueConfig methodsFor: 'recovered'!
userData: recoveredArg1 forElement: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCustomerDataInfoForElement: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019c230; bytecode file offset 0xa98af0"
!SGImplValueConfig methodsFor: 'recovered'!
customerData: recoveredArg1 forElement: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCustomerDataInfoForElement: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerData: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a0c84; bytecode file offset 0xa9d5c0"
!SGImplValueConfig methodsFor: 'recovered'!
asdDatabaseLink
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280d26d8Arg1 | 
    '<Missing>'
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdDatabaseLink.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := '::'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a635c; bytecode file offset 0xaa2c1c"
!SGImplValueConfig methodsFor: 'recovered'!
code: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isDbObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRBDBPartOfChild.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            code := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            code := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d1544; bytecode file offset 0xacde08"
!SGImplValueConfig methodsFor: 'recovered'!
relatedComponentForCodeContainer
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kk') == ('Call_70031').
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    ^nil
].
    recoveredValue2 := (self) sgClassIfUndefined: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) relatedComponentForCodeContainer.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201d1c8c; bytecode file offset 0xace558"
!SGImplValueConfig methodsFor: 'recovered'!
getEntryForElement: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveValues.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) complexValues.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201dd814; bytecode file offset 0xada0e8"
!SGImplValueConfig methodsFor: 'recovered'!
hierarchicalUsedInstanceConfigurations
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('Kk') == ('Call_62774').
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := ('hw') == ('call_85240').
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := Set.
    recoveredValue6 := (recoveredValue5) new.
    (self) appendToClassConfigTableRecursive: (recoveredValue4) visitedImplementations: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201e77cc; bytecode file offset 0xae4094"
!SGImplValueConfig methodsFor: 'recovered'!
correctConfigForScopeOfElement: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) isUniqueConfiguredElement: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) relatedClassConfig.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := (self) isClassConfig.
    recoveredBlock14Value1 := (recoveredBlock14Value0) not.
    recoveredBlock14Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'Got class config but expect instance config'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020689c; bytecode file offset 0xb03190"
!SGImplValueConfig methodsFor: 'recovered'!
duplicate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super duplicate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) duplicateCustomerData.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) initCode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasTextDocumentation.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) textDocumentation.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) duplicate.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) textDocumentation: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20206af0; bytecode file offset 0xb033bc"
!SGImplValueConfig methodsFor: 'recovered'!
referenceLabel
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := (self) label.
    ^recoveredBlock4Value0
].
    recoveredValue1 := (self) sgClassIfUndefined: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) label.
    recoveredValue3 := (recoveredValue2) , (' (').
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) pathName.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , (')').
    ^recoveredValue7
! !

"ASDBase.ic method 0x2021432c; bytecode file offset 0xb10bec"
!SGImplValueConfig methodsFor: 'recovered'!
relatedClassConfig: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClassConfig.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    ^nil
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021a430; bytecode file offset 0xb16d00"
!SGImplValueConfig methodsFor: 'recovered'!
pathName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (recoveredValue0) , ('-').
    recoveredValue2 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 |
    recoveredBlock9Value0 := (self) label.
    recoveredBlock9Value1 := (recoveredBlock9Value0) , (' (').
    recoveredBlock9Value2 := recoveredBlock9Arg1.
    recoveredBlock9Value3 := (recoveredBlock9Value2) label.
    recoveredBlock9Value4 := (recoveredBlock9Value1) , (recoveredBlock9Value3).
    recoveredBlock9Value5 := (recoveredBlock9Value4) , (')').
    ^recoveredBlock9Value5
].
    recoveredValue3 := (self) sgClassIfUndefined: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) pathName.
    recoveredValue5 := (recoveredValue1) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202230d4; bytecode file offset 0xb1f998"
!SGImplValueConfig methodsFor: 'recovered'!
resolvedConfigForElement: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) configForElement: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferenceData.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceTarget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolvedConfigForElement: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20249124; bytecode file offset 0xb459ec"
!SGImplValueConfig methodsFor: 'recovered'!
makeConfigConsistent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
    | recoveredBlock5Block13Value0 |
    recoveredBlock5Block13Value0 := (self) makeConfigConsistentLocal.
    recoveredBlock5Block13Value0
].
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack3 := [
    false
].
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) suspendObserving: (recoveredBlock5Stack2) notify: (recoveredBlock5Stack3).
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20251b94; bytecode file offset 0xb4e464"
!SGImplValueConfig methodsFor: 'recovered'!
removeEntryForElement: recoveredArg1 setModified: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveValues.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) complexValues.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) modified.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2025b9e0; bytecode file offset 0xb582a0"
!SGImplValueConfig methodsFor: 'recovered'!
configForElement: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) checkCorrectContextElement: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:recoveredBlock15Arg1 | 
    ^nil
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) configForElementBasic: (recoveredStack1) class: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202611e0; bytecode file offset 0xb5dac0"
!SGImplValueConfig methodsFor: 'recovered'!
writeXMLCommon: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) xmlLabel.
    (recoveredValue0) attr: ('name') nmToken: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := dbObject.
    (recoveredValue2) attr: ('OID') dbObject: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) writeXMLDatamodelUUID: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) isDefaultConfig.
    (recoveredValue5) attr: ('default') boolean: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) isClassConfig.
    (recoveredValue7) attr: ('classConfig') boolean: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20267c18; bytecode file offset 0xb644dc"
!SGImplValueConfig methodsFor: 'recovered'!
makePrimitiveElementConsistent: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) configForElement: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkEntry: (recoveredStack1) forElement: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) setConfig: (recoveredStack1) forElement: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) adjustConfig: (recoveredStack1) forElement: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20271888; bytecode file offset 0xb6e148"
!SGImplValueConfig methodsFor: 'recovered'!
configForElementIsOpenReference: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEntryForElement: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 | 
    ^true
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidForComponent.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20282584; bytecode file offset 0xb7ee58"
!SGImplValueConfig methodsFor: 'recovered'!
needsToBeMadeConsistent
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
            recoveredStack2 := 'XMLImport'.
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
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'Call_67666'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isApplicationTimeStampOutOfDate.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20285158; bytecode file offset 0xb81a28"
!SGImplValueConfig methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) primitiveValues.
    (self) replaceAliasNames: (recoveredValue0) inDictionary: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) complexValues.
    (self) replaceAliasNames: (recoveredValue2) inDictionary: (recoveredValue3).
    recoveredValue4 := (self) customerDataBasic.
    recoveredValue5 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := recoveredArg1.
    recoveredBlock21Value2 := (recoveredBlock21Value0) replaceAliasNames: (recoveredBlock21Value1).
    recoveredBlock21Value2
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x202883e8; bytecode file offset 0xb84cbc"
!SGImplValueConfig methodsFor: 'recovered'!
printOn: recoveredArg1
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
            super printOn: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 |
    recoveredBlock12Value0 := recoveredArg1.
    ^recoveredBlock12Value0
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := ' - '.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028cc80; bytecode file offset 0xb89560"
!SGImplValueConfig methodsFor: 'recovered'!
modified
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super modified.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Call_91634'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280e2290Arg1 | 
    nil
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:block280e22b4Arg1 | 
    | block280e22b4Value0 block280e22b4Value1 |
    block280e22b4Value0 := block280e22b4Arg1.
    block280e22b4Value1 := (block280e22b4Value0) scmModified.
    block280e22b4Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := EtasDatamodelObserver.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) etasObserve: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20294f10; bytecode file offset 0xb917d8"
!SGImplValueConfig methodsFor: 'recovered'!
writeXMLNotesAndCustomerDatas: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := textDocumentation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := textDocumentation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280e3058Arg1 | 
    nil
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := recoveredArg1.
    recoveredBlock21Value2 := (recoveredBlock21Value0) writeXML: (recoveredBlock21Value1).
    recoveredBlock21Value2
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) writeXMLCustomerDatas: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ab7e8; bytecode file offset 0xba80b0"
!SGImplValueConfig methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1 inDictionary: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := [:recoveredBlock8Block20Arg1 | 
    | recoveredBlock8Block20Value0 recoveredBlock8Block20Value1 recoveredBlock8Block20Value2 recoveredBlock8Block20Value3 recoveredBlock8Block20Value4 recoveredBlock8Block20Value5 |
    recoveredBlock8Block20Value0 := recoveredArg2.
    recoveredBlock8Block20Value1 := recoveredBlock8Block20Arg1.
    recoveredBlock8Block20Value2 := recoveredArg2.
    recoveredBlock8Block20Value3 := recoveredBlock8Arg1.
    recoveredBlock8Block20Value4 := (recoveredBlock8Block20Value2) removeKey: (recoveredBlock8Block20Value3).
    recoveredBlock8Block20Value5 := (recoveredBlock8Block20Value0) at: (recoveredBlock8Block20Value1) put: (recoveredBlock8Block20Value4).
    recoveredBlock8Block20Value5
].
    recoveredBlock8Value3 := (recoveredBlock8Value0) at: (recoveredBlock8Value1) ifPresent: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    (recoveredValue1) keysDo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202ecbb4; bytecode file offset 0xbe9488"
!SGImplValueConfig methodsFor: 'recovered'!
convertToASDV50FromOldDataElementsElements: recoveredArg1 convertConfigBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Local3 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) aliasName.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Local3 := recoveredBlock7Stack1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) primitiveValues.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local3.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack2 := [].
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) at: (recoveredBlock7Stack1) ifAbsent: (recoveredBlock7Stack2).
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack0.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack0 := nil.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local2.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 48] ifFalse: [recoveredBlock7PC := 30].
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg2.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local2.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) value: (recoveredBlock7Stack1) value: (recoveredBlock7Stack2).
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) primitiveValues.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local3.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            (recoveredBlock7Stack0) at: (recoveredBlock7Stack1) put: (recoveredBlock7Stack2).
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) modified.
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2032dda8; bytecode file offset 0xc2a68c"
!SGImplValueConfig methodsFor: 'recovered'!
ensureUniqueName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_67277'.
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
            recoveredStack0 := (recoveredStack0) availableInstanceConfigurationKeys.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (self) dbObject.
    recoveredBlock11Value2 := (recoveredBlock11Value0) = (recoveredBlock11Value1).
    recoveredBlock11Value2
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:block280ec9a0Arg1 | 
    | block280ec9a0Value0 block280ec9a0Value1 |
    block280ec9a0Value0 := block280ec9a0Arg1.
    block280ec9a0Value1 := (block280ec9a0Value0) label.
    block280ec9a0Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
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
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203364e0; bytecode file offset 0xc32dc0"
!SGImplValueConfig methodsFor: 'recovered'!
postLoad: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := values.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) initValues.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 :recoveredBlock18Arg2 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg2.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) isRBDBObject.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 30] ifFalse: [recoveredBlock18PC := 40].
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) complexValues.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg2.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) at: (recoveredBlock18Stack2) put: (recoveredBlock18Stack3).
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) primitiveValues.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg2.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) at: (recoveredBlock18Stack2) put: (recoveredBlock18Stack3).
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) repairMultipleReferences.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) setModify.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20348760; bytecode file offset 0xc45030"
!SGImplValueConfig methodsFor: 'recovered'!
replaceReferencedWithCopies: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allConfiguredElements.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isPrimitive.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 58] ifFalse: [recoveredBlock5PC := 18].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) configForElement: (recoveredBlock5Stack3).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack3.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 58] ifFalse: [recoveredBlock5PC := 30].
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack3 := recoveredLocal2.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack4 := [].
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) at: (recoveredBlock5Stack3) ifAbsent: (recoveredBlock5Stack4).
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 46.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 58] ifFalse: [recoveredBlock5PC := 50].
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal1.
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 56.
        ].
        recoveredBlock5Step = 56 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) setConfig: (recoveredBlock5Stack2) forElement: (recoveredBlock5Stack3).
            recoveredBlock5PC := 58.
        ].
        recoveredBlock5Step = 58 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2035abd4; bytecode file offset 0xc574b4"
!SGImplValueConfig methodsFor: 'recovered'!
replaceConfigs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := complexValues.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) value.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack4 := [].
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) at: (recoveredBlock7Stack3) ifAbsent: (recoveredBlock7Stack4).
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Stack2.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack3.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            (recoveredBlock7Stack2 == nil) ifTrue: [recoveredBlock7PC := 62] ifFalse: [recoveredBlock7PC := 30].
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack3 := [:block280f0054Arg1 | 
    nil
].
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) getObjectIfUndefined: (recoveredBlock7Stack3).
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Stack2.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack3.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            (recoveredBlock7Stack2 == nil) ifTrue: [recoveredBlock7PC := 62] ifFalse: [recoveredBlock7PC := 48].
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            recoveredBlock7Stack1 := complexValues.
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) key.
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Local1.
            recoveredBlock7PC := 55.
        ].
        recoveredBlock7Step = 55 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) asRBDBReference.
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            (recoveredBlock7Stack1) at: (recoveredBlock7Stack2) put: (recoveredBlock7Stack3).
            recoveredBlock7PC := 59.
        ].
        recoveredBlock7Step = 59 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) modified.
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue1) associationsDo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2035ef3c; bytecode file offset 0xc5b810"
!SGImplValueConfig methodsFor: 'recovered'!
allReferencedNonPrimitiveItems
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) allConfiguredElements.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isPrimitive.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 59] ifFalse: [recoveredBlock13PC := 26].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isReference.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 59] ifFalse: [recoveredBlock13PC := 32].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) configForElement: (recoveredBlock13Stack3).
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack3.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 59] ifFalse: [recoveredBlock13PC := 46].
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal2.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal1.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) copyWith: (recoveredBlock13Stack2).
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredLocal2 := recoveredBlock13Stack2.
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2036c348; bytecode file offset 0xc68c28"
!SGImplValueConfig methodsFor: 'recovered'!
allPartProxiesWithUnloaded: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_71182'.
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
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := OrderedCollection.
    recoveredBlock10Value1 := (recoveredBlock10Value0) new.
    ^recoveredBlock10Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) textDocumentationKey.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDBObject.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) textDocumentationKey.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveValuesKey.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDBObject.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveValuesKey.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e555c; bytecode file offset 0xce1e40"
!SGImplValueConfig methodsFor: 'recovered'!
ascetLinkForElement: recoveredArg1 parameters: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
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
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            (recoveredBlock7Stack0) ascetLink: (recoveredBlock7Stack1) on: (recoveredBlock7Stack2).
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Arg1.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack1 := '/'.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            (recoveredBlock7Stack0) nextPutAll: (recoveredBlock7Stack1).
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) owner.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) isMethodSignature.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 54] ifFalse: [recoveredBlock7PC := 34].
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) owner.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) isMethod.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 54] ifFalse: [recoveredBlock7PC := 44].
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg1.
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) owner.
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) isProcess.
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            (recoveredBlock7Stack0) ifTrue: [recoveredBlock7PC := 54] ifFalse: [recoveredBlock7PC := 73].
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Arg1.
            recoveredBlock7PC := 55.
        ].
        recoveredBlock7Step = 55 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack2 := 'signature='.
            recoveredBlock7PC := 58.
        ].
        recoveredBlock7Step = 58 ifTrue: [
            (recoveredBlock7Stack1) nextPutAll: (recoveredBlock7Stack2).
            recoveredBlock7Stack1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 61.
        ].
        recoveredBlock7Step = 61 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) owner.
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) methodName.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            (recoveredBlock7Stack1) nextPutAll: (recoveredBlock7Stack2).
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredBlock7Stack1 := '/'.
            recoveredBlock7PC := 71.
        ].
        recoveredBlock7Step = 71 ifTrue: [
            (recoveredBlock7Stack0) nextPutAll: (recoveredBlock7Stack1).
            recoveredBlock7PC := 73.
        ].
        recoveredBlock7Step = 73 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Arg1.
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 75.
        ].
        recoveredBlock7Step = 75 ifTrue: [
            recoveredBlock7Stack2 := 'element='.
            recoveredBlock7PC := 77.
        ].
        recoveredBlock7Step = 77 ifTrue: [
            (recoveredBlock7Stack1) nextPutAll: (recoveredBlock7Stack2).
            recoveredBlock7PC := 79.
        ].
        recoveredBlock7Step = 79 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 82.
        ].
        recoveredBlock7Step = 82 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) elementName.
            recoveredBlock7PC := 84.
        ].
        recoveredBlock7Step = 84 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) nextPutAll: (recoveredBlock7Stack1).
            recoveredBlock7PC := 85.
        ].
        recoveredBlock7Step = 85 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue2 := (recoveredValue0) ascetLinkWithStream: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x203ef6e0; bytecode file offset 0xcebfd8"
!SGImplValueConfig methodsFor: 'recovered'!
doConfigNameCheckFor: recoveredArg1 component: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Local3 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) copyWithout: (recoveredBlock7Stack2).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack2 := [:block280f9150Arg1 | 
    | block280f9150Value0 block280f9150Value1 |
    block280f9150Value0 := block280f9150Arg1.
    block280f9150Value1 := (block280f9150Value0) label.
    block280f9150Value1
].
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) collect: (recoveredBlock7Stack2).
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Local3 := recoveredBlock7Stack1.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) label.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) label.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local3.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) uniqueStringFor: (recoveredBlock7Stack2).
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local2.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Local1.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) ~= (recoveredBlock7Stack3).
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 46] ifFalse: [recoveredBlock7PC := 87].
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Stack1 := SGMonitorStreamDummy.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) create.
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Stack2 := 'Component: '.
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) completeLibraryPath.
            recoveredBlock7PC := 58.
        ].
        recoveredBlock7Step = 58 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) , (recoveredBlock7Stack3).
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack3 := ' - Renamed config: '.
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) , (recoveredBlock7Stack3).
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Local2.
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) , (recoveredBlock7Stack3).
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredBlock7Stack3 := ': to: '.
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) , (recoveredBlock7Stack3).
            recoveredBlock7PC := 71.
        ].
        recoveredBlock7Step = 71 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Local1.
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) , (recoveredBlock7Stack3).
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            recoveredBlock7Stack3 := '.'.
            recoveredBlock7PC := 76.
        ].
        recoveredBlock7Step = 76 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) , (recoveredBlock7Stack3).
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            (recoveredBlock7Stack1) addImportantInfoText: (recoveredBlock7Stack2).
            recoveredBlock7PC := 80.
        ].
        recoveredBlock7Step = 80 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 81.
        ].
        recoveredBlock7Step = 81 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 82.
        ].
        recoveredBlock7Step = 82 ifTrue: [
            (recoveredBlock7Stack1) label: (recoveredBlock7Stack2).
            recoveredBlock7PC := 84.
        ].
        recoveredBlock7Step = 84 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 85.
        ].
        recoveredBlock7Step = 85 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) modified.
            recoveredBlock7PC := 87.
        ].
        recoveredBlock7Step = 87 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203f0f78; bytecode file offset 0xced870"
!SGImplValueConfig methodsFor: 'recovered'!
checkReferences
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getReferencedByKeys.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280f9324Arg1 | 
    | block280f9324Stack0 block280f9324Stack1 block280f9324Stack2 block280f9324Stack3 block280f9324PC block280f9324Step block280f9324Done block280f9324Result |
    block280f9324Stack0 := self.
    block280f9324PC := 4.
    block280f9324Done := false.
    [block280f9324Done not] whileTrue: [
        block280f9324Step := block280f9324PC.
        block280f9324Step = 4 ifTrue: [
            block280f9324Stack1 := block280f9324Arg1.
            block280f9324PC := 5.
        ].
        block280f9324Step = 5 ifTrue: [
            block280f9324Stack2 := [:block280f9348Arg1 | 
    nil
].
            block280f9324PC := 7.
        ].
        block280f9324Step = 7 ifTrue: [
            block280f9324PC := 12.
        ].
        block280f9324Step = 12 ifTrue: [
            block280f9324Stack1 := (block280f9324Stack1) readKeyIfUndefined: (block280f9324Stack2).
            block280f9324PC := 13.
        ].
        block280f9324Step = 13 ifTrue: [
            block280f9324Result := block280f9324Stack1.
            block280f9324Done := true.
        ].
    ].
    block280f9324Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:block280f936cArg1 | 
    | block280f936cValue0 block280f936cValue1 |
    block280f936cValue0 := block280f936cArg1.
    block280f936cValue1 := (block280f936cValue0) notNil.
    block280f936cValue1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := SGItemWithSpec.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:block280f9390Arg1 | 
    | block280f9390Value0 block280f9390Value1 |
    block280f9390Value0 := block280f9390Arg1.
    block280f9390Value1 := (block280f9390Value0) printString.
    block280f9390Value1
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWith: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 recoveredBlock70Value3 recoveredBlock70Value4 recoveredBlock70Value5 |
    recoveredBlock70Value0 := recoveredLocal1.
    recoveredBlock70Value1 := recoveredBlock70Arg1.
    recoveredBlock70Value2 := (recoveredBlock70Value1) className.
    recoveredBlock70Value3 := (recoveredBlock70Value2) zapBlanks.
    recoveredBlock70Value4 := (recoveredBlock70Value0) includes: (recoveredBlock70Value3).
    recoveredBlock70Value5 := (recoveredBlock70Value4) not.
    recoveredBlock70Value5
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203feefc; bytecode file offset 0xcfb7e4"
!SGImplValueConfig methodsFor: 'recovered'!
convertToASDV50FromNewDataElementsElements: recoveredArg1 convertConfigBlock: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveValues.
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
            recoveredStack1 := [:block280fa05cArg1 | 
    | block280fa05cStack0 block280fa05cStack1 block280fa05cStack2 block280fa05cStack3 block280fa05cPC block280fa05cStep block280fa05cDone block280fa05cResult |
    block280fa05cStack0 := self.
    block280fa05cPC := 4.
    block280fa05cDone := false.
    [block280fa05cDone not] whileTrue: [
        block280fa05cStep := block280fa05cPC.
        block280fa05cStep = 4 ifTrue: [
            block280fa05cStack1 := false.
            block280fa05cPC := 5.
        ].
        block280fa05cStep = 5 ifTrue: [
            block280fa05cStack2 := block280fa05cArg1.
            block280fa05cPC := 6.
        ].
        block280fa05cStep = 6 ifTrue: [
            (block280fa05cStack2 == nil) ifTrue: [block280fa05cPC := 13] ifFalse: [block280fa05cPC := 10].
        ].
        block280fa05cStep = 10 ifTrue: [
            block280fa05cPC := 11.
        ].
        block280fa05cStep = 11 ifTrue: [
            block280fa05cStack1 := block280fa05cArg1.
            block280fa05cPC := 12.
        ].
        block280fa05cStep = 12 ifTrue: [
            block280fa05cStack1 := (block280fa05cStack1) isASDPrimitiveConfigObject.
            block280fa05cPC := 13.
        ].
        block280fa05cStep = 13 ifTrue: [
            block280fa05cResult := block280fa05cStack1.
            block280fa05cDone := true.
        ].
    ].
    block280fa05cResult
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) initPrimitiveValues.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Local1 recoveredBlock43Local2 recoveredBlock43Local3 recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43Stack4 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Arg1.
            recoveredBlock43PC := 51.
        ].
        recoveredBlock43Step = 51 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) aliasName.
            recoveredBlock43PC := 53.
        ].
        recoveredBlock43Step = 53 ifTrue: [
            recoveredBlock43Local3 := recoveredBlock43Stack1.
            recoveredBlock43PC := 54.
        ].
        recoveredBlock43Step = 54 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal1.
            recoveredBlock43PC := 57.
        ].
        recoveredBlock43Step = 57 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Local3.
            recoveredBlock43PC := 58.
        ].
        recoveredBlock43Step = 58 ifTrue: [
            recoveredBlock43Stack3 := [].
            recoveredBlock43PC := 60.
        ].
        recoveredBlock43Step = 60 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) at: (recoveredBlock43Stack2) ifAbsent: (recoveredBlock43Stack3).
            recoveredBlock43PC := 62.
        ].
        recoveredBlock43Step = 62 ifTrue: [
            recoveredBlock43Local2 := recoveredBlock43Stack1.
            recoveredBlock43PC := 63.
        ].
        recoveredBlock43Step = 63 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 64.
        ].
        recoveredBlock43Step = 64 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Local2.
            recoveredBlock43PC := 65.
        ].
        recoveredBlock43Step = 65 ifTrue: [
            (recoveredBlock43Stack2 == nil) ifTrue: [recoveredBlock43PC := 89] ifFalse: [recoveredBlock43PC := 68].
        ].
        recoveredBlock43Step = 68 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 69.
        ].
        recoveredBlock43Step = 69 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) isPrimitive.
            recoveredBlock43PC := 71.
        ].
        recoveredBlock43Step = 71 ifTrue: [
            (recoveredBlock43Stack2) ifTrue: [recoveredBlock43PC := 74] ifFalse: [recoveredBlock43PC := 89].
        ].
        recoveredBlock43Step = 74 ifTrue: [
            recoveredBlock43PC := 75.
        ].
        recoveredBlock43Step = 75 ifTrue: [
            recoveredBlock43Stack1 := recoveredArg2.
            recoveredBlock43PC := 78.
        ].
        recoveredBlock43Step = 78 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Local2.
            recoveredBlock43PC := 79.
        ].
        recoveredBlock43Step = 79 ifTrue: [
            recoveredBlock43Stack3 := recoveredBlock43Arg1.
            recoveredBlock43PC := 80.
        ].
        recoveredBlock43Step = 80 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) value: (recoveredBlock43Stack2) value: (recoveredBlock43Stack3).
            recoveredBlock43PC := 82.
        ].
        recoveredBlock43Step = 82 ifTrue: [
            recoveredBlock43Local1 := recoveredBlock43Stack1.
            recoveredBlock43PC := 83.
        ].
        recoveredBlock43Step = 83 ifTrue: [
            recoveredBlock43Stack1 := self.
            recoveredBlock43PC := 84.
        ].
        recoveredBlock43Step = 84 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) primitiveValues.
            recoveredBlock43PC := 85.
        ].
        recoveredBlock43Step = 85 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Local3.
            recoveredBlock43PC := 86.
        ].
        recoveredBlock43Step = 86 ifTrue: [
            recoveredBlock43Stack3 := recoveredBlock43Local1.
            recoveredBlock43PC := 87.
        ].
        recoveredBlock43Step = 87 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) at: (recoveredBlock43Stack2) put: (recoveredBlock43Stack3).
            recoveredBlock43PC := 89.
        ].
        recoveredBlock43Step = 89 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack1.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20411ed4; bytecode file offset 0xd0e7b8"
!SGImplValueConfig methodsFor: 'recovered'!
nonPrimitiveConfigsOfTreeVisitedConfigs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) allConfiguredElements.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isPrimitive.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 84] ifFalse: [recoveredBlock32PC := 46].
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 47.
        ].
        recoveredBlock32Step = 47 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) isReference.
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 84] ifFalse: [recoveredBlock32PC := 52].
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 54.
        ].
        recoveredBlock32Step = 54 ifTrue: [
            recoveredBlock32Stack2 := self.
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Arg1.
            recoveredBlock32PC := 56.
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) configForElement: (recoveredBlock32Stack3).
            recoveredBlock32PC := 58.
        ].
        recoveredBlock32Step = 58 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Stack2.
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            recoveredLocal1 := recoveredBlock32Stack3.
            recoveredBlock32PC := 62.
        ].
        recoveredBlock32Step = 62 ifTrue: [
            (recoveredBlock32Stack2 == nil) ifTrue: [recoveredBlock32PC := 84] ifFalse: [recoveredBlock32PC := 66].
        ].
        recoveredBlock32Step = 66 ifTrue: [
            recoveredBlock32PC := 67.
        ].
        recoveredBlock32Step = 67 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal2.
            recoveredBlock32PC := 70.
        ].
        recoveredBlock32Step = 70 ifTrue: [
            recoveredBlock32Stack2 := recoveredLocal1.
            recoveredBlock32PC := 73.
        ].
        recoveredBlock32Step = 73 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg1.
            recoveredBlock32PC := 76.
        ].
        recoveredBlock32Step = 76 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) nonPrimitiveConfigsOfTreeVisitedConfigs: (recoveredBlock32Stack3).
            recoveredBlock32PC := 78.
        ].
        recoveredBlock32Step = 78 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) , (recoveredBlock32Stack2).
            recoveredBlock32PC := 80.
        ].
        recoveredBlock32Step = 80 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 81.
        ].
        recoveredBlock32Step = 81 ifTrue: [
            recoveredLocal2 := recoveredBlock32Stack2.
            recoveredBlock32PC := 84.
        ].
        recoveredBlock32Step = 84 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20440d40; bytecode file offset 0xd3d638"
!SGImplValueConfig methodsFor: 'recovered'!
repairMultipleReferences
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) primitiveValues.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveValues.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal3.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) includes: (recoveredBlock17Stack2).
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 34] ifFalse: [recoveredBlock17PC := 40].
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) deepCopy.
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal3.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) add: (recoveredBlock17Stack2).
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            primitiveValues := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClassConfig.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := 'class_config'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := 'Converted: '.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) addText: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045048c; bytecode file offset 0xd4cd7c"
!SGImplValueConfig methodsFor: 'recovered'!
makeConfigConsistentLocal
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) allConfiguredElements.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) aliasName.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isPrimitive.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 28] ifFalse: [recoveredBlock14PC := 42].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal3.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (1).
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredLocal3 := recoveredBlock14Stack1.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) makePrimitiveElementConsistent: (recoveredBlock14Stack2).
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) makeComplexElementConsistent: (recoveredBlock14Stack2).
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveValues.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) complexValues.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) removeElementsNotInList: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) updateApplicationTimeStamp.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := 'Call_64856'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) rebuildActiveProjectExportsWithoutDialog.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20453b1c; bytecode file offset 0xd50440"
!SGImplValueConfig methodsFor: 'recovered'!
detectAndHandleUTCTimeStampTrouble
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_74393'.
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
            recoveredStack1 := Date.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) dateAndTimeNowInSeconds.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassKey.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationTimeStamp.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := Date.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeZoneBiasInSeconds.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 600.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'UTC_Info_prompted'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserRegKey: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'yes'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := 'ASCET has detected a time stamp problem.
	
This problem occurs when using the same database in ASCET versions
with and without UTC [GMT +0] handling of time stamps (introduced in ASCET V5.2.1).
The current system time delta is %1h [UTC +%2].
	
It is highly recommended to wait till this time span has passed, or
as workaround change the system time settings to [UTC +0] manually before
continuing to work with this database. This message will not appear again
for this database session. Please continue working with another database
till the time span of %1 has passed.'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := Time.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromSeconds: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := 3600.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) asFloat.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := 'MultiInstance'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMultiInstanceMode.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := 'UTC_Info_prompted'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 'yes'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) setUserRegKey: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045871c; bytecode file offset 0xd55014"
!SGImplValueConfig methodsFor: 'recovered'!
appendAllConfigurationsToClassConfigTableRecursive: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62774'.
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
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) availableInstanceConfigurationKeys.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) complexVariables.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Local1 recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := nil.
            recoveredBlock51PC := 59.
        ].
        recoveredBlock51Step = 59 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 60.
        ].
        recoveredBlock51Step = 60 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) isPrimitive.
            recoveredBlock51PC := 62.
        ].
        recoveredBlock51Step = 62 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 111] ifFalse: [recoveredBlock51PC := 66].
        ].
        recoveredBlock51Step = 66 ifTrue: [
            recoveredBlock51PC := 67.
        ].
        recoveredBlock51Step = 67 ifTrue: [
            recoveredBlock51Stack1 := 'Kk'.
            recoveredBlock51PC := 69.
        ].
        recoveredBlock51Step = 69 ifTrue: [
            recoveredBlock51Stack2 := 'Call_70814'.
            recoveredBlock51PC := 71.
        ].
        recoveredBlock51Step = 71 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) == (recoveredBlock51Stack2).
            recoveredBlock51PC := 72.
        ].
        recoveredBlock51Step = 72 ifTrue: [
            recoveredBlock51PC := 73.
        ].
        recoveredBlock51Step = 73 ifTrue: [
            recoveredBlock51Stack1 := nil.
            recoveredBlock51PC := 74.
        ].
        recoveredBlock51Step = 74 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 75.
        ].
        recoveredBlock51Step = 75 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) isImported.
            recoveredBlock51PC := 77.
        ].
        recoveredBlock51Step = 77 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 111] ifFalse: [recoveredBlock51PC := 80].
        ].
        recoveredBlock51Step = 80 ifTrue: [
            recoveredBlock51PC := 81.
        ].
        recoveredBlock51Step = 81 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 82.
        ].
        recoveredBlock51Step = 82 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) isUniqueImplConfigured.
            recoveredBlock51PC := 84.
        ].
        recoveredBlock51Step = 84 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 88] ifFalse: [recoveredBlock51PC := 98].
        ].
        recoveredBlock51Step = 88 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 89.
        ].
        recoveredBlock51Step = 89 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) relatedClassConfig.
            recoveredBlock51PC := 91.
        ].
        recoveredBlock51Step = 91 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 92.
        ].
        recoveredBlock51Step = 92 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) configForElement: (recoveredBlock51Stack2).
            recoveredBlock51PC := 94.
        ].
        recoveredBlock51Step = 94 ifTrue: [
            recoveredBlock51PC := 102.
        ].
        recoveredBlock51Step = 98 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 99.
        ].
        recoveredBlock51Step = 99 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 100.
        ].
        recoveredBlock51Step = 100 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) configForElement: (recoveredBlock51Stack2).
            recoveredBlock51PC := 102.
        ].
        recoveredBlock51Step = 102 ifTrue: [
            recoveredBlock51Local1 := recoveredBlock51Stack1.
            recoveredBlock51PC := 103.
        ].
        recoveredBlock51Step = 103 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local1.
            recoveredBlock51PC := 104.
        ].
        recoveredBlock51Step = 104 ifTrue: [
            recoveredBlock51Stack2 := recoveredArg1.
            recoveredBlock51PC := 107.
        ].
        recoveredBlock51Step = 107 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) appendAllConfigurationsToClassConfigTableRecursive: (recoveredBlock51Stack2).
            recoveredBlock51PC := 109.
        ].
        recoveredBlock51Step = 109 ifTrue: [
            recoveredBlock51Stack2 := nil.
            recoveredBlock51PC := 110.
        ].
        recoveredBlock51Step = 110 ifTrue: [
            recoveredBlock51Local1 := recoveredBlock51Stack2.
            recoveredBlock51PC := 111.
        ].
        recoveredBlock51Step = 111 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20468254; bytecode file offset 0xd64b38"
!SGImplValueConfig methodsFor: 'recovered'!
doWithReferencesNonPrimitiveItems: recoveredArg1 recursive: recoveredArg2 visitColl: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClassConfig.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'Call_67666'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) classImplConfig.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) doWithReferencesNonPrimitiveItems: (recoveredStack1) recursive: (recoveredStack2) visitColl: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) allReferencedNonPrimitiveItems.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Value0 recoveredBlock95Value1 recoveredBlock95Value2 recoveredBlock95Value3 recoveredBlock95Value4 |
    recoveredBlock95Value0 := recoveredBlock95Arg1.
    recoveredBlock95Value1 := recoveredArg1.
    recoveredBlock95Value2 := recoveredArg2.
    recoveredBlock95Value3 := recoveredArg3.
    recoveredBlock95Value4 := (recoveredBlock95Value0) doWithReferencesNonPrimitiveItems: (recoveredBlock95Value1) recursive: (recoveredBlock95Value2) visitColl: (recoveredBlock95Value3).
    recoveredBlock95Value4
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046bfcc; bytecode file offset 0xd688c4"
!SGImplValueConfig methodsFor: 'recovered'!
makeConsistentBasic
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Call_67666'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsToBeMadeConsistent.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) makeConfigConsistent.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsToBeMadeConsistent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'Call_74393'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) detectAndHandleUTCTimeStampTrouble.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'looping... '.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) addInfoText: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := Time.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) millisecondClockValue.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := Time.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) millisecondClockValue.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 200.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) nextProgressCharacter.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) updateApplicationTimeStamp.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) needsToBeMadeConsistent.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046dbbc; bytecode file offset 0xd6a4b8"
!SGImplValueConfig methodsFor: 'recovered'!
xmlComplexValuesToWrite: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := complexValues.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) complexVariables.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Local1 recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := 'Kli'.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := 'Call_311331'.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) == (recoveredBlock24Stack2).
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) isPrimitive.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 115] ifFalse: [recoveredBlock24PC := 44].
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24PC := 45.
        ].
        recoveredBlock24Step = 45 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 46.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) isClassVariable.
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            recoveredBlock24Stack3 := self.
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) isClassConfig.
            recoveredBlock24PC := 52.
        ].
        recoveredBlock24Step = 52 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) = (recoveredBlock24Stack3).
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 56] ifFalse: [recoveredBlock24PC := 115].
        ].
        recoveredBlock24Step = 56 ifTrue: [
            recoveredBlock24PC := 57.
        ].
        recoveredBlock24Step = 57 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 58.
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) sgClass.
            recoveredBlock24PC := 59.
        ].
        recoveredBlock24Step = 59 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 60.
        ].
        recoveredBlock24Step = 60 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 61.
        ].
        recoveredBlock24Step = 61 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local1.
            recoveredBlock24PC := 62.
        ].
        recoveredBlock24Step = 62 ifTrue: [
            (recoveredBlock24Stack2 == nil) ifTrue: [recoveredBlock24PC := 113] ifFalse: [recoveredBlock24PC := 66].
        ].
        recoveredBlock24Step = 66 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local1.
            recoveredBlock24PC := 67.
        ].
        recoveredBlock24Step = 67 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) class.
            recoveredBlock24PC := 69.
        ].
        recoveredBlock24Step = 69 ifTrue: [
            recoveredBlock24Stack3 := SGEnumerationDB.
            recoveredBlock24PC := 71.
        ].
        recoveredBlock24Step = 71 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) ~= (recoveredBlock24Stack3).
            recoveredBlock24PC := 72.
        ].
        recoveredBlock24Step = 72 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 76] ifFalse: [recoveredBlock24PC := 113].
        ].
        recoveredBlock24Step = 76 ifTrue: [
            recoveredBlock24PC := 77.
        ].
        recoveredBlock24Step = 77 ifTrue: [
            recoveredBlock24Stack1 := 'Die'.
            recoveredBlock24PC := 79.
        ].
        recoveredBlock24Step = 79 ifTrue: [
            recoveredBlock24Stack2 := 'TFS_324990'.
            recoveredBlock24PC := 81.
        ].
        recoveredBlock24Step = 81 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) == (recoveredBlock24Stack2).
            recoveredBlock24PC := 82.
        ].
        recoveredBlock24Step = 82 ifTrue: [
            recoveredBlock24PC := 83.
        ].
        recoveredBlock24Step = 83 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 84.
        ].
        recoveredBlock24Step = 84 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal1.
            recoveredBlock24PC := 87.
        ].
        recoveredBlock24Step = 87 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg1.
            recoveredBlock24PC := 88.
        ].
        recoveredBlock24Step = 88 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) aliasName.
            recoveredBlock24PC := 90.
        ].
        recoveredBlock24Step = 90 ifTrue: [
            recoveredBlock24Stack4 := [].
            recoveredBlock24PC := 92.
        ].
        recoveredBlock24Step = 92 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) at: (recoveredBlock24Stack3) ifAbsent: (recoveredBlock24Stack4).
            recoveredBlock24PC := 94.
        ].
        recoveredBlock24Step = 94 ifTrue: [
            (recoveredBlock24Stack2 ~~ nil) ifTrue: [recoveredBlock24PC := 113] ifFalse: [recoveredBlock24PC := 98].
        ].
        recoveredBlock24Step = 98 ifTrue: [
            recoveredBlock24PC := 99.
        ].
        recoveredBlock24Step = 99 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 102.
        ].
        recoveredBlock24Step = 102 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 103.
        ].
        recoveredBlock24Step = 103 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) aliasName.
            recoveredBlock24PC := 105.
        ].
        recoveredBlock24Step = 105 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg1.
            recoveredBlock24PC := 108.
        ].
        recoveredBlock24Step = 108 ifTrue: [
            recoveredBlock24Stack4 := recoveredBlock24Local1.
            recoveredBlock24PC := 109.
        ].
        recoveredBlock24Step = 109 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) value: (recoveredBlock24Stack4).
            recoveredBlock24PC := 111.
        ].
        recoveredBlock24Step = 111 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) at: (recoveredBlock24Stack2) put: (recoveredBlock24Stack3).
            recoveredBlock24PC := 113.
        ].
        recoveredBlock24Step = 113 ifTrue: [
            recoveredBlock24Stack2 := nil.
            recoveredBlock24PC := 114.
        ].
        recoveredBlock24Step = 114 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack2.
            recoveredBlock24PC := 115.
        ].
        recoveredBlock24Step = 115 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047fcb4; bytecode file offset 0xd7c5a4"
!SGImplValueConfig methodsFor: 'recovered'!
walkthrough: recoveredArg1 visited: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'Call_69001'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) relatedClassConfig.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) complexVariables.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Local1 recoveredBlock61Stack0 recoveredBlock61Stack1 recoveredBlock61Stack2 recoveredBlock61Stack3 recoveredBlock61Stack4 recoveredBlock61PC recoveredBlock61Step recoveredBlock61Done recoveredBlock61Result |
    recoveredBlock61Stack0 := self.
    recoveredBlock61PC := 68.
    recoveredBlock61Done := false.
    [recoveredBlock61Done not] whileTrue: [
        recoveredBlock61Step := recoveredBlock61PC.
        recoveredBlock61Step = 68 ifTrue: [
            recoveredBlock61Stack1 := nil.
            recoveredBlock61PC := 69.
        ].
        recoveredBlock61Step = 69 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 70.
        ].
        recoveredBlock61Step = 70 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) isPrimitive.
            recoveredBlock61PC := 72.
        ].
        recoveredBlock61Step = 72 ifTrue: [
            (recoveredBlock61Stack2) ifTrue: [recoveredBlock61PC := 122] ifFalse: [recoveredBlock61PC := 76].
        ].
        recoveredBlock61Step = 76 ifTrue: [
            recoveredBlock61PC := 77.
        ].
        recoveredBlock61Step = 77 ifTrue: [
            recoveredBlock61Stack1 := 'Kk'.
            recoveredBlock61PC := 79.
        ].
        recoveredBlock61Step = 79 ifTrue: [
            recoveredBlock61Stack2 := 'Call_70814'.
            recoveredBlock61PC := 81.
        ].
        recoveredBlock61Step = 81 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) == (recoveredBlock61Stack2).
            recoveredBlock61PC := 82.
        ].
        recoveredBlock61Step = 82 ifTrue: [
            recoveredBlock61PC := 83.
        ].
        recoveredBlock61Step = 83 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Arg1.
            recoveredBlock61PC := 84.
        ].
        recoveredBlock61Step = 84 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) isClassVariable.
            recoveredBlock61PC := 86.
        ].
        recoveredBlock61Step = 86 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 90] ifFalse: [recoveredBlock61PC := 100].
        ].
        recoveredBlock61Step = 90 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal1.
            recoveredBlock61PC := 93.
        ].
        recoveredBlock61Step = 93 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 94.
        ].
        recoveredBlock61Step = 94 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) configForElement: (recoveredBlock61Stack2).
            recoveredBlock61PC := 96.
        ].
        recoveredBlock61Step = 96 ifTrue: [
            recoveredBlock61PC := 104.
        ].
        recoveredBlock61Step = 100 ifTrue: [
            recoveredBlock61Stack1 := self.
            recoveredBlock61PC := 101.
        ].
        recoveredBlock61Step = 101 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 102.
        ].
        recoveredBlock61Step = 102 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) configForElement: (recoveredBlock61Stack2).
            recoveredBlock61PC := 104.
        ].
        recoveredBlock61Step = 104 ifTrue: [
            recoveredBlock61Local1 := recoveredBlock61Stack1.
            recoveredBlock61PC := 105.
        ].
        recoveredBlock61Step = 105 ifTrue: [
            recoveredBlock61Stack1 := nil.
            recoveredBlock61PC := 106.
        ].
        recoveredBlock61Step = 106 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Local1.
            recoveredBlock61PC := 107.
        ].
        recoveredBlock61Step = 107 ifTrue: [
            (recoveredBlock61Stack2 == nil) ifTrue: [recoveredBlock61PC := 120] ifFalse: [recoveredBlock61PC := 110].
        ].
        recoveredBlock61Step = 110 ifTrue: [
            recoveredBlock61PC := 111.
        ].
        recoveredBlock61Step = 111 ifTrue: [
            recoveredBlock61Stack1 := recoveredBlock61Local1.
            recoveredBlock61PC := 112.
        ].
        recoveredBlock61Step = 112 ifTrue: [
            recoveredBlock61Stack2 := recoveredArg1.
            recoveredBlock61PC := 115.
        ].
        recoveredBlock61Step = 115 ifTrue: [
            recoveredBlock61Stack3 := recoveredArg2.
            recoveredBlock61PC := 118.
        ].
        recoveredBlock61Step = 118 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) walkthrough: (recoveredBlock61Stack2) visited: (recoveredBlock61Stack3).
            recoveredBlock61PC := 120.
        ].
        recoveredBlock61Step = 120 ifTrue: [
            recoveredBlock61Stack2 := nil.
            recoveredBlock61PC := 121.
        ].
        recoveredBlock61Step = 121 ifTrue: [
            recoveredBlock61Local1 := recoveredBlock61Stack2.
            recoveredBlock61PC := 122.
        ].
        recoveredBlock61Step = 122 ifTrue: [
            recoveredBlock61Result := recoveredBlock61Stack1.
            recoveredBlock61Done := true.
        ].
    ].
    recoveredBlock61Result
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20494624; bytecode file offset 0xd90f00"
!SGImplValueConfig methodsFor: 'recovered'!
xmlEquals: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := primitiveValues.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveValuesKey.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := Util.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) hook: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := primitiveValues.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 :recoveredBlock36Arg2 | 
    | recoveredBlock36Local1 recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := recoveredArg1.
            recoveredBlock36PC := 45.
        ].
        recoveredBlock36Step = 45 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) primitiveValuesKey.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 47.
        ].
        recoveredBlock36Step = 47 ifTrue: [
            recoveredBlock36Stack3 := [
    | recoveredBlock36Block47Value0 recoveredBlock36Block47Value1 |
    recoveredBlock36Block47Value0 := Util.
    recoveredBlock36Block47Value1 := (recoveredBlock36Block47Value0) hook: (false).
    ^recoveredBlock36Block47Value1
].
            recoveredBlock36PC := 60.
        ].
        recoveredBlock36Step = 60 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) at: (recoveredBlock36Stack2) ifAbsent: (recoveredBlock36Stack3).
            recoveredBlock36PC := 62.
        ].
        recoveredBlock36Step = 62 ifTrue: [
            recoveredBlock36Local1 := recoveredBlock36Stack1.
            recoveredBlock36PC := 63.
        ].
        recoveredBlock36Step = 63 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 64.
        ].
        recoveredBlock36Step = 64 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg2.
            recoveredBlock36PC := 65.
        ].
        recoveredBlock36Step = 65 ifTrue: [
            recoveredBlock36Stack3 := recoveredBlock36Local1.
            recoveredBlock36PC := 66.
        ].
        recoveredBlock36Step = 66 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) xmlEquals: (recoveredBlock36Stack3).
            recoveredBlock36PC := 68.
        ].
        recoveredBlock36Step = 68 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 75] ifFalse: [recoveredBlock36PC := 72].
        ].
        recoveredBlock36Step = 72 ifTrue: [
            recoveredBlock36PC := 73.
        ].
        recoveredBlock36Step = 73 ifTrue: [
            recoveredBlock36Stack1 := false.
            recoveredBlock36PC := 74.
        ].
        recoveredBlock36Step = 74 ifTrue: [
            ^recoveredBlock36Stack1
        ].
        recoveredBlock36Step = 75 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := complexValues.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) complexValues.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := Util.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) hook: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := complexValues.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := [:recoveredBlock100Arg1 :recoveredBlock100Arg2 | 
    | recoveredBlock100Stack0 recoveredBlock100Stack1 recoveredBlock100Stack2 recoveredBlock100Stack3 recoveredBlock100Stack4 recoveredBlock100Stack5 recoveredBlock100PC recoveredBlock100Step recoveredBlock100Done recoveredBlock100Result |
    recoveredBlock100Stack0 := self.
    recoveredBlock100PC := 106.
    recoveredBlock100Done := false.
    [recoveredBlock100Done not] whileTrue: [
        recoveredBlock100Step := recoveredBlock100PC.
        recoveredBlock100Step = 106 ifTrue: [
            recoveredBlock100Stack1 := nil.
            recoveredBlock100PC := 107.
        ].
        recoveredBlock100Step = 107 ifTrue: [
            recoveredBlock100Stack2 := recoveredArg1.
            recoveredBlock100PC := 110.
        ].
        recoveredBlock100Step = 110 ifTrue: [
            recoveredBlock100Stack2 := (recoveredBlock100Stack2) complexValues.
            recoveredBlock100PC := 112.
        ].
        recoveredBlock100Step = 112 ifTrue: [
            recoveredBlock100Stack3 := recoveredBlock100Arg1.
            recoveredBlock100PC := 113.
        ].
        recoveredBlock100Step = 113 ifTrue: [
            recoveredBlock100Stack4 := [].
            recoveredBlock100PC := 115.
        ].
        recoveredBlock100Step = 115 ifTrue: [
            recoveredBlock100Stack2 := (recoveredBlock100Stack2) at: (recoveredBlock100Stack3) ifAbsent: (recoveredBlock100Stack4).
            recoveredBlock100PC := 117.
        ].
        recoveredBlock100Step = 117 ifTrue: [
            recoveredBlock100Stack3 := recoveredBlock100Arg2.
            recoveredBlock100PC := 118.
        ].
        recoveredBlock100Step = 118 ifTrue: [
            recoveredBlock100Stack2 := (recoveredBlock100Stack2) ~= (recoveredBlock100Stack3).
            recoveredBlock100PC := 119.
        ].
        recoveredBlock100Step = 119 ifTrue: [
            (recoveredBlock100Stack2) ifTrue: [recoveredBlock100PC := 122] ifFalse: [recoveredBlock100PC := 129].
        ].
        recoveredBlock100Step = 122 ifTrue: [
            recoveredBlock100PC := 123.
        ].
        recoveredBlock100Step = 123 ifTrue: [
            recoveredBlock100Stack1 := Util.
            recoveredBlock100PC := 125.
        ].
        recoveredBlock100Step = 125 ifTrue: [
            recoveredBlock100Stack2 := false.
            recoveredBlock100PC := 126.
        ].
        recoveredBlock100Step = 126 ifTrue: [
            recoveredBlock100Stack1 := (recoveredBlock100Stack1) hook: (recoveredBlock100Stack2).
            recoveredBlock100PC := 128.
        ].
        recoveredBlock100Step = 128 ifTrue: [
            ^recoveredBlock100Stack1
        ].
        recoveredBlock100Step = 129 ifTrue: [
            recoveredBlock100Result := recoveredBlock100Stack1.
            recoveredBlock100Done := true.
        ].
    ].
    recoveredBlock100Result
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204947b0; bytecode file offset 0xd910a4"
!SGImplValueConfig methodsFor: 'recovered'!
convertToASDV50Elements: recoveredArg1 convertConfigBlock: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveValues.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block281038b8Arg1 | 
    | block281038b8Stack0 block281038b8Stack1 block281038b8Stack2 block281038b8Stack3 block281038b8PC block281038b8Step block281038b8Done block281038b8Result |
    block281038b8Stack0 := self.
    block281038b8PC := 4.
    block281038b8Done := false.
    [block281038b8Done not] whileTrue: [
        block281038b8Step := block281038b8PC.
        block281038b8Step = 4 ifTrue: [
            block281038b8Stack1 := false.
            block281038b8PC := 5.
        ].
        block281038b8Step = 5 ifTrue: [
            block281038b8Stack2 := block281038b8Arg1.
            block281038b8PC := 6.
        ].
        block281038b8Step = 6 ifTrue: [
            (block281038b8Stack2 == nil) ifTrue: [block281038b8PC := 14] ifFalse: [block281038b8PC := 10].
        ].
        block281038b8Step = 10 ifTrue: [
            block281038b8PC := 11.
        ].
        block281038b8Step = 11 ifTrue: [
            block281038b8Stack1 := block281038b8Arg1.
            block281038b8PC := 12.
        ].
        block281038b8Step = 12 ifTrue: [
            block281038b8Stack1 := (block281038b8Stack1) isASDPrimitiveConfigObject.
            block281038b8PC := 13.
        ].
        block281038b8Step = 13 ifTrue: [
            block281038b8Stack1 := (block281038b8Stack1) not.
            block281038b8PC := 14.
        ].
        block281038b8Step = 14 ifTrue: [
            block281038b8Result := block281038b8Stack1.
            block281038b8Done := true.
        ].
    ].
    block281038b8Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveValues.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Local1 recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38Stack5 recoveredBlock38Stack6 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := recoveredArg1.
            recoveredBlock38PC := 47.
        ].
        recoveredBlock38Step = 47 ifTrue: [
            recoveredBlock38Stack2 := [:recoveredBlock38Block47Arg1 | 
    | recoveredBlock38Block47Value0 recoveredBlock38Block47Value1 recoveredBlock38Block47Value2 recoveredBlock38Block47Value3 |
    recoveredBlock38Block47Value0 := recoveredBlock38Block47Arg1.
    recoveredBlock38Block47Value1 := (recoveredBlock38Block47Value0) aliasName.
    recoveredBlock38Block47Value2 := recoveredBlock38Arg1.
    recoveredBlock38Block47Value3 := (recoveredBlock38Block47Value1) = (recoveredBlock38Block47Value2).
    recoveredBlock38Block47Value3
].
            recoveredBlock38PC := 62.
        ].
        recoveredBlock38Step = 62 ifTrue: [
            recoveredBlock38Stack3 := [].
            recoveredBlock38PC := 64.
        ].
        recoveredBlock38Step = 64 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) detect: (recoveredBlock38Stack2) ifNone: (recoveredBlock38Stack3).
            recoveredBlock38PC := 66.
        ].
        recoveredBlock38Step = 66 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Stack1.
            recoveredBlock38PC := 67.
        ].
        recoveredBlock38Step = 67 ifTrue: [
            recoveredBlock38Local1 := recoveredBlock38Stack2.
            recoveredBlock38PC := 70.
        ].
        recoveredBlock38Step = 70 ifTrue: [
            (recoveredBlock38Stack1 == nil) ifTrue: [recoveredBlock38PC := 94] ifFalse: [recoveredBlock38PC := 74].
        ].
        recoveredBlock38Step = 74 ifTrue: [
            recoveredBlock38Stack1 := self.
            recoveredBlock38PC := 75.
        ].
        recoveredBlock38Step = 75 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) primitiveValues.
            recoveredBlock38PC := 76.
        ].
        recoveredBlock38Step = 76 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 79.
        ].
        recoveredBlock38Step = 79 ifTrue: [
            recoveredBlock38Stack3 := [].
            recoveredBlock38PC := 81.
        ].
        recoveredBlock38Step = 81 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) at: (recoveredBlock38Stack2) ifAbsent: (recoveredBlock38Stack3).
            recoveredBlock38PC := 83.
        ].
        recoveredBlock38Step = 83 ifTrue: [
            (recoveredBlock38Stack1 == nil) ifTrue: [recoveredBlock38PC := 94] ifFalse: [recoveredBlock38PC := 86].
        ].
        recoveredBlock38Step = 86 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Local1.
            recoveredBlock38PC := 89.
        ].
        recoveredBlock38Step = 89 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) sgClass.
            recoveredBlock38PC := 91.
        ].
        recoveredBlock38Step = 91 ifTrue: [
            (recoveredBlock38Stack1 ~~ nil) ifTrue: [recoveredBlock38PC := 104] ifFalse: [recoveredBlock38PC := 94].
        ].
        recoveredBlock38Step = 94 ifTrue: [
            recoveredBlock38Stack1 := self.
            recoveredBlock38PC := 95.
        ].
        recoveredBlock38Step = 95 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) primitiveValues.
            recoveredBlock38PC := 96.
        ].
        recoveredBlock38Step = 96 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 99.
        ].
        recoveredBlock38Step = 99 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) removeKey: (recoveredBlock38Stack2).
            recoveredBlock38PC := 101.
        ].
        recoveredBlock38Step = 101 ifTrue: [
            recoveredBlock38PC := 129.
        ].
        recoveredBlock38Step = 104 ifTrue: [
            recoveredBlock38Stack1 := self.
            recoveredBlock38PC := 105.
        ].
        recoveredBlock38Step = 105 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) primitiveValues.
            recoveredBlock38PC := 106.
        ].
        recoveredBlock38Step = 106 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 109.
        ].
        recoveredBlock38Step = 109 ifTrue: [
            recoveredBlock38Stack3 := recoveredArg2.
            recoveredBlock38PC := 112.
        ].
        recoveredBlock38Step = 112 ifTrue: [
            recoveredBlock38Stack4 := self.
            recoveredBlock38PC := 113.
        ].
        recoveredBlock38Step = 113 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) primitiveValues.
            recoveredBlock38PC := 114.
        ].
        recoveredBlock38Step = 114 ifTrue: [
            recoveredBlock38Stack5 := recoveredBlock38Arg1.
            recoveredBlock38PC := 117.
        ].
        recoveredBlock38Step = 117 ifTrue: [
            recoveredBlock38Stack4 := (recoveredBlock38Stack4) at: (recoveredBlock38Stack5).
            recoveredBlock38PC := 119.
        ].
        recoveredBlock38Step = 119 ifTrue: [
            recoveredBlock38Stack5 := recoveredBlock38Local1.
            recoveredBlock38PC := 122.
        ].
        recoveredBlock38Step = 122 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) value: (recoveredBlock38Stack4) value: (recoveredBlock38Stack5).
            recoveredBlock38PC := 124.
        ].
        recoveredBlock38Step = 124 ifTrue: [
            (recoveredBlock38Stack1) at: (recoveredBlock38Stack2) put: (recoveredBlock38Stack3).
            recoveredBlock38PC := 126.
        ].
        recoveredBlock38Step = 126 ifTrue: [
            recoveredBlock38Stack1 := self.
            recoveredBlock38PC := 127.
        ].
        recoveredBlock38Step = 127 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) modified.
            recoveredBlock38PC := 129.
        ].
        recoveredBlock38Step = 129 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b2af4; bytecode file offset 0xdaf3fc"
!SGImplValueConfig methodsFor: 'recovered'!
setConfig: recoveredArg1 forElement: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := Array.
    recoveredBlock4Value2 := (recoveredBlock4Value0) isKindOf: (recoveredBlock4Value1).
    recoveredBlock4Value3 := (recoveredBlock4Value2) not.
    recoveredBlock4Value3
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'Arrays not allowed as config value'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDbObject.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPrimitive.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'Call_93963'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) asRBDBReference.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := true.
            recoveredBlock53PC := 61.
        ].
        recoveredBlock53Step = 61 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal1.
            recoveredBlock53PC := 64.
        ].
        recoveredBlock53Step = 64 ifTrue: [
            (recoveredBlock53Stack2 == nil) ifTrue: [recoveredBlock53PC := 74] ifFalse: [recoveredBlock53PC := 68].
        ].
        recoveredBlock53Step = 68 ifTrue: [
            recoveredBlock53PC := 69.
        ].
        recoveredBlock53Step = 69 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal1.
            recoveredBlock53PC := 72.
        ].
        recoveredBlock53Step = 72 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) isValidForComponent.
            recoveredBlock53PC := 74.
        ].
        recoveredBlock53Step = 74 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack1.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'config is not in list of component'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) complexValues.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUnknownType.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveValues.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) updateElement: (recoveredStack1) forNewConfig: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := 'updateImplementationFromObserver'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) broadcast: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b6440; bytecode file offset 0xdb2d2c"
!SGImplValueConfig methodsFor: 'recovered'!
removeElementsNotInList: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) primitiveValues.
    recoveredLocal4 := recoveredValue0.
    recoveredValue1 := (self) complexValues.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredLocal4.
    recoveredValue3 := (recoveredValue2) species.
    recoveredValue4 := recoveredLocal4.
    recoveredValue5 := (recoveredValue4) size.
    recoveredValue6 := (recoveredValue3) new: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal3.
    recoveredValue8 := (recoveredValue7) species.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) size.
    recoveredValue11 := (recoveredValue8) new: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Local1 recoveredBlock42Stack0 recoveredBlock42Stack1 recoveredBlock42Stack2 recoveredBlock42Stack3 recoveredBlock42Stack4 recoveredBlock42Stack5 recoveredBlock42PC recoveredBlock42Step recoveredBlock42Done recoveredBlock42Result |
    recoveredBlock42Stack0 := self.
    recoveredBlock42PC := 48.
    recoveredBlock42Done := false.
    [recoveredBlock42Done not] whileTrue: [
        recoveredBlock42Step := recoveredBlock42PC.
        recoveredBlock42Step = 48 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Arg1.
            recoveredBlock42PC := 51.
        ].
        recoveredBlock42Step = 51 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) aliasName.
            recoveredBlock42PC := 53.
        ].
        recoveredBlock42Step = 53 ifTrue: [
            recoveredBlock42Local1 := recoveredBlock42Stack1.
            recoveredBlock42PC := 56.
        ].
        recoveredBlock42Step = 56 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Arg1.
            recoveredBlock42PC := 59.
        ].
        recoveredBlock42Step = 59 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) isPrimitive.
            recoveredBlock42PC := 61.
        ].
        recoveredBlock42Step = 61 ifTrue: [
            recoveredBlock42Stack2 := recoveredLocal4.
            recoveredBlock42PC := 64.
        ].
        recoveredBlock42Step = 64 ifTrue: [
            recoveredBlock42Stack3 := recoveredBlock42Local1.
            recoveredBlock42PC := 67.
        ].
        recoveredBlock42Step = 67 ifTrue: [
            recoveredBlock42Stack4 := [].
            recoveredBlock42PC := 69.
        ].
        recoveredBlock42Step = 69 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) at: (recoveredBlock42Stack3) ifAbsent: (recoveredBlock42Stack4).
            recoveredBlock42PC := 71.
        ].
        recoveredBlock42Step = 71 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) isString.
            recoveredBlock42PC := 73.
        ].
        recoveredBlock42Step = 73 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) or: (recoveredBlock42Stack2).
            recoveredBlock42PC := 75.
        ].
        recoveredBlock42Step = 75 ifTrue: [
            (recoveredBlock42Stack1) ifTrue: [recoveredBlock42PC := 78] ifFalse: [recoveredBlock42PC := 106].
        ].
        recoveredBlock42Step = 78 ifTrue: [
            recoveredBlock42Stack1 := recoveredLocal4.
            recoveredBlock42PC := 81.
        ].
        recoveredBlock42Step = 81 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Local1.
            recoveredBlock42PC := 84.
        ].
        recoveredBlock42Step = 84 ifTrue: [
            recoveredBlock42Stack3 := [:recoveredBlock42Block84Arg1 | 
    | recoveredBlock42Block84Value0 recoveredBlock42Block84Value1 recoveredBlock42Block84Value2 recoveredBlock42Block84Value3 |
    recoveredBlock42Block84Value0 := recoveredLocal2.
    recoveredBlock42Block84Value1 := recoveredBlock42Local1.
    recoveredBlock42Block84Value2 := recoveredBlock42Block84Arg1.
    recoveredBlock42Block84Value3 := (recoveredBlock42Block84Value0) at: (recoveredBlock42Block84Value1) put: (recoveredBlock42Block84Value2).
    recoveredBlock42Block84Value3
].
            recoveredBlock42PC := 100.
        ].
        recoveredBlock42Step = 100 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) at: (recoveredBlock42Stack2) ifPresent: (recoveredBlock42Stack3).
            recoveredBlock42PC := 102.
        ].
        recoveredBlock42Step = 102 ifTrue: [
            recoveredBlock42PC := 130.
        ].
        recoveredBlock42Step = 106 ifTrue: [
            recoveredBlock42Stack1 := recoveredLocal3.
            recoveredBlock42PC := 109.
        ].
        recoveredBlock42Step = 109 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Local1.
            recoveredBlock42PC := 112.
        ].
        recoveredBlock42Step = 112 ifTrue: [
            recoveredBlock42Stack3 := [:recoveredBlock42Block112Arg1 | 
    | recoveredBlock42Block112Value0 recoveredBlock42Block112Value1 recoveredBlock42Block112Value2 recoveredBlock42Block112Value3 |
    recoveredBlock42Block112Value0 := recoveredLocal1.
    recoveredBlock42Block112Value1 := recoveredBlock42Local1.
    recoveredBlock42Block112Value2 := recoveredBlock42Block112Arg1.
    recoveredBlock42Block112Value3 := (recoveredBlock42Block112Value0) at: (recoveredBlock42Block112Value1) put: (recoveredBlock42Block112Value2).
    recoveredBlock42Block112Value3
].
            recoveredBlock42PC := 128.
        ].
        recoveredBlock42Step = 128 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) at: (recoveredBlock42Stack2) ifPresent: (recoveredBlock42Stack3).
            recoveredBlock42PC := 130.
        ].
        recoveredBlock42Step = 130 ifTrue: [
            recoveredBlock42Result := recoveredBlock42Stack1.
            recoveredBlock42Done := true.
        ].
    ].
    recoveredBlock42Result
].
    (recoveredValue12) do: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    primitiveValues := recoveredValue14.
    recoveredValue15 := recoveredLocal1.
    complexValues := recoveredValue15.
    ^self
! !

"ASDBase.ic method 0x204b65c4; bytecode file offset 0xdb2ec4"
!SGImplValueConfig methodsFor: 'recovered'!
copyRecursiveUsePrefix: recoveredArg1 handleWriteProtectedConfigs: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_67993'.
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
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) nonPrimitiveConfigsOfTreeVisitedConfigs: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:block28105c94Arg1 | 
    | block28105c94Value0 block28105c94Value1 |
    block28105c94Value0 := block28105c94Arg1.
    block28105c94Value1 := (block28105c94Value0) modifiable.
    block28105c94Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Local1 recoveredBlock67Stack0 recoveredBlock67Stack1 recoveredBlock67Stack2 recoveredBlock67Stack3 recoveredBlock67Stack4 recoveredBlock67Stack5 recoveredBlock67PC recoveredBlock67Step recoveredBlock67Done recoveredBlock67Result |
    recoveredBlock67Stack0 := self.
    recoveredBlock67PC := 74.
    recoveredBlock67Done := false.
    [recoveredBlock67Done not] whileTrue: [
        recoveredBlock67Step := recoveredBlock67PC.
        recoveredBlock67Step = 74 ifTrue: [
            recoveredBlock67Stack1 := nil.
            recoveredBlock67PC := 75.
        ].
        recoveredBlock67Step = 75 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Arg1.
            recoveredBlock67PC := 76.
        ].
        recoveredBlock67Step = 76 ifTrue: [
            recoveredBlock67Stack3 := recoveredArg1.
            recoveredBlock67PC := 79.
        ].
        recoveredBlock67Step = 79 ifTrue: [
            recoveredBlock67Stack4 := recoveredBlock67Arg1.
            recoveredBlock67PC := 80.
        ].
        recoveredBlock67Step = 80 ifTrue: [
            recoveredBlock67Stack4 := (recoveredBlock67Stack4) label.
            recoveredBlock67PC := 82.
        ].
        recoveredBlock67Step = 82 ifTrue: [
            recoveredBlock67Stack3 := (recoveredBlock67Stack3) , (recoveredBlock67Stack4).
            recoveredBlock67PC := 84.
        ].
        recoveredBlock67Step = 84 ifTrue: [
            recoveredBlock67Stack2 := (recoveredBlock67Stack2) copyConfigLabel: (recoveredBlock67Stack3).
            recoveredBlock67PC := 86.
        ].
        recoveredBlock67Step = 86 ifTrue: [
            recoveredBlock67Stack3 := recoveredBlock67Stack2.
            recoveredBlock67PC := 87.
        ].
        recoveredBlock67Step = 87 ifTrue: [
            recoveredBlock67Local1 := recoveredBlock67Stack3.
            recoveredBlock67PC := 88.
        ].
        recoveredBlock67Step = 88 ifTrue: [
            (recoveredBlock67Stack2 == nil) ifTrue: [recoveredBlock67PC := 100] ifFalse: [recoveredBlock67PC := 92].
        ].
        recoveredBlock67Step = 92 ifTrue: [
            recoveredBlock67PC := 93.
        ].
        recoveredBlock67Step = 93 ifTrue: [
            recoveredBlock67Stack1 := recoveredLocal2.
            recoveredBlock67PC := 96.
        ].
        recoveredBlock67Step = 96 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Arg1.
            recoveredBlock67PC := 97.
        ].
        recoveredBlock67Step = 97 ifTrue: [
            recoveredBlock67Stack3 := recoveredBlock67Local1.
            recoveredBlock67PC := 98.
        ].
        recoveredBlock67Step = 98 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) at: (recoveredBlock67Stack2) put: (recoveredBlock67Stack3).
            recoveredBlock67PC := 100.
        ].
        recoveredBlock67Step = 100 ifTrue: [
            recoveredBlock67Result := recoveredBlock67Stack1.
            recoveredBlock67Done := true.
        ].
    ].
    recoveredBlock67Result
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := [:recoveredBlock106Arg1 | 
    | recoveredBlock106Local1 recoveredBlock106Stack0 recoveredBlock106Stack1 recoveredBlock106Stack2 recoveredBlock106Stack3 recoveredBlock106Stack4 recoveredBlock106Stack5 recoveredBlock106PC recoveredBlock106Step recoveredBlock106Done recoveredBlock106Result |
    recoveredBlock106Stack0 := self.
    recoveredBlock106PC := 112.
    recoveredBlock106Done := false.
    [recoveredBlock106Done not] whileTrue: [
        recoveredBlock106Step := recoveredBlock106PC.
        recoveredBlock106Step = 112 ifTrue: [
            recoveredBlock106Stack1 := nil.
            recoveredBlock106PC := 113.
        ].
        recoveredBlock106Step = 113 ifTrue: [
            recoveredBlock106Stack2 := recoveredLocal2.
            recoveredBlock106PC := 116.
        ].
        recoveredBlock106Step = 116 ifTrue: [
            recoveredBlock106Stack3 := recoveredBlock106Arg1.
            recoveredBlock106PC := 117.
        ].
        recoveredBlock106Step = 117 ifTrue: [
            recoveredBlock106Stack4 := [].
            recoveredBlock106PC := 119.
        ].
        recoveredBlock106Step = 119 ifTrue: [
            recoveredBlock106Stack2 := (recoveredBlock106Stack2) at: (recoveredBlock106Stack3) ifAbsent: (recoveredBlock106Stack4).
            recoveredBlock106PC := 121.
        ].
        recoveredBlock106Step = 121 ifTrue: [
            recoveredBlock106Stack3 := recoveredBlock106Stack2.
            recoveredBlock106PC := 122.
        ].
        recoveredBlock106Step = 122 ifTrue: [
            recoveredBlock106Local1 := recoveredBlock106Stack3.
            recoveredBlock106PC := 123.
        ].
        recoveredBlock106Step = 123 ifTrue: [
            (recoveredBlock106Stack2 == nil) ifTrue: [recoveredBlock106PC := 133] ifFalse: [recoveredBlock106PC := 126].
        ].
        recoveredBlock106Step = 126 ifTrue: [
            recoveredBlock106PC := 127.
        ].
        recoveredBlock106Step = 127 ifTrue: [
            recoveredBlock106Stack1 := recoveredBlock106Local1.
            recoveredBlock106PC := 128.
        ].
        recoveredBlock106Step = 128 ifTrue: [
            recoveredBlock106Stack2 := recoveredLocal2.
            recoveredBlock106PC := 131.
        ].
        recoveredBlock106Step = 131 ifTrue: [
            recoveredBlock106Stack1 := (recoveredBlock106Stack1) replaceReferencedWithCopies: (recoveredBlock106Stack2).
            recoveredBlock106PC := 133.
        ].
        recoveredBlock106Step = 133 ifTrue: [
            recoveredBlock106Result := recoveredBlock106Stack1.
            recoveredBlock106Done := true.
        ].
    ].
    recoveredBlock106Result
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053dd18; bytecode file offset 0xe3a648"
!SGImplValueConfig methodsFor: 'recovered'!
appendToClassConfigTableRecursive: recoveredArg1 visitedImplementations: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62774'.
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
            recoveredStack1 := 'hw'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'call_85240'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 |
    recoveredBlock58Value0 := Set.
    recoveredBlock58Value1 := (self) availableInstanceConfigurationKeys.
    recoveredBlock58Value2 := (recoveredBlock58Value1) size.
    recoveredBlock58Value3 := (recoveredBlock58Value0) new: (recoveredBlock58Value2).
    recoveredBlock58Value3
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := 'call_2007402578'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) complexVariables.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodParameters.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := [:recoveredBlock112Arg1 | 
    | recoveredBlock112Local1 recoveredBlock112Stack0 recoveredBlock112Stack1 recoveredBlock112Stack2 recoveredBlock112Stack3 recoveredBlock112Stack4 recoveredBlock112PC recoveredBlock112Step recoveredBlock112Done recoveredBlock112Result |
    recoveredBlock112Stack0 := self.
    recoveredBlock112PC := 118.
    recoveredBlock112Done := false.
    [recoveredBlock112Done not] whileTrue: [
        recoveredBlock112Step := recoveredBlock112PC.
        recoveredBlock112Step = 118 ifTrue: [
            recoveredBlock112Stack1 := nil.
            recoveredBlock112PC := 119.
        ].
        recoveredBlock112Step = 119 ifTrue: [
            recoveredBlock112Stack2 := recoveredBlock112Arg1.
            recoveredBlock112PC := 120.
        ].
        recoveredBlock112Step = 120 ifTrue: [
            recoveredBlock112Stack2 := (recoveredBlock112Stack2) isPrimitive.
            recoveredBlock112PC := 122.
        ].
        recoveredBlock112Step = 122 ifTrue: [
            (recoveredBlock112Stack2) ifTrue: [recoveredBlock112PC := 188] ifFalse: [recoveredBlock112PC := 126].
        ].
        recoveredBlock112Step = 126 ifTrue: [
            recoveredBlock112PC := 127.
        ].
        recoveredBlock112Step = 127 ifTrue: [
            recoveredBlock112Stack1 := 'Kk'.
            recoveredBlock112PC := 129.
        ].
        recoveredBlock112Step = 129 ifTrue: [
            recoveredBlock112Stack2 := 'Call_70814'.
            recoveredBlock112PC := 131.
        ].
        recoveredBlock112Step = 131 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) == (recoveredBlock112Stack2).
            recoveredBlock112PC := 132.
        ].
        recoveredBlock112Step = 132 ifTrue: [
            recoveredBlock112PC := 133.
        ].
        recoveredBlock112Step = 133 ifTrue: [
            recoveredBlock112Stack1 := nil.
            recoveredBlock112PC := 134.
        ].
        recoveredBlock112Step = 134 ifTrue: [
            recoveredBlock112Stack2 := recoveredBlock112Arg1.
            recoveredBlock112PC := 135.
        ].
        recoveredBlock112Step = 135 ifTrue: [
            recoveredBlock112Stack2 := (recoveredBlock112Stack2) isImported.
            recoveredBlock112PC := 137.
        ].
        recoveredBlock112Step = 137 ifTrue: [
            (recoveredBlock112Stack2) ifTrue: [recoveredBlock112PC := 188] ifFalse: [recoveredBlock112PC := 140].
        ].
        recoveredBlock112Step = 140 ifTrue: [
            recoveredBlock112PC := 141.
        ].
        recoveredBlock112Step = 141 ifTrue: [
            recoveredBlock112Stack1 := recoveredBlock112Arg1.
            recoveredBlock112PC := 142.
        ].
        recoveredBlock112Step = 142 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) isUniqueImplConfigured.
            recoveredBlock112PC := 144.
        ].
        recoveredBlock112Step = 144 ifTrue: [
            (recoveredBlock112Stack1) ifTrue: [recoveredBlock112PC := 148] ifFalse: [recoveredBlock112PC := 158].
        ].
        recoveredBlock112Step = 148 ifTrue: [
            recoveredBlock112Stack1 := self.
            recoveredBlock112PC := 149.
        ].
        recoveredBlock112Step = 149 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) relatedClassConfig.
            recoveredBlock112PC := 151.
        ].
        recoveredBlock112Step = 151 ifTrue: [
            recoveredBlock112Stack2 := recoveredBlock112Arg1.
            recoveredBlock112PC := 152.
        ].
        recoveredBlock112Step = 152 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) configForElement: (recoveredBlock112Stack2).
            recoveredBlock112PC := 154.
        ].
        recoveredBlock112Step = 154 ifTrue: [
            recoveredBlock112PC := 162.
        ].
        recoveredBlock112Step = 158 ifTrue: [
            recoveredBlock112Stack1 := self.
            recoveredBlock112PC := 159.
        ].
        recoveredBlock112Step = 159 ifTrue: [
            recoveredBlock112Stack2 := recoveredBlock112Arg1.
            recoveredBlock112PC := 160.
        ].
        recoveredBlock112Step = 160 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) configForElement: (recoveredBlock112Stack2).
            recoveredBlock112PC := 162.
        ].
        recoveredBlock112Step = 162 ifTrue: [
            recoveredBlock112Local1 := recoveredBlock112Stack1.
            recoveredBlock112PC := 163.
        ].
        recoveredBlock112Step = 163 ifTrue: [
            recoveredBlock112Stack1 := 'Kk'.
            recoveredBlock112PC := 165.
        ].
        recoveredBlock112Step = 165 ifTrue: [
            recoveredBlock112Stack2 := 'Call_69773'.
            recoveredBlock112PC := 167.
        ].
        recoveredBlock112Step = 167 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) == (recoveredBlock112Stack2).
            recoveredBlock112PC := 168.
        ].
        recoveredBlock112Step = 168 ifTrue: [
            recoveredBlock112PC := 169.
        ].
        recoveredBlock112Step = 169 ifTrue: [
            recoveredBlock112Stack1 := nil.
            recoveredBlock112PC := 170.
        ].
        recoveredBlock112Step = 170 ifTrue: [
            recoveredBlock112Stack2 := recoveredBlock112Local1.
            recoveredBlock112PC := 171.
        ].
        recoveredBlock112Step = 171 ifTrue: [
            (recoveredBlock112Stack2 == nil) ifTrue: [recoveredBlock112PC := 186] ifFalse: [recoveredBlock112PC := 174].
        ].
        recoveredBlock112Step = 174 ifTrue: [
            recoveredBlock112PC := 175.
        ].
        recoveredBlock112Step = 175 ifTrue: [
            recoveredBlock112Stack1 := recoveredBlock112Local1.
            recoveredBlock112PC := 176.
        ].
        recoveredBlock112Step = 176 ifTrue: [
            recoveredBlock112Stack2 := recoveredArg1.
            recoveredBlock112PC := 179.
        ].
        recoveredBlock112Step = 179 ifTrue: [
            recoveredBlock112Stack3 := recoveredArg2.
            recoveredBlock112PC := 182.
        ].
        recoveredBlock112Step = 182 ifTrue: [
            recoveredBlock112Stack3 := (recoveredBlock112Stack3) copy.
            recoveredBlock112PC := 184.
        ].
        recoveredBlock112Step = 184 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) appendToClassConfigTableRecursive: (recoveredBlock112Stack2) visitedImplementations: (recoveredBlock112Stack3).
            recoveredBlock112PC := 186.
        ].
        recoveredBlock112Step = 186 ifTrue: [
            recoveredBlock112Stack2 := nil.
            recoveredBlock112PC := 187.
        ].
        recoveredBlock112Step = 187 ifTrue: [
            recoveredBlock112Local1 := recoveredBlock112Stack2.
            recoveredBlock112PC := 188.
        ].
        recoveredBlock112Step = 188 ifTrue: [
            recoveredBlock112Result := recoveredBlock112Stack1.
            recoveredBlock112Done := true.
        ].
    ].
    recoveredBlock112Result
].
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClassConfig.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 201].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d09f8; bytecode file offset 0xecd334"
!SGImplValueConfig methodsFor: 'recovered'!
configForElementBasic: recoveredArg1 class: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEntryForElement: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := [:recoveredBlock12Block19Arg1 | 
    | recoveredBlock12Block19Value0 recoveredBlock12Block19Value1 recoveredBlock12Block19Value2 |
    recoveredBlock12Block19Value0 := (self) class.
    recoveredBlock12Block19Value1 := (recoveredBlock12Block19Value0) optionDeactivateDatasetImplementationReferences.
    recoveredBlock12Block19Value2 := (recoveredBlock12Block19Value1) not.
    recoveredLocal3 := recoveredBlock12Block19Value2.
    nil
].
    recoveredBlock12Value2 := (recoveredBlock12Value0) getObjectIfUndefined: (recoveredBlock12Value1).
    recoveredBlock12Value3 := recoveredBlock12Value2.
    recoveredLocal4 := recoveredBlock12Value3.
    recoveredBlock12Value2
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'Call_2009405491'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSmVariable.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSmClass.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) getStateValues.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDbObject.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidForComponent.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) makeConsistentBasic.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 205.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCharTable.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 195].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBComposedDataElement.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 195].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferenceData.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 195] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferenceData.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 195] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGroupCharTable.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGroupCharTable.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 195].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultConfigFor: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := [:recoveredBlock180Arg1 | 
    | recoveredBlock180Value0 recoveredBlock180Value1 recoveredBlock180Value2 |
    recoveredBlock180Value0 := recoveredBlock180Arg1.
    recoveredBlock180Value1 := recoveredArg1.
    recoveredBlock180Value2 := (self) setConfig: (recoveredBlock180Value0) forElement: (recoveredBlock180Value1).
    ^recoveredBlock180Value2
].
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) adjustConfig: (recoveredStack1) forElement: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 205 ifTrue: [
            recoveredPC := 346.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodLocal.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReference.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencePerDefaultIfUsedAsMethodLocalElement.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMonitoringVariable.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 251].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultConfigFor: (recoveredStack1).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := 'Hw'.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := 'call_85623'.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 272] ifFalse: [recoveredPC := 270].
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelfClass.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 280] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := 'Call_2008403753'.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 308] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 308] ifFalse: [recoveredPC := 300].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 310] ifFalse: [recoveredPC := 308].
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultConfigFor: (recoveredStack1).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 324].
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := (recoveredStack0) setConfig: (recoveredStack1) forElement: (recoveredStack2).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

