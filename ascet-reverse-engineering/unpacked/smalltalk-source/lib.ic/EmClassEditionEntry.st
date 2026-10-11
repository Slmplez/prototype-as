"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000198; bytecode file offset 0x3c21c"
!EmClassEditionEntry methodsFor: 'recovered'!
key
    | recoveredValue0 |
    recoveredValue0 := (self) timeStamp.
    ^recoveredValue0
! !

"lib.ic method 0x200001a4; bytecode file offset 0x3c21c"
!EmClassEditionEntry methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := (self) key.
    ^recoveredValue0
! !

"lib.ic method 0x20000998; bytecode file offset 0x3cba0"
!EmClassEditionEntry methodsFor: 'recovered'!
isEdition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) versionName.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"lib.ic method 0x20000a38; bytecode file offset 0x3cba0"
!EmClassEditionEntry methodsFor: 'recovered'!
isVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) versionName.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"lib.ic method 0x20001130; bytecode file offset 0x3d1e8"
!EmClassEditionEntry methodsFor: 'recovered'!
keySize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EmTimeStamp.
    recoveredValue1 := (recoveredValue0) fixedLength.
    ^recoveredValue1
! !

"lib.ic method 0x20001160; bytecode file offset 0x3d1e8"
!EmClassEditionEntry methodsFor: 'recovered'!
totalKeySize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EmTimeStamp.
    recoveredValue1 := (recoveredValue0) fixedLength.
    ^recoveredValue1
! !

"lib.ic method 0x2000134c; bytecode file offset 0x3d664"
!EmClassEditionEntry methodsFor: 'recovered'!
timeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) keyIndex.
    recoveredValue1 := (self) timeStampAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000136c; bytecode file offset 0x3d664"
!EmClassEditionEntry methodsFor: 'recovered'!
definitionFilePointer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) definitionIndex.
    recoveredValue1 := (self) filePointerAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000138c; bytecode file offset 0x3d664"
!EmClassEditionEntry methodsFor: 'recovered'!
classMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) classIndex.
    recoveredValue1 := (self) obtainDictionaryAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000148c; bytecode file offset 0x3d664"
!EmClassEditionEntry methodsFor: 'recovered'!
definitionTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) definitionTSIndex.
    recoveredValue1 := (self) timeStampAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000149c; bytecode file offset 0x3d664"
!EmClassEditionEntry methodsFor: 'recovered'!
currentMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentMethodIndex.
    recoveredValue1 := (self) obtainDictionaryAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x200015bc; bytecode file offset 0x3d664"
!EmClassEditionEntry methodsFor: 'recovered'!
length
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (self) wordAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x200015dc; bytecode file offset 0x3d664"
!EmClassEditionEntry methodsFor: 'recovered'!
instanceMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) instanceIndex.
    recoveredValue1 := (self) obtainDictionaryAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000163c; bytecode file offset 0x3d664"
!EmClassEditionEntry methodsFor: 'recovered'!
previousTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) previousIndex.
    recoveredValue1 := (self) timeStampAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20001670; bytecode file offset 0x3d6ac"
!EmClassEditionEntry methodsFor: 'recovered'!
developer
    | recoveredValue0 |
    recoveredValue0 := (self) element: (1).
    ^recoveredValue0
! !

"lib.ic method 0x200016a8; bytecode file offset 0x3d6d8"
!EmClassEditionEntry methodsFor: 'recovered'!
versionName
    | recoveredValue0 |
    recoveredValue0 := (self) element: (2).
    ^recoveredValue0
! !

"lib.ic method 0x20001d14; bytecode file offset 0x3dd38"
!EmClassEditionEntry methodsFor: 'recovered'!
endOfMFTS
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) offsetOfElement: (1).
    recoveredValue1 := (recoveredValue0) + (-1).
    ^recoveredValue1
! !

"lib.ic method 0x20001e30; bytecode file offset 0x3de54"
!EmClassEditionEntry methodsFor: 'recovered'!
startOfOffsets
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (2).
    ^recoveredValue1
! !

"lib.ic method 0x20001ea8; bytecode file offset 0x3ded8"
!EmClassEditionEntry methodsFor: 'recovered'!
keyIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (6).
    ^recoveredValue1
! !

"lib.ic method 0x20001f2c; bytecode file offset 0x3df50"
!EmClassEditionEntry methodsFor: 'recovered'!
previousIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (10).
    ^recoveredValue1
! !

"lib.ic method 0x20001fb0; bytecode file offset 0x3dfd4"
!EmClassEditionEntry methodsFor: 'recovered'!
instanceIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (14).
    ^recoveredValue1
! !

"lib.ic method 0x20002050; bytecode file offset 0x3e074"
!EmClassEditionEntry methodsFor: 'recovered'!
classIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (22).
    ^recoveredValue1
! !

"lib.ic method 0x200020c8; bytecode file offset 0x3e0ec"
!EmClassEditionEntry methodsFor: 'recovered'!
definitionTSIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (30).
    ^recoveredValue1
! !

"lib.ic method 0x20002110; bytecode file offset 0x3e134"
!EmClassEditionEntry methodsFor: 'recovered'!
definitionIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (34).
    ^recoveredValue1
! !

"lib.ic method 0x2000217c; bytecode file offset 0x3e1a0"
!EmClassEditionEntry methodsFor: 'recovered'!
inheritedFieldsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (42).
    ^recoveredValue1
! !

"lib.ic method 0x200021ac; bytecode file offset 0x3e1d0"
!EmClassEditionEntry methodsFor: 'recovered'!
localFieldsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (50).
    ^recoveredValue1
! !

"lib.ic method 0x200021f4; bytecode file offset 0x3e218"
!EmClassEditionEntry methodsFor: 'recovered'!
startOfMFTS
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (58).
    ^recoveredValue1
! !

"lib.ic method 0x20002440; bytecode file offset 0x3e480"
!EmClassEditionEntry methodsFor: 'recovered'!
actualClass
    | recoveredValue0 |
    recoveredValue0 := itsClass.
    ^recoveredValue0
! !

"lib.ic method 0x200024ac; bytecode file offset 0x3e4cc"
!EmClassEditionEntry methodsFor: 'recovered'!
application
    | recoveredValue0 |
    recoveredValue0 := itsApplication.
    ^recoveredValue0
! !

"lib.ic method 0x200027b0; bytecode file offset 0x3e7d8"
!EmClassEditionEntry methodsFor: 'recovered'!
numberOfElements
    ^2
! !

"lib.ic method 0x20002d28; bytecode file offset 0x3ed4c"
!EmClassEditionEntry methodsFor: 'recovered'!
key: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) timeStamp: (recoveredValue0).
    ^self
! !

"lib.ic method 0x20003160; bytecode file offset 0x3f188"
!EmClassEditionEntry methodsFor: 'recovered'!
removeAllCategories
    | recoveredValue0 |
    recoveredValue0 := (self) currentCategoryKey.
    (self) deleteInheritedUserField: (recoveredValue0).
    ^self
! !

"lib.ic method 0x20003468; bytecode file offset 0x3f4a0"
!EmClassEditionEntry methodsFor: 'recovered'!
length: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) at: (recoveredValue0) putWord: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20003bbc; bytecode file offset 0x3fbfc"
!EmClassEditionEntry methodsFor: 'recovered'!
definitionRecord
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) definitionIndex.
    recoveredValue1 := EmClassDefinition.
    recoveredValue2 := (self) obtainRecordForPartAt: (recoveredValue0) ofType: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20003e64; bytecode file offset 0x3feac"
!EmClassEditionEntry methodsFor: 'recovered'!
timeStamp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) keyIndex.
    recoveredValue1 := recoveredArg1.
    (self) at: (recoveredValue0) putTimeStamp: (recoveredValue1).
    ^self
! !

"lib.ic method 0x200040f0; bytecode file offset 0x40110"
!EmClassEditionEntry methodsFor: 'recovered'!
class: recoveredArg1 application: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    itsClass := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    itsApplication := recoveredValue1.
    ^self
! !

"lib.ic method 0x2000456c; bytecode file offset 0x40594"
!EmClassEditionEntry methodsFor: 'recovered'!
initialEntryAt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) initializeNewEntryAt: (recoveredValue0).
    (self) newDefinition.
    ^self
! !

"lib.ic method 0x20004d3c; bytecode file offset 0x40d84"
!EmClassEditionEntry methodsFor: 'recovered'!
classCategoryDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EmDictionaryOfStrings.
    recoveredValue1 := (self) inheritedUserFieldAt: ('ENVYclassProtocols') ofType: (recoveredValue0).
    recoveredValue2 := (self) categoryDictionaryFrom: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20004d54; bytecode file offset 0x40d84"
!EmClassEditionEntry methodsFor: 'recovered'!
instanceCategoryDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EmDictionaryOfStrings.
    recoveredValue1 := (self) inheritedUserFieldAt: ('ENVYinstanceProtocols') ofType: (recoveredValue0).
    recoveredValue2 := (self) categoryDictionaryFrom: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20004d7c; bytecode file offset 0x40dac"
!EmClassEditionEntry methodsFor: 'recovered'!
categoryDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) currentCategoryKey.
    recoveredValue1 := EmDictionaryOfStrings.
    recoveredValue2 := (self) inheritedUserFieldAt: (recoveredValue0) ofType: (recoveredValue1).
    recoveredValue3 := (self) categoryDictionaryFrom: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20005318; bytecode file offset 0x41340"
!EmClassEditionEntry methodsFor: 'recovered'!
redefined: recoveredArg1 as: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (self) newEditionAt: (recoveredValue0) basedOn: (recoveredValue1).
    (self) newDefinition.
    ^self
! !

"lib.ic method 0x20005338; bytecode file offset 0x41360"
!EmClassEditionEntry methodsFor: 'recovered'!
newEditionAt: recoveredArg1 basedOn: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) initializeNewEntryAt: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) copyInfoFrom: (recoveredValue1).
    ^self
! !

"lib.ic method 0x2000584c; bytecode file offset 0x4187c"
!EmClassEditionEntry methodsFor: 'recovered'!
elementIsDBString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) localFieldsIndex.
    recoveredValue1 := (self) filePointerAt: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) statusBits.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) + (6).
    recoveredValue5 := (recoveredValue2) isBitSet: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x20006358; bytecode file offset 0x4238c"
!EmClassEditionEntry methodsFor: 'recovered'!
inheritedUserFields
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := (self) actualClass.
    recoveredValue3 := (self) application.
    recoveredValue4 := (recoveredValue1) classInheritedUserFieldsFor: (recoveredValue2) in: (recoveredValue3) ifNotCachedUseEditionEntry: (self).
    ^recoveredValue4
! !

"lib.ic method 0x200076a4; bytecode file offset 0x436d8"
!EmClassEditionEntry methodsFor: 'recovered'!
initializeEmpty
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) endPosition.
    recoveredValue1 := (self) startPosition.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    recoveredValue3 := (recoveredValue2) + (1).
    (self) length: (recoveredValue3).
    super initializeEmpty.
    ^self
! !

"lib.ic method 0x200076fc; bytecode file offset 0x4372c"
!EmClassEditionEntry methodsFor: 'recovered'!
currentCategoryKey
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'ENVYinstanceProtocols'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 'ENVYclassProtocols'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20007740; bytecode file offset 0x43770"
!EmClassEditionEntry methodsFor: 'recovered'!
currentMethodIndex
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClass.
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
            recoveredStack0 := (recoveredStack0) instanceIndex.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) classIndex.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20009600; bytecode file offset 0x45630"
!EmClassEditionEntry methodsFor: 'recovered'!
removeCategoryNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) currentCategoryKey.
    recoveredValue1 := EmDictionaryOfStrings.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) removeKey: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    recoveredValue3 := (self) updateInheritedUserFieldAt: (recoveredValue0) ofType: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x2000a148; bytecode file offset 0x4618c"
!EmClassEditionEntry methodsFor: 'recovered'!
parentRecord
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EmClassEditions.
    recoveredValue1 := (recoveredValue0) empty.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) actualClass.
    recoveredValue4 := (self) application.
    (recoveredValue2) class: (recoveredValue3) application: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := (self) collection.
    (recoveredValue5) collection: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := (self) filePointer.
    (recoveredValue7) filePointer: (recoveredValue8).
    ^recoveredValue1
! !

