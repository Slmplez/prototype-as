"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000eb0; bytecode file offset 0x8ffcfc"
!AMLBaseObject methodsFor: 'recovered'!
checkPartsAndKeywordsRecursive
    ^self
! !

"ASDBase.ic method 0x20002138; bytecode file offset 0x8ffcfc"
!AMLBaseObject methodsFor: 'recovered'!
checkPartsAndKeywords
    ^self
! !

"ASDBase.ic method 0x20003678; bytecode file offset 0x90206c"
!AMLBaseObject methodsFor: 'recovered'!
getCollectionEnd1: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003780; bytecode file offset 0x90206c"
!AMLBaseObject methodsFor: 'recovered'!
addComments: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004440; bytecode file offset 0x90206c"
!AMLBaseObject methodsFor: 'recovered'!
getCollectionEnd2: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004650; bytecode file offset 0x90206c"
!AMLBaseObject methodsFor: 'recovered'!
getCollectionEnd: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004d58; bytecode file offset 0x90206c"
!AMLBaseObject methodsFor: 'recovered'!
getCollectionEnd3: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004fa0; bytecode file offset 0x90206c"
!AMLBaseObject methodsFor: 'recovered'!
generateCode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004ff8; bytecode file offset 0x90206c"
!AMLBaseObject methodsFor: 'recovered'!
endOfStatement: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000896c; bytecode file offset 0x908be4"
!AMLBaseObject methodsFor: 'recovered'!
isValid
    | recoveredValue0 |
    recoveredValue0 := (self) hasAMLValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012840; bytecode file offset 0x912098"
!AMLBaseObject methodsFor: 'recovered'!
BlockDepth
    | recoveredValue0 |
    recoveredValue0 := BlockDepth.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012930; bytecode file offset 0x912098"
!AMLBaseObject methodsFor: 'recovered'!
idAccessorClass
    | recoveredValue0 |
    recoveredValue0 := DBU16Item.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019388; bytecode file offset 0x92209c"
!AMLBaseObject methodsFor: 'recovered'!
getDefaultGetMethod
    ^'getBoolType:'
! !

"ASDBase.ic method 0x2001acc0; bytecode file offset 0x92209c"
!AMLBaseObject methodsFor: 'recovered'!
selectorPrefix
    ^'o'
! !

"ASDBase.ic method 0x2001cb5c; bytecode file offset 0x92209c"
!AMLBaseObject methodsFor: 'recovered'!
getModuleSetMethod
    ^'addIFData:'
! !

"ASDBase.ic method 0x2002754c; bytecode file offset 0x924260"
!AMLBaseObject methodsFor: 'recovered'!
taggedStructNeeded
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002be94; bytecode file offset 0x934580"
!AMLBaseObject methodsFor: 'recovered'!
keyWords
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyWords.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c6a4; bytecode file offset 0x934580"
!AMLBaseObject methodsFor: 'recovered'!
idAccessorClassByteSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) idAccessorClass.
    recoveredValue1 := (recoveredValue0) byteSize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200384cc; bytecode file offset 0x935c54"
!AMLBaseObject methodsFor: 'recovered'!
getNextItemFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) nextWordBySeparators.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b4a4; bytecode file offset 0x938608"
!AMLBaseObject methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) parse: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040bb8; bytecode file offset 0x93d83c"
!AMLBaseObject methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parts.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040de0; bytecode file offset 0x93d83c"
!AMLBaseObject methodsFor: 'recovered'!
maxPartSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parts.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041bf4; bytecode file offset 0x93e560"
!AMLBaseObject methodsFor: 'recovered'!
generateRootClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) generateRootClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041df4; bytecode file offset 0x93e6d0"
!AMLBaseObject methodsFor: 'recovered'!
lastOffset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := accessor.
    recoveredValue1 := (recoveredValue0) lastOffset.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20053100; bytecode file offset 0x9505d0"
!AMLBaseObject methodsFor: 'recovered'!
begin: recoveredArg1
    (self) incBlockDepth.
    ^self
! !

"ASDBase.ic method 0x20053850; bytecode file offset 0x9505d0"
!AMLBaseObject methodsFor: 'recovered'!
endOfBlock: recoveredArg1
    (self) decBlockDepth.
    ^self
! !

"ASDBase.ic method 0x20059eb8; bytecode file offset 0x956800"
!AMLBaseObject methodsFor: 'recovered'!
generateClassAccessMethodStruct: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) generateClassAccessMethodStruct: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066044; bytecode file offset 0x963428"
!AMLBaseObject methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006627c; bytecode file offset 0x963428"
!AMLBaseObject methodsFor: 'recovered'!
getDefineName
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066ab4; bytecode file offset 0x963428"
!AMLBaseObject methodsFor: 'recovered'!
valueKeyWord
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006729c; bytecode file offset 0x9646f8"
!AMLBaseObject methodsFor: 'recovered'!
parts
    | recoveredValue0 |
    recoveredValue0 := parts.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200681ec; bytecode file offset 0x965b90"
!AMLBaseObject methodsFor: 'recovered'!
typeName
    | recoveredValue0 |
    recoveredValue0 := typeName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a138; bytecode file offset 0x966bdc"
!AMLBaseObject methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a78c; bytecode file offset 0x967a18"
!AMLBaseObject methodsFor: 'recovered'!
startingDepth
    | recoveredValue0 |
    recoveredValue0 := startingDepth.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bd00; bytecode file offset 0x96873c"
!AMLBaseObject methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c974; bytecode file offset 0x9692b0"
!AMLBaseObject methodsFor: 'recovered'!
accessor
    | recoveredValue0 |
    recoveredValue0 := accessor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d078; bytecode file offset 0x969c04"
!AMLBaseObject methodsFor: 'recovered'!
id
    | recoveredValue0 |
    recoveredValue0 := id.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d52c; bytecode file offset 0x96a390"
!AMLBaseObject methodsFor: 'recovered'!
definition
    | recoveredValue0 |
    recoveredValue0 := definition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007186c; bytecode file offset 0x96e578"
!AMLBaseObject methodsFor: 'recovered'!
taggedStructSize
    ^0
! !

"ASDBase.ic method 0x20071884; bytecode file offset 0x96e578"
!AMLBaseObject methodsFor: 'recovered'!
extraSize
    ^0
! !

"ASDBase.ic method 0x20073698; bytecode file offset 0x970b34"
!AMLBaseObject methodsFor: 'recovered'!
errors
    ^nil
! !

"ASDBase.ic method 0x20076b84; bytecode file offset 0x9757c8"
!AMLBaseObject methodsFor: 'recovered'!
isValidMemoryLayoutIfData
    ^true
! !

"ASDBase.ic method 0x2007cfa4; bytecode file offset 0x97c330"
!AMLBaseObject methodsFor: 'recovered'!
hasKeyWords
    ^false
! !

"ASDBase.ic method 0x2007d6e4; bytecode file offset 0x97c330"
!AMLBaseObject methodsFor: 'recovered'!
hasBegin
    ^false
! !

"ASDBase.ic method 0x20086ea8; bytecode file offset 0x98376c"
!AMLBaseObject methodsFor: 'recovered'!
generateCodeStructAndBlock: recoveredArg1 pathName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) generateCodeStructAndBlockBase: (recoveredValue0) pathName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20089004; bytecode file offset 0x9858bc"
!AMLBaseObject methodsFor: 'recovered'!
incBlockDepth
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := BlockDepth.
    recoveredValue1 := (recoveredValue0) + (1).
    BlockDepth := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20092e60; bytecode file offset 0x98f718"
!AMLBaseObject methodsFor: 'recovered'!
addError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parent.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addError: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20096504; bytecode file offset 0x992dbc"
!AMLBaseObject methodsFor: 'recovered'!
getName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getString: (recoveredValue0).
    name := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2009abc4; bytecode file offset 0x997488"
!AMLBaseObject methodsFor: 'recovered'!
generateClassAccessMethod: recoveredArg1 pathName: recoveredArg2 for: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) generateClassAccessMethodNoCollection: (recoveredValue1) pathName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a2f8c; bytecode file offset 0x99f844"
!AMLBaseObject methodsFor: 'recovered'!
getMappingResult: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parent.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getMappingResultFor: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aa3b4; bytecode file offset 0x9a6c6c"
!AMLBaseObject methodsFor: 'recovered'!
putSeparatorIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPut: ($ ).
    ^self
! !

"ASDBase.ic method 0x200b895c; bytecode file offset 0x9b5218"
!AMLBaseObject methodsFor: 'recovered'!
getPartIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) indexOf: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be5e4; bytecode file offset 0x9bb178"
!AMLBaseObject methodsFor: 'recovered'!
setDefineName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be68c; bytecode file offset 0x9bb178"
!AMLBaseObject methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf7f8; bytecode file offset 0x9bc0b4"
!AMLBaseObject methodsFor: 'recovered'!
parts: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parts := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfebc; bytecode file offset 0x9bd228"
!AMLBaseObject methodsFor: 'recovered'!
typeName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    typeName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c10d0; bytecode file offset 0x9bdf14"
!AMLBaseObject methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1cb4; bytecode file offset 0x9beac8"
!AMLBaseObject methodsFor: 'recovered'!
startingDepth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startingDepth := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c23d0; bytecode file offset 0x9bf474"
!AMLBaseObject methodsFor: 'recovered'!
parentCopy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c23e0; bytecode file offset 0x9bf474"
!AMLBaseObject methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2c64; bytecode file offset 0x9bfde0"
!AMLBaseObject methodsFor: 'recovered'!
accessor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    accessor := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3a10; bytecode file offset 0x9c058c"
!AMLBaseObject methodsFor: 'recovered'!
id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    id := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c421c; bytecode file offset 0x9c0bf0"
!AMLBaseObject methodsFor: 'recovered'!
definition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    definition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d8b64; bytecode file offset 0x9d5450"
!AMLBaseObject methodsFor: 'recovered'!
createAccessor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) idAccessorClassByteSize.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredValue3 := (self) createPartsAccessor: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    accessor := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dcc50; bytecode file offset 0x9d950c"
!AMLBaseObject methodsFor: 'recovered'!
generateClassAccessMethod: recoveredArg1 pathName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) parent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) generateClassAccessMethod: (recoveredValue2) pathName: (recoveredValue3) for: (self).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e0b00; bytecode file offset 0x9dd3bc"
!AMLBaseObject methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    parts := recoveredValue1.
    id := 0.
    ^self
! !

"ASDBase.ic method 0x200e7434; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addEnumType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200e7444; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addUCharType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200e7454; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addTaggedUnionType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200e7464; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addLongType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200e7474; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addCollection: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200e7484; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addDoubleType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200e7494; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addIntType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200e74a4; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addBoolType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200e74b4; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addTaggedStructType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200e74c4; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addCharType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200e74d4; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addFloatType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200e74e4; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addStructType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200e74f4; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addUIntType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200e7504; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addULongType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200e7514; bytecode file offset 0x9e3dd0"
!AMLBaseObject methodsFor: 'recovered'!
addBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x200eebfc; bytecode file offset 0x9eb520"
!AMLBaseObject methodsFor: 'recovered'!
select: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    (self) select: (recoveredValue2) in: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eec38; bytecode file offset 0x9eb520"
!AMLBaseObject methodsFor: 'recovered'!
getPartsNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    (self) getPartsNamed: (recoveredValue2) in: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200eeff8; bytecode file offset 0x9eb8b4"
!AMLBaseObject methodsFor: 'recovered'!
putIdValue: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) idAccessor.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := id.
    recoveredValue3 := recoveredArg1.
    (recoveredValue1) putItem: (recoveredValue2) in: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20102b18; bytecode file offset 0x9ff3f4"
!AMLBaseObject methodsFor: 'recovered'!
collectNamedOrIndex
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) collectNamedOrIndexIn: (recoveredValue2) path: ('').
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201058cc; bytecode file offset 0xa0219c"
!AMLBaseObject methodsFor: 'recovered'!
hasParts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010c768; bytecode file offset 0xa0902c"
!AMLBaseObject methodsFor: 'recovered'!
logWarning: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) addText: (recoveredValue3).
    recoveredValue4 := (self) printString.
    (recoveredValue1) addText: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2011e220; bytecode file offset 0xa1aae4"
!AMLBaseObject methodsFor: 'recovered'!
addDefinition: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) addDefinition: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011e22c; bytecode file offset 0xa1aae4"
!AMLBaseObject methodsFor: 'recovered'!
getDefinition: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefinition: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012468c; bytecode file offset 0xa20f54"
!AMLBaseObject methodsFor: 'recovered'!
putValueIn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) putValueIn: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) contents.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20124b28; bytecode file offset 0xa213e4"
!AMLBaseObject methodsFor: 'recovered'!
findReducedTreeWithValues
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) checkPartsAndKeywordsRecursive.
    recoveredValue0 := (self) reduceToPartsWithValueAndCopyTree.
    recoveredLocal1 := recoveredValue0.
    (self) checkPartsAndKeywordsRecursive.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) checkPartsAndKeywordsRecursive.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20127eb0; bytecode file offset 0xa24778"
!AMLBaseObject methodsFor: 'recovered'!
idAccessor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := DBU16Item.
    recoveredValue1 := accessor.
    recoveredValue2 := (recoveredValue1) offset.
    recoveredValue3 := (recoveredValue2) + (-2).
    recoveredValue4 := name.
    recoveredValue5 := ('Define ') , (recoveredValue4).
    recoveredValue6 := (recoveredValue0) create: (recoveredValue3) name: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20129148; bytecode file offset 0xa25a08"
!AMLBaseObject methodsFor: 'recovered'!
collectKeyWords
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c94bcArg1 | 
    | block280c94bcValue0 block280c94bcValue1 |
    block280c94bcValue0 := block280c94bcArg1.
    block280c94bcValue1 := (block280c94bcValue0) collectKeyWords.
    block280c94bcValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20129cf4; bytecode file offset 0xa265d0"
!AMLBaseObject methodsFor: 'recovered'!
generateRootClassNamePrefix
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateRootClassNamePrefix.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129d0c; bytecode file offset 0xa265d0"
!AMLBaseObject methodsFor: 'recovered'!
generateRootClassName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateRootClassName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012f0ec; bytecode file offset 0xa2b9b0"
!AMLBaseObject methodsFor: 'recovered'!
etasDevHalt
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) HaltOnErrors.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super etasDevHalt.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20131c10; bytecode file offset 0xa2e4d4"
!AMLBaseObject methodsFor: 'recovered'!
printValueOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('value: ').
    recoveredValue1 := value.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) cr.
    ^self
! !

"ASDBase.ic method 0x201322f8; bytecode file offset 0xa2ebd4"
!AMLBaseObject methodsFor: 'recovered'!
putBlockBeginIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putLevelIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: (' { ').
    recoveredValue2 := recoveredArg1.
    (self) putCommentIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20137dc8; bytecode file offset 0xa34688"
!AMLBaseObject methodsFor: 'recovered'!
enumerate: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new: (512).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    (self) enumerate: (recoveredValue2) in: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2013ab74; bytecode file offset 0xa37430"
!AMLBaseObject methodsFor: 'recovered'!
emMutate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parts.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) parent: (self).
    recoveredBlock6Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20147624; bytecode file offset 0xa43ee8"
!AMLBaseObject methodsFor: 'recovered'!
generateCode: recoveredArg1 pathName: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateCode: (recoveredStack1) pathName: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20159fc4; bytecode file offset 0xa56880"
!AMLBaseObject methodsFor: 'recovered'!
countObjectsIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parent.
    recoveredLocal1 := recoveredValue0.
    parent := nil.
    recoveredValue1 := recoveredArg1.
    super countObjectsIn: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    parent := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x201673bc; bytecode file offset 0xa63ca0"
!AMLBaseObject methodsFor: 'recovered'!
addKeyWords: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyWords.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) keyWords: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyWords.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20167dd4; bytecode file offset 0xa646b0"
!AMLBaseObject methodsFor: 'recovered'!
printCOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parts.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) printCOn: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20167de4; bytecode file offset 0xa646b0"
!AMLBaseObject methodsFor: 'recovered'!
getValueFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parts.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) getValueFrom: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2016e6d8; bytecode file offset 0xa6af94"
!AMLBaseObject methodsFor: 'recovered'!
decBlockDepth
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := BlockDepth.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            BlockDepth := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := BlockDepth.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017582c; bytecode file offset 0xa72138"
!AMLBaseObject methodsFor: 'recovered'!
putValueEndIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := ASAP2BaseObject.
    recoveredValue4 := (recoveredValue3) endKeyWord.
    recoveredValue5 := (recoveredValue4) last.
    (recoveredValue2) nextPutAll: (recoveredValue5).
    (recoveredValue1) nextPut: ($ ).
    ^self
! !

