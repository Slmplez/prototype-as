"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200036c0; bytecode file offset 0x90206c"
!DBObjectCache methodsFor: 'recovered'!
modified: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200053a8; bytecode file offset 0x90206c"
!DBObjectCache methodsFor: 'recovered'!
setAllLabels: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200411d4; bytecode file offset 0x93dd2c"
!DBObjectCache methodsFor: 'recovered'!
getHitRate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := statistics.
    recoveredValue1 := (recoveredValue0) getHitRate.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200414f8; bytecode file offset 0x93e1a0"
!DBObjectCache methodsFor: 'recovered'!
getAllCachedObjects
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := objects.
    recoveredValue1 := (recoveredValue0) values.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200415c4; bytecode file offset 0x93e1a0"
!DBObjectCache methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := objects.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048ab4; bytecode file offset 0x945368"
!DBObjectCache methodsFor: 'recovered'!
initializeModifiedFlag
    modifiedFlag := false.
    ^self
! !

"ASDBase.ic method 0x20048ff4; bytecode file offset 0x9458c0"
!DBObjectCache methodsFor: 'recovered'!
invalidateLabelCache
    labels := nil.
    ^self
! !

"ASDBase.ic method 0x200671cc; bytecode file offset 0x9646f8"
!DBObjectCache methodsFor: 'recovered'!
cacheSizeLimit
    | recoveredValue0 |
    recoveredValue0 := cacheSizeLimit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069768; bytecode file offset 0x966bdc"
!DBObjectCache methodsFor: 'recovered'!
objects
    | recoveredValue0 |
    recoveredValue0 := objects.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a76c; bytecode file offset 0x967a18"
!DBObjectCache methodsFor: 'recovered'!
getKeys
    | recoveredValue0 |
    recoveredValue0 := keys.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b2a0; bytecode file offset 0x96873c"
!DBObjectCache methodsFor: 'recovered'!
getAllLabels
    | recoveredValue0 |
    recoveredValue0 := labels.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072d40; bytecode file offset 0x96f6d4"
!DBObjectCache methodsFor: 'recovered'!
bitKeyCacheValid
    ^4
! !

"ASDBase.ic method 0x2007436c; bytecode file offset 0x970de8"
!DBObjectCache methodsFor: 'recovered'!
bitCaching
    ^8
! !

"ASDBase.ic method 0x20092cac; bytecode file offset 0x98f568"
!DBObjectCache methodsFor: 'recovered'!
objectsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := objects.
    recoveredValue1 := (recoveredValue0) values.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200947a8; bytecode file offset 0x991174"
!DBObjectCache methodsFor: 'recovered'!
remove: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) remove: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aa704; bytecode file offset 0x9a6fc0"
!DBObjectCache methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) dbObject.
    recoveredValue2 := recoveredArg1.
    (self) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bebe0; bytecode file offset 0x9bc0b4"
!DBObjectCache methodsFor: 'recovered'!
cacheSizeLimit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cacheSizeLimit := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cdbec; bytecode file offset 0x9ca4a4"
!DBObjectCache methodsFor: 'recovered'!
setKeyCacheValid
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (4).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cdc14; bytecode file offset 0x9ca4d8"
!DBObjectCache methodsFor: 'recovered'!
isKeyCacheValid
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (4).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cdc48; bytecode file offset 0x9ca500"
!DBObjectCache methodsFor: 'recovered'!
setCaching
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (8).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cdc64; bytecode file offset 0x9ca528"
!DBObjectCache methodsFor: 'recovered'!
isCaching
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (8).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e7590; bytecode file offset 0x9e3e50"
!DBObjectCache methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := statistics.
    (recoveredValue0) incRead.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (self) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f0604; bytecode file offset 0x9ecebc"
!DBObjectCache methodsFor: 'recovered'!
clearCaching
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (247).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f0620; bytecode file offset 0x9eced8"
!DBObjectCache methodsFor: 'recovered'!
clearKeyCacheValid
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (251).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20105854; bytecode file offset 0xa02114"
!DBObjectCache methodsFor: 'recovered'!
emptyCache
    | recoveredValue0 |
    recoveredValue0 := cacheSizeLimit.
    (self) initialize: (recoveredValue0).
    (self) clearKeyCacheValid.
    (self) invalidateLabelCache.
    ^self
! !

"ASDBase.ic method 0x20115c40; bytecode file offset 0xa12504"
!DBObjectCache methodsFor: 'recovered'!
getWrittenObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280c6d38Arg1 | 
    | block280c6d38Value0 block280c6d38Value1 |
    block280c6d38Value0 := block280c6d38Arg1.
    block280c6d38Value1 := (block280c6d38Value0) isWritten.
    block280c6d38Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201171c8; bytecode file offset 0xa13ac4"