"lib.ic method 0x2000ab24; bytecode file offset 0x46b64"
!EmClassEditionEntry methodsFor: 'recovered'!
isMethod: recoveredArg1 sameAs: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) compareMethodSource.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := EmMethodEdition.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) library.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) using: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) record.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSourceSameAs: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000b1c0; bytecode file offset 0x47218"
!EmClassEditionEntry methodsFor: 'recovered'!
removeSelectors: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentMethodIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 |
    recoveredBlock6Value0 := EmLibrary.
    recoveredBlock6Value1 := (recoveredBlock6Value0) cache.
    recoveredBlock6Value2 := recoveredBlock6Arg1.
    (recoveredBlock6Value1) renewMethods: (recoveredBlock6Value2) for: (self).
    recoveredBlock6Value3 := recoveredBlock6Arg1.
    recoveredBlock6Value4 := recoveredArg1.
    recoveredBlock6Value5 := (recoveredBlock6Value3) removeAllKeys: (recoveredBlock6Value4).
    recoveredBlock6Value5
].
    recoveredValue2 := (self) updateDictionaryAt: (recoveredValue0) using: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x2000b1e0; bytecode file offset 0x47218"
!EmClassEditionEntry methodsFor: 'recovered'!
removeSelector: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentMethodIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 |
    recoveredBlock6Value0 := EmLibrary.
    recoveredBlock6Value1 := (recoveredBlock6Value0) cache.
    recoveredBlock6Value2 := recoveredBlock6Arg1.
    (recoveredBlock6Value1) renewMethods: (recoveredBlock6Value2) for: (self).
    recoveredBlock6Value3 := recoveredBlock6Arg1.
    recoveredBlock6Value4 := recoveredArg1.
    recoveredBlock6Value5 := (recoveredBlock6Value3) removeKey: (recoveredBlock6Value4).
    recoveredBlock6Value5
].
    recoveredValue2 := (self) updateDictionaryAt: (recoveredValue0) using: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x2000be20; bytecode file offset 0x47e60"
!EmClassEditionEntry methodsFor: 'recovered'!
asEditionNamed: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) versionName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) versionName: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := EmClassEdition.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) definitionTimeStamp.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) named: (recoveredStack1) timeStampWithVersionInfo: (recoveredStack2) definition: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000d954; bytecode file offset 0x499a0"
!EmClassEditionEntry methodsFor: 'recovered'!
newDefinition
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) actualClass.
    recoveredValue1 := EmTimeStamp.
    recoveredValue2 := (recoveredValue1) now.
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    (recoveredValue0) definitionTimeStamp: (recoveredValue2).
    recoveredValue4 := (self) definitionTSIndex.
    recoveredValue5 := recoveredLocal1.
    (self) at: (recoveredValue4) putTimeStamp: (recoveredValue5).
    recoveredValue6 := (self) definitionIndex.
    recoveredValue7 := EmClassDefinition.
    recoveredValue8 := (self) actualClass.
    recoveredValue9 := (self) library.
    recoveredValue10 := (recoveredValue7) createFor: (recoveredValue8) in: (recoveredValue9).
    (self) at: (recoveredValue6) putFilePointer: (recoveredValue10).
    ^self
! !

"lib.ic method 0x2000effc; bytecode file offset 0x4b034"
!EmClassEditionEntry methodsFor: 'recovered'!
releaseMethod: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentMethodIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 |
    recoveredBlock6Value0 := EmLibrary.
    recoveredBlock6Value1 := (recoveredBlock6Value0) cache.
    recoveredBlock6Value2 := recoveredBlock6Arg1.
    (recoveredBlock6Value1) renewMethods: (recoveredBlock6Value2) for: (self).
    recoveredBlock6Value3 := recoveredBlock6Arg1.
    recoveredBlock6Value4 := recoveredArg1.
    recoveredBlock6Value5 := [:recoveredBlock6Block23Arg1 | 
    | recoveredBlock6Block23Value0 |
    recoveredBlock6Block23Value0 := recoveredArg2.
    recoveredBlock6Block23Value0
].
    recoveredBlock6Value6 := (recoveredBlock6Value3) at: (recoveredBlock6Value4) putPointerFrom: (recoveredBlock6Value5).
    recoveredBlock6Value6
].
    recoveredValue2 := (self) updateDictionaryAt: (recoveredValue0) using: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x2000f730; bytecode file offset 0x4b774"
!EmClassEditionEntry methodsFor: 'recovered'!
knownFormats
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) startOfMFTS.
    recoveredValue3 := (self) endOfMFTS.
    recoveredValue4 := EmTimeStamp.
    recoveredValue5 := (recoveredValue4) fixedLength.
    recoveredValue6 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (self) timeStampAt: (recoveredBlock17Value1).
    recoveredBlock17Value3 := (recoveredBlock17Value0) add: (recoveredBlock17Value2).
    recoveredBlock17Value3
].
    (recoveredValue2) to: (recoveredValue3) by: (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"lib.ic method 0x2000f7f4; bytecode file offset 0x4b838"
!EmClassEditionEntry methodsFor: 'recovered'!
setVersionName: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) sizeOfElement: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) replaceElement: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) length.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) byteSize.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) length: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) application.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) timeStampIn: (recoveredStack1) versionName: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20010904; bytecode file offset 0x4c958"
!EmClassEditionEntry methodsFor: 'recovered'!
definitionString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) definitionFilePointer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVoid.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndefined.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := NlsCatEMcsESa.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'MxEMcsESa1'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) definitionRecord.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) definitionString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200109bc; bytecode file offset 0x4c9f8"
!EmClassEditionEntry methodsFor: 'recovered'!
contentsForCategoryDictionaryAre: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentCategoryKey.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) deleteInheritedUserField: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentCategoryKey.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := EmDictionaryOfStrings.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 |
    recoveredBlock22Value0 := EmDictionaryOfStrings.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (self) library.
    recoveredBlock22Value3 := (recoveredBlock22Value0) createFor: (recoveredBlock22Value1) in: (recoveredBlock22Value2).
    recoveredBlock22Value3
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) updateInheritedUserFieldAt: (recoveredStack2) ofType: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20010a0c; bytecode file offset 0x4ca4c"
!EmClassEditionEntry methodsFor: 'recovered'!
releaseMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentMethodIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 |
    recoveredBlock6Value0 := EmLibrary.
    recoveredBlock6Value1 := (recoveredBlock6Value0) cache.
    recoveredBlock6Value2 := recoveredBlock6Arg1.
    (recoveredBlock6Value1) renewMethods: (recoveredBlock6Value2) for: (self).
    recoveredBlock6Value3 := recoveredBlock6Arg1.
    recoveredBlock6Value4 := recoveredArg1.
    recoveredBlock6Value5 := (recoveredBlock6Value4) selector.
    recoveredBlock6Value6 := [:recoveredBlock6Block25Arg1 | 
    | recoveredBlock6Block25Value0 recoveredBlock6Block25Value1 |
    recoveredBlock6Block25Value0 := recoveredArg1.
    recoveredBlock6Block25Value1 := (recoveredBlock6Block25Value0) filePointer.
    recoveredBlock6Block25Value1
].
    recoveredBlock6Value7 := (recoveredBlock6Value3) at: (recoveredBlock6Value5) putPointerFrom: (recoveredBlock6Value6).
    recoveredBlock6Value7
].
    recoveredValue2 := (self) updateDictionaryAt: (recoveredValue0) using: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20010a60; bytecode file offset 0x4caac"
!EmClassEditionEntry methodsFor: 'recovered'!
userMustBeDeveloperTo: recoveredArg1 ifNot: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentID.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) developer.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 14].
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
            recoveredStack3 := Array.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) actualClass.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := (recoveredStack5) application.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) signatureIn: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := (recoveredStack5) application.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := (recoveredStack5) symbol.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack7 := (recoveredStack7) developer.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack6 := (recoveredStack6) userFullNameForLogging: (recoveredStack7).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) stopAndReport: (recoveredStack2) withParms: (recoveredStack3) exitUsing: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20011db4; bytecode file offset 0x4ddfc"
!EmClassEditionEntry methodsFor: 'recovered'!
knowsMFTS: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEdition.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) knownFormats.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) offsetOfElement: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := EmTimeStamp.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) fixedLength.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) shiftElementsStartingAt: (recoveredStack2) by: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putTimeStamp: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) length.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := EmTimeStamp.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) fixedLength.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) length: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20013020; bytecode file offset 0x4f06c"
!EmClassEditionEntry methodsFor: 'recovered'!
categoryDictionaryFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) name.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) value.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) subStrings.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack4 := [:block28004954Arg1 | 
    | block28004954Value0 block28004954Value1 |
    block28004954Value0 := block28004954Arg1.
    block28004954Value1 := (block28004954Value0) asSymbol.
    block28004954Value1
].
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) collect: (recoveredBlock13Stack4).
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) asSet.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) forAllEntriesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"lib.ic method 0x200155e8; bytecode file offset 0x5163c"
!EmClassEditionEntry methodsFor: 'recovered'!
copyInfoFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) definitionTSIndex.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) definitionTimeStamp.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putTimeStamp: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) definitionIndex.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) definitionFilePointer.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putFilePointer: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) instanceIndex.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) instanceMethods.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) insert.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putFilePointer: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) classIndex.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) classMethods.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) insert.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) inheritedUserFields.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritedFieldsIndex.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) insert.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
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