"ASDBase.ic method 0x2017584c; bytecode file offset 0xa72138"
!AMLBaseObject methodsFor: 'recovered'!
putValueBeginIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := ASAP2BaseObject.
    recoveredValue4 := (recoveredValue3) beginKeyWord.
    recoveredValue5 := (recoveredValue4) last.
    (recoveredValue2) nextPutAll: (recoveredValue5).
    (recoveredValue1) nextPut: ($ ).
    ^self
! !

"ASDBase.ic method 0x2017b94c; bytecode file offset 0xa782b8"
!AMLBaseObject methodsFor: 'recovered'!
getLongType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AMLLongType.
    recoveredValue1 := typeName.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) addLongType: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) getFrom: (recoveredValue5).
    typeName := nil.
    ^self
! !

"ASDBase.ic method 0x2017b964; bytecode file offset 0xa782b8"
!AMLBaseObject methodsFor: 'recovered'!
getULongType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AMLULongType.
    recoveredValue1 := typeName.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) addULongType: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) getFrom: (recoveredValue5).
    typeName := nil.
    ^self
! !

"ASDBase.ic method 0x2017b97c; bytecode file offset 0xa782b8"
!AMLBaseObject methodsFor: 'recovered'!
getUCharType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AMLUCharType.
    recoveredValue1 := typeName.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) addUCharType: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) getFrom: (recoveredValue5).
    typeName := nil.
    ^self
! !

"ASDBase.ic method 0x2017b994; bytecode file offset 0xa782b8"
!AMLBaseObject methodsFor: 'recovered'!
getIntType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AMLIntType.
    recoveredValue1 := typeName.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) addIntType: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) getFrom: (recoveredValue5).
    typeName := nil.
    ^self
! !

"ASDBase.ic method 0x2017b9ac; bytecode file offset 0xa782b8"
!AMLBaseObject methodsFor: 'recovered'!
getBoolType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AMLBoolType.
    recoveredValue1 := typeName.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) addBoolType: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) getFrom: (recoveredValue5).
    typeName := nil.
    ^self
! !

"ASDBase.ic method 0x2017b9c4; bytecode file offset 0xa782b8"
!AMLBaseObject methodsFor: 'recovered'!
getUIntType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AMLUIntType.
    recoveredValue1 := typeName.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) addUIntType: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) getFrom: (recoveredValue5).
    typeName := nil.
    ^self
! !

"ASDBase.ic method 0x2017b9dc; bytecode file offset 0xa782b8"
!AMLBaseObject methodsFor: 'recovered'!
getFloatType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AMLFloatType.
    recoveredValue1 := typeName.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) addFloatType: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) getFrom: (recoveredValue5).
    typeName := nil.
    ^self
! !

"ASDBase.ic method 0x2017b9f4; bytecode file offset 0xa782b8"
!AMLBaseObject methodsFor: 'recovered'!
getDoubleType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AMLDoubleType.
    recoveredValue1 := typeName.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) addDoubleType: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) getFrom: (recoveredValue5).
    typeName := nil.
    ^self
! !

"ASDBase.ic method 0x2017ba24; bytecode file offset 0xa782e8"
!AMLBaseObject methodsFor: 'recovered'!
getCharType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AMLCharType.
    recoveredValue1 := typeName.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) getFrom: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (self) addCharType: (recoveredValue5).
    typeName := nil.
    ^self
! !

"ASDBase.ic method 0x2017c4b0; bytecode file offset 0xa78d84"
!AMLBaseObject methodsFor: 'recovered'!
shortBegin: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) peekWord.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := ${.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018252c; bytecode file offset 0xa7edf0"
!AMLBaseObject methodsFor: 'recovered'!
restoreParents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) parts.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    (recoveredBlock5Value0) parent: (self).
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) restoreParents.
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20194894; bytecode file offset 0xa91158"
!AMLBaseObject methodsFor: 'recovered'!
addTo: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201970c0; bytecode file offset 0xa93988"
!AMLBaseObject methodsFor: 'recovered'!
localAccessCode: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: (' createFor: (aml ').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) localPartsAccessCode: (recoveredValue3).
    (recoveredValue2) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) nextPutAll: (' ) ').
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x20199bc0; bytecode file offset 0xa96490"
!AMLBaseObject methodsFor: 'recovered'!
putIn
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    (recoveredValue0) BlockDepth: (0).
    recoveredValue1 := ProgressingReadWriteStream.
    recoveredValue2 := (recoveredValue1) on: ('').
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) putIn: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) contents.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019f740; bytecode file offset 0xa9c004"
!AMLBaseObject methodsFor: 'recovered'!
localName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) enumerationBaseName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := parent.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPartIndex: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a473c; bytecode file offset 0xaa100c"
!AMLBaseObject methodsFor: 'recovered'!
logError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (ASAP2BaseObject new).
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) logError: (recoveredValue1) word: ('AML').
    recoveredValue2 := SGMonitorStreamDummy.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) addText: (recoveredValue5).
    recoveredValue6 := (self) printString.
    (recoveredValue3) addText: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201a7830; bytecode file offset 0xaa40f0"
!AMLBaseObject methodsFor: 'recovered'!
copyPartsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parts.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) copyTree.
    recoveredBlock6Local1 := recoveredBlock6Value1.
    recoveredBlock6Value2 := recoveredBlock6Local1.
    recoveredBlock6Value3 := recoveredArg1.
    (recoveredBlock6Value2) parentCopy: (recoveredBlock6Value3).
    recoveredBlock6Value4 := recoveredBlock6Local1.
    recoveredBlock6Value4
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201ab68c; bytecode file offset 0xaa7f54"
!AMLBaseObject methodsFor: 'recovered'!
getBlockDefinition: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := AMLBlock.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) parent: (self).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) getFrom: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) parent: (self).
    recoveredValue6 := recoveredLocal1.
    (self) addBlock: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201b591c; bytecode file offset 0xab21dc"
!AMLBaseObject methodsFor: 'recovered'!
printErrorsOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) errors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) errors.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) printOn: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ce060; bytecode file offset 0xaca91c"
!AMLBaseObject methodsFor: 'recovered'!
setStartingDepth: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    startingDepth := recoveredValue0.
    recoveredValue1 := parts.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) setStartingDepth: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201ce08c; bytecode file offset 0xaca950"
!AMLBaseObject methodsFor: 'recovered'!
putPartsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) incBlockDepth.
    recoveredValue0 := parts.
    recoveredValue1 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) putIn: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    (recoveredValue0) do: (recoveredValue1).
    (self) decBlockDepth.
    ^self
! !

"ASDBase.ic method 0x201d1fd8; bytecode file offset 0xace89c"
!AMLBaseObject methodsFor: 'recovered'!
nextWordBySeparators: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) nextWordBySeparators.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := $".
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201db1e0; bytecode file offset 0xad7aa0"
!AMLBaseObject methodsFor: 'recovered'!
putValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putIdValue: (recoveredValue0).
    recoveredValue1 := parts.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) putValue: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201e1fec; bytecode file offset 0xade8b4"
!AMLBaseObject methodsFor: 'recovered'!
checkParent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parts.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) parent.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack1 == recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 23] ifFalse: [recoveredBlock6PC := 18].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            super etasDevHalt.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) checkParent.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201ef608; bytecode file offset 0xaebec4"
!AMLBaseObject methodsFor: 'recovered'!
emWriteObjectOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := parent.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := accessor.
    recoveredLocal1 := recoveredValue1.
    parent := nil.
    accessor := nil.
    recoveredValue2 := recoveredArg1.
    super emWriteObjectOn: (recoveredValue2).
    recoveredValue3 := recoveredLocal2.
    parent := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    accessor := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x201efc20; bytecode file offset 0xaec4dc"
!AMLBaseObject methodsFor: 'recovered'!
dumpSize
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := parent.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := accessor.
    recoveredLocal1 := recoveredValue1.
    parent := nil.
    accessor := nil.
    recoveredValue2 := super dumpSize.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    parent := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    accessor := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201fe004; bytecode file offset 0xafa8cc"
!AMLBaseObject methodsFor: 'recovered'!
clearValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            value := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            startingDepth := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) BlockDepth: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:block280d8990Arg1 | 
    | block280d8990Value0 block280d8990Value1 |
    block280d8990Value0 := block280d8990Arg1.
    block280d8990Value1 := (block280d8990Value0) clearValue.
    block280d8990Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20201ab8; bytecode file offset 0xafe37c"
!AMLBaseObject methodsFor: 'recovered'!
putLevelIn: recoveredArg1
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
            (recoveredStack1) cr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) BlockDepth.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (Character value: 9).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 isInteger) ifTrue: [(recoveredStack0 > 0) ifTrue: [recoveredStack0 := recoveredStack0 - 1. recoveredPC := 12] ifFalse: [recoveredPC := 28]] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20201dbc; bytecode file offset 0xafe688"
!AMLBaseObject methodsFor: 'recovered'!
addPartsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) typeName.
    typeName := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) parts.
    recoveredValue4 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Local1 recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) copyTree.
    recoveredBlock10Local1 := recoveredBlock10Value1.
    recoveredBlock10Value2 := recoveredBlock10Local1.
    (recoveredBlock10Value2) parentCopy: (self).
    recoveredBlock10Value3 := recoveredBlock10Local1.
    recoveredBlock10Value4 := (recoveredBlock10Value3) addTo: (self).
    recoveredBlock10Value4
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20206434; bytecode file offset 0xb02cfc"
!AMLBaseObject methodsFor: 'recovered'!
collectNamedOrIndexUnique
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectNamedOrIndex.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block280d989cArg1 | 
    | block280d989cStack0 block280d989cStack1 block280d989cStack2 block280d989cStack3 block280d989cPC block280d989cStep block280d989cDone block280d989cResult |
    block280d989cStack0 := self.
    block280d989cPC := 4.
    block280d989cDone := false.
    [block280d989cDone not] whileTrue: [
        block280d989cStep := block280d989cPC.
        block280d989cStep = 4 ifTrue: [
            block280d989cStack1 := block280d989cArg1.
            block280d989cPC := 5.
        ].
        block280d989cStep = 5 ifTrue: [
            block280d989cStack1 := (block280d989cStack1) isCollection.
            block280d989cPC := 6.
        ].
        block280d989cStep = 6 ifTrue: [
            (block280d989cStack1) ifTrue: [block280d989cPC := 10] ifFalse: [block280d989cPC := 18].
        ].
        block280d989cStep = 10 ifTrue: [
            block280d989cStack1 := block280d989cArg1.
            block280d989cPC := 11.
        ].
        block280d989cStep = 11 ifTrue: [
            block280d989cStack1 := (block280d989cStack1) size.
            block280d989cPC := 12.
        ].
        block280d989cStep = 12 ifTrue: [
            block280d989cStack2 := 1.
            block280d989cPC := 14.
        ].
        block280d989cStep = 14 ifTrue: [
            block280d989cStack1 := (block280d989cStack1) = (block280d989cStack2).
            block280d989cPC := 15.
        ].
        block280d989cStep = 15 ifTrue: [
            block280d989cPC := 19.
        ].
        block280d989cStep = 18 ifTrue: [
            block280d989cStack1 := false.
            block280d989cPC := 19.
        ].
        block280d989cStep = 19 ifTrue: [
            block280d989cResult := block280d989cStack1.
            block280d989cDone := true.
        ].
    ].
    block280d989cResult
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020761c; bytecode file offset 0xb03ee4"
!AMLBaseObject methodsFor: 'recovered'!
getString: recoveredArg1
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
            recoveredStack0 := super getString: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) firstOrNil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := $".
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x20216664; bytecode file offset 0xb12f30"
!AMLBaseObject methodsFor: 'recovered'!
reduceToPartsWithValueAndCopyTree
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280daa78Arg1 | 
    | block280daa78Value0 block280daa78Value1 |
    block280daa78Value0 := block280daa78Arg1.
    block280daa78Value1 := (block280daa78Value0) hasAMLValue.
    block280daa78Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block280daa9cArg1 | 
    | block280daa9cValue0 block280daa9cValue1 |
    block280daa9cValue0 := block280daa9cArg1.
    block280daa9cValue1 := (block280daa9cValue0) reduceToPartsWithValueAndCopyTree.
    block280daa9cValue1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyForReduceParts: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202179f0; bytecode file offset 0xb142bc"
!AMLBaseObject methodsFor: 'recovered'!
reduceToPartsWithValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280dab98Arg1 | 
    | block280dab98Value0 block280dab98Value1 |
    block280dab98Value0 := block280dab98Arg1.
    block280dab98Value1 := (block280dab98Value0) hasAMLValue.
    block280dab98Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            parts := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280dabbcArg1 | 
    | block280dabbcValue0 block280dabbcValue1 |
    block280dabbcValue0 := block280dabbcArg1.
    block280dabbcValue1 := (block280dabbcValue0) reduceToPartsWithValue.
    block280dabbcValue1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022032c; bytecode file offset 0xb1cbf8"
!AMLBaseObject methodsFor: 'recovered'!
getCollectionBegin: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := AMLCollection.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) addCollection: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) parent: (self).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) getFrom: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) parent: (self).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := typeName.
    (recoveredValue7) typeName: (recoveredValue8).
    typeName := nil.
    ^self
! !

"ASDBase.ic method 0x2022884c; bytecode file offset 0xb25118"
!AMLBaseObject methodsFor: 'recovered'!
putTaggedValueIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) putValueIn: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022891c; bytecode file offset 0xb251e4"
!AMLBaseObject methodsFor: 'recovered'!
printInPartsListOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (Character value: 9).
    (recoveredValue2) nextPut: (recoveredValue3).
    recoveredValue4 := (self) name.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (Character value: 9).
    (recoveredValue6) nextPut: (recoveredValue7).
    recoveredValue8 := (self) hasAMLValue.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) printOn: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2023303c; bytecode file offset 0xb2f90c"
!AMLBaseObject methodsFor: 'recovered'!
putEndIn: recoveredArg1
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
            (recoveredStack0) putLevelIn: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AMLCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := ' } '.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := ' } ; '.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) putCommentIn: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20238164; bytecode file offset 0xb34a34"
!AMLBaseObject methodsFor: 'recovered'!
beginOfBlock: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) incBlockDepth.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            typeName := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyWords.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := typeName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) position: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            typeName := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023a0d8; bytecode file offset 0xb369a0"
!AMLBaseObject methodsFor: 'recovered'!
getEnumType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AMLEnumType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := typeName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) addEnumType: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFrom: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) addPartsFrom: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            typeName := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202420cc; bytecode file offset 0xb3e994"
!AMLBaseObject methodsFor: 'recovered'!
getMappingName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefineName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMappingName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Association.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := parent.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPartIndex: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) key: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := Association.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := parent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) getDefineName.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := parent.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPartIndex: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) key: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2024f8fc; bytecode file offset 0xb4c1c4"
!AMLBaseObject methodsFor: 'recovered'!
getValueString: recoveredArg1
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
            (recoveredStack1) skipSeparators.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := $".
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) next.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := $".
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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

"ASDBase.ic method 0x20254184; bytecode file offset 0xb50a5c"
!AMLBaseObject methodsFor: 'recovered'!
getAccessCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) definition.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) and: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := '( '.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAccessCode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) localPartsAccessCode: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ' ) '.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := '( aml  ) '.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025c218; bytecode file offset 0xb58ad4"
!AMLBaseObject methodsFor: 'recovered'!
enumerateParts: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := parts.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := recoveredArg2.
    recoveredBlock12Value3 := (recoveredBlock12Value0) enumerate: (recoveredBlock12Value1) in: (recoveredBlock12Value2).
    recoveredBlock12Value4 := recoveredBlock12Value3.
    recoveredLocal1 := recoveredBlock12Value4.
    recoveredBlock12Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2025d5d4; bytecode file offset 0xb59ea0"