!DBObjectCache methodsFor: 'recovered'!
setObjectsModified
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c7248Arg1 | 
    | block280c7248Value0 block280c7248Value1 |
    block280c7248Value0 := block280c7248Arg1.
    block280c7248Value1 := (block280c7248Value0) setModify.
    block280c7248Value1
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) objectsDo: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20129978; bytecode file offset 0xa2623c"
!DBObjectCache methodsFor: 'recovered'!
getNotCommitedObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280c9624Arg1 | 
    | block280c9624Value0 block280c9624Value1 block280c9624Value2 |
    block280c9624Value0 := block280c9624Arg1.
    block280c9624Value1 := (block280c9624Value0) isCommitted.
    block280c9624Value2 := (block280c9624Value1) not.
    block280c9624Value2
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014d1a0; bytecode file offset 0xa49a60"
!DBObjectCache methodsFor: 'recovered'!
getReferencedObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280ccc90Arg1 :block280ccc90Arg2 | 
    | block280ccc90Value0 block280ccc90Value1 block280ccc90Value2 block280ccc90Value3 block280ccc90Value4 |
    block280ccc90Value0 := block280ccc90Arg1.
    block280ccc90Value1 := (block280ccc90Value0) timeStamp.
    block280ccc90Value2 := block280ccc90Arg2.
    block280ccc90Value3 := (block280ccc90Value2) timeStamp.
    block280ccc90Value4 := (block280ccc90Value1) < (block280ccc90Value3).
    block280ccc90Value4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201531d8; bytecode file offset 0xa4fab4"
!DBObjectCache methodsFor: 'recovered'!
incReferences: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) uniqueCacheKeyValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280cd6f8Arg1 | 
    | block280cd6f8Value0 block280cd6f8Value1 |
    block280cd6f8Value0 := block280cd6f8Arg1.
    block280cd6f8Value1 := (block280cd6f8Value0) incReferences.
    block280cd6f8Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201531f0; bytecode file offset 0xa4fab4"
!DBObjectCache methodsFor: 'recovered'!
decReferences: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) uniqueCacheKeyValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280cd71cArg1 | 
    | block280cd71cValue0 block280cd71cValue1 |
    block280cd71cValue0 := block280cd71cArg1.
    block280cd71cValue1 := (block280cd71cValue0) decReferences.
    block280cd71cValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20155380; bytecode file offset 0xa51c40"
!DBObjectCache methodsFor: 'recovered'!
loadProxies: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKeyCacheValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := keys.
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
            (recoveredStack0) setKeyCacheValid.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            keys := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015cd54; bytecode file offset 0xa59614"
!DBObjectCache methodsFor: 'recovered'!
garbageCollect
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := cacheSizeLimit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := cacheSizeLimit.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 2097152.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) garbageCollect: (recoveredStack2) minFreeMemory: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20164470; bytecode file offset 0xa60d34"
!DBObjectCache methodsFor: 'recovered'!
cacheReferences: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) uniqueCacheKeyValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    0
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) referenceCount.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20194218; bytecode file offset 0xa90ae4"
!DBObjectCache methodsFor: 'recovered'!
printCacheStatisticsOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) cr.
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: ('size: ').
    recoveredValue2 := objects.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    recoveredValue5 := statistics.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printStatisticsOn: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201ac60c; bytecode file offset 0xaa8ed4"
!DBObjectCache methodsFor: 'recovered'!
remove: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := lastRead.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) key: (nil).
    (recoveredValue0) value: (nil).
    recoveredValue2 := objects.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) uniqueCacheKeyValue.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue2) removeKey: (recoveredValue4) ifAbsent: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    (self) initializeModifiedFlag.
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201ad4d8; bytecode file offset 0xaa9da0"
!DBObjectCache methodsFor: 'recovered'!
abort
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getModifiedObjects.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) dbObject.
    recoveredBlock7Value2 := [].
    recoveredBlock7Value3 := (self) remove: (recoveredBlock7Value1) ifAbsent: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201cc3e0; bytecode file offset 0xac8ca0"
!DBObjectCache methodsFor: 'recovered'!
emptyCache: recoveredArg1
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
            recoveredStack2 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            cacheSizeLimit := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := cacheSizeLimit.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) initialize: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) clearKeyCacheValid.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) invalidateLabelCache.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023b400; bytecode file offset 0xb37cc0"