"lib.ic method 0x2001679c; bytecode file offset 0x527f4"
!EmClassEditionEntry methodsFor: 'recovered'!
updateDictionaryAt: recoveredArg1 using: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointerAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := EmDiskDictionary.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) updating: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritedFieldsIndex.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) renewClassInheritedUserFieldsFor: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) filePointer.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) filePointer.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := (recoveredStack4) statusBits.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) statusBits: (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) filePointer: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) replacePointerAt: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20019fe4; bytecode file offset 0x56048"
!EmClassEditionEntry methodsFor: 'recovered'!
releaseMethod: recoveredArg1 replacing: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentMethodIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 |
    recoveredBlock6Value0 := EmLibrary.
    recoveredBlock6Value1 := (recoveredBlock6Value0) cache.
    recoveredBlock6Value2 := recoveredBlock6Arg1.
    (recoveredBlock6Value1) renewMethods: (recoveredBlock6Value2) for: (self).
    recoveredBlock6Value3 := recoveredBlock6Arg1.
    recoveredBlock6Value4 := recoveredArg1.
    recoveredBlock6Value5 := (recoveredBlock6Value4) selector.
    recoveredBlock6Value6 := [:recoveredBlock6Block25Arg1 | 
    | recoveredBlock6Block25Stack0 recoveredBlock6Block25Stack1 recoveredBlock6Block25Stack2 recoveredBlock6Block25Stack3 recoveredBlock6Block25Stack4 recoveredBlock6Block25Stack5 recoveredBlock6Block25Stack6 recoveredBlock6Block25Stack7 recoveredBlock6Block25Stack8 recoveredBlock6Block25PC recoveredBlock6Block25Step recoveredBlock6Block25Done recoveredBlock6Block25Result |
    recoveredBlock6Block25Stack0 := self.
    recoveredBlock6Block25PC := 32.
    recoveredBlock6Block25Done := false.
    [recoveredBlock6Block25Done not] whileTrue: [
        recoveredBlock6Block25Step := recoveredBlock6Block25PC.
        recoveredBlock6Block25Step = 32 ifTrue: [
            recoveredBlock6Block25Stack1 := recoveredBlock6Block25Arg1.
            recoveredBlock6Block25PC := 33.
        ].
        recoveredBlock6Block25Step = 33 ifTrue: [
            recoveredBlock6Block25Stack2 := recoveredArg2.
            recoveredBlock6Block25PC := 36.
        ].
        recoveredBlock6Block25Step = 36 ifTrue: [
            recoveredBlock6Block25Stack1 := (recoveredBlock6Block25Stack1) = (recoveredBlock6Block25Stack2).
            recoveredBlock6Block25PC := 37.
        ].
        recoveredBlock6Block25Step = 37 ifTrue: [
            (recoveredBlock6Block25Stack1) ifTrue: [recoveredBlock6Block25PC := 67] ifFalse: [recoveredBlock6Block25PC := 40].
        ].
        recoveredBlock6Block25Step = 40 ifTrue: [
            recoveredBlock6Block25Stack1 := self.
            recoveredBlock6Block25PC := 41.
        ].
        recoveredBlock6Block25Step = 41 ifTrue: [
            recoveredBlock6Block25Stack2 := 65.
            recoveredBlock6Block25PC := 44.
        ].
        recoveredBlock6Block25Step = 44 ifTrue: [
            recoveredBlock6Block25Stack3 := Array.
            recoveredBlock6Block25PC := 46.
        ].
        recoveredBlock6Block25Step = 46 ifTrue: [
            recoveredBlock6Block25Stack4 := recoveredArg1.
            recoveredBlock6Block25PC := 49.
        ].
        recoveredBlock6Block25Step = 49 ifTrue: [
            recoveredBlock6Block25Stack4 := (recoveredBlock6Block25Stack4) methodSignature.
            recoveredBlock6Block25PC := 51.
        ].
        recoveredBlock6Block25Step = 51 ifTrue: [
            recoveredBlock6Block25Stack5 := EmMethodEdition.
            recoveredBlock6Block25PC := 53.
        ].
        recoveredBlock6Block25Step = 53 ifTrue: [
            recoveredBlock6Block25Stack6 := recoveredBlock6Block25Arg1.
            recoveredBlock6Block25PC := 54.
        ].
        recoveredBlock6Block25Step = 54 ifTrue: [
            recoveredBlock6Block25Stack7 := self.
            recoveredBlock6Block25PC := 55.
        ].
        recoveredBlock6Block25Step = 55 ifTrue: [
            recoveredBlock6Block25Stack7 := (recoveredBlock6Block25Stack7) library.
            recoveredBlock6Block25PC := 57.
        ].
        recoveredBlock6Block25Step = 57 ifTrue: [
            recoveredBlock6Block25Stack5 := (recoveredBlock6Block25Stack5) using: (recoveredBlock6Block25Stack6) from: (recoveredBlock6Block25Stack7).
            recoveredBlock6Block25PC := 59.
        ].
        recoveredBlock6Block25Step = 59 ifTrue: [
            recoveredBlock6Block25Stack5 := (recoveredBlock6Block25Stack5) timeStamp.
            recoveredBlock6Block25PC := 61.
        ].
        recoveredBlock6Block25Step = 61 ifTrue: [
            recoveredBlock6Block25Stack5 := (recoveredBlock6Block25Stack5) printString.
            recoveredBlock6Block25PC := 63.
        ].
        recoveredBlock6Block25Step = 63 ifTrue: [
            recoveredBlock6Block25Stack3 := (recoveredBlock6Block25Stack3) with: (recoveredBlock6Block25Stack4) with: (recoveredBlock6Block25Stack5).
            recoveredBlock6Block25PC := 65.
        ].
        recoveredBlock6Block25Step = 65 ifTrue: [
            (recoveredBlock6Block25Stack1) logError: (recoveredBlock6Block25Stack2) withParms: (recoveredBlock6Block25Stack3).
            recoveredBlock6Block25PC := 67.
        ].
        recoveredBlock6Block25Step = 67 ifTrue: [
            recoveredBlock6Block25Stack1 := recoveredArg1.
            recoveredBlock6Block25PC := 70.
        ].
        recoveredBlock6Block25Step = 70 ifTrue: [
            recoveredBlock6Block25Stack1 := (recoveredBlock6Block25Stack1) filePointer.
            recoveredBlock6Block25PC := 72.
        ].
        recoveredBlock6Block25Step = 72 ifTrue: [
            recoveredBlock6Block25Result := recoveredBlock6Block25Stack1.
            recoveredBlock6Block25Done := true.
        ].
    ].
    recoveredBlock6Block25Result
].
    recoveredBlock6Value7 := (recoveredBlock6Value3) at: (recoveredBlock6Value5) putPointerFrom: (recoveredBlock6Value6).
    recoveredBlock6Value7
].
    recoveredValue2 := (self) updateDictionaryAt: (recoveredValue0) using: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x2001a108; bytecode file offset 0x56160"
!EmClassEditionEntry methodsFor: 'recovered'!
mustBeEditionTo: recoveredArg1 versionError: recoveredArg2 ifNot: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) application.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersionIn: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) actualClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) signatureIn: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) symbol.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 63.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) actualClass.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) signatureIn: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) actualClass.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := (recoveredStack4) versionName.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := (recoveredStack5) application.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack5 := (recoveredStack5) symbol.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001a198; bytecode file offset 0x561f0"
!EmClassEditionEntry methodsFor: 'recovered'!
movePartsTo: recoveredArg1 removeComment: recoveredArg2 definitionFP: recoveredArg3 instMethods: recoveredArg4 classMethods: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := #('comment').
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) forgettableLocalFields.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            super movePartsTo: (recoveredStack1) leavingOutInherited: (recoveredStack2) leavingOutLocal: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) instanceIndex.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := EmDiskDictionary.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) createFor: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) classIndex.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := EmDiskDictionary.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) createFor: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVoid.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) definitionIndex.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) moveRecordAt: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) definitionIndex.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001ad70; bytecode file offset 0x56dcc"
!EmClassEditionEntry methodsFor: 'recovered'!
mustBeEditionTo: recoveredArg1 reloadWarning: recoveredArg2 withParms: recoveredArg3 ifNot: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) application.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersionIn: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) actualClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) signatureIn: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) symbol.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) actualClass.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) signatureIn: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) actualClass.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := (recoveredStack4) versionName.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := (recoveredStack5) application.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := (recoveredStack5) symbol.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001d048; bytecode file offset 0x590d0"
!EmClassEditionEntry methodsFor: 'recovered'!
initializeNewEntryAt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    recoveredValue0 := EmUser.
    recoveredValue1 := (recoveredValue0) currentID.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := String.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) headerSize.
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) defaultLength.
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) byteSize.
    recoveredValue10 := (recoveredValue7) + (recoveredValue9).
    recoveredValue11 := (recoveredValue2) new: (recoveredValue10).
    (self) collection: (recoveredValue11).
    recoveredValue12 := (self) endPosition.
    (self) initializeToUse: (recoveredValue12).
    recoveredValue13 := (self) endPosition.
    recoveredValue14 := (self) class.
    recoveredValue15 := (recoveredValue14) headerSize.
    recoveredValue16 := (recoveredValue13) - (recoveredValue15).
    (self) length: (recoveredValue16).
    recoveredValue17 := recoveredArg1.
    (self) timeStamp: (recoveredValue17).
    recoveredValue18 := (self) previousIndex.
    recoveredValue19 := (self) actualClass.
    recoveredValue20 := (self) application.
    recoveredValue21 := (recoveredValue19) timeStampIn: (recoveredValue20).
    (self) at: (recoveredValue18) putTimeStamp: (recoveredValue21).
    recoveredValue22 := (self) localFieldsIndex.
    recoveredValue23 := EmLibraryPointer.
    recoveredValue24 := (recoveredValue23) void.
    (self) at: (recoveredValue22) putFilePointer: (recoveredValue24).
    recoveredValue25 := (self) startOfOffsets.
    recoveredValue26 := (self) class.
    recoveredValue27 := (recoveredValue26) defaultLength.
    (self) at: (recoveredValue25) putWord: (recoveredValue27).
    recoveredValue28 := recoveredLocal1.
    (self) element: (1) is: (recoveredValue28).
    recoveredValue29 := (self) application.
    recoveredValue30 := (self) actualClass.
    recoveredValue31 := recoveredArg1.
    (recoveredValue29) timeStampFor: (recoveredValue30) is: (recoveredValue31).
    ^self
! !

"lib.ic method 0x2001d470; bytecode file offset 0x594c4"
!EmClassEditionEntry methodsFor: 'recovered'!
copyInheritedUserFieldsFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) inheritedFieldsIndex.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritedFieldsIndex.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 |
    recoveredBlock32Value0 := recoveredArg1.
    recoveredBlock32Value1 := [:recoveredBlock32Block41Arg1 | 
    | recoveredBlock32Block41Stack0 recoveredBlock32Block41Stack1 recoveredBlock32Block41Stack2 recoveredBlock32Block41Stack3 recoveredBlock32Block41Stack4 recoveredBlock32Block41PC recoveredBlock32Block41Step recoveredBlock32Block41Done recoveredBlock32Block41Result |
    recoveredBlock32Block41Stack0 := nil.
    recoveredBlock32Block41PC := 48.
    recoveredBlock32Block41Done := false.
    [recoveredBlock32Block41Done not] whileTrue: [
        recoveredBlock32Block41Step := recoveredBlock32Block41PC.
        recoveredBlock32Block41Step = 48 ifTrue: [
            recoveredBlock32Block41Stack1 := nil.
            recoveredBlock32Block41PC := 49.
        ].
        recoveredBlock32Block41Step = 49 ifTrue: [
            recoveredBlock32Block41Stack2 := recoveredBlock32Block41Arg1.
            recoveredBlock32Block41PC := 52.
        ].
        recoveredBlock32Block41Step = 52 ifTrue: [
            recoveredBlock32Block41Stack2 := (recoveredBlock32Block41Stack2) key.
            recoveredBlock32Block41PC := 54.
        ].
        recoveredBlock32Block41Step = 54 ifTrue: [
            recoveredBlock32Block41Stack3 := 'ENVYinstanceProtocols'.
            recoveredBlock32Block41PC := 56.
        ].
        recoveredBlock32Block41Step = 56 ifTrue: [
            (recoveredBlock32Block41Stack2 == recoveredBlock32Block41Stack3) ifTrue: [recoveredBlock32Block41PC := 94] ifFalse: [recoveredBlock32Block41PC := 60].
        ].
        recoveredBlock32Block41Step = 60 ifTrue: [
            recoveredBlock32Block41Stack2 := recoveredBlock32Block41Arg1.
            recoveredBlock32Block41PC := 63.
        ].
        recoveredBlock32Block41Step = 63 ifTrue: [
            recoveredBlock32Block41Stack2 := (recoveredBlock32Block41Stack2) key.
            recoveredBlock32Block41PC := 65.
        ].
        recoveredBlock32Block41Step = 65 ifTrue: [
            recoveredBlock32Block41Stack3 := 'ENVYclassProtocols'.
            recoveredBlock32Block41PC := 67.
        ].
        recoveredBlock32Block41Step = 67 ifTrue: [
            (recoveredBlock32Block41Stack2 == recoveredBlock32Block41Stack3) ifTrue: [recoveredBlock32Block41PC := 94] ifFalse: [recoveredBlock32Block41PC := 70].
        ].
        recoveredBlock32Block41Step = 70 ifTrue: [
            recoveredBlock32Block41PC := 71.
        ].
        recoveredBlock32Block41Step = 71 ifTrue: [
            recoveredBlock32Block41Stack1 := recoveredBlock32Arg1.
            recoveredBlock32Block41PC := 74.
        ].
        recoveredBlock32Block41Step = 74 ifTrue: [
            recoveredBlock32Block41Stack2 := recoveredBlock32Block41Arg1.
            recoveredBlock32Block41PC := 77.
        ].
        recoveredBlock32Block41Step = 77 ifTrue: [
            recoveredBlock32Block41Stack2 := (recoveredBlock32Block41Stack2) key.
            recoveredBlock32Block41PC := 79.
        ].
        recoveredBlock32Block41Step = 79 ifTrue: [
            recoveredBlock32Block41Stack3 := [:recoveredBlock32Block41Block79Arg1 | 
    | recoveredBlock32Block41Block79Value0 recoveredBlock32Block41Block79Value1 |
    recoveredBlock32Block41Block79Value0 := recoveredBlock32Block41Arg1.
    recoveredBlock32Block41Block79Value1 := (recoveredBlock32Block41Block79Value0) value.
    recoveredBlock32Block41Block79Value1
].
            recoveredBlock32Block41PC := 92.
        ].
        recoveredBlock32Block41Step = 92 ifTrue: [
            recoveredBlock32Block41Stack1 := (recoveredBlock32Block41Stack1) at: (recoveredBlock32Block41Stack2) putPointerFrom: (recoveredBlock32Block41Stack3).
            recoveredBlock32Block41PC := 94.
        ].
        recoveredBlock32Block41Step = 94 ifTrue: [
            recoveredBlock32Block41Result := recoveredBlock32Block41Stack1.
            recoveredBlock32Block41Done := true.
        ].
    ].
    recoveredBlock32Block41Result
].
    recoveredBlock32Value2 := (recoveredBlock32Value0) forAllEntriesDo: (recoveredBlock32Value1).
    recoveredBlock32Value2
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateDictionaryAt: (recoveredStack1) using: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001e9cc; bytecode file offset 0x5aa50"
!EmClassEditionEntry methodsFor: 'recovered'!
loadShadows
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) operationsInterface.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) actualClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) editionsRecordIn: (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadingClassInfoFor: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := 7.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) loadShadowsIn: (recoveredStack1) using: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualClass.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := 6.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) loadShadowsIn: (recoveredStack1) using: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) definitionFilePointer.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVoid.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndefined.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := NlsCatEMcsESa.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'MxEMcsESa1'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualClass.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) symbol.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) definitionString.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) definitionString: (recoveredStack1).
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