!AMLBaseObject methodsFor: 'recovered'!
getTaggedUnionType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AMLTaggedUnionType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFrom: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) addTaggedUnionType: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) addPartsFrom: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            typeName := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20261a10; bytecode file offset 0xb5e2e8"
!AMLBaseObject methodsFor: 'recovered'!
localPartsAccessCode: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ' parts at: '.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) parent.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPartIndex: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ' ifAbsent: [ ^nil ]  '.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := '  parts detect: [ :p | p name = '''.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := ''' ] ifNone: [ ^nil ]  '.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202632a4; bytecode file offset 0xb5fb68"
!AMLBaseObject methodsFor: 'recovered'!
select: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := recoveredArg1.
    recoveredBlock20Value2 := recoveredArg2.
    recoveredBlock20Value3 := (recoveredBlock20Value0) select: (recoveredBlock20Value1) in: (recoveredBlock20Value2).
    recoveredBlock20Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026b9b8; bytecode file offset 0xb68274"
!AMLBaseObject methodsFor: 'recovered'!
hasAMLValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := nil.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 28.
        ].
        recoveredBlock20Step = 28 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) hasAMLValue.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 32] ifFalse: [recoveredBlock20PC := 35].
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20PC := 33.
        ].
        recoveredBlock20Step = 33 ifTrue: [
            recoveredBlock20Stack1 := true.
            recoveredBlock20PC := 34.
        ].
        recoveredBlock20Step = 34 ifTrue: [
            ^recoveredBlock20Stack1
        ].
        recoveredBlock20Step = 35 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2026f9dc; bytecode file offset 0xb6c2a4"
!AMLBaseObject methodsFor: 'recovered'!
createAccessor
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAccessor: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := AMLCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAccessor: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAccessor: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20275ac4; bytecode file offset 0xb72398"
!AMLBaseObject methodsFor: 'recovered'!
enumerationName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefineName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefineName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumerationName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) enumerationBaseName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPartIndex: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20285c34; bytecode file offset 0xb824f8"
!AMLBaseObject methodsFor: 'recovered'!
getPartsNamed: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := recoveredArg2.
    recoveredBlock6Value3 := (recoveredBlock6Value0) getPartsNamed: (recoveredBlock6Value1) in: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20295730; bytecode file offset 0xb91ff8"
!AMLBaseObject methodsFor: 'recovered'!
readNextPartsFromBytes: recoveredArg1 startingAt: recoveredArg2 idAccessor: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) offset: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getItemFrom: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) byteSize.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEnumerationId: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) readFromBytes: (recoveredStack1) startingAt: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029b034; bytecode file offset 0xb9790c"
!AMLBaseObject methodsFor: 'recovered'!
copyForReduceParts
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := name.
    (recoveredValue3) name: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := typeName.
    (recoveredValue5) typeName: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := definition.
    (recoveredValue7) definition: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := value.
    (recoveredValue9) value: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := startingDepth.
    (recoveredValue11) startingDepth: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := id.
    (recoveredValue13) id: (recoveredValue14).
    recoveredValue15 := parent.
    (recoveredValue2) parent: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

"ASDBase.ic method 0x2029e0a0; bytecode file offset 0xb9a96c"
!AMLBaseObject methodsFor: 'recovered'!
getStructType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AMLStructType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := typeName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFrom: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) addStructType: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) addPartsFrom: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := typeName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            definition := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            typeName := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a86e0; bytecode file offset 0xba4fb0"
!AMLBaseObject methodsFor: 'recovered'!
pathName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) enumerationBaseName.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := parent.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPartIndex: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202aaadc; bytecode file offset 0xba739c"
!AMLBaseObject methodsFor: 'recovered'!
getPartNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := parts.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) name.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 25].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := parts.
    recoveredValue3 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := recoveredArg1.
    recoveredBlock30Value2 := (recoveredBlock30Value0) getPartNamed: (recoveredBlock30Value1).
    recoveredBlock30Value2
].
    (recoveredValue2) do: (recoveredValue3).
    ^nil
! !

"ASDBase.ic method 0x202b3fc0; bytecode file offset 0xbb0898"
!AMLBaseObject methodsFor: 'recovered'!
putCommentIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: (' /* ').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) keyWord.
    (recoveredValue2) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (Character value: 9).
    (recoveredValue5) nextPut: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) name.
    (recoveredValue7) nextPutAll: (recoveredValue8).
    recoveredValue9 := (Character value: 9).
    (recoveredValue0) nextPut: (recoveredValue9).
    recoveredValue10 := (self) class.
    recoveredValue11 := (recoveredValue10) BlockDepth.
    recoveredValue12 := recoveredArg1.
    (recoveredValue11) printOn: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    (recoveredValue13) nextPutAll: ('	*/').
    ^self
! !

"ASDBase.ic method 0x202b79ac; bytecode file offset 0xbb4280"
!AMLBaseObject methodsFor: 'recovered'!
copyCurPos: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) position.
    recoveredValue3 := (recoveredValue2) - (128).
    recoveredValue4 := (recoveredValue3) max: (1).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) position.
    recoveredValue7 := (recoveredValue0) copyFrom: (recoveredValue4) to: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) , ('>>>>').
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) position.
    recoveredValue12 := (recoveredValue11) + (1).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) position.
    recoveredValue15 := (recoveredValue14) + (128).
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) collection.
    recoveredValue18 := (recoveredValue17) size.
    recoveredValue19 := (recoveredValue15) min: (recoveredValue18).
    recoveredValue20 := (recoveredValue9) copyFrom: (recoveredValue12) to: (recoveredValue19).
    recoveredValue21 := (recoveredValue8) , (recoveredValue20).
    recoveredLocal1 := recoveredValue21.
    recoveredValue22 := recoveredLocal1.
    ^recoveredValue22
! !

"ASDBase.ic method 0x202c6f50; bytecode file offset 0xbc3828"
!AMLBaseObject methodsFor: 'recovered'!
localColAccessCode: recoveredArg1 on: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := '  parts at: '.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPartIndex: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := ' ifAbsent: [ ^nil ] ) '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := ' parts detect: [:p | p name = '.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := ' ] ifNone: [ ^nil ] ) '.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ca07c; bytecode file offset 0xbc6958"
!AMLBaseObject methodsFor: 'recovered'!
copyForReduceParts: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := name.
    (recoveredValue3) name: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) parts: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := typeName.
    (recoveredValue7) typeName: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := definition.
    (recoveredValue9) definition: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := value.
    (recoveredValue11) value: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := startingDepth.
    (recoveredValue13) startingDepth: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := id.
    (recoveredValue15) id: (recoveredValue16).
    recoveredValue17 := parent.
    (recoveredValue2) parent: (recoveredValue17).
    recoveredValue18 := recoveredLocal1.
    ^recoveredValue18
! !

"ASDBase.ic method 0x202d1520; bytecode file offset 0xbcddf4"
!AMLBaseObject methodsFor: 'recovered'!
generateClassMethod: recoveredArg1 source: recoveredArg2 for: recoveredArg3 in: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodNamesIn: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) compiledMethodAt: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'internal'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) generateClassMethod: (recoveredStack2) categorizeIn: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 'internal'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) generateClassMethod: (recoveredStack2) categorizeIn: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d42fc; bytecode file offset 0xbd0bc4"
!AMLBaseObject methodsFor: 'recovered'!
collectNamedOrIndexIn: recoveredArg1 path: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) collectNamedOrIndexInBase: (recoveredValue0) path: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := parts.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) parent.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack2 := self.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) = (recoveredBlock17Stack2).
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 35] ifFalse: [recoveredBlock17PC := 32].
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            (recoveredBlock17Stack1) etasDevHalt.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg1.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack3 := recoveredLocal1.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) collectNamedOrIndexIn: (recoveredBlock17Stack2) path: (recoveredBlock17Stack3).
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202dbb7c; bytecode file offset 0xbd845c"
!AMLBaseObject methodsFor: 'recovered'!
copyTree
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := name.
    (recoveredValue3) name: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) copyPartsFor: (recoveredValue6).
    (recoveredValue5) parts: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := typeName.
    (recoveredValue8) typeName: (recoveredValue9).
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := definition.
    (recoveredValue10) definition: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    recoveredValue13 := value.
    (recoveredValue12) value: (recoveredValue13).
    recoveredValue14 := recoveredValue2.
    recoveredValue15 := startingDepth.
    (recoveredValue14) startingDepth: (recoveredValue15).
    recoveredValue16 := recoveredValue2.
    recoveredValue17 := id.
    (recoveredValue16) id: (recoveredValue17).
    recoveredValue18 := parent.
    (recoveredValue2) parent: (recoveredValue18).
    recoveredValue19 := recoveredLocal1.
    ^recoveredValue19
! !

"ASDBase.ic method 0x202e7924; bytecode file offset 0xbe41fc"
!AMLBaseObject methodsFor: 'recovered'!
log: recoveredArg1 word: recoveredArg2 stream: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) position.
    recoveredValue3 := (recoveredValue2) - (128).
    recoveredValue4 := (recoveredValue3) max: (1).
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue5) position.
    recoveredValue7 := (recoveredValue0) copyFrom: (recoveredValue4) to: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) , ('>>>>').
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := (recoveredValue10) position.
    recoveredValue12 := (recoveredValue11) + (1).
    recoveredValue13 := recoveredArg3.
    recoveredValue14 := (recoveredValue13) position.
    recoveredValue15 := (recoveredValue14) + (128).
    recoveredValue16 := recoveredArg3.
    recoveredValue17 := (recoveredValue16) collection.
    recoveredValue18 := (recoveredValue17) size.
    recoveredValue19 := (recoveredValue15) min: (recoveredValue18).
    recoveredValue20 := (recoveredValue9) copyFrom: (recoveredValue12) to: (recoveredValue19).
    recoveredValue21 := (recoveredValue8) , (recoveredValue20).
    recoveredLocal1 := recoveredValue21.
    recoveredValue22 := recoveredArg2.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := (recoveredValue22) bindWith: (recoveredValue23) with: (recoveredValue24).
    ^recoveredValue25
! !

"ASDBase.ic method 0x20303138; bytecode file offset 0xbffa00"
!AMLBaseObject methodsFor: 'recovered'!
readFromBytes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := accessor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) createAccessor: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) clearValue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) idAccessor.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) readNextPartsFromBytes: (recoveredStack1) startingAt: (recoveredStack2) idAccessor: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203150f8; bytecode file offset 0xc119d8"
!AMLBaseObject methodsFor: 'recovered'!
generateClassName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) definition.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) definition.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateClassName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateClassName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateRootClassNamePrefix.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectorName: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPartIndex: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := $_.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithout: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := $..
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithout: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSymbol.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20316fc0; bytecode file offset 0xc13894"
!AMLBaseObject methodsFor: 'recovered'!
selectorName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) localName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'AML'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := $..
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithout: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := $_.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithout: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20323c98; bytecode file offset 0xc20574"
!AMLBaseObject methodsFor: 'recovered'!
generateClassName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) definition.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := definition.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
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
            recoveredStack0 := (recoveredStack0) definition.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) and: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateClassName.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateRootClassNamePrefix.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) definition.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeName.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) definition.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := $_.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithout: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSymbol.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20334328; bytecode file offset 0xc30c04"
!AMLBaseObject methodsFor: 'recovered'!
removeExtraStruct: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parts.
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
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) etasDevHalt.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:block280ed1ecArg1 | 
    | block280ed1ecValue0 block280ed1ecValue1 block280ed1ecValue2 block280ed1ecValue3 |
    block280ed1ecValue0 := block280ed1ecArg1.
    block280ed1ecValue1 := (block280ed1ecValue0) class.
    block280ed1ecValue2 := AMLBlock.
    block280ed1ecValue3 := (block280ed1ecValue1) = (block280ed1ecValue2).
    block280ed1ecValue3
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := [:recoveredBlock33Arg1 | 
    ^self
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifOne: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            parts := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) addPartsFrom: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) collectKeyWords.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20336748; bytecode file offset 0xc3304c"
!AMLBaseObject methodsFor: 'recovered'!
skipToCommentEnd: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) peek: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := $*.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'invalid comment'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) peekWord.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2) word: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) backup: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) upToEndOfComment.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) addComments: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20349304; bytecode file offset 0xc45bd8"
!AMLBaseObject methodsFor: 'recovered'!
generateClass: recoveredArg1 root: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefinedApplication.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) becomeDefault.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 |
    recoveredBlock20Value0 := recoveredArg2.
    recoveredBlock20Value1 := recoveredArg1.
    recoveredBlock20Value2 := (recoveredBlock20Value1) asSymbol.
    recoveredBlock20Value3 := (recoveredBlock20Value0) subclass: (recoveredBlock20Value2) instanceVariableNames: ('') classVariableNames: ('') poolDictionaries: ('').
    recoveredLocal1 := recoveredBlock20Value3.
    recoveredBlock20Value4 := recoveredLocal1.
    recoveredBlock20Value4
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := [:block280ee554Arg1 | 
    | block280ee554Value0 |
    block280ee554Value0 := block280ee554Arg1.
    block280ee554Value0
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203837b0; bytecode file offset 0xc80080"
!AMLBaseObject methodsFor: 'recovered'!
compare: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) parts.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) parts.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := [:recoveredBlock50Arg1 :recoveredBlock50Arg2 | 
    | recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50Stack4 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 57.
        ].
        recoveredBlock50Step = 57 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 58.
        ].
        recoveredBlock50Step = 58 ifTrue: [
            recoveredBlock50Stack3 := recoveredBlock50Arg2.
            recoveredBlock50PC := 59.
        ].
        recoveredBlock50Step = 59 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) compare: (recoveredBlock50Stack3).
            recoveredBlock50PC := 61.
        ].
        recoveredBlock50Step = 61 ifTrue: [
            (recoveredBlock50Stack2) ifTrue: [recoveredBlock50PC := 67] ifFalse: [recoveredBlock50PC := 64].
        ].
        recoveredBlock50Step = 64 ifTrue: [
            recoveredBlock50PC := 65.
        ].
        recoveredBlock50Step = 65 ifTrue: [
            recoveredBlock50Stack1 := false.
            recoveredBlock50PC := 66.
        ].
        recoveredBlock50Step = 66 ifTrue: [
            ^recoveredBlock50Stack1
        ].
        recoveredBlock50Step = 67 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) with: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b127c; bytecode file offset 0xcadb3c"
!AMLBaseObject methodsFor: 'recovered'!
getEnumerationId: recoveredArg1
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
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
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
            recoveredStack1 := id.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
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
            recoveredBlock30Stack3 := recoveredArg1.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) getEnumerationId: (recoveredBlock30Stack3).
            recoveredBlock30PC := 42.
        ].
        recoveredBlock30Step = 42 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Stack2.
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack3.
            recoveredBlock30PC := 46.
        ].
        recoveredBlock30Step = 46 ifTrue: [
            (recoveredBlock30Stack2 == nil) ifTrue: [recoveredBlock30PC := 74] ifFalse: [recoveredBlock30PC := 50].
        ].
        recoveredBlock30Step = 50 ifTrue: [
            recoveredBlock30PC := 51.
        ].
        recoveredBlock30Step = 51 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 54.
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) = (recoveredBlock30Stack2).
            recoveredBlock30PC := 56.
        ].
        recoveredBlock30Step = 56 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 70] ifFalse: [recoveredBlock30PC := 60].
        ].
        recoveredBlock30Step = 60 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) parent.
            recoveredBlock30PC := 64.
        ].
        recoveredBlock30Step = 64 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 65.
        ].
        recoveredBlock30Step = 65 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) = (recoveredBlock30Stack2).
            recoveredBlock30PC := 66.
        ].
        recoveredBlock30Step = 66 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 70] ifFalse: [recoveredBlock30PC := 70].
        ].
        recoveredBlock30Step = 70 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 73.
        ].
        recoveredBlock30Step = 73 ifTrue: [
            ^recoveredBlock30Stack1
        ].
        recoveredBlock30Step = 74 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203bcf60; bytecode file offset 0xcb9828"
!AMLBaseObject methodsFor: 'recovered'!
findNodeWithValues
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) hasAMLValue.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 30] ifFalse: [recoveredBlock18PC := 43].
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) + (1).
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredLocal2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredLocal1 := recoveredBlock18Stack2.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            parts := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) findTreeWithValues.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c1d50; bytecode file offset 0xcbe630"
!AMLBaseObject methodsFor: 'recovered'!
getMappingResultFor: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parts.
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
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMappingResultFor: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) accessMethods.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessMethods.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [:recoveredBlock55Arg1 :recoveredBlock55Arg2 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 recoveredBlock55Value5 recoveredBlock55Value6 |
    recoveredBlock55Value0 := recoveredLocal1.
    recoveredBlock55Value1 := recoveredBlock55Arg1.
    recoveredBlock55Value2 := parts.
    recoveredBlock55Value3 := recoveredBlock55Arg2.
    recoveredBlock55Value4 := (recoveredBlock55Value2) at: (recoveredBlock55Value3).
    recoveredBlock55Value5 := (recoveredBlock55Value4) value.
    recoveredBlock55Value6 := (recoveredBlock55Value0) perform: (recoveredBlock55Value1) with: (recoveredBlock55Value5).
    recoveredBlock55Value6
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203c6d98; bytecode file offset 0xcc3670"
!AMLBaseObject methodsFor: 'recovered'!
selectorName: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) localName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'AML'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'AML'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := $..
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithout: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := $_.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithout: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cdb68; bytecode file offset 0xcca42c"
!AMLBaseObject methodsFor: 'recovered'!
findTreeWithValues
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) hasAMLValue.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 30] ifFalse: [recoveredBlock18PC := 43].
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal2.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) + (1).
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredLocal2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredLocal1 := recoveredBlock18Stack2.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) findTreeWithValues.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            name := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d786c; bytecode file offset 0xcd4154"
!AMLBaseObject methodsFor: 'recovered'!
printCDefine: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280f7bccArg1 :block280f7bccArg2 | 
    | block280f7bccValue0 block280f7bccValue1 block280f7bccValue2 block280f7bccValue3 block280f7bccValue4 |
    block280f7bccValue0 := block280f7bccArg1.
    block280f7bccValue1 := (block280f7bccValue0) value.
    block280f7bccValue2 := block280f7bccArg2.
    block280f7bccValue3 := (block280f7bccValue2) value.
    block280f7bccValue4 := (block280f7bccValue1) < (block280f7bccValue3).
    block280f7bccValue4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
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
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := recoveredLocal1.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) add: (recoveredBlock25Value1).
    recoveredBlock25Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 recoveredBlock44Value6 recoveredBlock44Value7 recoveredBlock44Value8 recoveredBlock44Value9 |
    recoveredBlock44Value0 := recoveredArg2.
    recoveredBlock44Value1 := recoveredBlock44Value0.
    (recoveredBlock44Value1) nextPutAll: ('#DEFINE ').
    recoveredBlock44Value2 := recoveredBlock44Value0.
    recoveredBlock44Value3 := recoveredBlock44Arg1.
    recoveredBlock44Value4 := (recoveredBlock44Value3) key.
    (recoveredBlock44Value2) nextPutAll: (recoveredBlock44Value4).
    (recoveredBlock44Value0) nextPut: ($ ).
    recoveredBlock44Value5 := recoveredBlock44Arg1.
    recoveredBlock44Value6 := (recoveredBlock44Value5) value.
    recoveredBlock44Value7 := recoveredArg2.
    (recoveredBlock44Value6) printOn: (recoveredBlock44Value7).
    recoveredBlock44Value8 := recoveredArg2.
    recoveredBlock44Value9 := (recoveredBlock44Value8) cr.
    recoveredBlock44Value9
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e51f4; bytecode file offset 0xce1ac4"
!AMLBaseObject methodsFor: 'recovered'!
putKeyWordAndNameIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (self) putLevelIn: (recoveredValue0).
    recoveredValue1 := name.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := (self) class.
    recoveredBlock11Value2 := (recoveredBlock11Value1) keyWord.
    (self) putIn: (recoveredBlock11Value0) ident: (recoveredBlock11Value2).
    recoveredBlock11Value3 := recoveredArg1.
    recoveredBlock11Value4 := (Character value: 9).
    (recoveredBlock11Value3) nextPut: (recoveredBlock11Value4).
    recoveredBlock11Value5 := recoveredArg1.
    recoveredBlock11Value6 := recoveredBlock11Arg1.
    recoveredBlock11Value7 := (self) putIn: (recoveredBlock11Value5) string: (recoveredBlock11Value6).
    ^recoveredBlock11Value7
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := typeName.
    recoveredValue4 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 recoveredBlock46Value4 recoveredBlock46Value5 recoveredBlock46Value6 recoveredBlock46Value7 |
    recoveredBlock46Value0 := recoveredArg1.
    recoveredBlock46Value1 := recoveredBlock46Arg1.
    (self) putIn: (recoveredBlock46Value0) string: (recoveredBlock46Value1).
    recoveredBlock46Value2 := recoveredArg1.
    recoveredBlock46Value3 := (Character value: 9).
    (recoveredBlock46Value2) nextPut: (recoveredBlock46Value3).
    recoveredBlock46Value4 := recoveredArg1.
    recoveredBlock46Value5 := (self) class.
    recoveredBlock46Value6 := (recoveredBlock46Value5) keyWord.
    recoveredBlock46Value7 := (self) putIn: (recoveredBlock46Value4) ident: (recoveredBlock46Value6).
    ^recoveredBlock46Value7
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) keyWord.
    (self) putIn: (recoveredValue5) ident: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x203f66b0; bytecode file offset 0xcf2f94"
!AMLBaseObject methodsFor: 'recovered'!
generateAccessMethods
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AMLIfDataXCP.
    recoveredValue1 := (recoveredValue0) getDefinedApplication.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) collectNamedOrIndexLeafes.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := [:recoveredBlock17Arg1 :recoveredBlock17Arg2 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := AMLIfDataXCP.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal2.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) methodNamesIn: (recoveredBlock17Stack2).
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) asSymbol.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) includes: (recoveredBlock17Stack2).
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 38] ifFalse: [recoveredBlock17PC := 74].
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack2 := AMLIfDataXCP.
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg1.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) asSymbol.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) compiledMethodAt: (recoveredBlock17Stack3).
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) sourceString.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Arg2.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) value.
            recoveredBlock17PC := 51.
        ].
        recoveredBlock17Step = 51 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) = (recoveredBlock17Stack3).
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 70] ifFalse: [recoveredBlock17PC := 56].
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack1 := AMLIfDataXCP.
            recoveredBlock17PC := 59.
        ].
        recoveredBlock17Step = 59 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg2.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) value.
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            recoveredBlock17Stack3 := 'internal'.
            recoveredBlock17PC := 64.
        ].
        recoveredBlock17Step = 64 ifTrue: [
            recoveredBlock17Stack4 := recoveredLocal2.
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) generateMethod: (recoveredBlock17Stack2) categorizeIn: (recoveredBlock17Stack3) in: (recoveredBlock17Stack4).
            recoveredBlock17PC := 70.
        ].
        recoveredBlock17Step = 70 ifTrue: [
            recoveredBlock17PC := 87.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Stack1 := AMLIfDataXCP.
            recoveredBlock17PC := 76.
        ].
        recoveredBlock17Step = 76 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg2.
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) value.
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            recoveredBlock17Stack3 := 'internal'.
            recoveredBlock17PC := 81.
        ].
        recoveredBlock17Step = 81 ifTrue: [
            recoveredBlock17Stack4 := recoveredLocal2.
            recoveredBlock17PC := 84.
        ].
        recoveredBlock17Step = 84 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) generateMethod: (recoveredBlock17Stack2) categorizeIn: (recoveredBlock17Stack3) in: (recoveredBlock17Stack4).
            recoveredBlock17PC := 87.
        ].
        recoveredBlock17Step = 87 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue3) keysAndValuesDo: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203f6d24; bytecode file offset 0xcf360c"
!AMLBaseObject methodsFor: 'recovered'!
generateStructClassFor: recoveredArg1 root: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefinedApplication.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) becomeDefault.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) generateClassName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 |
    recoveredBlock20Value0 := Smalltalk.
    recoveredBlock20Value1 := [
    ^self
].
    (recoveredBlock20Value0) at: ('generateAMLCode') ifAbsent: (recoveredBlock20Value1).
    recoveredBlock20Value2 := recoveredArg2.
    recoveredBlock20Value3 := (self) generateClassName.
    recoveredBlock20Value4 := (recoveredBlock20Value3) asSymbol.
    recoveredBlock20Value5 := (recoveredBlock20Value2) subclass: (recoveredBlock20Value4) instanceVariableNames: ('') classVariableNames: ('') poolDictionaries: ('').
    recoveredLocal1 := recoveredBlock20Value5.
    recoveredBlock20Value6 := recoveredLocal1.
    recoveredBlock20Value6
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := [:block280f98a0Arg1 | 
    | block280f98a0Value0 |
    block280f98a0Value0 := block280f98a0Arg1.
    block280f98a0Value0
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := definition.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeName.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fbcf8; bytecode file offset 0xcf85d4"
!AMLBaseObject methodsFor: 'recovered'!
generateMethod: recoveredArg1 source: recoveredArg2 for: recoveredArg3 in: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodNamesIn: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) compiledMethodAt: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) extractSmalltalkCommentFromAmlMethodString.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) extractSmalltalkCommentFromAmlMethodString.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOrNil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastOrNil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) lastOrNil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := 'internal'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) generateMethod: (recoveredStack2) categorizeIn: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := 'internal'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) generateMethod: (recoveredStack2) categorizeIn: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20401570; bytecode file offset 0xcfde50"
!AMLBaseObject methodsFor: 'recovered'!
generateStructClassFor: recoveredArg1 pathName: recoveredArg2 root: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefinedApplication.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) becomeDefault.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) generateClassName: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 |
    recoveredBlock27Value0 := Smalltalk.
    recoveredBlock27Value1 := [
    | recoveredBlock27Block38Value0 |
    recoveredBlock27Block38Value0 := recoveredLocal2.
    definition := recoveredBlock27Block38Value0.
    ^self
].
    (recoveredBlock27Value0) at: ('generateAMLCode') ifAbsent: (recoveredBlock27Value1).
    recoveredBlock27Value2 := recoveredArg3.
    recoveredBlock27Value3 := recoveredLocal1.
    recoveredBlock27Value4 := (recoveredBlock27Value2) subclass: (recoveredBlock27Value3) instanceVariableNames: ('') classVariableNames: ('') poolDictionaries: ('').
    recoveredLocal2 := recoveredBlock27Value4.
    recoveredBlock27Value5 := recoveredLocal2.
    recoveredBlock27Value5
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := [:block280fa254Arg1 | 
    | block280fa254Value0 |
    block280fa254Value0 := block280fa254Arg1.
    block280fa254Value0
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            definition := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20409458; bytecode file offset 0xd05d48"
!AMLBaseObject methodsFor: 'recovered'!
createPartsAccessor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) accessorClass.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) enumerationName.
    recoveredValue5 := (recoveredValue2) create: (recoveredValue3) name: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := parts.
    recoveredValue7 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Local1 recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) parent.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            (recoveredBlock24Stack1 ~~ nil) ifTrue: [recoveredBlock24PC := 48] ifFalse: [recoveredBlock24PC := 36].
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            (recoveredBlock24Stack1) parent: (recoveredBlock24Stack2).
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24Stack1 := Transcript.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) cr.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 45.
        ].
        recoveredBlock24Step = 45 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) enumerationName.
            recoveredBlock24PC := 46.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            (recoveredBlock24Stack1) show: (recoveredBlock24Stack2).
            recoveredBlock24PC := 48.
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 49.
        ].
        recoveredBlock24Step = 49 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal1.
            recoveredBlock24PC := 52.
        ].
        recoveredBlock24Step = 52 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) createAccessor: (recoveredBlock24Stack2).
            recoveredBlock24PC := 54.
        ].
        recoveredBlock24Step = 54 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 55.
        ].
        recoveredBlock24Step = 55 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 56.
        ].
        recoveredBlock24Step = 56 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) lastOffset.
            recoveredBlock24PC := 58.
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 61.
        ].
        recoveredBlock24Step = 61 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 64.
        ].
        recoveredBlock24Step = 64 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local1.
            recoveredBlock24PC := 65.
        ].
        recoveredBlock24Step = 65 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) lastOffset.
            recoveredBlock24PC := 67.
        ].
        recoveredBlock24Step = 67 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) = (recoveredBlock24Stack2).
            recoveredBlock24PC := 68.
        ].
        recoveredBlock24Step = 68 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 83] ifFalse: [recoveredBlock24PC := 72].
        ].
        recoveredBlock24Step = 72 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 73.
        ].
        recoveredBlock24Step = 73 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) class.
            recoveredBlock24PC := 74.
        ].
        recoveredBlock24Step = 74 ifTrue: [
            recoveredBlock24Stack2 := AMLEnumType.
            recoveredBlock24PC := 76.
        ].
        recoveredBlock24Step = 76 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) = (recoveredBlock24Stack2).
            recoveredBlock24PC := 77.
        ].
        recoveredBlock24Step = 77 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 83] ifFalse: [recoveredBlock24PC := 80].
        ].
        recoveredBlock24Step = 80 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 81.
        ].
        recoveredBlock24Step = 81 ifTrue: [
            (recoveredBlock24Stack1) etasDevHalt.
            recoveredBlock24PC := 83.
        ].
        recoveredBlock24Step = 83 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal2.
            recoveredBlock24PC := 86.
        ].
        recoveredBlock24Step = 86 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local1.
            recoveredBlock24PC := 87.
        ].
        recoveredBlock24Step = 87 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) addMember: (recoveredBlock24Stack2).
            recoveredBlock24PC := 89.
        ].
        recoveredBlock24Step = 89 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x204134d4; bytecode file offset 0xd0fde0"
!AMLBaseObject methodsFor: 'recovered'!
generateCodePredefinedAndEnum: recoveredArg1 pathName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := parent.
    recoveredValue2 := (recoveredValue1) generateClassName.
    recoveredValue3 := [
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := (self) etasDevHalt.
    recoveredBlock9Value0
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := WriteStream.
    recoveredValue6 := (recoveredValue5) on: ('').
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := recoveredLocal3.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (self) selectorName: (recoveredValue9).
    recoveredValue11 := recoveredValue10.
    recoveredLocal1 := recoveredValue11.
    (recoveredValue8) nextPutAll: (recoveredValue10).
    recoveredValue12 := recoveredValue7.
    (recoveredValue12) cr.
    (recoveredValue7) nextPutAll: ('">> ').
    recoveredValue13 := (self) pathName.
    recoveredValue14 := recoveredLocal3.
    (recoveredValue13) printOn: (recoveredValue14).
    recoveredValue15 := recoveredLocal3.
    recoveredValue16 := recoveredValue15.
    (recoveredValue16) nextPutAll: (' <<"').
    (recoveredValue15) cr.
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) nextPutAll: ('^( ').
    recoveredValue19 := parent.
    recoveredValue20 := (recoveredValue19) getAccessCode.
    (recoveredValue17) nextPutAll: (recoveredValue20).
    recoveredValue21 := recoveredLocal3.
    recoveredValue22 := (self) localPartsAccessCode: (self).
    (recoveredValue21) nextPutAll: (recoveredValue22).
    recoveredValue23 := recoveredLocal3.
    (recoveredValue23) nextPutAll: (' ) ').
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := recoveredLocal3.
    recoveredValue26 := (recoveredValue25) contents.
    recoveredValue27 := recoveredLocal2.
    recoveredValue28 := recoveredLocal2.
    recoveredValue29 := (recoveredValue28) getDefinedApplication.
    (self) generateMethod: (recoveredValue24) source: (recoveredValue26) for: (recoveredValue27) in: (recoveredValue29) categorizeIn: ('internal').
    ^self
! !

"ASDBase.ic method 0x2041bbe4; bytecode file offset 0xd184f4"
!AMLBaseObject methodsFor: 'recovered'!
generateCollectionCodePredefinedAndEnum: recoveredArg1 pathName: recoveredArg2 for: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) parent.
    recoveredValue3 := (recoveredValue2) generateClassName.
    recoveredValue4 := [
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := (self) etasDevHalt.
    recoveredBlock9Value0
].
    recoveredValue5 := (recoveredValue0) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := WriteStream.
    recoveredValue7 := (recoveredValue6) on: ('').
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue10) selectorName: (recoveredValue11).
    recoveredValue13 := recoveredValue12.
    recoveredLocal1 := recoveredValue13.
    (recoveredValue9) nextPutAll: (recoveredValue12).
    recoveredValue14 := recoveredValue8.
    (recoveredValue14) cr.
    (recoveredValue8) nextPutAll: ('">> ').
    recoveredValue15 := (self) pathName.
    recoveredValue16 := recoveredLocal3.
    (recoveredValue15) printOn: (recoveredValue16).
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) nextPutAll: (' <<"').
    (recoveredValue17) cr.
    recoveredValue19 := recoveredLocal3.
    recoveredValue20 := recoveredValue19.
    (recoveredValue20) nextPutAll: ('^( ').
    recoveredValue21 := recoveredArg3.
    recoveredValue22 := (recoveredValue21) parent.
    recoveredValue23 := (recoveredValue22) getAccessCode.
    (recoveredValue19) nextPutAll: (recoveredValue23).
    recoveredValue24 := recoveredArg3.
    recoveredValue25 := recoveredLocal3.
    (self) localColAccessCode: (recoveredValue24) on: (recoveredValue25).
    recoveredValue26 := recoveredLocal3.
    recoveredValue27 := recoveredValue26.
    (recoveredValue27) nextPutAll: ('  value defaultReturn: #() ').
    (recoveredValue26) cr.
    recoveredValue28 := recoveredLocal1.
    recoveredValue29 := recoveredLocal3.
    recoveredValue30 := (recoveredValue29) contents.
    recoveredValue31 := recoveredLocal2.
    recoveredValue32 := recoveredLocal2.
    recoveredValue33 := (recoveredValue32) getDefinedApplication.
    (self) generateMethod: (recoveredValue28) source: (recoveredValue30) for: (recoveredValue31) in: (recoveredValue33) categorizeIn: ('internal').
    ^self
! !

"ASDBase.ic method 0x20446cd4; bytecode file offset 0xd435b0"
!AMLBaseObject methodsFor: 'recovered'!
putIn: recoveredArg1 quotedString: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := '"" '.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := $".
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := $".
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := $ .
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := $".
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyWithout: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) quotedString: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := $".
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := $".
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := $".
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2) duplicate: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := $".
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := $ .
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20451cdc; bytecode file offset 0xd4e5ac"
!AMLBaseObject methodsFor: 'recovered'!
end: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasAMLValue.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextWordBySeparators.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := startingDepth.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) BlockDepth.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := startingDepth.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) decBlockDepth.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextWordBySeparators.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := startingDepth.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) BlockDepth.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := startingDepth.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) decBlockDepth.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := startingDepth.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) BlockDepth.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := startingDepth.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) decBlockDepth.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 109] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) backup: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) decBlockDepth.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20457090; bytecode file offset 0xd53964"
!AMLBaseObject methodsFor: 'recovered'!
readFromBytes: recoveredArg1 startingAt: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) idAccessor.
    recoveredLocal4 := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := parts.
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Local1 recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16Stack5 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := recoveredArg1.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) size.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack2 := recoveredLocal3.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) + (1).
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) <= (recoveredBlock16Stack2).
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 34] ifFalse: [recoveredBlock16PC := 38].
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal3.
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 38 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 39.
        ].
        recoveredBlock16Step = 39 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) id.
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack2 := 0.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) > (recoveredBlock16Stack2).
            recoveredBlock16PC := 43.
        ].
        recoveredBlock16Step = 43 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 46] ifFalse: [recoveredBlock16PC := 80].
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 47.
        ].
        recoveredBlock16Step = 47 ifTrue: [
            recoveredBlock16Stack2 := recoveredArg1.
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            recoveredBlock16Stack3 := recoveredLocal3.
            recoveredBlock16PC := 53.
        ].
        recoveredBlock16Step = 53 ifTrue: [
            recoveredBlock16Stack4 := recoveredLocal4.
            recoveredBlock16PC := 56.
        ].
        recoveredBlock16Step = 56 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) readNextPartsFromBytes: (recoveredBlock16Stack2) startingAt: (recoveredBlock16Stack3) idAccessor: (recoveredBlock16Stack4).
            recoveredBlock16PC := 59.
        ].
        recoveredBlock16Step = 59 ifTrue: [
            recoveredBlock16Local1 := recoveredBlock16Stack1.
            recoveredBlock16PC := 60.
        ].
        recoveredBlock16Step = 60 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local1.
            recoveredBlock16PC := 61.
        ].
        recoveredBlock16Step = 61 ifTrue: [
            recoveredBlock16Stack2 := recoveredLocal3.
            recoveredBlock16PC := 64.
        ].
        recoveredBlock16Step = 64 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) = (recoveredBlock16Stack2).
            recoveredBlock16PC := 65.
        ].
        recoveredBlock16Step = 65 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 68] ifFalse: [recoveredBlock16PC := 70].
        ].
        recoveredBlock16Step = 68 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local1.
            recoveredBlock16PC := 69.
        ].
        recoveredBlock16Step = 69 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 70 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local1.
            recoveredBlock16PC := 71.
        ].
        recoveredBlock16Step = 71 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 72.
        ].
        recoveredBlock16Step = 72 ifTrue: [
            recoveredLocal3 := recoveredBlock16Stack2.
            recoveredBlock16PC := 75.
        ].
        recoveredBlock16Step = 75 ifTrue: [
            recoveredBlock16Stack2 := nil.
            recoveredBlock16PC := 76.
        ].
        recoveredBlock16Step = 76 ifTrue: [
            recoveredBlock16Local1 := recoveredBlock16Stack2.
            recoveredBlock16PC := 77.
        ].
        recoveredBlock16Step = 77 ifTrue: [
            recoveredBlock16PC := 108.
        ].
        recoveredBlock16Step = 80 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 81.
        ].
        recoveredBlock16Step = 81 ifTrue: [
            (recoveredBlock16Stack1) etasDevHalt.
            recoveredBlock16PC := 83.
        ].
        recoveredBlock16Step = 83 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal3.
            recoveredBlock16PC := 86.
        ].
        recoveredBlock16Step = 86 ifTrue: [
            recoveredBlock16Stack2 := recoveredLocal4.
            recoveredBlock16PC := 89.
        ].
        recoveredBlock16Step = 89 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) byteSize.
            recoveredBlock16PC := 91.
        ].
        recoveredBlock16Step = 91 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) + (recoveredBlock16Stack2).
            recoveredBlock16PC := 92.
        ].
        recoveredBlock16Step = 92 ifTrue: [
            recoveredLocal3 := recoveredBlock16Stack1.
            recoveredBlock16PC := 95.
        ].
        recoveredBlock16Step = 95 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 96.
        ].
        recoveredBlock16Step = 96 ifTrue: [
            recoveredBlock16Stack2 := recoveredArg1.
            recoveredBlock16PC := 99.
        ].
        recoveredBlock16Step = 99 ifTrue: [
            recoveredBlock16Stack3 := recoveredLocal3.
            recoveredBlock16PC := 102.
        ].
        recoveredBlock16Step = 102 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) readFromBytes: (recoveredBlock16Stack2) startingAt: (recoveredBlock16Stack3).
            recoveredBlock16PC := 104.
        ].
        recoveredBlock16Step = 104 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 105.
        ].
        recoveredBlock16Step = 105 ifTrue: [
            recoveredLocal3 := recoveredBlock16Stack2.
            recoveredBlock16PC := 108.
        ].
        recoveredBlock16Step = 108 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal3.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2046b830; bytecode file offset 0xd6814c"
!AMLBaseObject methodsFor: 'recovered'!
generateCollectionCodeStructsAndBlock: recoveredArg1 pathName: recoveredArg2 for: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) generateCodeStructAndBlock: (recoveredValue0) pathName: (recoveredValue1).
    recoveredValue2 := Smalltalk.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) parent.
    recoveredValue5 := (recoveredValue4) generateClassName.
    recoveredValue6 := [
    | recoveredBlock15Value0 |
    recoveredBlock15Value0 := (self) etasDevHalt.
    recoveredBlock15Value0
].
    recoveredValue7 := (recoveredValue2) at: (recoveredValue5) ifAbsent: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := WriteStream.
    recoveredValue9 := (recoveredValue8) on: ('').
    recoveredLocal3 := recoveredValue9.
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := recoveredArg3.
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := (recoveredValue12) selectorName: (recoveredValue13).
    recoveredValue15 := recoveredValue14.
    recoveredLocal1 := recoveredValue15.
    (recoveredValue11) nextPutAll: (recoveredValue14).
    recoveredValue16 := recoveredValue10.
    (recoveredValue16) cr.
    (recoveredValue10) nextPutAll: ('">> ').
    recoveredValue17 := (self) pathName.
    recoveredValue18 := recoveredLocal3.
    (recoveredValue17) printOn: (recoveredValue18).
    recoveredValue19 := recoveredLocal3.
    recoveredValue20 := recoveredValue19.
    (recoveredValue20) nextPutAll: (' <<"').
    (recoveredValue19) cr.
    recoveredValue21 := recoveredLocal3.
    recoveredValue22 := recoveredValue21.
    (recoveredValue22) nextPutAll: ('^(( ').
    recoveredValue23 := recoveredArg3.
    recoveredValue24 := (recoveredValue23) parent.
    recoveredValue25 := (recoveredValue24) getAccessCode.
    (recoveredValue21) nextPutAll: (recoveredValue25).
    recoveredValue26 := recoveredArg3.
    recoveredValue27 := recoveredLocal3.
    (self) localColAccessCode: (recoveredValue26) on: (recoveredValue27).
    recoveredValue28 := recoveredLocal3.
    recoveredValue29 := recoveredValue28.
    (recoveredValue29) nextPutAll: ('
							value ifNotNil: [:col | col collect: [:a | ').
    recoveredValue30 := recoveredValue28.
    recoveredValue31 := recoveredArg2.
    recoveredValue32 := (self) generateClassName: (recoveredValue31).
    (recoveredValue30) nextPutAll: (recoveredValue32).
    recoveredValue33 := recoveredValue28.
    (recoveredValue33) nextPutAll: (' createFor: a ] ]) defaultReturn: #()  ').
    (recoveredValue28) cr.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := recoveredLocal3.
    recoveredValue36 := (recoveredValue35) contents.
    recoveredValue37 := recoveredLocal2.
    recoveredValue38 := recoveredLocal2.
    recoveredValue39 := (recoveredValue38) getDefinedApplication.
    (self) generateMethod: (recoveredValue34) source: (recoveredValue36) for: (recoveredValue37) in: (recoveredValue39) categorizeIn: ('complexArgument').
    ^self
! !

"ASDBase.ic method 0x20477438; bytecode file offset 0xd73d58"
!AMLBaseObject methodsFor: 'recovered'!
addInspectorMenuEntriesIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super addInspectorMenuEntriesIn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'hasValue'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'hasValue'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'collectNamedOrIndex'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 'collectNamedOrIndex'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'collectNamedOrIndexLeafes'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := 'collectNamedOrIndexLeafes'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'findTreeWithValues'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := 'findTreeWithValues'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'createAccessor'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := 'createAccessor'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'putIn'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := 'putIn'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := 'openWorkspace'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := 'openWorkspace'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := 'openWorkspaceStripped'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 'openWorkspace comments removed'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048779c; bytecode file offset 0xd840bc"
!AMLBaseObject methodsFor: 'recovered'!
getValueReducedFrom: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) checkPartsAndKeywordsRecursive.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) clearValue.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) getValueFrom: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := name.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumerate: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := ReadWriteStream.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) printCDefine: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) findReducedTreeWithValues.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := AMLIfData.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromString: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) createAccessor.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) lastOffset.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := (recoveredStack4) parts.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifData: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifData.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) putValue: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) clearValue.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifData.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) readFromBytes: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal5.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a4d84; bytecode file offset 0xda1668"
!AMLBaseObject methodsFor: 'recovered'!
generateCodeStructAndBlockBase: recoveredArg1 pathName: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := definition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := definition.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) generateClassAccessMethod: (recoveredStack2) pathName: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := definition.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefinition: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) generateRootClass.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) generateStructClassFor: (recoveredStack2) root: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) generateClassAccessMethod: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) generateRootClass.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) generateStructClassFor: (recoveredStack2) root: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 |
    recoveredBlock70Value0 := recoveredBlock70Arg1.
    recoveredBlock70Value1 := recoveredArg1.
    recoveredBlock70Value2 := (recoveredBlock70Value0) generateCode: (recoveredBlock70Value1) pathName: ('').
    recoveredBlock70Value2
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) generateCodePredefinedAndEnum: (recoveredStack2) pathName: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) localName.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := [:recoveredBlock116Arg1 | 
    | recoveredBlock116Value0 recoveredBlock116Value1 recoveredBlock116Value2 recoveredBlock116Value3 |
    recoveredBlock116Value0 := recoveredBlock116Arg1.
    recoveredBlock116Value1 := recoveredArg1.
    recoveredBlock116Value2 := recoveredLocal1.
    recoveredBlock116Value3 := (recoveredBlock116Value0) generateCode: (recoveredBlock116Value1) pathName: (recoveredBlock116Value2).
    recoveredBlock116Value3
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b1ba0; bytecode file offset 0xdae4c0"
!AMLBaseObject methodsFor: 'recovered'!
generateClassAccessMethodNoCollection: recoveredArg1 pathName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) parent.
    recoveredValue3 := (recoveredValue2) generateClassName.
    recoveredValue4 := [
    | recoveredBlock10Value0 |
    recoveredBlock10Value0 := (self) etasDevHalt.
    recoveredBlock10Value0
].
    recoveredValue5 := (recoveredValue0) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredLocal4 := recoveredValue5.
    recoveredValue6 := WriteStream.
    recoveredValue7 := (recoveredValue6) on: ('').
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (self) selectorName: (recoveredValue10).
    recoveredValue12 := recoveredValue11.
    recoveredLocal2 := recoveredValue12.
    (recoveredValue9) nextPutAll: (recoveredValue11).
    recoveredValue13 := recoveredValue8.
    (recoveredValue13) cr.
    (recoveredValue8) nextPutAll: ('">> ').
    recoveredValue14 := (self) pathName.
    recoveredValue15 := recoveredLocal3.
    (recoveredValue14) printOn: (recoveredValue15).
    recoveredValue16 := recoveredLocal3.
    recoveredValue17 := recoveredValue16.
    (recoveredValue17) nextPutAll: (' <<"').
    recoveredValue18 := recoveredValue16.
    (recoveredValue18) cr.
    recoveredValue19 := recoveredValue16.
    (recoveredValue19) nextPutAll: ('^( ').
    recoveredValue20 := recoveredValue16.
    recoveredValue21 := recoveredArg2.
    recoveredValue22 := (self) generateClassName: (recoveredValue21).
    recoveredValue23 := recoveredValue22.
    recoveredLocal1 := recoveredValue23.
    (recoveredValue20) nextPutAll: (recoveredValue22).
    recoveredValue24 := recoveredArg1.
    recoveredValue25 := (recoveredValue24) parent.
    recoveredValue26 := (recoveredValue25) getAccessCode.
    recoveredValue27 := (' createFor: ( ') , (recoveredValue26).
    (recoveredValue16) nextPutAll: (recoveredValue27).
    recoveredValue28 := recoveredLocal3.
    recoveredValue29 := recoveredArg1.
    recoveredValue30 := (self) localPartsAccessCode: (recoveredValue29).
    (recoveredValue28) nextPutAll: (recoveredValue30).
    recoveredValue31 := recoveredLocal3.
    recoveredValue32 := recoveredValue31.
    (recoveredValue32) nextPutAll: (' ) ').
    (recoveredValue31) cr.
    recoveredValue33 := recoveredLocal3.
    recoveredValue34 := recoveredValue33.
    (recoveredValue34) nextPutAll: (' ) ').
    (recoveredValue33) cr.
    recoveredValue35 := Smalltalk.
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := (recoveredValue36) asSymbol.
    recoveredValue38 := [
    | recoveredBlock115Value0 |
    recoveredBlock115Value0 := (self) etasDevHalt.
    recoveredBlock115Value0
].
    recoveredValue39 := (recoveredValue35) at: (recoveredValue37) ifAbsent: (recoveredValue38).
    recoveredLocal1 := recoveredValue39.
    recoveredValue40 := recoveredLocal2.
    recoveredValue41 := recoveredLocal3.
    recoveredValue42 := (recoveredValue41) contents.
    recoveredValue43 := recoveredLocal4.
    recoveredValue44 := recoveredLocal4.
    recoveredValue45 := (recoveredValue44) getDefinedApplication.
    (self) generateMethod: (recoveredValue40) source: (recoveredValue42) for: (recoveredValue43) in: (recoveredValue45) categorizeIn: ('complexArgument').
    ^self
! !

"ASDBase.ic method 0x204cd5d0; bytecode file offset 0xdc9eac"
!AMLBaseObject methodsFor: 'recovered'!
enumerate: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            id := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefineName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) enumerationName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) setDefineName: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumerate: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) setDefineName: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock46Stack0 recoveredBlock46Stack1 recoveredBlock46Stack2 recoveredBlock46Stack3 recoveredBlock46PC recoveredBlock46Step recoveredBlock46Done recoveredBlock46Result |
    recoveredBlock46Stack0 := self.
    recoveredBlock46PC := 52.
    recoveredBlock46Done := false.
    [recoveredBlock46Done not] whileTrue: [
        recoveredBlock46Step := recoveredBlock46PC.
        recoveredBlock46Step = 52 ifTrue: [
            recoveredBlock46Stack1 := id.
            recoveredBlock46PC := 54.
        ].
        recoveredBlock46Step = 54 ifTrue: [
            recoveredBlock46Stack2 := 0.
            recoveredBlock46PC := 56.
        ].
        recoveredBlock46Step = 56 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) ~= (recoveredBlock46Stack2).
            recoveredBlock46PC := 57.
        ].
        recoveredBlock46Step = 57 ifTrue: [
            (recoveredBlock46Stack1) ifTrue: [recoveredBlock46PC := 60] ifFalse: [recoveredBlock46PC := 73].
        ].
        recoveredBlock46Step = 60 ifTrue: [
            recoveredBlock46Stack1 := id.
            recoveredBlock46PC := 62.
        ].
        recoveredBlock46Step = 62 ifTrue: [
            recoveredBlock46Stack2 := recoveredArg1.
            recoveredBlock46PC := 65.
        ].
        recoveredBlock46Step = 65 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) = (recoveredBlock46Stack2).
            recoveredBlock46PC := 66.
        ].
        recoveredBlock46Step = 66 ifTrue: [
            (recoveredBlock46Stack1) ifTrue: [recoveredBlock46PC := 73] ifFalse: [recoveredBlock46PC := 70].
        ].
        recoveredBlock46Step = 70 ifTrue: [
            recoveredBlock46Stack1 := self.
            recoveredBlock46PC := 71.
        ].
        recoveredBlock46Step = 71 ifTrue: [
            (recoveredBlock46Stack1) etasDevHalt.
            recoveredBlock46PC := 73.
        ].
        recoveredBlock46Step = 73 ifTrue: [
            recoveredBlock46Stack1 := recoveredArg1.
            recoveredBlock46PC := 76.
        ].
        recoveredBlock46Step = 76 ifTrue: [
            (recoveredBlock46Stack0) id: (recoveredBlock46Stack1).
            recoveredBlock46PC := 78.
        ].
        recoveredBlock46Step = 78 ifTrue: [
            recoveredBlock46Stack0 := recoveredArg1.
            recoveredBlock46PC := 81.
        ].
        recoveredBlock46Step = 81 ifTrue: [
            recoveredBlock46Stack0 := (recoveredBlock46Stack0) + (1).
            recoveredBlock46PC := 82.
        ].
        recoveredBlock46Step = 82 ifTrue: [
            recoveredLocal2 := recoveredBlock46Stack0.
            recoveredBlock46PC := 85.
        ].
        recoveredBlock46Step = 85 ifTrue: [
            recoveredBlock46Stack0 := recoveredArg2.
            recoveredBlock46PC := 88.
        ].
        recoveredBlock46Step = 88 ifTrue: [
            recoveredBlock46Stack0 := (recoveredBlock46Stack0) values.
            recoveredBlock46PC := 90.
        ].
        recoveredBlock46Step = 90 ifTrue: [
            recoveredBlock46Stack1 := recoveredArg1.
            recoveredBlock46PC := 93.
        ].
        recoveredBlock46Step = 93 ifTrue: [
            recoveredBlock46Stack0 := (recoveredBlock46Stack0) includes: (recoveredBlock46Stack1).
            recoveredBlock46PC := 95.
        ].
        recoveredBlock46Step = 95 ifTrue: [
            (recoveredBlock46Stack0) ifTrue: [recoveredBlock46PC := 98] ifFalse: [recoveredBlock46PC := 101].
        ].
        recoveredBlock46Step = 98 ifTrue: [
            recoveredBlock46Stack0 := self.
            recoveredBlock46PC := 99.
        ].
        recoveredBlock46Step = 99 ifTrue: [
            (recoveredBlock46Stack0) etasDevHalt.
            recoveredBlock46PC := 101.
        ].
        recoveredBlock46Step = 101 ifTrue: [
            recoveredBlock46Stack0 := recoveredArg1.
            recoveredBlock46PC := 104.
        ].
        recoveredBlock46Step = 104 ifTrue: [
            recoveredBlock46Result := recoveredBlock46Stack0.
            recoveredBlock46Done := true.
        ].
    ].
    recoveredBlock46Result
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Stack0 recoveredBlock105Stack1 recoveredBlock105Stack2 recoveredBlock105Stack3 recoveredBlock105PC recoveredBlock105Step recoveredBlock105Done recoveredBlock105Result |
    recoveredBlock105Stack0 := self.
    recoveredBlock105PC := 112.
    recoveredBlock105Done := false.
    [recoveredBlock105Done not] whileTrue: [
        recoveredBlock105Step := recoveredBlock105PC.
        recoveredBlock105Step = 112 ifTrue: [
            recoveredBlock105Stack1 := recoveredArg1.
            recoveredBlock105PC := 115.
        ].
        recoveredBlock105Step = 115 ifTrue: [
            recoveredLocal2 := recoveredBlock105Stack1.
            recoveredBlock105PC := 118.
        ].
        recoveredBlock105Step = 118 ifTrue: [
            recoveredBlock105Stack1 := id.
            recoveredBlock105PC := 120.
        ].
        recoveredBlock105Step = 120 ifTrue: [
            recoveredBlock105Stack2 := 0.
            recoveredBlock105PC := 122.
        ].
        recoveredBlock105Step = 122 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) ~= (recoveredBlock105Stack2).
            recoveredBlock105PC := 123.
        ].
        recoveredBlock105Step = 123 ifTrue: [
            (recoveredBlock105Stack1) ifTrue: [recoveredBlock105PC := 126] ifFalse: [recoveredBlock105PC := 137].
        ].
        recoveredBlock105Step = 126 ifTrue: [
            recoveredBlock105Stack1 := id.
            recoveredBlock105PC := 128.
        ].
        recoveredBlock105Step = 128 ifTrue: [
            recoveredBlock105Stack2 := recoveredBlock105Arg1.
            recoveredBlock105PC := 129.
        ].
        recoveredBlock105Step = 129 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) = (recoveredBlock105Stack2).
            recoveredBlock105PC := 130.
        ].
        recoveredBlock105Step = 130 ifTrue: [
            (recoveredBlock105Stack1) ifTrue: [recoveredBlock105PC := 137] ifFalse: [recoveredBlock105PC := 134].
        ].
        recoveredBlock105Step = 134 ifTrue: [
            recoveredBlock105Stack1 := self.
            recoveredBlock105PC := 135.
        ].
        recoveredBlock105Step = 135 ifTrue: [
            (recoveredBlock105Stack1) etasDevHalt.
            recoveredBlock105PC := 137.
        ].
        recoveredBlock105Step = 137 ifTrue: [
            recoveredBlock105Stack1 := recoveredBlock105Arg1.
            recoveredBlock105PC := 138.
        ].
        recoveredBlock105Step = 138 ifTrue: [
            recoveredBlock105Stack0 := (recoveredBlock105Stack0) id: (recoveredBlock105Stack1).
            recoveredBlock105PC := 140.
        ].
        recoveredBlock105Step = 140 ifTrue: [
            recoveredBlock105Result := recoveredBlock105Stack0.
            recoveredBlock105Done := true.
        ].
    ].
    recoveredBlock105Result
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumerateParts: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204da5c4; bytecode file offset 0xdd6ea8"
!AMLBaseObject methodsFor: 'recovered'!
generateMethod: recoveredArg1 source: recoveredArg2 for: recoveredArg3 in: recoveredArg4 categorizeIn: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodNamesIn: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) compiledMethodAt: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) extractSmalltalkCommentFromAmlMethodString.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) extractSmalltalkCommentFromAmlMethodString.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOrNil.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastOrNil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) lastOrNil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'generateAMLCode'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := [
    ^self
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) generateMethod: (recoveredStack2) categorizeIn: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 'generateAMLCode'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := [
    ^self
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) generateMethod: (recoveredStack2) categorizeIn: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f1c1c; bytecode file offset 0xdee540"
!AMLBaseObject methodsFor: 'recovered'!
generateClassAccessMethodCollection: recoveredArg1 pathName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) parent.
    recoveredValue3 := (recoveredValue2) generateClassName.
    recoveredValue4 := [
    | recoveredBlock11Value0 |
    recoveredBlock11Value0 := (self) etasDevHalt.
    recoveredBlock11Value0
].
    recoveredValue5 := (recoveredValue0) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredLocal4 := recoveredValue5.
    recoveredValue6 := WriteStream.
    recoveredValue7 := (recoveredValue6) on: ('').
    recoveredLocal3 := recoveredValue7.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (self) generateClassName: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := (self) selectorName: (recoveredValue12).
    recoveredValue14 := recoveredValue13.
    recoveredLocal2 := recoveredValue14.
    (recoveredValue11) nextPutAll: (recoveredValue13).
    recoveredValue15 := recoveredValue10.
    (recoveredValue15) cr.
    (recoveredValue10) nextPutAll: ('">> ').
    recoveredValue16 := (self) pathName.
    recoveredValue17 := recoveredLocal3.
    (recoveredValue16) printOn: (recoveredValue17).
    recoveredValue18 := recoveredLocal3.
    recoveredValue19 := recoveredValue18.
    (recoveredValue19) nextPutAll: (' <<"').
    recoveredValue20 := recoveredValue18.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue18.
    (recoveredValue21) nextPutAll: ('^( ').
    recoveredValue22 := recoveredValue18.
    recoveredValue23 := recoveredArg1.
    recoveredValue24 := (recoveredValue23) parent.
    recoveredValue25 := (recoveredValue24) getCollectionAccessCode.
    recoveredValue26 := (recoveredValue25) , (' collect: [:a | ').
    (recoveredValue22) nextPutAll: (recoveredValue26).
    recoveredValue27 := recoveredValue18.
    recoveredValue28 := recoveredLocal1.
    (recoveredValue27) nextPutAll: (recoveredValue28).
    recoveredValue29 := recoveredValue18.
    (recoveredValue29) nextPutAll: (' createFor: a ] ) ').
    (recoveredValue18) cr.
    recoveredValue30 := Smalltalk.
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := (recoveredValue31) asSymbol.
    recoveredValue33 := [
    | recoveredBlock122Value0 recoveredBlock122Value1 recoveredBlock122Value2 |
    (self) etasDevHalt.
    recoveredBlock122Value0 := recoveredLocal1.
    recoveredBlock122Value1 := (self) generateRootClass.
    recoveredBlock122Value2 := (self) generateClass: (recoveredBlock122Value0) root: (recoveredBlock122Value1).
    recoveredBlock122Value2
].
    recoveredValue34 := (recoveredValue30) at: (recoveredValue32) ifAbsent: (recoveredValue33).
    recoveredLocal1 := recoveredValue34.
    recoveredValue35 := recoveredLocal2.
    recoveredValue36 := recoveredLocal3.
    recoveredValue37 := (recoveredValue36) contents.
    recoveredValue38 := recoveredLocal4.
    recoveredValue39 := recoveredLocal4.
    recoveredValue40 := (recoveredValue39) getDefinedApplication.
    (self) generateMethod: (recoveredValue35) source: (recoveredValue37) for: (recoveredValue38) in: (recoveredValue40) categorizeIn: ('complexArgument').
    ^self
! !

"ASDBase.ic method 0x2050ea9c; bytecode file offset 0xe0b3b0"
!AMLBaseObject methodsFor: 'recovered'!
collectNamedOrIndexInBaseCol: recoveredArg1 path: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) localName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) firstAsUppercase.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasParts.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPartIndex: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := '^aml'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := 'aml'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasParts.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            value := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := Cr.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := Lf.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := '^'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            value := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := value.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 'aml'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesSubstring: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 129] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := [
    self
].
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Value0 |
    recoveredBlock139Value0 := (self) etasDevHalt.
    recoveredBlock139Value0
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) localName.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock156Value0 recoveredBlock156Value1 |
    recoveredBlock156Value0 := OrderedCollection.
    recoveredBlock156Value1 := (recoveredBlock156Value0) with: (self).
    recoveredBlock156Value1
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := [:recoveredBlock168Arg1 | 
    | recoveredBlock168Value0 recoveredBlock168Value1 |
    recoveredBlock168Value0 := recoveredBlock168Arg1.
    recoveredBlock168Value1 := (recoveredBlock168Value0) add: (self).
    recoveredBlock168Value1
].
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20519878; bytecode file offset 0xe16164"
!AMLBaseObject methodsFor: 'recovered'!
getTaggedStructType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AMLTaggedStructType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := typeName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := AMLUnionType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastOrNil.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := parts.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFrom: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) addTaggedStructType: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            parts := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 |
    recoveredBlock67Value0 := recoveredBlock67Arg1.
    recoveredBlock67Value1 := (recoveredBlock67Value0) parent: (self).
    recoveredBlock67Value1
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) addPartsFrom: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            typeName := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFrom: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastOrNil.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := AMLTaggedStructType.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastOrNil.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastOrNil.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) parts.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := [:recoveredBlock157Arg1 | 
    | recoveredBlock157Value0 recoveredBlock157Value1 |
    recoveredBlock157Value0 := recoveredBlock157Arg1.
    recoveredBlock157Value1 := (recoveredBlock157Value0) parent: (self).
    recoveredBlock157Value1
].
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredPC := 178.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) addTaggedStructType: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) addPartsFrom: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            typeName := recoveredStack1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20539c60; bytecode file offset 0xe36580"
!AMLBaseObject methodsFor: 'recovered'!
collectNamedOrIndexInBase: recoveredArg1 path: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) localName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) firstAsUppercase.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasParts.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPartIndex: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := '^aml'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := 'aml'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := '( '.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := ' parts at: '.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPartIndex: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := ' ifAbsent: [^nil ] ) '.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasParts.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            value := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := Cr.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := Lf.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := '^'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            value := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := value.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := 'aml'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesSubstring: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 153] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := [
    self
].
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := [:recoveredBlock163Arg1 | 
    | recoveredBlock163Value0 |
    recoveredBlock163Value0 := (self) etasDevHalt.
    recoveredBlock163Value0
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) localName.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock180Value0 recoveredBlock180Value1 |
    recoveredBlock180Value0 := OrderedCollection.
    recoveredBlock180Value1 := (recoveredBlock180Value0) with: (self).
    recoveredBlock180Value1
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := [:recoveredBlock192Arg1 | 
    | recoveredBlock192Value0 recoveredBlock192Value1 |
    recoveredBlock192Value0 := recoveredBlock192Arg1.
    recoveredBlock192Value1 := (recoveredBlock192Value0) add: (self).
    recoveredBlock192Value1
].
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20560e48; bytecode file offset 0xe5d764"
!AMLBaseObject methodsFor: 'recovered'!
parse: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) BlockDepth.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            startingDepth := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 200.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyWords.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := '}'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := A2MLError.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) position.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := 'missing $; at: %1 %2'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) log: (recoveredStack3) word: (recoveredStack4) stream: (recoveredStack5).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) addError: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) perform: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyWords.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := ';'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            typeName := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := typeName.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := [:recoveredBlock92Arg1 | 
    | recoveredBlock92Stack0 recoveredBlock92Stack1 recoveredBlock92Stack2 recoveredBlock92Stack3 recoveredBlock92Stack4 recoveredBlock92PC recoveredBlock92Step recoveredBlock92Done recoveredBlock92Result |
    recoveredBlock92Stack0 := self.
    recoveredBlock92PC := 98.
    recoveredBlock92Done := false.
    [recoveredBlock92Done not] whileTrue: [
        recoveredBlock92Step := recoveredBlock92PC.
        recoveredBlock92Step = 98 ifTrue: [
            recoveredBlock92Stack1 := nil.
            recoveredBlock92PC := 99.
        ].
        recoveredBlock92Step = 99 ifTrue: [
            recoveredBlock92Stack2 := recoveredLocal3.
            recoveredBlock92PC := 102.
        ].
        recoveredBlock92Step = 102 ifTrue: [
            recoveredBlock92Stack3 := 'endOfStatement:'.
            recoveredBlock92PC := 104.
        ].
        recoveredBlock92Step = 104 ifTrue: [
            recoveredBlock92Stack2 := (recoveredBlock92Stack2) = (recoveredBlock92Stack3).
            recoveredBlock92PC := 105.
        ].
        recoveredBlock92Step = 105 ifTrue: [
            (recoveredBlock92Stack2) ifTrue: [recoveredBlock92PC := 108] ifFalse: [recoveredBlock92PC := 136].
        ].
        recoveredBlock92Step = 108 ifTrue: [
            recoveredBlock92PC := 109.
        ].
        recoveredBlock92Step = 109 ifTrue: [
            recoveredBlock92Stack1 := parent.
            recoveredBlock92PC := 111.
        ].
        recoveredBlock92Step = 111 ifTrue: [
            recoveredBlock92Stack2 := typeName.
            recoveredBlock92PC := 113.
        ].
        recoveredBlock92Step = 113 ifTrue: [
            recoveredBlock92Stack1 := (recoveredBlock92Stack1) getDefinition: (recoveredBlock92Stack2).
            recoveredBlock92PC := 115.
        ].
        recoveredBlock92Step = 115 ifTrue: [
            recoveredBlock92Stack2 := recoveredBlock92Stack1.
            recoveredBlock92PC := 116.
        ].
        recoveredBlock92Step = 116 ifTrue: [
            recoveredLocal3 := recoveredBlock92Stack2.
            recoveredBlock92PC := 119.
        ].
        recoveredBlock92Step = 119 ifTrue: [
            (recoveredBlock92Stack1 ~~ nil) ifTrue: [recoveredBlock92PC := 132] ifFalse: [recoveredBlock92PC := 122].
        ].
        recoveredBlock92Step = 122 ifTrue: [
            recoveredBlock92Stack1 := self.
            recoveredBlock92PC := 123.
        ].
        recoveredBlock92Step = 123 ifTrue: [
            recoveredBlock92Stack1 := (recoveredBlock92Stack1) getDefaultGetMethod.
            recoveredBlock92PC := 125.
        ].
        recoveredBlock92Step = 125 ifTrue: [
            recoveredBlock92Stack2 := recoveredBlock92Stack1.
            recoveredBlock92PC := 126.
        ].
        recoveredBlock92Step = 126 ifTrue: [
            recoveredLocal3 := recoveredBlock92Stack2.
            recoveredBlock92PC := 129.
        ].
        recoveredBlock92Step = 129 ifTrue: [
            recoveredBlock92PC := 136.
        ].
        recoveredBlock92Step = 132 ifTrue: [
            recoveredBlock92Stack1 := recoveredLocal3.
            recoveredBlock92PC := 135.
        ].
        recoveredBlock92Step = 135 ifTrue: [
            ^recoveredBlock92Stack1
        ].
        recoveredBlock92Step = 136 ifTrue: [
            recoveredBlock92Result := recoveredBlock92Stack1.
            recoveredBlock92Done := true.
        ].
    ].
    recoveredBlock92Result
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) perform: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := 'endOfStatement:'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) BlockDepth.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := startingDepth.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 193] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := A2MLError.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := 'BlockDepth mismatch %1 %2 in class %3 %4'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) BlockDepth.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := startingDepth.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack5 := (recoveredStack5) copyCurPos: (recoveredStack6).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) progress.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyWords.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextWordBySeparators: (recoveredStack2).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058fae8; bytecode file offset 0xe8c3fc"
!AMLBaseObject methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parts.
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
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) definition.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := #(AMLTaggedUnionType AMLStructType AMLTaggedStructType).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := parts.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) putLevelIn: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) keyWord.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) ident: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (Character value: 9).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) quotedString: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) putTypeDefIn: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := [:block28114724Arg1 | 
    | block28114724Stack0 block28114724Stack1 block28114724Stack2 block28114724Stack3 block28114724PC block28114724Step block28114724Done block28114724Result |
    block28114724Stack0 := self.
    block28114724PC := 4.
    block28114724Done := false.
    [block28114724Done not] whileTrue: [
        block28114724Step := block28114724PC.
        block28114724Step = 4 ifTrue: [
            block28114724Stack1 := false.
            block28114724PC := 5.
        ].
        block28114724Step = 5 ifTrue: [
            block28114724Stack2 := block28114724Arg1.
            block28114724PC := 6.
        ].
        block28114724Step = 6 ifTrue: [
            block28114724Stack2 := (block28114724Stack2) definition.
            block28114724PC := 7.
        ].
        block28114724Step = 7 ifTrue: [
            (block28114724Stack2 == nil) ifTrue: [block28114724PC := 18] ifFalse: [block28114724PC := 10].
        ].
        block28114724Step = 10 ifTrue: [
            block28114724PC := 11.
        ].
        block28114724Step = 11 ifTrue: [
            block28114724Stack1 := #(AMLTaggedUnionType AMLStructType AMLTaggedStructType AMLBlock).
            block28114724PC := 13.
        ].
        block28114724Step = 13 ifTrue: [
            block28114724Stack2 := block28114724Arg1.
            block28114724PC := 14.
        ].
        block28114724Step = 14 ifTrue: [
            block28114724Stack2 := (block28114724Stack2) class.
            block28114724PC := 16.
        ].
        block28114724Step = 16 ifTrue: [
            block28114724Stack1 := (block28114724Stack1) includes: (block28114724Stack2).
            block28114724PC := 18.
        ].
        block28114724Step = 18 ifTrue: [
            block28114724Result := block28114724Stack1.
            block28114724Done := true.
        ].
    ].
    block28114724Result
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) putLevelIn: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyWord.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) ident: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (Character value: 9).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) quotedString: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) putBlockBeginIn: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) putSeparatorIn: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := [:recoveredBlock161Arg1 | 
    | recoveredBlock161Value0 recoveredBlock161Value1 recoveredBlock161Value2 recoveredBlock161Value3 |
    recoveredBlock161Value0 := recoveredBlock161Arg1.
    recoveredBlock161Value1 := recoveredArg1.
    (recoveredBlock161Value0) putTypeDefIn: (recoveredBlock161Value1).
    recoveredBlock161Value2 := recoveredArg1.
    recoveredBlock161Value3 := (self) putNewLineIn: (recoveredBlock161Value2).
    recoveredBlock161Value3
].
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) putEndIn: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) definition.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) definition.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUppercase.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0) putLevelIn: (recoveredStack1).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyWord.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) ident: (recoveredStack2).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (Character value: 9).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) quotedString: (recoveredStack2).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := (recoveredStack0) putTypeDefIn: (recoveredStack1).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) putKeyWordAndNameIn: (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) putPartsIn: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack0) putEndIn: (recoveredStack1).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ba9ec; bytecode file offset 0xeb7334"
!AMLBaseObject methodsFor: 'recovered'!
reduceNames: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28117664Arg1 | 
    | block28117664Value0 block28117664Value1 |
    block28117664Value0 := block28117664Arg1.
    block28117664Value1 := (block28117664Value0) size.
    block28117664Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) min.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 145.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 |
    recoveredBlock48Value0 := recoveredBlock48Arg1.
    recoveredBlock48Value1 := recoveredLocal1.
    recoveredBlock48Value2 := (recoveredBlock48Value0) at: (recoveredBlock48Value1).
    recoveredBlock48Value2
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) asSet.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) asArray.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) firstOrNil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) isEmpty.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := [:block28117688Arg1 | 
    | block28117688Value0 block28117688Value1 block28117688Value2 block28117688Value3 |
    block28117688Value0 := block28117688Arg1.
    block28117688Value1 := block28117688Arg1.
    block28117688Value2 := (block28117688Value1) size.
    block28117688Value3 := (block28117688Value0) copyFrom: (2) to: (block28117688Value2).
    block28117688Value3
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := (recoveredStack3) reduceNames: (recoveredStack4).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack3
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 145].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := [:block281176acArg1 | 
    | block281176acValue0 block281176acValue1 block281176acValue2 block281176acValue3 |
    block281176acValue0 := block281176acArg1.
    block281176acValue1 := block281176acArg1.
    block281176acValue2 := (block281176acValue1) size.
    block281176acValue3 := (block281176acValue0) copyFrom: (2) to: (block281176acValue2).
    block281176acValue3
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := (recoveredStack3) reduceNames: (recoveredStack4).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            ^recoveredStack3
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 42] ifFalse: [recoveredPC := 173]] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 169] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := 'Amltaggedstruct'.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := 'T'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := 'Amlstruct'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack4 := 'S'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := 'AmlCollection'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := 'C'.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := 'Amlenum'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack4 := 'E'.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := 'Amlblock'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack4 := 'B'.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack3 := 'Amlunion'.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack4 := 'U'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := 'Amltaggedunion'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := 'TU'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := 'Amldeclaration'.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := 'D'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := [:recoveredBlock242Arg1 | 
    | recoveredBlock242Value0 recoveredBlock242Value1 recoveredBlock242Value2 |
    recoveredBlock242Value0 := recoveredBlock242Arg1.
    recoveredBlock242Value1 := [:recoveredBlock242Block249Arg1 | 
    | recoveredBlock242Block249Stack0 recoveredBlock242Block249Stack1 recoveredBlock242Block249Stack2 recoveredBlock242Block249Stack3 recoveredBlock242Block249Stack4 recoveredBlock242Block249Stack5 recoveredBlock242Block249PC recoveredBlock242Block249Step recoveredBlock242Block249Done recoveredBlock242Block249Result |
    recoveredBlock242Block249Stack0 := nil.
    recoveredBlock242Block249PC := 256.
    recoveredBlock242Block249Done := false.
    [recoveredBlock242Block249Done not] whileTrue: [
        recoveredBlock242Block249Step := recoveredBlock242Block249PC.
        recoveredBlock242Block249Step = 256 ifTrue: [
            recoveredBlock242Block249Stack1 := recoveredLocal5.
            recoveredBlock242Block249PC := 259.
        ].
        recoveredBlock242Block249Step = 259 ifTrue: [
            recoveredBlock242Block249Stack2 := recoveredBlock242Block249Arg1.
            recoveredBlock242Block249PC := 262.
        ].
        recoveredBlock242Block249Step = 262 ifTrue: [
            recoveredBlock242Block249Stack3 := [
    | recoveredBlock242Block249Block262Stack0 recoveredBlock242Block249Block262Stack1 recoveredBlock242Block249Block262Stack2 recoveredBlock242Block249Block262Stack3 recoveredBlock242Block249Block262Stack4 recoveredBlock242Block249Block262PC recoveredBlock242Block249Block262Step recoveredBlock242Block249Block262Done recoveredBlock242Block249Block262Result |
    recoveredBlock242Block249Block262Stack0 := nil.
    recoveredBlock242Block249Block262PC := 268.
    recoveredBlock242Block249Block262Done := false.
    [recoveredBlock242Block249Block262Done not] whileTrue: [
        recoveredBlock242Block249Block262Step := recoveredBlock242Block249Block262PC.
        recoveredBlock242Block249Block262Step = 268 ifTrue: [
            recoveredBlock242Block249Block262Stack1 := recoveredBlock242Block249Arg1.
            recoveredBlock242Block249Block262PC := 271.
        ].
        recoveredBlock242Block249Block262Step = 271 ifTrue: [
            recoveredBlock242Block249Block262Stack2 := 'Aml'.
            recoveredBlock242Block249Block262PC := 273.
        ].
        recoveredBlock242Block249Block262Step = 273 ifTrue: [
            recoveredBlock242Block249Block262Stack1 := (recoveredBlock242Block249Block262Stack1) includesSubstring: (recoveredBlock242Block249Block262Stack2).
            recoveredBlock242Block249Block262PC := 275.
        ].
        recoveredBlock242Block249Block262Step = 275 ifTrue: [
            (recoveredBlock242Block249Block262Stack1) ifTrue: [recoveredBlock242Block249Block262PC := 278] ifFalse: [recoveredBlock242Block249Block262PC := 292].
        ].
        recoveredBlock242Block249Block262Step = 278 ifTrue: [
            recoveredBlock242Block249Block262Stack1 := recoveredBlock242Block249Arg1.
            recoveredBlock242Block249Block262PC := 281.
        ].
        recoveredBlock242Block249Block262Step = 281 ifTrue: [
            recoveredBlock242Block249Block262Stack2 := 4.
            recoveredBlock242Block249Block262PC := 283.
        ].
        recoveredBlock242Block249Block262Step = 283 ifTrue: [
            recoveredBlock242Block249Block262Stack3 := recoveredBlock242Block249Arg1.
            recoveredBlock242Block249Block262PC := 286.
        ].
        recoveredBlock242Block249Block262Step = 286 ifTrue: [
            recoveredBlock242Block249Block262Stack3 := (recoveredBlock242Block249Block262Stack3) size.
            recoveredBlock242Block249Block262PC := 287.
        ].
        recoveredBlock242Block249Block262Step = 287 ifTrue: [
            recoveredBlock242Block249Block262Stack1 := (recoveredBlock242Block249Block262Stack1) copyFrom: (recoveredBlock242Block249Block262Stack2) to: (recoveredBlock242Block249Block262Stack3).
            recoveredBlock242Block249Block262PC := 289.
        ].
        recoveredBlock242Block249Block262Step = 289 ifTrue: [
            recoveredBlock242Block249Block262PC := 300.
        ].
        recoveredBlock242Block249Block262Step = 292 ifTrue: [
            recoveredBlock242Block249Block262Stack1 := recoveredBlock242Block249Arg1.
            recoveredBlock242Block249Block262PC := 295.
        ].
        recoveredBlock242Block249Block262Step = 295 ifTrue: [
            recoveredBlock242Block249Block262Stack2 := $_.
            recoveredBlock242Block249Block262PC := 298.
        ].
        recoveredBlock242Block249Block262Step = 298 ifTrue: [
            recoveredBlock242Block249Block262Stack1 := (recoveredBlock242Block249Block262Stack1) copyWithout: (recoveredBlock242Block249Block262Stack2).
            recoveredBlock242Block249Block262PC := 300.
        ].
        recoveredBlock242Block249Block262Step = 300 ifTrue: [
            recoveredBlock242Block249Block262Result := recoveredBlock242Block249Block262Stack1.
            recoveredBlock242Block249Block262Done := true.
        ].
    ].
    recoveredBlock242Block249Block262Result
].
            recoveredBlock242Block249PC := 301.
        ].
        recoveredBlock242Block249Step = 301 ifTrue: [
            recoveredBlock242Block249Stack4 := [:block281176d0Arg1 | 
    | block281176d0Value0 |
    block281176d0Value0 := block281176d0Arg1.
    block281176d0Value0
].
            recoveredBlock242Block249PC := 303.
        ].
        recoveredBlock242Block249Step = 303 ifTrue: [
            recoveredBlock242Block249PC := 308.
        ].
        recoveredBlock242Block249Step = 308 ifTrue: [
            recoveredBlock242Block249Stack1 := (recoveredBlock242Block249Stack1) at: (recoveredBlock242Block249Stack2) ifAbsent: (recoveredBlock242Block249Stack3) ifPresent: (recoveredBlock242Block249Stack4).
            recoveredBlock242Block249PC := 311.
        ].
        recoveredBlock242Block249Step = 311 ifTrue: [
            recoveredBlock242Block249Result := recoveredBlock242Block249Stack1.
            recoveredBlock242Block249Done := true.
        ].
    ].
    recoveredBlock242Block249Result
].
    recoveredBlock242Value2 := (recoveredBlock242Value0) collect: (recoveredBlock242Value1).
    recoveredBlock242Value2
].
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205c88fc; bytecode file offset 0xec523c"
!AMLBaseObject methodsFor: 'recovered'!
collectNamedOrIndexLeafes
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) clearValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := 'aml '.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            value := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) localName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) parent.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Stack2 := self.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) = (recoveredBlock24Stack2).
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 41] ifFalse: [recoveredBlock24PC := 38].
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            (recoveredBlock24Stack1) etasDevHalt.
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal4.
            recoveredBlock24PC := 45.
        ].
        recoveredBlock24Step = 45 ifTrue: [
            recoveredBlock24Stack3 := recoveredLocal1.
            recoveredBlock24PC := 48.
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) collectNamedOrIndexIn: (recoveredBlock24Stack2) path: (recoveredBlock24Stack3).
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [:block28118aa4Arg1 | 
    | block28118aa4Stack0 block28118aa4Stack1 block28118aa4Stack2 block28118aa4Stack3 block28118aa4PC block28118aa4Step block28118aa4Done block28118aa4Result |
    block28118aa4Stack0 := self.
    block28118aa4PC := 4.
    block28118aa4Done := false.
    [block28118aa4Done not] whileTrue: [
        block28118aa4Step := block28118aa4PC.
        block28118aa4Step = 4 ifTrue: [
            block28118aa4Stack1 := block28118aa4Arg1.
            block28118aa4PC := 5.
        ].
        block28118aa4Step = 5 ifTrue: [
            block28118aa4Stack1 := (block28118aa4Stack1) isCollection.
            block28118aa4PC := 7.
        ].
        block28118aa4Step = 7 ifTrue: [
            (block28118aa4Stack1) ifTrue: [block28118aa4PC := 10] ifFalse: [block28118aa4PC := 14].
        ].
        block28118aa4Step = 10 ifTrue: [
            block28118aa4Stack1 := false.
            block28118aa4PC := 11.
        ].
        block28118aa4Step = 11 ifTrue: [
            block28118aa4PC := 29.
        ].
        block28118aa4Step = 14 ifTrue: [
            block28118aa4Stack1 := true.
            block28118aa4PC := 15.
        ].
        block28118aa4Step = 15 ifTrue: [
            block28118aa4Stack2 := block28118aa4Arg1.
            block28118aa4PC := 16.
        ].
        block28118aa4Step = 16 ifTrue: [
            block28118aa4Stack2 := (block28118aa4Stack2) hasParts.
            block28118aa4PC := 18.
        ].
        block28118aa4Step = 18 ifTrue: [
            (block28118aa4Stack2) ifTrue: [block28118aa4PC := 22] ifFalse: [block28118aa4PC := 29].
        ].
        block28118aa4Step = 22 ifTrue: [
            block28118aa4PC := 23.
        ].
        block28118aa4Step = 23 ifTrue: [
            block28118aa4Stack1 := block28118aa4Arg1.
            block28118aa4PC := 24.
        ].
        block28118aa4Step = 24 ifTrue: [
            block28118aa4Stack1 := (block28118aa4Stack1) class.
            block28118aa4PC := 26.
        ].
        block28118aa4Step = 26 ifTrue: [
            block28118aa4Stack2 := AMLCollection.
            block28118aa4PC := 28.
        ].
        block28118aa4Step = 28 ifTrue: [
            block28118aa4Stack1 := (block28118aa4Stack1) = (block28118aa4Stack2).
            block28118aa4PC := 29.
        ].
        block28118aa4Step = 29 ifTrue: [
            block28118aa4Result := block28118aa4Stack1.
            block28118aa4Done := true.
        ].
    ].
    block28118aa4Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := [:block28118ac8Arg1 | 
    | block28118ac8Value0 block28118ac8Value1 |
    block28118ac8Value0 := block28118ac8Arg1.
    block28118ac8Value1 := (block28118ac8Value0) subStrings: ($.).
    block28118ac8Value1
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) reduceNames: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := [:recoveredBlock136Arg1 :recoveredBlock136Arg2 | 
    | recoveredBlock136Local1 recoveredBlock136Local2 recoveredBlock136Value0 recoveredBlock136Value1 recoveredBlock136Value2 recoveredBlock136Value3 recoveredBlock136Value4 recoveredBlock136Value5 recoveredBlock136Value6 recoveredBlock136Value7 recoveredBlock136Value8 recoveredBlock136Value9 recoveredBlock136Value10 recoveredBlock136Value11 recoveredBlock136Value12 recoveredBlock136Value13 recoveredBlock136Value14 |
    recoveredBlock136Local2 := ''.
    recoveredBlock136Value0 := recoveredBlock136Arg1.
    recoveredBlock136Value1 := [:recoveredBlock136Block150Arg1 | 
    | recoveredBlock136Block150Value0 recoveredBlock136Block150Value1 recoveredBlock136Block150Value2 recoveredBlock136Block150Value3 recoveredBlock136Block150Value4 |
    recoveredBlock136Block150Value0 := recoveredBlock136Local2.
    recoveredBlock136Block150Value1 := (recoveredBlock136Block150Value0) , ('.').
    recoveredBlock136Block150Value2 := recoveredBlock136Block150Arg1.
    recoveredBlock136Block150Value3 := (recoveredBlock136Block150Value1) , (recoveredBlock136Block150Value2).
    recoveredBlock136Block150Value4 := recoveredBlock136Block150Value3.
    recoveredBlock136Local2 := recoveredBlock136Block150Value4.
    recoveredBlock136Block150Value3
].
    (recoveredBlock136Value0) do: (recoveredBlock136Value1).
    recoveredBlock136Value2 := recoveredBlock136Local2.
    recoveredBlock136Value3 := recoveredBlock136Local2.
    recoveredBlock136Value4 := (recoveredBlock136Value3) size.
    recoveredBlock136Value5 := (recoveredBlock136Value2) copyFrom: (2) to: (recoveredBlock136Value4).
    recoveredBlock136Local2 := recoveredBlock136Value5.
    recoveredBlock136Local1 := ''.
    recoveredBlock136Value6 := recoveredLocal2.
    recoveredBlock136Value7 := recoveredBlock136Arg2.
    recoveredBlock136Value8 := (recoveredBlock136Value6) at: (recoveredBlock136Value7).
    recoveredBlock136Value9 := [:recoveredBlock136Block201Arg1 | 
    | recoveredBlock136Block201Value0 recoveredBlock136Block201Value1 recoveredBlock136Block201Value2 recoveredBlock136Block201Value3 recoveredBlock136Block201Value4 |
    recoveredBlock136Block201Value0 := recoveredBlock136Local1.
    recoveredBlock136Block201Value1 := recoveredBlock136Block201Arg1.
    recoveredBlock136Block201Value2 := (recoveredBlock136Block201Value1) firstAsUppercase.
    recoveredBlock136Block201Value3 := (recoveredBlock136Block201Value0) , (recoveredBlock136Block201Value2).
    recoveredBlock136Block201Value4 := recoveredBlock136Block201Value3.
    recoveredBlock136Local1 := recoveredBlock136Block201Value4.
    recoveredBlock136Block201Value3
].
    (recoveredBlock136Value8) do: (recoveredBlock136Value9).
    recoveredBlock136Value10 := recoveredLocal4.
    recoveredBlock136Value11 := recoveredBlock136Local2.
    recoveredBlock136Value12 := [
    | recoveredBlock136Block229Value0 |
    recoveredBlock136Block229Value0 := (self) etasDevHalt.
    recoveredBlock136Block229Value0
].
    recoveredBlock136Value13 := [:recoveredBlock136Block239Arg1 | 
    | recoveredBlock136Block239Value0 recoveredBlock136Block239Value1 recoveredBlock136Block239Value2 recoveredBlock136Block239Value3 recoveredBlock136Block239Value4 recoveredBlock136Block239Value5 recoveredBlock136Block239Value6 recoveredBlock136Block239Value7 recoveredBlock136Block239Value8 recoveredBlock136Block239Value9 |
    recoveredBlock136Block239Value0 := recoveredLocal5.
    recoveredBlock136Block239Value1 := recoveredBlock136Local1.
    recoveredBlock136Block239Value2 := [
    | recoveredBlock136Block239Block252Value0 |
    recoveredBlock136Block239Block252Value0 := recoveredBlock136Block239Arg1.
    recoveredBlock136Block239Block252Value0
].
    recoveredBlock136Block239Value3 := [:recoveredBlock136Block239Block262Arg1 | 
    | recoveredBlock136Block239Block262Stack0 recoveredBlock136Block239Block262Stack1 recoveredBlock136Block239Block262Stack2 recoveredBlock136Block239Block262Stack3 recoveredBlock136Block239Block262Stack4 recoveredBlock136Block239Block262PC recoveredBlock136Block239Block262Step recoveredBlock136Block239Block262Done recoveredBlock136Block239Block262Result |
    recoveredBlock136Block239Block262Stack0 := self.
    recoveredBlock136Block239Block262PC := 268.
    recoveredBlock136Block239Block262Done := false.
    [recoveredBlock136Block239Block262Done not] whileTrue: [
        recoveredBlock136Block239Block262Step := recoveredBlock136Block239Block262PC.
        recoveredBlock136Block239Block262Step = 268 ifTrue: [
            recoveredBlock136Block239Block262Stack1 := recoveredBlock136Block239Block262Arg1.
            recoveredBlock136Block239Block262PC := 269.
        ].
        recoveredBlock136Block239Block262Step = 269 ifTrue: [
            recoveredBlock136Block239Block262Stack1 := (recoveredBlock136Block239Block262Stack1) class.
            recoveredBlock136Block239Block262PC := 271.
        ].
        recoveredBlock136Block239Block262Step = 271 ifTrue: [
            recoveredBlock136Block239Block262Stack2 := recoveredBlock136Block239Arg1.
            recoveredBlock136Block239Block262PC := 274.
        ].
        recoveredBlock136Block239Block262Step = 274 ifTrue: [
            recoveredBlock136Block239Block262Stack2 := (recoveredBlock136Block239Block262Stack2) class.
            recoveredBlock136Block239Block262PC := 276.
        ].
        recoveredBlock136Block239Block262Step = 276 ifTrue: [
            recoveredBlock136Block239Block262Stack1 := (recoveredBlock136Block239Block262Stack1) = (recoveredBlock136Block239Block262Stack2).
            recoveredBlock136Block239Block262PC := 277.
        ].
        recoveredBlock136Block239Block262Step = 277 ifTrue: [
            (recoveredBlock136Block239Block262Stack1) ifTrue: [recoveredBlock136Block239Block262PC := 280] ifFalse: [recoveredBlock136Block239Block262PC := 286].
        ].
        recoveredBlock136Block239Block262Step = 280 ifTrue: [
            recoveredBlock136Block239Block262Stack1 := self.
            recoveredBlock136Block239Block262PC := 281.
        ].
        recoveredBlock136Block239Block262Step = 281 ifTrue: [
            recoveredBlock136Block239Block262Stack1 := (recoveredBlock136Block239Block262Stack1) etasDevHalt.
            recoveredBlock136Block239Block262PC := 283.
        ].
        recoveredBlock136Block239Block262Step = 283 ifTrue: [
            recoveredBlock136Block239Block262PC := 310.
        ].
        recoveredBlock136Block239Block262Step = 286 ifTrue: [
            recoveredBlock136Block239Block262Stack1 := recoveredBlock136Block239Arg1.
            recoveredBlock136Block239Block262PC := 289.
        ].
        recoveredBlock136Block239Block262Step = 289 ifTrue: [
            recoveredBlock136Block239Block262Stack1 := (recoveredBlock136Block239Block262Stack1) selectorPrefix.
            recoveredBlock136Block239Block262PC := 291.
        ].
        recoveredBlock136Block239Block262Step = 291 ifTrue: [
            recoveredBlock136Block239Block262Stack2 := recoveredBlock136Local1.
            recoveredBlock136Block239Block262PC := 294.
        ].
        recoveredBlock136Block239Block262Step = 294 ifTrue: [
            recoveredBlock136Block239Block262Stack1 := (recoveredBlock136Block239Block262Stack1) , (recoveredBlock136Block239Block262Stack2).
            recoveredBlock136Block239Block262PC := 296.
        ].
        recoveredBlock136Block239Block262Step = 296 ifTrue: [
            recoveredBlock136Local1 := recoveredBlock136Block239Block262Stack1.
            recoveredBlock136Block239Block262PC := 299.
        ].
        recoveredBlock136Block239Block262Step = 299 ifTrue: [
            recoveredBlock136Block239Block262Stack1 := recoveredLocal5.
            recoveredBlock136Block239Block262PC := 302.
        ].
        recoveredBlock136Block239Block262Step = 302 ifTrue: [
            recoveredBlock136Block239Block262Stack2 := recoveredBlock136Local1.
            recoveredBlock136Block239Block262PC := 305.
        ].
        recoveredBlock136Block239Block262Step = 305 ifTrue: [
            recoveredBlock136Block239Block262Stack3 := recoveredBlock136Block239Arg1.
            recoveredBlock136Block239Block262PC := 308.
        ].
        recoveredBlock136Block239Block262Step = 308 ifTrue: [
            recoveredBlock136Block239Block262Stack1 := (recoveredBlock136Block239Block262Stack1) at: (recoveredBlock136Block239Block262Stack2) put: (recoveredBlock136Block239Block262Stack3).
            recoveredBlock136Block239Block262PC := 310.
        ].
        recoveredBlock136Block239Block262Step = 310 ifTrue: [
            recoveredBlock136Block239Block262Result := recoveredBlock136Block239Block262Stack1.
            recoveredBlock136Block239Block262Done := true.
        ].
    ].
    recoveredBlock136Block239Block262Result
].
    (recoveredBlock136Block239Value0) at: (recoveredBlock136Block239Value1) ifAbsentPut: (recoveredBlock136Block239Value2) ifPresent: (recoveredBlock136Block239Value3).
    recoveredBlock136Block239Value4 := recoveredBlock136Block239Arg1.
    recoveredBlock136Block239Value5 := recoveredBlock136Local1.
    recoveredBlock136Block239Value6 := recoveredBlock136Block239Arg1.
    recoveredBlock136Block239Value7 := (recoveredBlock136Block239Value6) value.
    recoveredBlock136Block239Value8 := (recoveredBlock136Block239Value5) , (recoveredBlock136Block239Value7).
    recoveredBlock136Block239Value9 := (recoveredBlock136Block239Value4) value: (recoveredBlock136Block239Value8).
    recoveredBlock136Block239Value9
].
    recoveredBlock136Value14 := (recoveredBlock136Value10) at: (recoveredBlock136Value11) ifAbsent: (recoveredBlock136Value12) ifPresent: (recoveredBlock136Value13).
    recoveredBlock136Value14
].
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ce9ec; bytecode file offset 0xecb310"
!AMLBaseObject methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (Character value: 9).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtHash32.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'BlockDepth: '.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := startingDepth.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := ' / '.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) BlockDepth.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := 'name: '.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := name.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := $$.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := id.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := '/0x'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := id.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := id.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := id.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1) base: (recoveredStack2) showRadix: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathName.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := $$.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := id.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := accessor.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 189] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := 'offset '.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := accessor.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) offset.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := 'hasValue: '.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasAMLValue.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) printValueOn: (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := 'typeName: '.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := typeName.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := 'definition '.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := (recoveredStack0) definition.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := 'hasParts: '.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasParts.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 342] ifFalse: [recoveredPC := 280].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := [:recoveredBlock282Arg1 | 
    | recoveredBlock282Stack0 recoveredBlock282Stack1 recoveredBlock282Stack2 recoveredBlock282Stack3 recoveredBlock282PC recoveredBlock282Step recoveredBlock282Done recoveredBlock282Result |
    recoveredBlock282Stack0 := self.
    recoveredBlock282PC := 288.
    recoveredBlock282Done := false.
    [recoveredBlock282Done not] whileTrue: [
        recoveredBlock282Step := recoveredBlock282PC.
        recoveredBlock282Step = 288 ifTrue: [
            recoveredBlock282Stack1 := recoveredArg1.
            recoveredBlock282PC := 291.
        ].
        recoveredBlock282Step = 291 ifTrue: [
            recoveredBlock282Stack2 := (Character value: 9).
            recoveredBlock282PC := 294.
        ].
        recoveredBlock282Step = 294 ifTrue: [
            (recoveredBlock282Stack1) nextPut: (recoveredBlock282Stack2).
            recoveredBlock282PC := 296.
        ].
        recoveredBlock282Step = 296 ifTrue: [
            recoveredBlock282Stack1 := recoveredBlock282Arg1.
            recoveredBlock282PC := 297.
        ].
        recoveredBlock282Step = 297 ifTrue: [
            recoveredBlock282Stack1 := (recoveredBlock282Stack1) isInteger.
            recoveredBlock282PC := 299.
        ].
        recoveredBlock282Step = 299 ifTrue: [
            (recoveredBlock282Stack1) ifTrue: [recoveredBlock282PC := 302] ifFalse: [recoveredBlock282PC := 312].
        ].
        recoveredBlock282Step = 302 ifTrue: [
            recoveredBlock282Stack1 := recoveredBlock282Arg1.
            recoveredBlock282PC := 303.
        ].
        recoveredBlock282Step = 303 ifTrue: [
            recoveredBlock282Stack2 := recoveredArg1.
            recoveredBlock282PC := 306.
        ].
        recoveredBlock282Step = 306 ifTrue: [
            (recoveredBlock282Stack1) printOn: (recoveredBlock282Stack2).
            recoveredBlock282PC := 308.
        ].
        recoveredBlock282Step = 308 ifTrue: [
            recoveredBlock282PC := 334.
        ].
        recoveredBlock282Step = 312 ifTrue: [
            recoveredBlock282Stack1 := recoveredBlock282Arg1.
            recoveredBlock282PC := 313.
        ].
        recoveredBlock282Step = 313 ifTrue: [
            recoveredBlock282Stack1 := (recoveredBlock282Stack1) isAssociation.
            recoveredBlock282PC := 315.
        ].
        recoveredBlock282Step = 315 ifTrue: [
            (recoveredBlock282Stack1) ifTrue: [recoveredBlock282PC := 318] ifFalse: [recoveredBlock282PC := 328].
        ].
        recoveredBlock282Step = 318 ifTrue: [
            recoveredBlock282Stack1 := recoveredBlock282Arg1.
            recoveredBlock282PC := 319.
        ].
        recoveredBlock282Step = 319 ifTrue: [
            recoveredBlock282Stack2 := recoveredArg1.
            recoveredBlock282PC := 322.
        ].
        recoveredBlock282Step = 322 ifTrue: [
            (recoveredBlock282Stack1) printOn: (recoveredBlock282Stack2).
            recoveredBlock282PC := 324.
        ].
        recoveredBlock282Step = 324 ifTrue: [
            recoveredBlock282PC := 334.
        ].
        recoveredBlock282Step = 328 ifTrue: [
            recoveredBlock282Stack1 := recoveredBlock282Arg1.
            recoveredBlock282PC := 329.
        ].
        recoveredBlock282Step = 329 ifTrue: [
            recoveredBlock282Stack2 := recoveredArg1.
            recoveredBlock282PC := 332.
        ].
        recoveredBlock282Step = 332 ifTrue: [
            (recoveredBlock282Stack1) printInPartsListOn: (recoveredBlock282Stack2).
            recoveredBlock282PC := 334.
        ].
        recoveredBlock282Step = 334 ifTrue: [
            recoveredBlock282Stack1 := recoveredArg1.
            recoveredBlock282PC := 337.
        ].
        recoveredBlock282Step = 337 ifTrue: [
            recoveredBlock282Stack1 := (recoveredBlock282Stack1) cr.
            recoveredBlock282PC := 339.
        ].
        recoveredBlock282Step = 339 ifTrue: [
            recoveredBlock282Result := recoveredBlock282Stack1.
            recoveredBlock282Done := true.
        ].
    ].
    recoveredBlock282Result
].
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack0) printErrorsOn: (recoveredStack1).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