!DBObjectCache methodsFor: 'recovered'!
isCommitted
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := modifiedFlag.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := modifiedFlag.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280ddad8Arg1 | 
    | block280ddad8Value0 block280ddad8Value1 |
    block280ddad8Value0 := block280ddad8Arg1.
    block280ddad8Value1 := (block280ddad8Value0) isModified.
    block280ddad8Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            modifiedFlag := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := modifiedFlag.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202871c4; bytecode file offset 0xb83a90"
!DBObjectCache methodsFor: 'recovered'!
getModifiedObjects
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := objects.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := objects.
    recoveredValue5 := [:recoveredBlock15Arg1 :recoveredBlock15Arg2 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg2.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isModified.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 28] ifFalse: [recoveredBlock15PC := 35].
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 32.
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg2.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) add: (recoveredBlock15Stack2).
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue4) keysAndValuesDo: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202e8dd0; bytecode file offset 0xbe56a8"
!DBObjectCache methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) uniqueCacheKeyValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCaching.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := objects.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := statistics.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) incWrite.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := objects.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := statistics.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) accessCount.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) asDBCacheObject: (recoveredStack3) ts: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := lastRead.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) key: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037d600; bytecode file offset 0xc79ee0"
!DBObjectCache methodsFor: 'recovered'!
printCachedObjectsStatisticsOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) cr.
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: ('size: ').
    recoveredValue2 := objects.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) cr.
    recoveredValue6 := objects.
    recoveredValue7 := [:recoveredBlock31Arg1 :recoveredBlock31Arg2 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 recoveredBlock31Value5 recoveredBlock31Value6 recoveredBlock31Value7 recoveredBlock31Value8 recoveredBlock31Value9 recoveredBlock31Value10 |
    recoveredBlock31Value0 := recoveredArg1.
    recoveredBlock31Value1 := recoveredBlock31Value0.
    recoveredBlock31Value2 := recoveredBlock31Arg2.
    recoveredBlock31Value3 := (recoveredBlock31Value2) object.
    recoveredBlock31Value4 := (recoveredBlock31Value3) dbObject.
    recoveredBlock31Value5 := (recoveredBlock31Value4) completeName.
    (recoveredBlock31Value1) nextPutAll: (recoveredBlock31Value5).
    (recoveredBlock31Value0) nextPutAll: (' size ').
    recoveredBlock31Value6 := recoveredBlock31Arg2.
    recoveredBlock31Value7 := (recoveredBlock31Value6) blobSize.
    recoveredBlock31Value8 := recoveredArg1.
    (recoveredBlock31Value7) printOn: (recoveredBlock31Value8).
    recoveredBlock31Value9 := recoveredArg1.
    recoveredBlock31Value10 := (recoveredBlock31Value9) cr.
    recoveredBlock31Value10
].
    (recoveredValue6) keysAndValuesDo: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20385d48; bytecode file offset 0xc82624"