"lib.ic method 0x2001f50c; bytecode file offset 0x5b574"
!EmClassEditionEntry methodsFor: 'recovered'!
versionName: recoveredArg1 ifUnable: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 306.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 307.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := (self) actualClass.
    recoveredBlock12Value1 := (self) application.
    recoveredBlock12Value2 := (self) versionName.
    (recoveredBlock12Value0) timeStampIn: (recoveredBlock12Value1) versionName: (recoveredBlock12Value2).
    recoveredBlock12Value3 := recoveredArg2.
    recoveredBlock12Value4 := (recoveredBlock12Value3) value.
    ^recoveredBlock12Value4
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) mustBeEditionTo: (recoveredStack1) versionError: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 370.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) userMustBeDeveloperTo: (recoveredStack1) ifNot: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkConsistency.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 18.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) actualClass.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) signatureIn: (recoveredStack4).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := (recoveredStack4) symbol.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) setVersionName: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodFormatTimeStamp.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) knownFormatsInMethods.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := [:recoveredBlock89Arg1 | 
    | recoveredBlock89Value0 recoveredBlock89Value1 recoveredBlock89Value2 |
    recoveredBlock89Value0 := recoveredBlock89Arg1.
    recoveredBlock89Value1 := (recoveredBlock89Value0) value.
    recoveredBlock89Value2 := (self) knowsMFTS: (recoveredBlock89Value1).
    recoveredBlock89Value2
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualClass.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodFormatTimeStamp.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) knowsMFTS: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001f770; bytecode file offset 0x5b7f8"
!EmClassEditionEntry methodsFor: 'recovered'!
loadDifferencesFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) aboutToFindMethods.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) application.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) editionsRecordIn: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadingClassInfoFor: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := 7.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) loadDifferencesIn: (recoveredStack1) from: (recoveredStack2) using: (recoveredStack3) and: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualClass.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := 6.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) loadDifferencesIn: (recoveredStack1) from: (recoveredStack2) using: (recoveredStack3) and: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) definitionFilePointer.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVoid.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndefined.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := NlsCatEMcsESa.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'MxEMcsESa1'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualClass.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) symbol.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) definitionString.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) definitionString: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200223cc; bytecode file offset 0x5e440"
!EmClassEditionEntry methodsFor: 'recovered'!
loadShadowsIn: recoveredArg1 using: recoveredArg2 and: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectors.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20Stack5 recoveredBlock20Stack6 recoveredBlock20Stack7 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
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
            recoveredBlock20Stack2 := recoveredLocal3.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) key.
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20Stack4 := recoveredBlock20Stack3.
            recoveredBlock20PC := 33.
        ].
        recoveredBlock20Step = 33 ifTrue: [
            recoveredLocal1 := recoveredBlock20Stack4.
            recoveredBlock20PC := 36.
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) includes: (recoveredBlock20Stack3).
            recoveredBlock20PC := 38.
        ].
        recoveredBlock20Step = 38 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 79] ifFalse: [recoveredBlock20PC := 42].
        ].
        recoveredBlock20Step = 42 ifTrue: [
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal2.
            recoveredBlock20PC := 46.
        ].
        recoveredBlock20Step = 46 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal1.
            recoveredBlock20PC := 49.
        ].
        recoveredBlock20Step = 49 ifTrue: [
            (recoveredBlock20Stack1) add: (recoveredBlock20Stack2).
            recoveredBlock20PC := 51.
        ].
        recoveredBlock20Step = 51 ifTrue: [
            recoveredBlock20Stack1 := recoveredArg1.
            recoveredBlock20PC := 54.
        ].
        recoveredBlock20Step = 54 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal1.
            recoveredBlock20PC := 57.
        ].
        recoveredBlock20Step = 57 ifTrue: [
            recoveredBlock20Stack3 := EmShadowCompiledMethod.
            recoveredBlock20PC := 59.
        ].
        recoveredBlock20Step = 59 ifTrue: [
            recoveredBlock20Stack4 := recoveredLocal1.
            recoveredBlock20PC := 62.
        ].
        recoveredBlock20Step = 62 ifTrue: [
            recoveredBlock20Stack5 := recoveredArg1.
            recoveredBlock20PC := 65.
        ].
        recoveredBlock20Step = 65 ifTrue: [
            recoveredBlock20Stack6 := self.
            recoveredBlock20PC := 66.
        ].
        recoveredBlock20Step = 66 ifTrue: [
            recoveredBlock20Stack6 := (recoveredBlock20Stack6) application.
            recoveredBlock20PC := 68.
        ].
        recoveredBlock20Step = 68 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) named: (recoveredBlock20Stack4) for: (recoveredBlock20Stack5) in: (recoveredBlock20Stack6).
            recoveredBlock20PC := 71.
        ].
        recoveredBlock20Step = 71 ifTrue: [
            recoveredBlock20Stack4 := recoveredBlock20Stack3.
            recoveredBlock20PC := 72.
        ].
        recoveredBlock20Step = 72 ifTrue: [
            recoveredBlock20Stack5 := recoveredBlock20Arg1.
            recoveredBlock20PC := 73.
        ].
        recoveredBlock20Step = 73 ifTrue: [
            recoveredBlock20Stack5 := (recoveredBlock20Stack5) value.
            recoveredBlock20PC := 75.
        ].
        recoveredBlock20Step = 75 ifTrue: [
            (recoveredBlock20Stack4) filePointer: (recoveredBlock20Stack5).
            recoveredBlock20PC := 77.
        ].
        recoveredBlock20Step = 77 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) addSelector: (recoveredBlock20Stack2) withMethod: (recoveredBlock20Stack3).
            recoveredBlock20PC := 79.
        ].
        recoveredBlock20Step = 79 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) forAllEntriesDo: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) application.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) methodNamesIn: (recoveredStack2) are: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) info.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) addSelectors: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := [:recoveredBlock114Arg1 | 
    | recoveredBlock114Value0 recoveredBlock114Value1 recoveredBlock114Value2 recoveredBlock114Value3 recoveredBlock114Value4 recoveredBlock114Value5 recoveredBlock114Value6 recoveredBlock114Value7 recoveredBlock114Value8 |
    recoveredBlock114Value0 := recoveredArg1.
    recoveredBlock114Value1 := (recoveredBlock114Value0) info.
    recoveredBlock114Value2 := recoveredBlock114Arg1.
    recoveredBlock114Value3 := (recoveredBlock114Value2) value.
    recoveredBlock114Value4 := Array.
    recoveredBlock114Value5 := recoveredBlock114Arg1.
    recoveredBlock114Value6 := (recoveredBlock114Value5) key.
    recoveredBlock114Value7 := (recoveredBlock114Value4) with: (recoveredBlock114Value6).
    recoveredBlock114Value8 := (recoveredBlock114Value1) addSelectors: (recoveredBlock114Value3) to: (recoveredBlock114Value7).
    recoveredBlock114Value8
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20023264; bytecode file offset 0x5f2dc"
!EmClassEditionEntry methodsFor: 'recovered'!
element: recoveredArg1 is: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) offsetOfElement: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) localFieldsIndex.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointerAt: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) statusBits.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsByteCharacters.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBitSet: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) clearBit: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) statusBits: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 46.
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
            recoveredStack1 := (recoveredStack1) localFieldsIndex.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putString: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) stopIfNotWordString: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBitSet: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) setBit: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) statusBits: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) localFieldsIndex.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putWordString: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) numberOfElements.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) byteSize.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) startPosition.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 65536.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 131].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := MxEMc135.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) startOfOffsets.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putWord: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002a1a0; bytecode file offset 0x6622c"
