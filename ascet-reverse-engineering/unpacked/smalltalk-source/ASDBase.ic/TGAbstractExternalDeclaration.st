"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004288; bytecode file offset 0x90206c"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
addARXmlValidFilenameTemplateParameter: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200071f0; bytecode file offset 0x908be4"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
isExistingTool
    | recoveredValue0 |
    recoveredValue0 := (self) isValidTool.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000806c; bytecode file offset 0x908be4"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
basicGroup
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008e10; bytecode file offset 0x908be4"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
toolLabel
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d30c; bytecode file offset 0x909e08"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
checkForOsToolDeclaration: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000d44c; bytecode file offset 0x909e08"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
checkForCompilerDeclaration: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x200177e0; bytecode file offset 0x92209c"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
xmlBuildResultFileName
    ^'_asd_build_result.xml'
! !

"ASDBase.ic method 0x20017888; bytecode file offset 0x92209c"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
externalMakeResultFileName
    ^'_asd_build_result.log'
! !

"ASDBase.ic method 0x200190ac; bytecode file offset 0x92209c"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
rtioCategoryKeyName
    ^'rtioCategory'
! !

"ASDBase.ic method 0x2001a900; bytecode file offset 0x92209c"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
autosarVersionKeyName
    ^'autosarVersion'
! !

"ASDBase.ic method 0x2001bbf0; bytecode file offset 0x92209c"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
osCategoryKeyName
    ^'osCategory'
! !

"ASDBase.ic method 0x20022dcc; bytecode file offset 0x92209c"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
basePathKeyName
    ^'rootPath'
! !

"ASDBase.ic method 0x20023bac; bytecode file offset 0x92209c"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
arShortNameLengthKeyName
    ^'shortNameLength'
! !

"ASDBase.ic method 0x20027678; bytecode file offset 0x924260"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
isDeclarationFileExistent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027b08; bytecode file offset 0x92454c"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
isValidTool
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isMissingTool.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032254; bytecode file offset 0x934580"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
unknownLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) identifier.
    recoveredValue1 := (recoveredValue0) asUndefString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034134; bytecode file offset 0x934580"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
declCategoryLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) declCategoryLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034b44; bytecode file offset 0x934580"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
errLabelDeclarationCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) errLabelDeclarationCategory.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039d7c; bytecode file offset 0x938608"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062f00; bytecode file offset 0x95f8b0"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
optionGroup
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) label.
    recoveredValue2 := (recoveredValue0) optionGroup: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20065dc4; bytecode file offset 0x963428"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
declaration
    | recoveredValue0 |
    recoveredValue0 := declaration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007c564; bytecode file offset 0x97c330"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
isInternal
    ^false
! !

"ASDBase.ic method 0x2007dca4; bytecode file offset 0x97c330"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
isMissingTool
    ^false
! !

"ASDBase.ic method 0x2008c0f0; bytecode file offset 0x988b68"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
unknownToolLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errLabelDeclarationCategory.
    recoveredValue1 := ('"<unknown>" ') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bdf0c; bytecode file offset 0x9bb178"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
declaration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    declaration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be950; bytecode file offset 0x9bc0b4"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    identifier := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c090c; bytecode file offset 0x9bd228"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
label: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    label := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f86a4; bytecode file offset 0x9f4f88"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errLabelDeclarationCategory.
    recoveredValue1 := (recoveredValue0) , (' "').
    recoveredValue2 := (self) label.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('"').
    ^recoveredValue4
! !

"ASDBase.ic method 0x20107f58; bytecode file offset 0xa04844"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
getBasePath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) basePathKeyName.
    recoveredValue1 := (self) label.
    recoveredValue2 := ('c:\') , (recoveredValue1).
    recoveredValue3 := (self) getAttributeValue: (recoveredValue0) default: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asPathname.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2011bda4; bytecode file offset 0xa18670"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
xmlCategory
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) xmlCategoryPrefix.
    recoveredValue2 := (recoveredValue1) , ('\').
    recoveredValue3 := (self) identifier.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , ('\Options').
    ^recoveredValue5
! !

"ASDBase.ic method 0x201a7cbc; bytecode file offset 0xaa4580"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
getOption: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := (self) declaration.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := [].
    recoveredBlock5Value3 := (recoveredBlock5Value0) optionForKey: (recoveredBlock5Value1) ifNone: (recoveredBlock5Value2).
    ^recoveredBlock5Value3
].
    (recoveredValue0) notNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x201d5690; bytecode file offset 0xad1f58"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