!DBObjectCache methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := statistics.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) incRead.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueCacheKeyValue.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := lastRead.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := lastRead.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 recoveredBlock38Value7 recoveredBlock38Value8 |
    recoveredBlock38Value0 := statistics.
    (recoveredBlock38Value0) incHit.
    recoveredBlock38Value1 := recoveredBlock38Arg1.
    recoveredBlock38Value2 := statistics.
    recoveredBlock38Value3 := (recoveredBlock38Value2) accessCount.
    (recoveredBlock38Value1) timeStamp: (recoveredBlock38Value3).
    recoveredBlock38Value4 := lastRead.
    recoveredBlock38Value5 := recoveredBlock38Value4.
    recoveredBlock38Value6 := recoveredLocal1.
    (recoveredBlock38Value5) key: (recoveredBlock38Value6).
    recoveredBlock38Value7 := recoveredBlock38Arg1.
    (recoveredBlock38Value4) value: (recoveredBlock38Value7).
    recoveredBlock38Value8 := recoveredBlock38Arg1.
    recoveredBlock38Value8
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203c5150; bytecode file offset 0xcc1a2c"
!DBObjectCache methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := cacheSizeLimit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            cacheSizeLimit := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := cacheSizeLimit.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            cacheSizeLimit := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := cacheSizeLimit.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := AbtHighCapacityLookupTable.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            objects := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := AbtHighCapacityLookupTable.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := cacheSizeLimit.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            objects := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            keys := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := DBCacheStatistic.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            statistics := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) initializeModifiedFlag.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := Association.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) key: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            lastRead := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) setCaching.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) clearKeyCacheValid.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c78f8; bytecode file offset 0xcc41d4"
!DBObjectCache methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2 ifPresent: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := statistics.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) incRead.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueCacheKeyValue.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := lastRead.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := lastRead.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 recoveredBlock43Value4 recoveredBlock43Value5 recoveredBlock43Value6 recoveredBlock43Value7 recoveredBlock43Value8 recoveredBlock43Value9 recoveredBlock43Value10 |
    recoveredBlock43Value0 := statistics.
    (recoveredBlock43Value0) incHit.
    recoveredBlock43Value1 := recoveredBlock43Arg1.
    recoveredBlock43Value2 := statistics.
    recoveredBlock43Value3 := (recoveredBlock43Value2) accessCount.
    (recoveredBlock43Value1) timeStamp: (recoveredBlock43Value3).
    recoveredBlock43Value4 := lastRead.
    recoveredBlock43Value5 := recoveredBlock43Value4.
    recoveredBlock43Value6 := recoveredLocal1.
    (recoveredBlock43Value5) key: (recoveredBlock43Value6).
    recoveredBlock43Value7 := recoveredBlock43Arg1.
    (recoveredBlock43Value4) value: (recoveredBlock43Value7).
    recoveredBlock43Value8 := recoveredArg3.
    recoveredBlock43Value9 := recoveredBlock43Arg1.
    recoveredBlock43Value10 := (recoveredBlock43Value8) value: (recoveredBlock43Value9).
    recoveredBlock43Value10
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203f454c; bytecode file offset 0xcf0e3c"
!DBObjectCache methodsFor: 'recovered'!
printOn: recoveredArg1
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
            super printOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'cacheSize :	'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'modified  :	'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModifiedObjects.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'cacheState: '.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKeyCacheValid.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := ' keysCached'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := ' keysNOTCached'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCaching.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := ' enabled'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := ' disabled'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := statistics.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056e498; bytecode file offset 0xe6adb0"