!EmClassEditionEntry methodsFor: 'recovered'!
loadDifferencesIn: recoveredArg1 from: recoveredArg2 using: recoveredArg3 and: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asDictionary.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) application.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodsIn: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17Stack6 recoveredBlock17Stack7 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal4.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) selector.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack3 := [
    | recoveredBlock17Block31Value0 recoveredBlock17Block31Value1 recoveredBlock17Block31Value2 recoveredBlock17Block31Value3 recoveredBlock17Block31Value4 recoveredBlock17Block31Value5 |
    recoveredBlock17Block31Value0 := EmLibraryPointer.
    recoveredBlock17Block31Value1 := (recoveredBlock17Block31Value0) void.
    recoveredBlock17Block31Value2 := recoveredBlock17Arg1.
    recoveredBlock17Block31Value3 := (recoveredBlock17Block31Value2) filePointer.
    recoveredBlock17Block31Value4 := (recoveredBlock17Block31Value3) statusBits.
    recoveredBlock17Block31Value5 := (recoveredBlock17Block31Value1) statusBits: (recoveredBlock17Block31Value4).
    recoveredBlock17Block31Value5
].
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) ifAbsent: (recoveredBlock17Stack3).
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredLocal3 := recoveredBlock17Stack1.
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal3.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) filePointer.
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) = (recoveredBlock17Stack2).
            recoveredBlock17PC := 66.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 123] ifFalse: [recoveredBlock17PC := 70].
        ].
        recoveredBlock17Step = 70 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Stack3 := recoveredLocal3.
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isMethod: (recoveredBlock17Stack2) sameAs: (recoveredBlock17Stack3).
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 123] ifFalse: [recoveredBlock17PC := 82].
        ].
        recoveredBlock17Step = 82 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 85.
        ].
        recoveredBlock17Step = 85 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 88.
        ].
        recoveredBlock17Step = 88 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) selector.
            recoveredBlock17PC := 89.
        ].
        recoveredBlock17Step = 89 ifTrue: [
            recoveredBlock17Stack3 := EmShadowCompiledMethod.
            recoveredBlock17PC := 91.
        ].
        recoveredBlock17Step = 91 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Arg1.
            recoveredBlock17PC := 94.
        ].
        recoveredBlock17Step = 94 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) selector.
            recoveredBlock17PC := 95.
        ].
        recoveredBlock17Step = 95 ifTrue: [
            recoveredBlock17Stack5 := recoveredArg1.
            recoveredBlock17PC := 98.
        ].
        recoveredBlock17Step = 98 ifTrue: [
            recoveredBlock17Stack6 := self.
            recoveredBlock17PC := 99.
        ].
        recoveredBlock17Step = 99 ifTrue: [
            recoveredBlock17Stack6 := (recoveredBlock17Stack6) application.
            recoveredBlock17PC := 100.
        ].
        recoveredBlock17Step = 100 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) named: (recoveredBlock17Stack4) for: (recoveredBlock17Stack5) in: (recoveredBlock17Stack6).
            recoveredBlock17PC := 103.
        ].
        recoveredBlock17Step = 103 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Stack3.
            recoveredBlock17PC := 104.
        ].
        recoveredBlock17Step = 104 ifTrue: [
            recoveredBlock17Stack5 := recoveredLocal3.
            recoveredBlock17PC := 107.
        ].
        recoveredBlock17Step = 107 ifTrue: [
            (recoveredBlock17Stack4) filePointer: (recoveredBlock17Stack5).
            recoveredBlock17PC := 109.
        ].
        recoveredBlock17Step = 109 ifTrue: [
            recoveredBlock17Stack4 := recoveredArg2.
            recoveredBlock17PC := 112.
        ].
        recoveredBlock17Step = 112 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Arg1.
            recoveredBlock17PC := 115.
        ].
        recoveredBlock17Step = 115 ifTrue: [
            recoveredBlock17Stack5 := (recoveredBlock17Stack5) selector.
            recoveredBlock17PC := 116.
        ].
        recoveredBlock17Step = 116 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) categoriesFor: (recoveredBlock17Stack5).
            recoveredBlock17PC := 118.
        ].
        recoveredBlock17Step = 118 ifTrue: [
            recoveredBlock17Stack5 := self.
            recoveredBlock17PC := 119.
        ].
        recoveredBlock17Step = 119 ifTrue: [
            recoveredBlock17Stack5 := (recoveredBlock17Stack5) application.
            recoveredBlock17PC := 120.
        ].
        recoveredBlock17Step = 120 ifTrue: [
            (recoveredBlock17Stack1) addSelector: (recoveredBlock17Stack2) withMethod: (recoveredBlock17Stack3) categories: (recoveredBlock17Stack4) application: (recoveredBlock17Stack5).
            recoveredBlock17PC := 123.
        ].
        recoveredBlock17Step = 123 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal4.
            recoveredBlock17PC := 126.
        ].
        recoveredBlock17Step = 126 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 129.
        ].
        recoveredBlock17Step = 129 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) selector.
            recoveredBlock17PC := 130.
        ].
        recoveredBlock17Step = 130 ifTrue: [
            recoveredBlock17Stack3 := [].
            recoveredBlock17PC := 132.
        ].
        recoveredBlock17Step = 132 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) removeKey: (recoveredBlock17Stack2) ifAbsent: (recoveredBlock17Stack3).
            recoveredBlock17PC := 134.
        ].
        recoveredBlock17Step = 134 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := [:recoveredBlock149Arg1 | 
    | recoveredBlock149Value0 recoveredBlock149Value1 recoveredBlock149Value2 recoveredBlock149Value3 recoveredBlock149Value4 recoveredBlock149Value5 recoveredBlock149Value6 recoveredBlock149Value7 recoveredBlock149Value8 recoveredBlock149Value9 recoveredBlock149Value10 recoveredBlock149Value11 recoveredBlock149Value12 recoveredBlock149Value13 recoveredBlock149Value14 recoveredBlock149Value15 recoveredBlock149Value16 recoveredBlock149Value17 recoveredBlock149Value18 recoveredBlock149Value19 recoveredBlock149Value20 |
    recoveredBlock149Value0 := recoveredBlock149Arg1.
    recoveredBlock149Value1 := (recoveredBlock149Value0) key.
    recoveredLocal2 := recoveredBlock149Value1.
    recoveredBlock149Value2 := OrderedCollection.
    recoveredBlock149Value3 := (recoveredBlock149Value2) new.
    recoveredLocal1 := recoveredBlock149Value3.
    recoveredBlock149Value4 := recoveredArg4.
    recoveredBlock149Value5 := [:recoveredBlock149Block172Arg1 | 
    | recoveredBlock149Block172Stack0 recoveredBlock149Block172Stack1 recoveredBlock149Block172Stack2 recoveredBlock149Block172Stack3 recoveredBlock149Block172Stack4 recoveredBlock149Block172PC recoveredBlock149Block172Step recoveredBlock149Block172Done recoveredBlock149Block172Result |
    recoveredBlock149Block172Stack0 := nil.
    recoveredBlock149Block172PC := 178.
    recoveredBlock149Block172Done := false.
    [recoveredBlock149Block172Done not] whileTrue: [
        recoveredBlock149Block172Step := recoveredBlock149Block172PC.
        recoveredBlock149Block172Step = 178 ifTrue: [
            recoveredBlock149Block172Stack1 := nil.
            recoveredBlock149Block172PC := 179.
        ].
        recoveredBlock149Block172Step = 179 ifTrue: [
            recoveredBlock149Block172Stack2 := recoveredBlock149Block172Arg1.
            recoveredBlock149Block172PC := 180.
        ].
        recoveredBlock149Block172Step = 180 ifTrue: [
            recoveredBlock149Block172Stack2 := (recoveredBlock149Block172Stack2) value.
            recoveredBlock149Block172PC := 182.
        ].
        recoveredBlock149Block172Step = 182 ifTrue: [
            recoveredBlock149Block172Stack3 := recoveredLocal2.
            recoveredBlock149Block172PC := 185.
        ].
        recoveredBlock149Block172Step = 185 ifTrue: [
            recoveredBlock149Block172Stack2 := (recoveredBlock149Block172Stack2) includes: (recoveredBlock149Block172Stack3).
            recoveredBlock149Block172PC := 187.
        ].
        recoveredBlock149Block172Step = 187 ifTrue: [
            (recoveredBlock149Block172Stack2) ifTrue: [recoveredBlock149Block172PC := 190] ifFalse: [recoveredBlock149Block172PC := 199].
        ].
        recoveredBlock149Block172Step = 190 ifTrue: [
            recoveredBlock149Block172PC := 191.
        ].
        recoveredBlock149Block172Step = 191 ifTrue: [
            recoveredBlock149Block172Stack1 := recoveredLocal1.
            recoveredBlock149Block172PC := 194.
        ].
        recoveredBlock149Block172Step = 194 ifTrue: [
            recoveredBlock149Block172Stack2 := recoveredBlock149Block172Arg1.
            recoveredBlock149Block172PC := 195.
        ].
        recoveredBlock149Block172Step = 195 ifTrue: [
            recoveredBlock149Block172Stack2 := (recoveredBlock149Block172Stack2) key.
            recoveredBlock149Block172PC := 197.
        ].
        recoveredBlock149Block172Step = 197 ifTrue: [
            recoveredBlock149Block172Stack1 := (recoveredBlock149Block172Stack1) add: (recoveredBlock149Block172Stack2).
            recoveredBlock149Block172PC := 199.
        ].
        recoveredBlock149Block172Step = 199 ifTrue: [
            recoveredBlock149Block172Result := recoveredBlock149Block172Stack1.
            recoveredBlock149Block172Done := true.
        ].
    ].
    recoveredBlock149Block172Result
].
    (recoveredBlock149Value4) associationsDo: (recoveredBlock149Value5).
    recoveredBlock149Value6 := recoveredArg1.
    recoveredBlock149Value7 := recoveredBlock149Arg1.
    recoveredBlock149Value8 := (recoveredBlock149Value7) key.
    recoveredBlock149Value9 := EmShadowCompiledMethod.
    recoveredBlock149Value10 := recoveredBlock149Arg1.
    recoveredBlock149Value11 := (recoveredBlock149Value10) key.
    recoveredBlock149Value12 := recoveredArg1.
    recoveredBlock149Value13 := (self) application.
    recoveredBlock149Value14 := (recoveredBlock149Value9) named: (recoveredBlock149Value11) for: (recoveredBlock149Value12) in: (recoveredBlock149Value13).
    recoveredBlock149Value15 := recoveredBlock149Value14.
    recoveredBlock149Value16 := recoveredBlock149Arg1.
    recoveredBlock149Value17 := (recoveredBlock149Value16) value.
    (recoveredBlock149Value15) filePointer: (recoveredBlock149Value17).
    recoveredBlock149Value18 := recoveredLocal1.
    recoveredBlock149Value19 := (self) application.
    recoveredBlock149Value20 := (recoveredBlock149Value6) addSelector: (recoveredBlock149Value8) withMethod: (recoveredBlock149Value14) categories: (recoveredBlock149Value18) application: (recoveredBlock149Value19).
    recoveredBlock149Value20
].
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002a96c; bytecode file offset 0x669f4"
!EmClassEditionEntry methodsFor: 'recovered'!
recacheMethodPointers
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsInLibrary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 64.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) actualClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) signatureIn: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) application.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) symbol.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) application.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsIn: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:block28005590Arg1 | 
    | block28005590Value0 block28005590Value1 |
    block28005590Value0 := block28005590Arg1.
    block28005590Value1 := (block28005590Value0) clearFilePosition.
    block28005590Value1
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) application.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsIn: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:block280055b4Arg1 | 
    | block280055b4Value0 block280055b4Value1 |
    block280055b4Value0 := block280055b4Arg1.
    block280055b4Value1 := (block280055b4Value0) clearFilePosition.
    block280055b4Value1
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceMethods.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDictionary.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) application.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsIn: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := [:recoveredBlock82Arg1 | 
    | recoveredBlock82Stack0 recoveredBlock82Stack1 recoveredBlock82Stack2 recoveredBlock82Stack3 recoveredBlock82Stack4 recoveredBlock82Stack5 recoveredBlock82Stack6 recoveredBlock82PC recoveredBlock82Step recoveredBlock82Done recoveredBlock82Result |
    recoveredBlock82Stack0 := self.
    recoveredBlock82PC := 88.
    recoveredBlock82Done := false.
    [recoveredBlock82Done not] whileTrue: [
        recoveredBlock82Step := recoveredBlock82PC.
        recoveredBlock82Step = 88 ifTrue: [
            recoveredBlock82Stack1 := recoveredLocal2.
            recoveredBlock82PC := 91.
        ].
        recoveredBlock82Step = 91 ifTrue: [
            recoveredBlock82Stack2 := recoveredBlock82Arg1.
            recoveredBlock82PC := 92.
        ].
        recoveredBlock82Step = 92 ifTrue: [
            recoveredBlock82Stack2 := (recoveredBlock82Stack2) selector.
            recoveredBlock82PC := 94.
        ].
        recoveredBlock82Step = 94 ifTrue: [
            recoveredBlock82Stack3 := [].
            recoveredBlock82PC := 96.
        ].
        recoveredBlock82Step = 96 ifTrue: [
            recoveredBlock82Stack1 := (recoveredBlock82Stack1) at: (recoveredBlock82Stack2) ifAbsent: (recoveredBlock82Stack3).
            recoveredBlock82PC := 98.
        ].
        recoveredBlock82Step = 98 ifTrue: [
            recoveredBlock82Stack2 := recoveredBlock82Stack1.
            recoveredBlock82PC := 99.
        ].
        recoveredBlock82Step = 99 ifTrue: [
            recoveredLocal1 := recoveredBlock82Stack2.
            recoveredBlock82PC := 102.
        ].
        recoveredBlock82Step = 102 ifTrue: [
            (recoveredBlock82Stack1 ~~ nil) ifTrue: [recoveredBlock82PC := 132] ifFalse: [recoveredBlock82PC := 106].
        ].
        recoveredBlock82Step = 106 ifTrue: [
            recoveredBlock82Stack1 := recoveredBlock82Arg1.
            recoveredBlock82PC := 107.
        ].
        recoveredBlock82Step = 107 ifTrue: [
            (recoveredBlock82Stack1) clearFilePosition.
            recoveredBlock82PC := 109.
        ].
        recoveredBlock82Step = 109 ifTrue: [
            recoveredBlock82Stack1 := self.
            recoveredBlock82PC := 110.
        ].
        recoveredBlock82Step = 110 ifTrue: [
            recoveredBlock82Stack2 := 64.
            recoveredBlock82PC := 114.
        ].
        recoveredBlock82Step = 114 ifTrue: [
            recoveredBlock82Stack3 := Array.
            recoveredBlock82PC := 116.
        ].
        recoveredBlock82Step = 116 ifTrue: [
            recoveredBlock82Stack4 := recoveredBlock82Arg1.
            recoveredBlock82PC := 117.
        ].
        recoveredBlock82Step = 117 ifTrue: [
            recoveredBlock82Stack4 := (recoveredBlock82Stack4) selector.
            recoveredBlock82PC := 119.
        ].
        recoveredBlock82Step = 119 ifTrue: [
            recoveredBlock82Stack5 := recoveredBlock82Arg1.
            recoveredBlock82PC := 120.
        ].
        recoveredBlock82Step = 120 ifTrue: [
            recoveredBlock82Stack5 := (recoveredBlock82Stack5) methodClass.
            recoveredBlock82PC := 122.
        ].
        recoveredBlock82Step = 122 ifTrue: [
            recoveredBlock82Stack5 := (recoveredBlock82Stack5) name.
            recoveredBlock82PC := 124.
        ].
        recoveredBlock82Step = 124 ifTrue: [
            recoveredBlock82Stack3 := (recoveredBlock82Stack3) with: (recoveredBlock82Stack4) with: (recoveredBlock82Stack5).
            recoveredBlock82PC := 126.
        ].
        recoveredBlock82Step = 126 ifTrue: [
            recoveredBlock82Stack1 := (recoveredBlock82Stack1) logError: (recoveredBlock82Stack2) withParms: (recoveredBlock82Stack3).
            recoveredBlock82PC := 128.
        ].
        recoveredBlock82Step = 128 ifTrue: [
            recoveredBlock82PC := 155.
        ].
        recoveredBlock82Step = 132 ifTrue: [
            recoveredBlock82Stack1 := nil.
            recoveredBlock82PC := 133.
        ].
        recoveredBlock82Step = 133 ifTrue: [
            recoveredBlock82Stack2 := recoveredBlock82Arg1.
            recoveredBlock82PC := 134.
        ].
        recoveredBlock82Step = 134 ifTrue: [
            recoveredBlock82Stack2 := (recoveredBlock82Stack2) methodId.
            recoveredBlock82PC := 136.
        ].
        recoveredBlock82Step = 136 ifTrue: [
            recoveredBlock82Stack2 := (recoveredBlock82Stack2) isInteger.
            recoveredBlock82PC := 138.
        ].
        recoveredBlock82Step = 138 ifTrue: [
            (recoveredBlock82Stack2) ifTrue: [recoveredBlock82PC := 142] ifFalse: [recoveredBlock82PC := 148].
        ].
        recoveredBlock82Step = 142 ifTrue: [
            recoveredBlock82Stack2 := recoveredBlock82Arg1.
            recoveredBlock82PC := 143.
        ].
        recoveredBlock82Step = 143 ifTrue: [
            recoveredBlock82Stack2 := (recoveredBlock82Stack2) filePointerPrim.
            recoveredBlock82PC := 145.
        ].
        recoveredBlock82Step = 145 ifTrue: [
            (recoveredBlock82Stack2 == nil) ifTrue: [recoveredBlock82PC := 155] ifFalse: [recoveredBlock82PC := 148].
        ].
        recoveredBlock82Step = 148 ifTrue: [
            recoveredBlock82PC := 149.
        ].
        recoveredBlock82Step = 149 ifTrue: [
            recoveredBlock82Stack1 := recoveredBlock82Arg1.
            recoveredBlock82PC := 150.
        ].
        recoveredBlock82Step = 150 ifTrue: [
            recoveredBlock82Stack2 := recoveredLocal1.
            recoveredBlock82PC := 153.
        ].
        recoveredBlock82Step = 153 ifTrue: [
            recoveredBlock82Stack1 := (recoveredBlock82Stack1) filePointer: (recoveredBlock82Stack2).
            recoveredBlock82PC := 155.
        ].
        recoveredBlock82Step = 155 ifTrue: [
            recoveredBlock82Result := recoveredBlock82Stack1.
            recoveredBlock82Done := true.
        ].
    ].
    recoveredBlock82Result
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) classMethods.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDictionary.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) application.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsIn: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := [:recoveredBlock174Arg1 | 
    | recoveredBlock174Stack0 recoveredBlock174Stack1 recoveredBlock174Stack2 recoveredBlock174Stack3 recoveredBlock174Stack4 recoveredBlock174Stack5 recoveredBlock174Stack6 recoveredBlock174PC recoveredBlock174Step recoveredBlock174Done recoveredBlock174Result |
    recoveredBlock174Stack0 := self.
    recoveredBlock174PC := 180.
    recoveredBlock174Done := false.
    [recoveredBlock174Done not] whileTrue: [
        recoveredBlock174Step := recoveredBlock174PC.
        recoveredBlock174Step = 180 ifTrue: [
            recoveredBlock174Stack1 := recoveredLocal2.
            recoveredBlock174PC := 183.
        ].
        recoveredBlock174Step = 183 ifTrue: [
            recoveredBlock174Stack2 := recoveredBlock174Arg1.
            recoveredBlock174PC := 184.
        ].
        recoveredBlock174Step = 184 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) selector.
            recoveredBlock174PC := 186.
        ].
        recoveredBlock174Step = 186 ifTrue: [
            recoveredBlock174Stack3 := [].
            recoveredBlock174PC := 188.
        ].
        recoveredBlock174Step = 188 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) at: (recoveredBlock174Stack2) ifAbsent: (recoveredBlock174Stack3).
            recoveredBlock174PC := 190.
        ].
        recoveredBlock174Step = 190 ifTrue: [
            recoveredBlock174Stack2 := recoveredBlock174Stack1.
            recoveredBlock174PC := 191.
        ].
        recoveredBlock174Step = 191 ifTrue: [
            recoveredLocal1 := recoveredBlock174Stack2.
            recoveredBlock174PC := 194.
        ].
        recoveredBlock174Step = 194 ifTrue: [
            (recoveredBlock174Stack1 ~~ nil) ifTrue: [recoveredBlock174PC := 224] ifFalse: [recoveredBlock174PC := 198].
        ].
        recoveredBlock174Step = 198 ifTrue: [
            recoveredBlock174Stack1 := recoveredBlock174Arg1.
            recoveredBlock174PC := 199.
        ].
        recoveredBlock174Step = 199 ifTrue: [
            (recoveredBlock174Stack1) clearFilePosition.
            recoveredBlock174PC := 201.
        ].
        recoveredBlock174Step = 201 ifTrue: [
            recoveredBlock174Stack1 := self.
            recoveredBlock174PC := 202.
        ].
        recoveredBlock174Step = 202 ifTrue: [
            recoveredBlock174Stack2 := 64.
            recoveredBlock174PC := 206.
        ].
        recoveredBlock174Step = 206 ifTrue: [
            recoveredBlock174Stack3 := Array.
            recoveredBlock174PC := 208.
        ].
        recoveredBlock174Step = 208 ifTrue: [
            recoveredBlock174Stack4 := recoveredBlock174Arg1.
            recoveredBlock174PC := 209.
        ].
        recoveredBlock174Step = 209 ifTrue: [
            recoveredBlock174Stack4 := (recoveredBlock174Stack4) selector.
            recoveredBlock174PC := 211.
        ].
        recoveredBlock174Step = 211 ifTrue: [
            recoveredBlock174Stack5 := recoveredBlock174Arg1.
            recoveredBlock174PC := 212.
        ].
        recoveredBlock174Step = 212 ifTrue: [
            recoveredBlock174Stack5 := (recoveredBlock174Stack5) methodClass.
            recoveredBlock174PC := 214.
        ].
        recoveredBlock174Step = 214 ifTrue: [
            recoveredBlock174Stack5 := (recoveredBlock174Stack5) name.
            recoveredBlock174PC := 216.
        ].
        recoveredBlock174Step = 216 ifTrue: [
            recoveredBlock174Stack3 := (recoveredBlock174Stack3) with: (recoveredBlock174Stack4) with: (recoveredBlock174Stack5).
            recoveredBlock174PC := 218.
        ].
        recoveredBlock174Step = 218 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) logError: (recoveredBlock174Stack2) withParms: (recoveredBlock174Stack3).
            recoveredBlock174PC := 220.
        ].
        recoveredBlock174Step = 220 ifTrue: [
            recoveredBlock174PC := 247.
        ].
        recoveredBlock174Step = 224 ifTrue: [
            recoveredBlock174Stack1 := nil.
            recoveredBlock174PC := 225.
        ].
        recoveredBlock174Step = 225 ifTrue: [
            recoveredBlock174Stack2 := recoveredBlock174Arg1.
            recoveredBlock174PC := 226.
        ].
        recoveredBlock174Step = 226 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) methodId.
            recoveredBlock174PC := 228.
        ].
        recoveredBlock174Step = 228 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) isInteger.
            recoveredBlock174PC := 230.
        ].
        recoveredBlock174Step = 230 ifTrue: [
            (recoveredBlock174Stack2) ifTrue: [recoveredBlock174PC := 234] ifFalse: [recoveredBlock174PC := 240].
        ].
        recoveredBlock174Step = 234 ifTrue: [
            recoveredBlock174Stack2 := recoveredBlock174Arg1.
            recoveredBlock174PC := 235.
        ].
        recoveredBlock174Step = 235 ifTrue: [
            recoveredBlock174Stack2 := (recoveredBlock174Stack2) filePointerPrim.
            recoveredBlock174PC := 237.
        ].
        recoveredBlock174Step = 237 ifTrue: [
            (recoveredBlock174Stack2 == nil) ifTrue: [recoveredBlock174PC := 247] ifFalse: [recoveredBlock174PC := 240].
        ].
        recoveredBlock174Step = 240 ifTrue: [
            recoveredBlock174PC := 241.
        ].
        recoveredBlock174Step = 241 ifTrue: [
            recoveredBlock174Stack1 := recoveredBlock174Arg1.
            recoveredBlock174PC := 242.
        ].
        recoveredBlock174Step = 242 ifTrue: [
            recoveredBlock174Stack2 := recoveredLocal1.
            recoveredBlock174PC := 245.
        ].
        recoveredBlock174Step = 245 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) filePointer: (recoveredBlock174Stack2).
            recoveredBlock174PC := 247.
        ].
        recoveredBlock174Step = 247 ifTrue: [
            recoveredBlock174Result := recoveredBlock174Stack1.
            recoveredBlock174Done := true.
        ].
    ].
    recoveredBlock174Result
].
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002c2e8; bytecode file offset 0x68360"
!EmClassEditionEntry methodsFor: 'recovered'!
checkConsistency
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) application.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) signatureIn: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbol.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) application.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) definitionTimeStamp.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) definitionTimeStamp.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualClass.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) definitionTimeStamp.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 59.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceMethods.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDictionary.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) application.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsIn: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Stack0 recoveredBlock83Stack1 recoveredBlock83Stack2 recoveredBlock83Stack3 recoveredBlock83Stack4 recoveredBlock83Stack5 recoveredBlock83Stack6 recoveredBlock83PC recoveredBlock83Step recoveredBlock83Done recoveredBlock83Result |
    recoveredBlock83Stack0 := self.
    recoveredBlock83PC := 90.
    recoveredBlock83Done := false.
    [recoveredBlock83Done not] whileTrue: [
        recoveredBlock83Step := recoveredBlock83PC.
        recoveredBlock83Step = 90 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 91.
        ].
        recoveredBlock83Step = 91 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) filePointer.
            recoveredBlock83PC := 93.
        ].
        recoveredBlock83Step = 93 ifTrue: [
            recoveredBlock83Stack2 := recoveredLocal2.
            recoveredBlock83PC := 96.
        ].
        recoveredBlock83Step = 96 ifTrue: [
            recoveredBlock83Stack3 := recoveredBlock83Arg1.
            recoveredBlock83PC := 97.
        ].
        recoveredBlock83Step = 97 ifTrue: [
            recoveredBlock83Stack3 := (recoveredBlock83Stack3) selector.
            recoveredBlock83PC := 99.
        ].
        recoveredBlock83Step = 99 ifTrue: [
            recoveredBlock83Stack4 := [].
            recoveredBlock83PC := 101.
        ].
        recoveredBlock83Step = 101 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) at: (recoveredBlock83Stack3) ifAbsent: (recoveredBlock83Stack4).
            recoveredBlock83PC := 103.
        ].
        recoveredBlock83Step = 103 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) = (recoveredBlock83Stack2).
            recoveredBlock83PC := 104.
        ].
        recoveredBlock83Step = 104 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 128] ifFalse: [recoveredBlock83PC := 108].
        ].
        recoveredBlock83Step = 108 ifTrue: [
            recoveredBlock83Stack1 := self.
            recoveredBlock83PC := 109.
        ].
        recoveredBlock83Step = 109 ifTrue: [
            recoveredBlock83Stack2 := 60.
            recoveredBlock83PC := 111.
        ].
        recoveredBlock83Step = 111 ifTrue: [
            recoveredBlock83Stack3 := Array.
            recoveredBlock83PC := 113.
        ].
        recoveredBlock83Step = 113 ifTrue: [
            recoveredBlock83Stack4 := self.
            recoveredBlock83PC := 114.
        ].
        recoveredBlock83Step = 114 ifTrue: [
            recoveredBlock83Stack4 := (recoveredBlock83Stack4) actualClass.
            recoveredBlock83PC := 115.
        ].
        recoveredBlock83Step = 115 ifTrue: [
            recoveredBlock83Stack4 := (recoveredBlock83Stack4) name.
            recoveredBlock83PC := 117.
        ].
        recoveredBlock83Step = 117 ifTrue: [
            recoveredBlock83Stack5 := recoveredBlock83Arg1.
            recoveredBlock83PC := 118.
        ].
        recoveredBlock83Step = 118 ifTrue: [
            recoveredBlock83Stack5 := (recoveredBlock83Stack5) selector.
            recoveredBlock83PC := 120.
        ].
        recoveredBlock83Step = 120 ifTrue: [
            recoveredBlock83Stack3 := (recoveredBlock83Stack3) with: (recoveredBlock83Stack4) with: (recoveredBlock83Stack5).
            recoveredBlock83PC := 122.
        ].
        recoveredBlock83Step = 122 ifTrue: [
            (recoveredBlock83Stack1) logError: (recoveredBlock83Stack2) withParms: (recoveredBlock83Stack3).
            recoveredBlock83PC := 124.
        ].
        recoveredBlock83Step = 124 ifTrue: [
            recoveredBlock83Stack1 := false.
            recoveredBlock83PC := 125.
        ].
        recoveredBlock83Step = 125 ifTrue: [
            recoveredLocal4 := recoveredBlock83Stack1.
            recoveredBlock83PC := 128.
        ].
        recoveredBlock83Step = 128 ifTrue: [
            recoveredBlock83Stack1 := recoveredLocal1.
            recoveredBlock83PC := 131.
        ].
        recoveredBlock83Step = 131 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) + (1).
            recoveredBlock83PC := 132.
        ].
        recoveredBlock83Step = 132 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 133.
        ].
        recoveredBlock83Step = 133 ifTrue: [
            recoveredLocal1 := recoveredBlock83Stack2.
            recoveredBlock83PC := 136.
        ].
        recoveredBlock83Step = 136 ifTrue: [
            recoveredBlock83Result := recoveredBlock83Stack1.
            recoveredBlock83Done := true.
        ].
    ].
    recoveredBlock83Result
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := 61.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) classMethods.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDictionary.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualClass.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) application.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsIn: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := [:recoveredBlock189Arg1 | 
    | recoveredBlock189Stack0 recoveredBlock189Stack1 recoveredBlock189Stack2 recoveredBlock189Stack3 recoveredBlock189Stack4 recoveredBlock189Stack5 recoveredBlock189Stack6 recoveredBlock189PC recoveredBlock189Step recoveredBlock189Done recoveredBlock189Result |
    recoveredBlock189Stack0 := self.
    recoveredBlock189PC := 196.
    recoveredBlock189Done := false.
    [recoveredBlock189Done not] whileTrue: [
        recoveredBlock189Step := recoveredBlock189PC.
        recoveredBlock189Step = 196 ifTrue: [
            recoveredBlock189Stack1 := recoveredBlock189Arg1.
            recoveredBlock189PC := 197.
        ].
        recoveredBlock189Step = 197 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) filePointer.
            recoveredBlock189PC := 199.
        ].
        recoveredBlock189Step = 199 ifTrue: [
            recoveredBlock189Stack2 := recoveredLocal2.
            recoveredBlock189PC := 202.
        ].
        recoveredBlock189Step = 202 ifTrue: [
            recoveredBlock189Stack3 := recoveredBlock189Arg1.
            recoveredBlock189PC := 203.
        ].
        recoveredBlock189Step = 203 ifTrue: [
            recoveredBlock189Stack3 := (recoveredBlock189Stack3) selector.
            recoveredBlock189PC := 205.
        ].
        recoveredBlock189Step = 205 ifTrue: [
            recoveredBlock189Stack4 := [].
            recoveredBlock189PC := 207.
        ].
        recoveredBlock189Step = 207 ifTrue: [
            recoveredBlock189Stack2 := (recoveredBlock189Stack2) at: (recoveredBlock189Stack3) ifAbsent: (recoveredBlock189Stack4).
            recoveredBlock189PC := 209.
        ].
        recoveredBlock189Step = 209 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) = (recoveredBlock189Stack2).
            recoveredBlock189PC := 210.
        ].
        recoveredBlock189Step = 210 ifTrue: [
            (recoveredBlock189Stack1) ifTrue: [recoveredBlock189PC := 236] ifFalse: [recoveredBlock189PC := 214].
        ].
        recoveredBlock189Step = 214 ifTrue: [
            recoveredBlock189Stack1 := self.
            recoveredBlock189PC := 215.
        ].
        recoveredBlock189Step = 215 ifTrue: [
            recoveredBlock189Stack2 := 60.
            recoveredBlock189PC := 217.
        ].
        recoveredBlock189Step = 217 ifTrue: [
            recoveredBlock189Stack3 := Array.
            recoveredBlock189PC := 219.
        ].
        recoveredBlock189Step = 219 ifTrue: [
            recoveredBlock189Stack4 := self.
            recoveredBlock189PC := 220.
        ].
        recoveredBlock189Step = 220 ifTrue: [
            recoveredBlock189Stack4 := (recoveredBlock189Stack4) actualClass.
            recoveredBlock189PC := 221.
        ].
        recoveredBlock189Step = 221 ifTrue: [
            recoveredBlock189Stack4 := (recoveredBlock189Stack4) class.
            recoveredBlock189PC := 223.
        ].
        recoveredBlock189Step = 223 ifTrue: [
            recoveredBlock189Stack4 := (recoveredBlock189Stack4) name.
            recoveredBlock189PC := 225.
        ].
        recoveredBlock189Step = 225 ifTrue: [
            recoveredBlock189Stack5 := recoveredBlock189Arg1.
            recoveredBlock189PC := 226.
        ].
        recoveredBlock189Step = 226 ifTrue: [
            recoveredBlock189Stack5 := (recoveredBlock189Stack5) selector.
            recoveredBlock189PC := 228.
        ].
        recoveredBlock189Step = 228 ifTrue: [
            recoveredBlock189Stack3 := (recoveredBlock189Stack3) with: (recoveredBlock189Stack4) with: (recoveredBlock189Stack5).
            recoveredBlock189PC := 230.
        ].
        recoveredBlock189Step = 230 ifTrue: [
            (recoveredBlock189Stack1) logError: (recoveredBlock189Stack2) withParms: (recoveredBlock189Stack3).
            recoveredBlock189PC := 232.
        ].
        recoveredBlock189Step = 232 ifTrue: [
            recoveredBlock189Stack1 := false.
            recoveredBlock189PC := 233.
        ].
        recoveredBlock189Step = 233 ifTrue: [
            recoveredLocal4 := recoveredBlock189Stack1.
            recoveredBlock189PC := 236.
        ].
        recoveredBlock189Step = 236 ifTrue: [
            recoveredBlock189Stack1 := recoveredLocal1.
            recoveredBlock189PC := 239.
        ].
        recoveredBlock189Step = 239 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) + (1).
            recoveredBlock189PC := 240.
        ].
        recoveredBlock189Step = 240 ifTrue: [
            recoveredBlock189Stack2 := recoveredBlock189Stack1.
            recoveredBlock189PC := 241.
        ].
        recoveredBlock189Step = 241 ifTrue: [
            recoveredLocal1 := recoveredBlock189Stack2.
            recoveredBlock189PC := 244.
        ].
        recoveredBlock189Step = 244 ifTrue: [
            recoveredBlock189Result := recoveredBlock189Stack1.
            recoveredBlock189Done := true.
        ].
    ].
    recoveredBlock189Result
].
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 276] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := 62.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002ca58; bytecode file offset 0x68acc"
!EmClassEditionEntry methodsFor: 'recovered'!
knownFormatsInMethods
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal4 := recoveredValue1.
    recoveredLocal3 := 0.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) instanceMethods.
    recoveredValue5 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 recoveredBlock22Value5 recoveredBlock22Value6 recoveredBlock22Value7 recoveredBlock22Value8 recoveredBlock22Value9 |
    recoveredBlock22Value0 := recoveredLocal3.
    recoveredBlock22Value1 := (recoveredBlock22Value0) + (1).
    recoveredLocal3 := recoveredBlock22Value1.
    recoveredBlock22Value2 := EmMethodEdition.
    recoveredBlock22Value3 := recoveredBlock22Arg1.
    recoveredBlock22Value4 := (recoveredBlock22Value3) value.
    recoveredBlock22Value5 := (self) library.
    recoveredBlock22Value6 := (recoveredBlock22Value2) using: (recoveredBlock22Value4) from: (recoveredBlock22Value5).
    recoveredBlock22Value7 := (recoveredBlock22Value6) knownFormats.
    recoveredBlock22Value8 := [:recoveredBlock22Block47Arg1 | 
    | recoveredBlock22Block47Stack0 recoveredBlock22Block47Stack1 recoveredBlock22Block47Stack2 recoveredBlock22Block47Stack3 recoveredBlock22Block47Stack4 recoveredBlock22Block47Stack5 recoveredBlock22Block47Stack6 recoveredBlock22Block47PC recoveredBlock22Block47Step recoveredBlock22Block47Done recoveredBlock22Block47Result |
    recoveredBlock22Block47Stack0 := nil.
    recoveredBlock22Block47PC := 54.
    recoveredBlock22Block47Done := false.
    [recoveredBlock22Block47Done not] whileTrue: [
        recoveredBlock22Block47Step := recoveredBlock22Block47PC.
        recoveredBlock22Block47Step = 54 ifTrue: [
            recoveredBlock22Block47Stack1 := recoveredLocal2.
            recoveredBlock22Block47PC := 57.
        ].
        recoveredBlock22Block47Step = 57 ifTrue: [
            recoveredBlock22Block47Stack2 := recoveredBlock22Block47Arg1.
            recoveredBlock22Block47PC := 60.
        ].
        recoveredBlock22Block47Step = 60 ifTrue: [
            recoveredBlock22Block47Stack2 := (recoveredBlock22Block47Stack2) key.
            recoveredBlock22Block47PC := 62.
        ].
        recoveredBlock22Block47Step = 62 ifTrue: [
            recoveredBlock22Block47Stack3 := [
    | recoveredBlock22Block47Block62Value0 recoveredBlock22Block47Block62Value1 recoveredBlock22Block47Block62Value2 recoveredBlock22Block47Block62Value3 recoveredBlock22Block47Block62Value4 recoveredBlock22Block47Block62Value5 |
    recoveredBlock22Block47Block62Value0 := recoveredLocal2.
    recoveredBlock22Block47Block62Value1 := recoveredBlock22Block47Arg1.
    recoveredBlock22Block47Block62Value2 := (recoveredBlock22Block47Block62Value1) key.
    recoveredBlock22Block47Block62Value3 := Dictionary.
    recoveredBlock22Block47Block62Value4 := (recoveredBlock22Block47Block62Value3) new.
    recoveredBlock22Block47Block62Value5 := (recoveredBlock22Block47Block62Value0) at: (recoveredBlock22Block47Block62Value2) put: (recoveredBlock22Block47Block62Value4).
    recoveredBlock22Block47Block62Value5
].
            recoveredBlock22Block47PC := 82.
        ].
        recoveredBlock22Block47Step = 82 ifTrue: [
            recoveredBlock22Block47Stack1 := (recoveredBlock22Block47Stack1) at: (recoveredBlock22Block47Stack2) ifAbsent: (recoveredBlock22Block47Stack3).
            recoveredBlock22Block47PC := 84.
        ].
        recoveredBlock22Block47Step = 84 ifTrue: [
            recoveredLocal1 := recoveredBlock22Block47Stack1.
            recoveredBlock22Block47PC := 87.
        ].
        recoveredBlock22Block47Step = 87 ifTrue: [
            recoveredBlock22Block47Stack1 := recoveredLocal1.
            recoveredBlock22Block47PC := 90.
        ].
        recoveredBlock22Block47Step = 90 ifTrue: [
            recoveredBlock22Block47Stack2 := recoveredBlock22Block47Arg1.
            recoveredBlock22Block47PC := 93.
        ].
        recoveredBlock22Block47Step = 93 ifTrue: [
            recoveredBlock22Block47Stack2 := (recoveredBlock22Block47Stack2) value.
            recoveredBlock22Block47PC := 95.
        ].
        recoveredBlock22Block47Step = 95 ifTrue: [
            recoveredBlock22Block47Stack3 := recoveredLocal1.
            recoveredBlock22Block47PC := 98.
        ].
        recoveredBlock22Block47Step = 98 ifTrue: [
            recoveredBlock22Block47Stack4 := recoveredBlock22Block47Arg1.
            recoveredBlock22Block47PC := 101.
        ].
        recoveredBlock22Block47Step = 101 ifTrue: [
            recoveredBlock22Block47Stack4 := (recoveredBlock22Block47Stack4) value.
            recoveredBlock22Block47PC := 103.
        ].
        recoveredBlock22Block47Step = 103 ifTrue: [
            recoveredBlock22Block47Stack5 := [
    0
].
            recoveredBlock22Block47PC := 105.
        ].
        recoveredBlock22Block47Step = 105 ifTrue: [
            recoveredBlock22Block47PC := 111.
        ].
        recoveredBlock22Block47Step = 111 ifTrue: [
            recoveredBlock22Block47Stack3 := (recoveredBlock22Block47Stack3) at: (recoveredBlock22Block47Stack4) ifAbsent: (recoveredBlock22Block47Stack5).
            recoveredBlock22Block47PC := 113.
        ].
        recoveredBlock22Block47Step = 113 ifTrue: [
            recoveredBlock22Block47Stack3 := (recoveredBlock22Block47Stack3) + (1).
            recoveredBlock22Block47PC := 114.
        ].
        recoveredBlock22Block47Step = 114 ifTrue: [
            recoveredBlock22Block47Stack1 := (recoveredBlock22Block47Stack1) at: (recoveredBlock22Block47Stack2) put: (recoveredBlock22Block47Stack3).
            recoveredBlock22Block47PC := 116.
        ].
        recoveredBlock22Block47Step = 116 ifTrue: [
            recoveredBlock22Block47Result := recoveredBlock22Block47Stack1.
            recoveredBlock22Block47Done := true.
        ].
    ].
    recoveredBlock22Block47Result
].
    recoveredBlock22Value9 := (recoveredBlock22Value7) do: (recoveredBlock22Value8).
    recoveredBlock22Value9
].
    (recoveredValue4) forAllEntriesDo: (recoveredValue5).
    recoveredValue6 := (self) classMethods.
    recoveredValue7 := [:recoveredBlock125Arg1 | 
    | recoveredBlock125Value0 recoveredBlock125Value1 recoveredBlock125Value2 recoveredBlock125Value3 recoveredBlock125Value4 recoveredBlock125Value5 recoveredBlock125Value6 recoveredBlock125Value7 recoveredBlock125Value8 recoveredBlock125Value9 |
    recoveredBlock125Value0 := recoveredLocal3.
    recoveredBlock125Value1 := (recoveredBlock125Value0) + (1).
    recoveredLocal3 := recoveredBlock125Value1.
    recoveredBlock125Value2 := EmMethodEdition.
    recoveredBlock125Value3 := recoveredBlock125Arg1.
    recoveredBlock125Value4 := (recoveredBlock125Value3) value.
    recoveredBlock125Value5 := (self) library.
    recoveredBlock125Value6 := (recoveredBlock125Value2) using: (recoveredBlock125Value4) from: (recoveredBlock125Value5).
    recoveredBlock125Value7 := (recoveredBlock125Value6) knownFormats.
    recoveredBlock125Value8 := [:recoveredBlock125Block151Arg1 | 
    | recoveredBlock125Block151Stack0 recoveredBlock125Block151Stack1 recoveredBlock125Block151Stack2 recoveredBlock125Block151Stack3 recoveredBlock125Block151Stack4 recoveredBlock125Block151Stack5 recoveredBlock125Block151Stack6 recoveredBlock125Block151PC recoveredBlock125Block151Step recoveredBlock125Block151Done recoveredBlock125Block151Result |
    recoveredBlock125Block151Stack0 := nil.
    recoveredBlock125Block151PC := 158.
    recoveredBlock125Block151Done := false.
    [recoveredBlock125Block151Done not] whileTrue: [
        recoveredBlock125Block151Step := recoveredBlock125Block151PC.
        recoveredBlock125Block151Step = 158 ifTrue: [
            recoveredBlock125Block151Stack1 := recoveredLocal2.
            recoveredBlock125Block151PC := 161.
        ].
        recoveredBlock125Block151Step = 161 ifTrue: [
            recoveredBlock125Block151Stack2 := recoveredBlock125Block151Arg1.
            recoveredBlock125Block151PC := 164.
        ].
        recoveredBlock125Block151Step = 164 ifTrue: [
            recoveredBlock125Block151Stack2 := (recoveredBlock125Block151Stack2) key.
            recoveredBlock125Block151PC := 166.
        ].
        recoveredBlock125Block151Step = 166 ifTrue: [
            recoveredBlock125Block151Stack3 := [
    | recoveredBlock125Block151Block166Value0 recoveredBlock125Block151Block166Value1 recoveredBlock125Block151Block166Value2 recoveredBlock125Block151Block166Value3 recoveredBlock125Block151Block166Value4 recoveredBlock125Block151Block166Value5 |
    recoveredBlock125Block151Block166Value0 := recoveredLocal2.
    recoveredBlock125Block151Block166Value1 := recoveredBlock125Block151Arg1.
    recoveredBlock125Block151Block166Value2 := (recoveredBlock125Block151Block166Value1) key.
    recoveredBlock125Block151Block166Value3 := Dictionary.
    recoveredBlock125Block151Block166Value4 := (recoveredBlock125Block151Block166Value3) new.
    recoveredBlock125Block151Block166Value5 := (recoveredBlock125Block151Block166Value0) at: (recoveredBlock125Block151Block166Value2) put: (recoveredBlock125Block151Block166Value4).
    recoveredBlock125Block151Block166Value5
].
            recoveredBlock125Block151PC := 186.
        ].
        recoveredBlock125Block151Step = 186 ifTrue: [
            recoveredBlock125Block151Stack1 := (recoveredBlock125Block151Stack1) at: (recoveredBlock125Block151Stack2) ifAbsent: (recoveredBlock125Block151Stack3).
            recoveredBlock125Block151PC := 188.
        ].
        recoveredBlock125Block151Step = 188 ifTrue: [
            recoveredLocal1 := recoveredBlock125Block151Stack1.
            recoveredBlock125Block151PC := 191.
        ].
        recoveredBlock125Block151Step = 191 ifTrue: [
            recoveredBlock125Block151Stack1 := recoveredLocal1.
            recoveredBlock125Block151PC := 194.
        ].
        recoveredBlock125Block151Step = 194 ifTrue: [
            recoveredBlock125Block151Stack2 := recoveredBlock125Block151Arg1.
            recoveredBlock125Block151PC := 197.
        ].
        recoveredBlock125Block151Step = 197 ifTrue: [
            recoveredBlock125Block151Stack2 := (recoveredBlock125Block151Stack2) value.
            recoveredBlock125Block151PC := 199.
        ].
        recoveredBlock125Block151Step = 199 ifTrue: [
            recoveredBlock125Block151Stack3 := recoveredLocal1.
            recoveredBlock125Block151PC := 202.
        ].
        recoveredBlock125Block151Step = 202 ifTrue: [
            recoveredBlock125Block151Stack4 := recoveredBlock125Block151Arg1.
            recoveredBlock125Block151PC := 205.
        ].
        recoveredBlock125Block151Step = 205 ifTrue: [
            recoveredBlock125Block151Stack4 := (recoveredBlock125Block151Stack4) value.
            recoveredBlock125Block151PC := 207.
        ].
        recoveredBlock125Block151Step = 207 ifTrue: [
            recoveredBlock125Block151Stack5 := [
    0
].
            recoveredBlock125Block151PC := 209.
        ].
        recoveredBlock125Block151Step = 209 ifTrue: [
            recoveredBlock125Block151PC := 215.
        ].
        recoveredBlock125Block151Step = 215 ifTrue: [
            recoveredBlock125Block151Stack3 := (recoveredBlock125Block151Stack3) at: (recoveredBlock125Block151Stack4) ifAbsent: (recoveredBlock125Block151Stack5).
            recoveredBlock125Block151PC := 217.
        ].
        recoveredBlock125Block151Step = 217 ifTrue: [
            recoveredBlock125Block151Stack3 := (recoveredBlock125Block151Stack3) + (1).
            recoveredBlock125Block151PC := 218.
        ].
        recoveredBlock125Block151Step = 218 ifTrue: [
            recoveredBlock125Block151Stack1 := (recoveredBlock125Block151Stack1) at: (recoveredBlock125Block151Stack2) put: (recoveredBlock125Block151Stack3).
            recoveredBlock125Block151PC := 220.
        ].
        recoveredBlock125Block151Step = 220 ifTrue: [
            recoveredBlock125Block151Result := recoveredBlock125Block151Stack1.
            recoveredBlock125Block151Done := true.
        ].
    ].
    recoveredBlock125Block151Result
].
    recoveredBlock125Value9 := (recoveredBlock125Value7) do: (recoveredBlock125Value8).
    recoveredBlock125Value9
].
    (recoveredValue6) forAllEntriesDo: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := [:recoveredBlock229Arg1 | 
    | recoveredBlock229Value0 recoveredBlock229Value1 recoveredBlock229Value2 recoveredBlock229Value3 |
    recoveredBlock229Value0 := recoveredBlock229Arg1.
    recoveredBlock229Value1 := (recoveredBlock229Value0) value.
    recoveredBlock229Value2 := [:recoveredBlock229Block241Arg1 | 
    | recoveredBlock229Block241Stack0 recoveredBlock229Block241Stack1 recoveredBlock229Block241Stack2 recoveredBlock229Block241Stack3 recoveredBlock229Block241Stack4 recoveredBlock229Block241Stack5 recoveredBlock229Block241PC recoveredBlock229Block241Step recoveredBlock229Block241Done recoveredBlock229Block241Result |
    recoveredBlock229Block241Stack0 := nil.
    recoveredBlock229Block241PC := 248.
    recoveredBlock229Block241Done := false.
    [recoveredBlock229Block241Done not] whileTrue: [
        recoveredBlock229Block241Step := recoveredBlock229Block241PC.
        recoveredBlock229Block241Step = 248 ifTrue: [
            recoveredBlock229Block241Stack1 := nil.
            recoveredBlock229Block241PC := 249.
        ].
        recoveredBlock229Block241Step = 249 ifTrue: [
            recoveredBlock229Block241Stack2 := recoveredBlock229Block241Arg1.
            recoveredBlock229Block241PC := 250.
        ].
        recoveredBlock229Block241Step = 250 ifTrue: [
            recoveredBlock229Block241Stack2 := (recoveredBlock229Block241Stack2) value.
            recoveredBlock229Block241PC := 252.
        ].
        recoveredBlock229Block241Step = 252 ifTrue: [
            recoveredBlock229Block241Stack3 := recoveredLocal3.
            recoveredBlock229Block241PC := 255.
        ].
        recoveredBlock229Block241Step = 255 ifTrue: [
            recoveredBlock229Block241Stack2 := (recoveredBlock229Block241Stack2) = (recoveredBlock229Block241Stack3).
            recoveredBlock229Block241PC := 256.
        ].
        recoveredBlock229Block241Step = 256 ifTrue: [
            (recoveredBlock229Block241Stack2) ifTrue: [recoveredBlock229Block241PC := 260] ifFalse: [recoveredBlock229Block241PC := 278].
        ].
        recoveredBlock229Block241Step = 260 ifTrue: [
            recoveredBlock229Block241PC := 261.
        ].
        recoveredBlock229Block241Step = 261 ifTrue: [
            recoveredBlock229Block241Stack1 := recoveredLocal4.
            recoveredBlock229Block241PC := 264.
        ].
        recoveredBlock229Block241Step = 264 ifTrue: [
            recoveredBlock229Block241Stack2 := Association.
            recoveredBlock229Block241PC := 266.
        ].
        recoveredBlock229Block241Step = 266 ifTrue: [
            recoveredBlock229Block241Stack3 := recoveredBlock229Arg1.
            recoveredBlock229Block241PC := 269.
        ].
        recoveredBlock229Block241Step = 269 ifTrue: [
            recoveredBlock229Block241Stack3 := (recoveredBlock229Block241Stack3) key.
            recoveredBlock229Block241PC := 271.
        ].
        recoveredBlock229Block241Step = 271 ifTrue: [
            recoveredBlock229Block241Stack4 := recoveredBlock229Block241Arg1.
            recoveredBlock229Block241PC := 272.
        ].
        recoveredBlock229Block241Step = 272 ifTrue: [
            recoveredBlock229Block241Stack4 := (recoveredBlock229Block241Stack4) key.
            recoveredBlock229Block241PC := 274.
        ].
        recoveredBlock229Block241Step = 274 ifTrue: [
            recoveredBlock229Block241Stack2 := (recoveredBlock229Block241Stack2) key: (recoveredBlock229Block241Stack3) value: (recoveredBlock229Block241Stack4).
            recoveredBlock229Block241PC := 276.
        ].
        recoveredBlock229Block241Step = 276 ifTrue: [
            recoveredBlock229Block241Stack1 := (recoveredBlock229Block241Stack1) add: (recoveredBlock229Block241Stack2).
            recoveredBlock229Block241PC := 278.
        ].
        recoveredBlock229Block241Step = 278 ifTrue: [
            recoveredBlock229Block241Result := recoveredBlock229Block241Stack1.
            recoveredBlock229Block241Done := true.
        ].
    ].
    recoveredBlock229Block241Result
].
    recoveredBlock229Value3 := (recoveredBlock229Value1) associationsDo: (recoveredBlock229Value2).
    recoveredBlock229Value3
].
    (recoveredValue8) associationsDo: (recoveredValue9).
    recoveredValue10 := recoveredLocal4.
    ^recoveredValue10
! !