identifier
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := identifier.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := (self) class.
    recoveredBlock6Value1 := (recoveredBlock6Value0) identifierAttributeKey.
    recoveredBlock6Value2 := (self) getAttributeValue: (recoveredBlock6Value1) default: ('unknown').
    recoveredBlock6Value3 := recoveredBlock6Value2.
    identifier := recoveredBlock6Value3.
    recoveredBlock6Value2
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := identifier.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201d5738; bytecode file offset 0xad2000"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := label.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := (self) class.
    recoveredBlock6Value1 := (recoveredBlock6Value0) labelAttributeKey.
    recoveredBlock6Value2 := (self) unknownToolLabel.
    recoveredBlock6Value3 := (self) getAttributeValue: (recoveredBlock6Value1) default: (recoveredBlock6Value2).
    recoveredBlock6Value4 := recoveredBlock6Value3.
    label := recoveredBlock6Value4.
    recoveredBlock6Value3
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := label.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201f360c; bytecode file offset 0xaefedc"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
declarationFilename
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInternal.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Internal'.
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
            recoveredStack0 := (recoveredStack0) declaration.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) declarationFiles.
    recoveredBlock13Value2 := (recoveredBlock13Value1) first.
    ^recoveredBlock13Value2
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := 'missing declaration file'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20229660; bytecode file offset 0xb25f20"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
hasOptionDeclaration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := [
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) declaration.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    ^false
].
    (recoveredValue2) optionForKey: (recoveredValue3) ifNone: (recoveredValue4).
    ^true
! !

"ASDBase.ic method 0x2028f4fc; bytecode file offset 0xb8bdf0"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
changeIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) identifier: (recoveredValue0).
    recoveredValue1 := (self) declaration.
    recoveredValue2 := [
    | recoveredBlock11Local1 recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 |
    recoveredBlock11Value0 := (self) declaration.
    recoveredBlock11Value1 := (self) class.
    recoveredBlock11Value2 := (recoveredBlock11Value1) identifierAttributeKey.
    recoveredBlock11Value3 := [
    ^self
].
    recoveredBlock11Value4 := (recoveredBlock11Value0) optionForKey: (recoveredBlock11Value2) ifNone: (recoveredBlock11Value3).
    recoveredBlock11Local1 := recoveredBlock11Value4.
    recoveredBlock11Value5 := recoveredBlock11Local1.
    recoveredBlock11Value6 := recoveredArg1.
    recoveredBlock11Value7 := (recoveredBlock11Value5) value: (recoveredBlock11Value6).
    recoveredBlock11Value7
].
    (recoveredValue1) notNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2028f520; bytecode file offset 0xb8bdf0"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
changeLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) label: (recoveredValue0).
    recoveredValue1 := (self) declaration.
    recoveredValue2 := [
    | recoveredBlock11Local1 recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 |
    recoveredBlock11Value0 := (self) declaration.
    recoveredBlock11Value1 := (self) class.
    recoveredBlock11Value2 := (recoveredBlock11Value1) labelAttributeKey.
    recoveredBlock11Value3 := [
    ^self
].
    recoveredBlock11Value4 := (recoveredBlock11Value0) optionForKey: (recoveredBlock11Value2) ifNone: (recoveredBlock11Value3).
    recoveredBlock11Local1 := recoveredBlock11Value4.
    recoveredBlock11Value5 := recoveredBlock11Local1.
    recoveredBlock11Value6 := recoveredArg1.
    recoveredBlock11Value7 := (recoveredBlock11Value5) value: (recoveredBlock11Value6).
    recoveredBlock11Value7
].
    (recoveredValue1) notNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202a9c10; bytecode file offset 0xba64e4"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) errLabelDeclarationCategory.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPutAll: ('... ').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) nextPutAll: ('     label : ').
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := (self) label.
    (recoveredValue6) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) nextPutAll: (' identifier: ').
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := (self) identifier.
    (recoveredValue10) nextPutAll: (recoveredValue11).
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x202cc8e4; bytecode file offset 0xbc91a8"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
getAttributeLabel: recoveredArg1 default: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := recoveredArg2.
    ^recoveredBlock8Value0
].
    recoveredValue3 := (recoveredValue0) optionForKey: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) label.
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := [
    | recoveredBlock31Value0 |
    recoveredBlock31Value0 := recoveredArg2.
    ^recoveredBlock31Value0
].
    (recoveredValue5) ifNil: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x203503e8; bytecode file offset 0xc4ccac"
!TGAbstractExternalDeclaration methodsFor: 'recovered'!
getAttributeValue: recoveredArg1 default: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) declaration.
    recoveredValue1 := [
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := recoveredArg2.
    ^recoveredBlock5Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) declaration.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    | recoveredBlock23Value0 |
    recoveredBlock23Value0 := recoveredArg2.
    ^recoveredBlock23Value0
].
    recoveredValue5 := (recoveredValue2) optionForKey: (recoveredValue3) ifNone: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue6) value.
    recoveredValue8 := recoveredValue7.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := [
    | recoveredBlock47Value0 |
    recoveredBlock47Value0 := recoveredArg2.
    ^recoveredBlock47Value0
].
    (recoveredValue7) ifNil: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