!DBObjectCache methodsFor: 'recovered'!
garbageCollect: recoveredArg1 minFreeMemory: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) totalAllocatedMemory.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 2147483648.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 1073741824.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) objects.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:block28111904Arg1 | 
    | block28111904Stack0 block28111904Stack1 block28111904Stack2 block28111904Stack3 block28111904PC block28111904Step block28111904Done block28111904Result |
    block28111904Stack0 := self.
    block28111904PC := 4.
    block28111904Done := false.
    [block28111904Done not] whileTrue: [
        block28111904Step := block28111904PC.
        block28111904Step = 4 ifTrue: [
            block28111904Stack1 := true.
            block28111904PC := 5.
        ].
        block28111904Step = 5 ifTrue: [
            block28111904Stack2 := block28111904Arg1.
            block28111904PC := 6.
        ].
        block28111904Step = 6 ifTrue: [
            block28111904Stack2 := (block28111904Stack2) isModified.
            block28111904PC := 8.
        ].
        block28111904Step = 8 ifTrue: [
            (block28111904Stack2) ifTrue: [block28111904PC := 27] ifFalse: [block28111904PC := 12].
        ].
        block28111904Step = 12 ifTrue: [
            block28111904PC := 13.
        ].
        block28111904Step = 13 ifTrue: [
            block28111904Stack1 := true.
            block28111904PC := 14.
        ].
        block28111904Step = 14 ifTrue: [
            block28111904Stack2 := block28111904Arg1.
            block28111904PC := 15.
        ].
        block28111904Step = 15 ifTrue: [
            block28111904Stack2 := (block28111904Stack2) isLockCache.
            block28111904PC := 17.
        ].
        block28111904Step = 17 ifTrue: [
            (block28111904Stack2) ifTrue: [block28111904PC := 27] ifFalse: [block28111904PC := 20].
        ].
        block28111904Step = 20 ifTrue: [
            block28111904PC := 21.
        ].
        block28111904Step = 21 ifTrue: [
            block28111904Stack1 := block28111904Arg1.
            block28111904PC := 22.
        ].
        block28111904Step = 22 ifTrue: [
            block28111904Stack1 := (block28111904Stack1) referenceCount.
            block28111904PC := 24.
        ].
        block28111904Step = 24 ifTrue: [
            block28111904Stack2 := 0.
            block28111904PC := 26.
        ].
        block28111904Step = 26 ifTrue: [
            block28111904Stack1 := (block28111904Stack1) > (block28111904Stack2).
            block28111904PC := 27.
        ].
        block28111904Step = 27 ifTrue: [
            block28111904Result := block28111904Stack1.
            block28111904Done := true.
        ].
    ].
    block28111904Result
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 recoveredBlock78Value3 recoveredBlock78Value4 |
    recoveredBlock78Value0 := objects.
    recoveredBlock78Value1 := recoveredBlock78Arg1.
    recoveredBlock78Value2 := (recoveredBlock78Value1) uniqueCacheKeyValue.
    recoveredBlock78Value3 := [].
    recoveredBlock78Value4 := (recoveredBlock78Value0) removeKey: (recoveredBlock78Value2) ifAbsent: (recoveredBlock78Value3).
    recoveredBlock78Value4
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) globalGarbageCollect.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) objects.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) objects.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := [:block28111928Arg1 | 
    | block28111928Stack0 block28111928Stack1 block28111928Stack2 block28111928Stack3 block28111928PC block28111928Step block28111928Done block28111928Result |
    block28111928Stack0 := self.
    block28111928PC := 4.
    block28111928Done := false.
    [block28111928Done not] whileTrue: [
        block28111928Step := block28111928PC.
        block28111928Step = 4 ifTrue: [
            block28111928Stack1 := true.
            block28111928PC := 5.
        ].
        block28111928Step = 5 ifTrue: [
            block28111928Stack2 := block28111928Arg1.
            block28111928PC := 6.
        ].
        block28111928Step = 6 ifTrue: [
            block28111928Stack2 := (block28111928Stack2) isModified.
            block28111928PC := 8.
        ].
        block28111928Step = 8 ifTrue: [
            (block28111928Stack2) ifTrue: [block28111928PC := 27] ifFalse: [block28111928PC := 12].
        ].
        block28111928Step = 12 ifTrue: [
            block28111928PC := 13.
        ].
        block28111928Step = 13 ifTrue: [
            block28111928Stack1 := true.
            block28111928PC := 14.
        ].
        block28111928Step = 14 ifTrue: [
            block28111928Stack2 := block28111928Arg1.
            block28111928PC := 15.
        ].
        block28111928Step = 15 ifTrue: [
            block28111928Stack2 := (block28111928Stack2) isLockCache.
            block28111928PC := 17.
        ].
        block28111928Step = 17 ifTrue: [
            (block28111928Stack2) ifTrue: [block28111928PC := 27] ifFalse: [block28111928PC := 20].
        ].
        block28111928Step = 20 ifTrue: [
            block28111928PC := 21.
        ].
        block28111928Step = 21 ifTrue: [
            block28111928Stack1 := block28111928Arg1.
            block28111928PC := 22.
        ].
        block28111928Step = 22 ifTrue: [
            block28111928Stack1 := (block28111928Stack1) referenceCount.
            block28111928PC := 24.
        ].
        block28111928Step = 24 ifTrue: [
            block28111928Stack2 := 0.
            block28111928PC := 26.
        ].
        block28111928Step = 26 ifTrue: [
            block28111928Stack1 := (block28111928Stack1) > (block28111928Stack2).
            block28111928PC := 27.
        ].
        block28111928Step = 27 ifTrue: [
            block28111928Result := block28111928Stack1.
            block28111928Done := true.
        ].
    ].
    block28111928Result
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := [:block2811194cArg1 :block2811194cArg2 | 
    | block2811194cValue0 block2811194cValue1 block2811194cValue2 block2811194cValue3 block2811194cValue4 |
    block2811194cValue0 := block2811194cArg1.
    block2811194cValue1 := (block2811194cValue0) timeStamp.
    block2811194cValue2 := block2811194cArg2.
    block2811194cValue3 := (block2811194cValue2) timeStamp.
    block2811194cValue4 := (block2811194cValue1) < (block2811194cValue3).
    block2811194cValue4
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := [:recoveredBlock205Arg1 | 
    | recoveredBlock205Value0 recoveredBlock205Value1 recoveredBlock205Value2 recoveredBlock205Value3 recoveredBlock205Value4 |
    recoveredBlock205Value0 := objects.
    recoveredBlock205Value1 := recoveredBlock205Arg1.
    recoveredBlock205Value2 := (recoveredBlock205Value1) uniqueCacheKeyValue.
    recoveredBlock205Value3 := [].
    recoveredBlock205Value4 := (recoveredBlock205Value0) removeKey: (recoveredBlock205Value2) ifAbsent: (recoveredBlock205Value3).
    recoveredBlock205Value4
].
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 243].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack1) globalGarbageCollect.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

