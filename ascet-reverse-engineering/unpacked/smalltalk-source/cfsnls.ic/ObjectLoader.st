"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x200001b8; bytecode file offset 0x23404"
!ObjectLoader methodsFor: 'recovered'!
cleanupAfterError
    | recoveredValue0 |
    recoveredValue0 := (self) finishedLoading.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000cdc; bytecode file offset 0x23f54"
!ObjectLoader methodsFor: 'recovered'!
resetMutationTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mutationTable.
    recoveredValue1 := (recoveredValue0) reset.
    ^recoveredValue1
! !

"cfsnls.ic method 0x20000d1c; bytecode file offset 0x23f54"
!ObjectLoader methodsFor: 'recovered'!
classOfOldLoader
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) classOfOldLoader.
    ^recoveredValue1
! !

"cfsnls.ic method 0x2000104c; bytecode file offset 0x2428c"
!ObjectLoader methodsFor: 'recovered'!
originalPlatformFlags
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loadedHeader.
    recoveredValue1 := (recoveredValue0) platformFlags.
    ^recoveredValue1
! !

"cfsnls.ic method 0x20001058; bytecode file offset 0x2428c"
!ObjectLoader methodsFor: 'recovered'!
loadedFormat
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := loadedHeader.
    recoveredValue1 := (recoveredValue0) version.
    ^recoveredValue1
! !

"cfsnls.ic method 0x20001420; bytecode file offset 0x2469c"
!ObjectLoader methodsFor: 'recovered'!
resetForReplacedObjects
    (self) resetReplacementTable.
    ^self
! !

"cfsnls.ic method 0x2000156c; bytecode file offset 0x247d4"
!ObjectLoader methodsFor: 'recovered'!
classOfCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) classEncoder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) classOfCode: (recoveredValue1).
    ^recoveredValue2
! !

"cfsnls.ic method 0x20001990; bytecode file offset 0x24bc8"
!ObjectLoader methodsFor: 'recovered'!
resetReplacementTable
    | recoveredValue0 |
    recoveredValue0 := (self) replacementTable.
    (recoveredValue0) reset.
    ^self
! !

"cfsnls.ic method 0x20001e00; bytecode file offset 0x25030"
!ObjectLoader methodsFor: 'recovered'!
loadingReplacer
    | recoveredValue0 |
    recoveredValue0 := loadingReplacer.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001e30; bytecode file offset 0x25068"
!ObjectLoader methodsFor: 'recovered'!
extractedInstances
    | recoveredValue0 |
    recoveredValue0 := extractedInstances.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001e64; bytecode file offset 0x25094"
!ObjectLoader methodsFor: 'recovered'!
replacementTable
    | recoveredValue0 |
    recoveredValue0 := replacementTable.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001e78; bytecode file offset 0x250b8"
!ObjectLoader methodsFor: 'recovered'!
mutationTable
    | recoveredValue0 |
    recoveredValue0 := mutationTable.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001ea4; bytecode file offset 0x250dc"
!ObjectLoader methodsFor: 'recovered'!
loadedHeader
    | recoveredValue0 |
    recoveredValue0 := loadedHeader.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001ec0; bytecode file offset 0x25100"
!ObjectLoader methodsFor: 'recovered'!
oldLoader
    | recoveredValue0 |
    recoveredValue0 := oldLoader.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200026ac; bytecode file offset 0x258dc"
!ObjectLoader methodsFor: 'recovered'!
loadedHeader: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    loadedHeader := recoveredValue1.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20002948; bytecode file offset 0x25b80"
!ObjectLoader methodsFor: 'recovered'!
initializeLoadedHeader
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EswHeader.
    recoveredValue1 := (recoveredValue0) new.
    loadedHeader := recoveredValue1.
    ^self
! !

"cfsnls.ic method 0x20002c78; bytecode file offset 0x25eb0"
!ObjectLoader methodsFor: 'recovered'!
loadFromStream: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) swappingStream: (recoveredValue0).
    recoveredValue1 := (self) load.
    ^recoveredValue1
! !

"cfsnls.ic method 0x20002fa4; bytecode file offset 0x261ec"
!ObjectLoader methodsFor: 'recovered'!
addSegment: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memorySegments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addLast: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x20002fb4; bytecode file offset 0x261ec"
!ObjectLoader methodsFor: 'recovered'!
optimizeLoadingReplacement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) swappingStrategy.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) optimized: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x2000307c; bytecode file offset 0x262c4"
!ObjectLoader methodsFor: 'recovered'!
initializeForLoading
    (self) resetError.
    (self) initializeWarnings.
    ^self
! !

"cfsnls.ic method 0x200038bc; bytecode file offset 0x26b34"
!ObjectLoader methodsFor: 'recovered'!
initializeLoadingReplacer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EswLoadingReplacer.
    recoveredValue1 := (recoveredValue0) forSwapper: (self).
    (self) loadingReplacer: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x200038f8; bytecode file offset 0x26b34"
!ObjectLoader methodsFor: 'recovered'!
initializeSwappingStrategy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EswLoadingStrategy.
    recoveredValue1 := (recoveredValue0) forSwapper: (self).
    (self) swappingStrategy: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x20003cd0; bytecode file offset 0x26f04"
!ObjectLoader methodsFor: 'recovered'!
loadingReplacer: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) swapper: (self).
    loadingReplacer := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20003d6c; bytecode file offset 0x26fa8"
!ObjectLoader methodsFor: 'recovered'!
multiBecomeUsingTable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) memorySegments.
    recoveredValue2 := (recoveredValue1) asArray.
    (recoveredValue0) multiBecomeIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    ^recoveredValue3
! !

"cfsnls.ic method 0x20004154; bytecode file offset 0x2738c"
!ObjectLoader methodsFor: 'recovered'!
extractedInstances: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    extractedInstances := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20004180; bytecode file offset 0x273b0"
!ObjectLoader methodsFor: 'recovered'!
replacementTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    replacementTable := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x200041b0; bytecode file offset 0x273e0"
!ObjectLoader methodsFor: 'recovered'!
oldLoader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oldLoader := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20004348; bytecode file offset 0x27590"
!ObjectLoader methodsFor: 'recovered'!
loadFromFile: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) errorStream.
    recoveredValue3 := (self) loadFromFile: (recoveredValue0) atOffset: (recoveredValue1) errorStream: (recoveredValue2).
    ^recoveredValue3
! !

"cfsnls.ic method 0x20004358; bytecode file offset 0x27590"
!ObjectLoader methodsFor: 'recovered'!
loadFromFileHandle: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) errorStream.
    recoveredValue3 := (self) loadFromFileHandle: (recoveredValue0) atOffset: (recoveredValue1) errorStream: (recoveredValue2).
    ^recoveredValue3
! !

"cfsnls.ic method 0x200044d8; bytecode file offset 0x2771c"
!ObjectLoader methodsFor: 'recovered'!
objectPlatform
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) supportedPlatforms.
    recoveredValue1 := (self) loadedHeader.
    recoveredValue2 := (recoveredValue1) platform.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"cfsnls.ic method 0x2000459c; bytecode file offset 0x277d4"
!ObjectLoader methodsFor: 'recovered'!
loadFromFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) errorStream.
    recoveredValue2 := (self) loadFromFile: (recoveredValue0) atOffset: (0) errorStream: (recoveredValue1).
    ^recoveredValue2
! !

"cfsnls.ic method 0x20004b50; bytecode file offset 0x27d8c"
!ObjectLoader methodsFor: 'recovered'!
loadInteger
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) swappingStream.
    recoveredValue1 := (recoveredValue0) next: (4).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) eswIntelLongAt: (1).
    ^recoveredValue3
! !

"cfsnls.ic method 0x20004ce0; bytecode file offset 0x27f1c"
!ObjectLoader methodsFor: 'recovered'!
initializeReplacementTable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EswMultiBecomeTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) // (10).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    (self) replacementTable: (recoveredValue3).
    ^self
! !

"cfsnls.ic method 0x20004de4; bytecode file offset 0x28024"
!ObjectLoader methodsFor: 'recovered'!
loadByte
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) swappingStream.
    recoveredValue1 := (recoveredValue0) next: (1).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) asByteArray.
    recoveredValue4 := (recoveredValue3) at: (1).
    ^recoveredValue4
! !

"cfsnls.ic method 0x20004f30; bytecode file offset 0x28164"
!ObjectLoader methodsFor: 'recovered'!
needToExtractInstances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := instOfClassesToBeLoaded.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := instOfClassesToBeLoaded.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x20004ff0; bytecode file offset 0x2822c"
!ObjectLoader methodsFor: 'recovered'!
initializeOldLoader
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classOfOldLoader.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) classOfOldLoader.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) oldLoader: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20005398; bytecode file offset 0x285e0"
!ObjectLoader methodsFor: 'recovered'!
loadWithOldLoader
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) oldLoader.
    recoveredValue1 := (self) swappingStream.
    recoveredValue2 := (recoveredValue1) fileDescriptor.
    recoveredValue3 := (self) swappingStream.
    recoveredValue4 := (recoveredValue3) position.
    recoveredValue5 := (self) errorStream.
    recoveredValue6 := (recoveredValue0) loadFromFileHandle: (recoveredValue2) atOffset: (recoveredValue4) errorStream: (recoveredValue5).
    ^recoveredValue6
! !

"cfsnls.ic method 0x20005684; bytecode file offset 0x288bc"
!ObjectLoader methodsFor: 'recovered'!
initializeMutationTable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EswCachedIdentityDictionary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) * (5).
    recoveredValue3 := (recoveredValue2) // (100).
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    mutationTable := recoveredValue4.
    ^self
! !

"cfsnls.ic method 0x20005d60; bytecode file offset 0x28fa4"
!ObjectLoader methodsFor: 'recovered'!
finishedLoading
    (self) graphRoot: (nil).
    (self) interruptBlock: (nil).
    (self) resetReplacementTable.
    (self) resetMutationTable.
    (self) deleteSegmentsBeingProcessed.
    ^self
! !

"cfsnls.ic method 0x2000625c; bytecode file offset 0x294b4"
!ObjectLoader methodsFor: 'recovered'!
removeMutatedClassNamed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadingReplacer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeMutatedClassNamed: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) loadingReplacer: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) removeMutatedClassNamed: (recoveredStack1).
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

"cfsnls.ic method 0x20006274; bytecode file offset 0x294b4"
!ObjectLoader methodsFor: 'recovered'!
removeRemappedClassReference: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadingReplacer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeRemappedClassReference: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) loadingReplacer: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) removeRemappedClassReference: (recoveredStack1).
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

"cfsnls.ic method 0x200062a4; bytecode file offset 0x294e8"
!ObjectLoader methodsFor: 'recovered'!
relinkObjects: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadingReplacer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) relinkArray: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) loadingReplacer: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) relinkObjects: (recoveredStack1).
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

"cfsnls.ic method 0x20006598; bytecode file offset 0x297d4"
!ObjectLoader methodsFor: 'recovered'!
checkIfString: recoveredArg1 andClass: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) eswIsBehavior.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x20006b14; bytecode file offset 0x29d60"
!ObjectLoader methodsFor: 'recovered'!
whenFinishedMutateInstancesOf: recoveredArg1 into: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := mutationTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := EswMutationRequest.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue2) from: (recoveredValue3) into: (recoveredValue4).
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue5).
    recoveredValue6 := MutationWasNecessary.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) name.
    recoveredValue9 := (recoveredValue8) asString.
    (self) generateWarning: (recoveredValue6) forObject: (recoveredValue9).
    ^self
! !

"cfsnls.ic method 0x20006c28; bytecode file offset 0x29e78"
!ObjectLoader methodsFor: 'recovered'!
copyStatusFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) currentError.
    (self) currentError: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) errorObject.
    (self) errorObject: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) warnedObjects.
    (self) warnedObjects: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) warnings.
    (self) warnings: (recoveredValue7).
    ^self
! !

"cfsnls.ic method 0x20006ea4; bytecode file offset 0x2a0f0"
!ObjectLoader methodsFor: 'recovered'!
initializeWarnings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeWarnings.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) warnings.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) warnings: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) warnedObjects.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) warnedObjects: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000755c; bytecode file offset 0x2a7a8"
!ObjectLoader methodsFor: 'recovered'!
loadAfterHeader
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadedHeader.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isForNonSpecialRoot.
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
            recoveredStack0 := (recoveredStack0) loadNonSpecialRoot.
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
            recoveredStack0 := (recoveredStack0) loadedHeader.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isForSpecialRoot.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadSpecialRoot.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := InvalidObjectStream.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateError: (recoveredStack1) forObject: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x200075a0; bytecode file offset 0x2a800"
!ObjectLoader methodsFor: 'recovered'!
validateSegmentsWithByteArraysSaving: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EsMemorySegment.
    recoveredValue1 := (self) memorySegments.
    recoveredValue2 := (recoveredValue1) asArray.
    recoveredValue3 := (self) originalPlatformFlags.
    recoveredValue4 := Array.
    recoveredValue5 := EswRootArray.
    recoveredValue6 := (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := EswByteObjectMissingEncoding.
    recoveredValue9 := EswPointerObjectMissingEncoding.
    recoveredValue10 := (self) classEncoder.
    recoveredValue11 := (recoveredValue10) encodedClasses.
    recoveredValue12 := (recoveredValue0) createObjectsFromBytes: (recoveredValue2) originalPlatformFlags: (recoveredValue3) classesFixup: (recoveredValue6) copyInstances: (recoveredValue7) variableByteFixup: (recoveredValue8) variablePointerFixup: (recoveredValue9) encodedClasses: (recoveredValue11).
    ^recoveredValue12
! !

"cfsnls.ic method 0x200077b8; bytecode file offset 0x2a9fc"
!ObjectLoader methodsFor: 'recovered'!
requestedNewlyLoadedInstances
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadedHeader.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOldFormat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) requestedNewlyLoadedInstances.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) extractedInstances.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x200079e0; bytecode file offset 0x2ac28"
!ObjectLoader methodsFor: 'recovered'!
loadSmallInteger
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) swappingStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) dumpIntegerSize.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) next: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) eswIntelLongAt: (recoveredStack1).
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
            recoveredStack1 := 2147483647.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 4294967296.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x200083e0; bytecode file offset 0x2b638"
!ObjectLoader methodsFor: 'recovered'!
initializeWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super initializeWith: (recoveredValue0).
    (self) initializeLoadingReplacer.
    recoveredValue1 := (self) swappingStrategy.
    recoveredValue2 := (recoveredValue1) defaultSize.
    (self) initializeMutationTable: (recoveredValue2).
    (self) initializeOldLoader.
    recoveredValue3 := (self) swappingStrategy.
    recoveredValue4 := (recoveredValue3) defaultSize.
    (self) initializeReplacementTable: (recoveredValue4).
    (self) initializeLoadedHeader.
    (self) initializeClassEncoder.
    ^self
! !

"cfsnls.ic method 0x20008848; bytecode file offset 0x2baa8"
!ObjectLoader methodsFor: 'recovered'!
remapClassReference: recoveredArg1 toClass: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) checkIfString: (recoveredStack1) andClass: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadingReplacer.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) remapClassReference: (recoveredStack2) toClass: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) loadingReplacer: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) remapClassReference: (recoveredStack1) toClass: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20008864; bytecode file offset 0x2baa8"
!ObjectLoader methodsFor: 'recovered'!
addMutatedClassNamed: recoveredArg1 newClass: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) checkIfString: (recoveredStack1) andClass: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadingReplacer.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) addMutatedClassNamed: (recoveredStack2) newClass: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) loadingReplacer: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) addMutatedClassNamed: (recoveredStack1) newClass: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20008940; bytecode file offset 0x2bb88"
!ObjectLoader methodsFor: 'recovered'!
extractExtraInstancesFromTable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := instOfClassesToBeLoaded.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) class.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack4 := 0.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) atRemembering: (recoveredBlock5Stack3) ifAbsentReturn: (recoveredBlock5Stack4).
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack3 := 0.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            (recoveredBlock5Stack2 == recoveredBlock5Stack3) ifTrue: [recoveredBlock5PC := 36] ifFalse: [recoveredBlock5PC := 28].
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) extractedInstances.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) at: (recoveredBlock5Stack2).
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) add: (recoveredBlock5Stack2).
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x200089a0; bytecode file offset 0x2bbe0"
!ObjectLoader methodsFor: 'recovered'!
checkArrayOfClasses: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) eswIsBehavior.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 35] ifFalse: [recoveredBlock19PC := 32].
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack1 := false.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            ^recoveredBlock19Stack1
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x2000929c; bytecode file offset 0x2c4f0"
!ObjectLoader methodsFor: 'recovered'!
loadFromFile: recoveredArg1 atOffset: recoveredArg2 errorStream: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) errorStream: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) checkOffset: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) openReadOnly: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := ErrorOpeningStream.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) generateError: (recoveredStack1) forObject: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadFromFileHandle: (recoveredStack1) atOffset: (recoveredStack2) errorStream: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x200095ac; bytecode file offset 0x2c800"
!ObjectLoader methodsFor: 'recovered'!
processLoadedSegments
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) resetForReplacedObjects.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) fixClassFieldsOfLoadedObjects.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) fixLoadedObjects.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := mutationTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := mutationTable.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
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
            recoveredStack0 := (recoveredStack0) mutateIncompatibleInstances.
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
            recoveredStack0 := (recoveredStack0) needToExtractInstances.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) extractInstancesIncluding: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) extractedInstances: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000960c; bytecode file offset 0x2c864"
!ObjectLoader methodsFor: 'recovered'!
loadHeader
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := (self) loadedHeader.
    recoveredBlock4Value1 := (self) swappingStream.
    recoveredBlock4Value2 := (recoveredBlock4Value0) initializeFromStream: (recoveredBlock4Value1).
    recoveredBlock4Value3 := recoveredBlock4Value2.
    recoveredLocal1 := recoveredBlock4Value3.
    recoveredBlock4Value2
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := [:block28004838Arg1 | 
    | block28004838Value0 block28004838Value1 |
    block28004838Value0 := block28004838Arg1.
    block28004838Value1 := (block28004838Value0) exitWith: (nil).
    block28004838Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := InvalidObjectStream.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateError: (recoveredStack2) forObject: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadedHeader: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20009b00; bytecode file offset 0x2cd48"
!ObjectLoader methodsFor: 'recovered'!
fixLoadedObjects
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := loadingReplacer.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := replacementTable.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) computeReplacementsIn: (recoveredStack2) registeringIn: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 14] ifFalse: [recoveredLocal2 := nil. recoveredPC := 41]] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := replacementTable.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegments.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) multiBecomeIn: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20009b54; bytecode file offset 0x2cda0"
!ObjectLoader methodsFor: 'recovered'!
extractInstancesFromLoadedSegments
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memorySegments.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := [:recoveredBlock5Block13Arg1 | 
    | recoveredBlock5Block13Local1 recoveredBlock5Block13Stack0 recoveredBlock5Block13Stack1 recoveredBlock5Block13Stack2 recoveredBlock5Block13Stack3 recoveredBlock5Block13Stack4 recoveredBlock5Block13Stack5 recoveredBlock5Block13PC recoveredBlock5Block13Step recoveredBlock5Block13Done recoveredBlock5Block13Result |
    recoveredBlock5Block13Stack0 := self.
    recoveredBlock5Block13PC := 20.
    recoveredBlock5Block13Done := false.
    [recoveredBlock5Block13Done not] whileTrue: [
        recoveredBlock5Block13Step := recoveredBlock5Block13PC.
        recoveredBlock5Block13Step = 20 ifTrue: [
            recoveredBlock5Block13Stack1 := nil.
            recoveredBlock5Block13PC := 21.
        ].
        recoveredBlock5Block13Step = 21 ifTrue: [
            recoveredBlock5Block13Stack2 := instOfClassesToBeLoaded.
            recoveredBlock5Block13PC := 23.
        ].
        recoveredBlock5Block13Step = 23 ifTrue: [
            recoveredBlock5Block13Stack3 := recoveredBlock5Block13Arg1.
            recoveredBlock5Block13PC := 24.
        ].
        recoveredBlock5Block13Step = 24 ifTrue: [
            recoveredBlock5Block13Stack3 := (recoveredBlock5Block13Stack3) class.
            recoveredBlock5Block13PC := 25.
        ].
        recoveredBlock5Block13Step = 25 ifTrue: [
            recoveredBlock5Block13Stack4 := 0.
            recoveredBlock5Block13PC := 27.
        ].
        recoveredBlock5Block13Step = 27 ifTrue: [
            recoveredBlock5Block13Stack2 := (recoveredBlock5Block13Stack2) atRemembering: (recoveredBlock5Block13Stack3) ifAbsentReturn: (recoveredBlock5Block13Stack4).
            recoveredBlock5Block13PC := 29.
        ].
        recoveredBlock5Block13Step = 29 ifTrue: [
            recoveredBlock5Block13Stack3 := recoveredBlock5Block13Stack2.
            recoveredBlock5Block13PC := 30.
        ].
        recoveredBlock5Block13Step = 30 ifTrue: [
            recoveredBlock5Block13Local1 := recoveredBlock5Block13Stack3.
            recoveredBlock5Block13PC := 31.
        ].
        recoveredBlock5Block13Step = 31 ifTrue: [
            recoveredBlock5Block13Stack3 := 0.
            recoveredBlock5Block13PC := 33.
        ].
        recoveredBlock5Block13Step = 33 ifTrue: [
            (recoveredBlock5Block13Stack2 == recoveredBlock5Block13Stack3) ifTrue: [recoveredBlock5Block13PC := 45] ifFalse: [recoveredBlock5Block13PC := 36].
        ].
        recoveredBlock5Block13Step = 36 ifTrue: [
            recoveredBlock5Block13PC := 37.
        ].
        recoveredBlock5Block13Step = 37 ifTrue: [
            recoveredBlock5Block13Stack1 := self.
            recoveredBlock5Block13PC := 38.
        ].
        recoveredBlock5Block13Step = 38 ifTrue: [
            recoveredBlock5Block13Stack1 := (recoveredBlock5Block13Stack1) extractedInstances.
            recoveredBlock5Block13PC := 39.
        ].
        recoveredBlock5Block13Step = 39 ifTrue: [
            recoveredBlock5Block13Stack2 := recoveredBlock5Block13Local1.
            recoveredBlock5Block13PC := 40.
        ].
        recoveredBlock5Block13Step = 40 ifTrue: [
            recoveredBlock5Block13Stack1 := (recoveredBlock5Block13Stack1) at: (recoveredBlock5Block13Stack2).
            recoveredBlock5Block13PC := 42.
        ].
        recoveredBlock5Block13Step = 42 ifTrue: [
            recoveredBlock5Block13Stack2 := recoveredBlock5Block13Arg1.
            recoveredBlock5Block13PC := 43.
        ].
        recoveredBlock5Block13Step = 43 ifTrue: [
            recoveredBlock5Block13Stack1 := (recoveredBlock5Block13Stack1) add: (recoveredBlock5Block13Stack2).
            recoveredBlock5Block13PC := 45.
        ].
        recoveredBlock5Block13Step = 45 ifTrue: [
            recoveredBlock5Block13Result := recoveredBlock5Block13Stack1.
            recoveredBlock5Block13Done := true.
        ].
    ].
    recoveredBlock5Block13Result
].
    recoveredBlock5Value2 := (recoveredBlock5Value0) do: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x20009fb8; bytecode file offset 0x2d1f8"
!ObjectLoader methodsFor: 'recovered'!
loadFromByteObjects: recoveredArg1 offsetsIntoByteObjects: recoveredArg2 errorStream: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := [
    (self) interruptBlock: (nil).
    ^false
].
    (self) interruptBlock: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) checkByteArrays: (recoveredValue1) andOffsets: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg3.
    (self) errorStream: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (self) loadRootFromByteObjects: (recoveredValue5) offsetsIntoByteObjects: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    (self) interruptBlock: (nil).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"cfsnls.ic method 0x2000a5ac; bytecode file offset 0x2d800"
!ObjectLoader methodsFor: 'recovered'!
extractInstancesOfClasses: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            instOfClassesToBeLoaded := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 49.
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
            recoveredStack1 := (recoveredStack1) checkArrayOfClasses: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := EswCachedIdentityDictionary.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            instOfClassesToBeLoaded := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 :recoveredBlock30Arg2 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 |
    recoveredBlock30Value0 := instOfClassesToBeLoaded.
    recoveredBlock30Value1 := recoveredBlock30Arg1.
    recoveredBlock30Value2 := recoveredBlock30Arg2.
    recoveredBlock30Value3 := (recoveredBlock30Value0) at: (recoveredBlock30Value1) put: (recoveredBlock30Value2).
    recoveredBlock30Value3
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) extractedInstances: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) extractInstancesOfClasses: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000aa8c; bytecode file offset 0x2dce8"
!ObjectLoader methodsFor: 'recovered'!
loadSpecialRoot
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Object.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := (self) swappingStrategy.
    recoveredBlock10Value1 := (self) loadByte.
    recoveredBlock10Value2 := (recoveredBlock10Value0) loadSpecialRootObjectOfClassCode: (recoveredBlock10Value1).
    recoveredBlock10Value3 := recoveredBlock10Value2.
    recoveredLocal2 := recoveredBlock10Value3.
    recoveredBlock10Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := recoveredLocal1.
    recoveredBlock28Value2 := (recoveredBlock28Value0) exitWith: (recoveredBlock28Value1).
    recoveredBlock28Value2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := ReadError.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) swappingStream.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateError: (recoveredStack2) forObject: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x2000af8c; bytecode file offset 0x2e1f8"
!ObjectLoader methodsFor: 'recovered'!
initializeClassEncoder
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EswClassEncoderForLoading.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) maxNumberOfInternalEncodedClasses.
    recoveredValue3 := (recoveredValue0) forSwapper: (self) initialSize: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) initialGroupOfEncodedClasses.
    (recoveredValue4) registerAll: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) class.
    recoveredValue8 := (recoveredValue7) maxNumberOfInternalEncodedClasses.
    (recoveredValue6) reserveUpTo: (recoveredValue8).
    recoveredValue9 := (self) classEncoder: (recoveredValue3).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := (self) swappingStrategy.
    recoveredValue11 := (recoveredValue10) knownClasses.
    recoveredValue12 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Local1 recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) classForName: (recoveredBlock32Stack1).
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Stack0.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack1.
            recoveredBlock32PC := 43.
        ].
        recoveredBlock32Step = 43 ifTrue: [
            (recoveredBlock32Stack0 ~~ nil) ifTrue: [recoveredBlock32PC := 56] ifFalse: [recoveredBlock32PC := 46].
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32Stack0 := self.
            recoveredBlock32PC := 47.
        ].
        recoveredBlock32Step = 47 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) classEncoder.
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack1 := 1.
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) reserve: (recoveredBlock32Stack1).
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32PC := 62.
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32Stack0 := self.
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 57 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) classEncoder.
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local1.
            recoveredBlock32PC := 60.
        ].
        recoveredBlock32Step = 60 ifTrue: [
            recoveredBlock32Stack0 := (recoveredBlock32Stack0) register: (recoveredBlock32Stack1).
            recoveredBlock32PC := 62.
        ].
        recoveredBlock32Step = 62 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack0.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"cfsnls.ic method 0x2000b160; bytecode file offset 0x2e3b0"
!ObjectLoader methodsFor: 'recovered'!
skip: recoveredArg1 inStream: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg2.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) size.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) > (recoveredBlock4Stack2).
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 22] ifFalse: [recoveredBlock4PC := 31].
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := SeekError.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg2.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) generateError: (recoveredBlock4Stack2) forObject: (recoveredBlock4Stack3).
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg2.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            (recoveredBlock4Stack1) skip: (recoveredBlock4Stack2).
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := [:block28004910Arg1 | 
    | block28004910Value0 block28004910Value1 |
    block28004910Value0 := block28004910Arg1.
    block28004910Value1 := (block28004910Value0) exitWith: (nil).
    block28004910Value1
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := SeekError.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateError: (recoveredStack2) forObject: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000b8d0; bytecode file offset 0x2eb20"
!ObjectLoader methodsFor: 'recovered'!
root
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphRoot.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegments.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextObject: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := replacementTable.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) entry: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphRoot: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphRoot: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphRoot: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000bcc8; bytecode file offset 0x2ef30"
!ObjectLoader methodsFor: 'recovered'!
extractInstancesIncluding: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := instOfClassesToBeLoaded.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 20] ifFalse: [recoveredLocal1 := nil. recoveredPC := 42]] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) extractedInstances: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) extractInstancesFromLoadedSegments.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) replacementTable.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) extractExtraInstancesFromTable: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) extractExtraInstancesFromTable: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) extractedInstances.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := [:block280049c4Arg1 | 
    | block280049c4Value0 block280049c4Value1 |
    block280049c4Value0 := block280049c4Arg1.
    block280049c4Value1 := (block280049c4Value0) asArray.
    block280049c4Value1
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) extractedInstances: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000bdd0; bytecode file offset 0x2f038"
!ObjectLoader methodsFor: 'recovered'!
loadNextMemorySegmentUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) swapperSubheader.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) swappingStream.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeFromStream: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ReadError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) swappingStream.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateError: (recoveredStack1) forObject: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) segmentSize.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 20.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) newMemorySegmentOfSize: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) addSegment: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) segmentSize.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) newByteArray: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) swappingStream.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) segmentSize.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) next: (recoveredStack1) into: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) crcValue.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) crcValue.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := WrongChecksum.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateError: (recoveredStack1) forObject: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLastSegment.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000d6f4; bytecode file offset 0x30954"
!ObjectLoader methodsFor: 'recovered'!
fixClassFieldsOfLoadedObjects
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstObject.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNormalObjectForDumping.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) unmarkForReplacement.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := loadingReplacer.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadingReplacementFor: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := replacementTable.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := Class.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextObjectAfter: (recoveredStack2) withClass: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal4 isInteger]) ifTrue: [(recoveredLocal4 + 1 <= recoveredStack0) ifTrue: [recoveredLocal4 := recoveredLocal4 + 1. recoveredPC := 16] ifFalse: [recoveredLocal4 := nil. recoveredPC := 84]] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := replacementTable.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegments.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) multiBecomeClassSlotsIn: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000d8c8; bytecode file offset 0x30b40"
!ObjectLoader methodsFor: 'recovered'!
loadNonSpecialRoot
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) graphRoot: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) initializeMemorySegments.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredLocal3.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) loadNextMemorySegmentUsing: (recoveredBlock16Stack2).
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 30] ifFalse: [recoveredBlock16PC := 22].
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack0.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:block28004a78Arg1 | 
    | block28004a78Value0 block28004a78Value1 |
    block28004a78Value0 := block28004a78Arg1.
    block28004a78Value1 := (block28004a78Value0) exitWith: (nil).
    block28004a78Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := ReadError.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) swappingStream.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateError: (recoveredStack1) forObject: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) validateSegmentsWithByteArraysSaving: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) processLoadedSegments.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) finishedLoading.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000f4f4; bytecode file offset 0x32750"
!ObjectLoader methodsFor: 'recovered'!
mutateIncompatibleInstances
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) memorySegments.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := [:recoveredBlock5Block13Arg1 | 
    | recoveredBlock5Block13Local1 recoveredBlock5Block13Local2 recoveredBlock5Block13Stack0 recoveredBlock5Block13Stack1 recoveredBlock5Block13Stack2 recoveredBlock5Block13Stack3 recoveredBlock5Block13Stack4 recoveredBlock5Block13Stack5 recoveredBlock5Block13PC recoveredBlock5Block13Step recoveredBlock5Block13Done recoveredBlock5Block13Result |
    recoveredBlock5Block13Stack0 := self.
    recoveredBlock5Block13PC := 20.
    recoveredBlock5Block13Done := false.
    [recoveredBlock5Block13Done not] whileTrue: [
        recoveredBlock5Block13Step := recoveredBlock5Block13PC.
        recoveredBlock5Block13Step = 20 ifTrue: [
            recoveredBlock5Block13Stack1 := recoveredBlock5Block13Arg1.
            recoveredBlock5Block13PC := 21.
        ].
        recoveredBlock5Block13Step = 21 ifTrue: [
            recoveredBlock5Block13Stack1 := (recoveredBlock5Block13Stack1) class.
            recoveredBlock5Block13PC := 22.
        ].
        recoveredBlock5Block13Step = 22 ifTrue: [
            recoveredBlock5Block13Local2 := recoveredBlock5Block13Stack1.
            recoveredBlock5Block13PC := 23.
        ].
        recoveredBlock5Block13Step = 23 ifTrue: [
            recoveredBlock5Block13Stack1 := nil.
            recoveredBlock5Block13PC := 24.
        ].
        recoveredBlock5Block13Step = 24 ifTrue: [
            recoveredBlock5Block13Stack2 := mutationTable.
            recoveredBlock5Block13PC := 26.
        ].
        recoveredBlock5Block13Step = 26 ifTrue: [
            recoveredBlock5Block13Stack3 := recoveredBlock5Block13Local2.
            recoveredBlock5Block13PC := 27.
        ].
        recoveredBlock5Block13Step = 27 ifTrue: [
            recoveredBlock5Block13Stack4 := nil.
            recoveredBlock5Block13PC := 28.
        ].
        recoveredBlock5Block13Step = 28 ifTrue: [
            recoveredBlock5Block13Stack2 := (recoveredBlock5Block13Stack2) atRemembering: (recoveredBlock5Block13Stack3) ifAbsentReturn: (recoveredBlock5Block13Stack4).
            recoveredBlock5Block13PC := 30.
        ].
        recoveredBlock5Block13Step = 30 ifTrue: [
            recoveredBlock5Block13Stack3 := recoveredBlock5Block13Stack2.
            recoveredBlock5Block13PC := 31.
        ].
        recoveredBlock5Block13Step = 31 ifTrue: [
            recoveredBlock5Block13Local1 := recoveredBlock5Block13Stack3.
            recoveredBlock5Block13PC := 32.
        ].
        recoveredBlock5Block13Step = 32 ifTrue: [
            (recoveredBlock5Block13Stack2 == nil) ifTrue: [recoveredBlock5Block13PC := 40] ifFalse: [recoveredBlock5Block13PC := 36].
        ].
        recoveredBlock5Block13Step = 36 ifTrue: [
            recoveredBlock5Block13PC := 37.
        ].
        recoveredBlock5Block13Step = 37 ifTrue: [
            recoveredBlock5Block13Stack1 := recoveredBlock5Block13Local1.
            recoveredBlock5Block13PC := 38.
        ].
        recoveredBlock5Block13Step = 38 ifTrue: [
            recoveredBlock5Block13Stack2 := recoveredBlock5Block13Arg1.
            recoveredBlock5Block13PC := 39.
        ].
        recoveredBlock5Block13Step = 39 ifTrue: [
            recoveredBlock5Block13Stack1 := (recoveredBlock5Block13Stack1) addInstanceForMutation: (recoveredBlock5Block13Stack2).
            recoveredBlock5Block13PC := 40.
        ].
        recoveredBlock5Block13Step = 40 ifTrue: [
            recoveredBlock5Block13Result := recoveredBlock5Block13Stack1.
            recoveredBlock5Block13Done := true.
        ].
    ].
    recoveredBlock5Block13Result
].
    recoveredBlock5Value2 := (recoveredBlock5Value0) do: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := mutationTable.
    recoveredValue3 := (self) finalMutationTableFrom: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (self) multiBecomeUsingTable: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [:recoveredBlock63Arg1 :recoveredBlock63Arg2 | 
    | recoveredBlock63Local1 recoveredBlock63Local2 recoveredBlock63Stack0 recoveredBlock63Stack1 recoveredBlock63Stack2 recoveredBlock63Stack3 recoveredBlock63Stack4 recoveredBlock63Stack5 recoveredBlock63PC recoveredBlock63Step recoveredBlock63Done recoveredBlock63Result |
    recoveredBlock63Stack0 := self.
    recoveredBlock63PC := 70.
    recoveredBlock63Done := false.
    [recoveredBlock63Done not] whileTrue: [
        recoveredBlock63Step := recoveredBlock63PC.
        recoveredBlock63Step = 70 ifTrue: [
            recoveredBlock63Stack1 := 0.
            recoveredBlock63PC := 72.
        ].
        recoveredBlock63Step = 72 ifTrue: [
            recoveredBlock63Local2 := recoveredBlock63Stack1.
            recoveredBlock63PC := 73.
        ].
        recoveredBlock63Step = 73 ifTrue: [
            recoveredBlock63Stack1 := recoveredBlock63Arg2.
            recoveredBlock63PC := 74.
        ].
        recoveredBlock63Step = 74 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) numberOfPointerFields.
            recoveredBlock63PC := 76.
        ].
        recoveredBlock63Step = 76 ifTrue: [
            recoveredBlock63PC := 107.
        ].
        recoveredBlock63Step = 80 ifTrue: [
            recoveredBlock63Stack2 := recoveredLocal1.
            recoveredBlock63PC := 83.
        ].
        recoveredBlock63Step = 83 ifTrue: [
            recoveredBlock63Stack3 := recoveredBlock63Arg2.
            recoveredBlock63PC := 84.
        ].
        recoveredBlock63Step = 84 ifTrue: [
            recoveredBlock63Stack4 := recoveredBlock63Local2.
            recoveredBlock63PC := 85.
        ].
        recoveredBlock63Step = 85 ifTrue: [
            recoveredBlock63Stack3 := (recoveredBlock63Stack3) instVarAt: (recoveredBlock63Stack4).
            recoveredBlock63PC := 87.
        ].
        recoveredBlock63Step = 87 ifTrue: [
            recoveredBlock63Stack4 := recoveredLocal1.
            recoveredBlock63PC := 90.
        ].
        recoveredBlock63Step = 90 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) atRemembering: (recoveredBlock63Stack3) ifAbsentReturn: (recoveredBlock63Stack4).
            recoveredBlock63PC := 92.
        ].
        recoveredBlock63Step = 92 ifTrue: [
            recoveredBlock63Stack3 := recoveredBlock63Stack2.
            recoveredBlock63PC := 93.
        ].
        recoveredBlock63Step = 93 ifTrue: [
            recoveredBlock63Local1 := recoveredBlock63Stack3.
            recoveredBlock63PC := 94.
        ].
        recoveredBlock63Step = 94 ifTrue: [
            recoveredBlock63Stack3 := recoveredLocal1.
            recoveredBlock63PC := 97.
        ].
        recoveredBlock63Step = 97 ifTrue: [
            (recoveredBlock63Stack2 == recoveredBlock63Stack3) ifTrue: [recoveredBlock63PC := 105] ifFalse: [recoveredBlock63PC := 100].
        ].
        recoveredBlock63Step = 100 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Arg2.
            recoveredBlock63PC := 101.
        ].
        recoveredBlock63Step = 101 ifTrue: [
            recoveredBlock63Stack3 := recoveredBlock63Local2.
            recoveredBlock63PC := 102.
        ].
        recoveredBlock63Step = 102 ifTrue: [
            recoveredBlock63Stack4 := recoveredBlock63Local1.
            recoveredBlock63PC := 103.
        ].
        recoveredBlock63Step = 103 ifTrue: [
            (recoveredBlock63Stack2) instVarAt: (recoveredBlock63Stack3) put: (recoveredBlock63Stack4).
            recoveredBlock63PC := 105.
        ].
        recoveredBlock63Step = 105 ifTrue: [
            recoveredBlock63Stack2 := nil.
            recoveredBlock63PC := 106.
        ].
        recoveredBlock63Step = 106 ifTrue: [
            recoveredBlock63Local1 := recoveredBlock63Stack2.
            recoveredBlock63PC := 107.
        ].
        recoveredBlock63Step = 107 ifTrue: [
            (recoveredBlock63Stack1 isInteger and: [recoveredBlock63Local2 isInteger]) ifTrue: [(recoveredBlock63Local2 + 1 <= recoveredBlock63Stack1) ifTrue: [recoveredBlock63Local2 := recoveredBlock63Local2 + 1. recoveredBlock63PC := 80] ifFalse: [recoveredBlock63Local2 := nil. recoveredBlock63PC := 121]] ifFalse: [recoveredBlock63PC := 111].
        ].
        recoveredBlock63Step = 111 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Stack1.
            recoveredBlock63PC := 112.
        ].
        recoveredBlock63Step = 112 ifTrue: [
            recoveredBlock63Stack3 := recoveredBlock63Local2.
            recoveredBlock63PC := 113.
        ].
        recoveredBlock63Step = 113 ifTrue: [
            recoveredBlock63Stack3 := (recoveredBlock63Stack3) + (1).
            recoveredBlock63PC := 114.
        ].
        recoveredBlock63Step = 114 ifTrue: [
            recoveredBlock63Stack4 := recoveredBlock63Stack3.
            recoveredBlock63PC := 115.
        ].
        recoveredBlock63Step = 115 ifTrue: [
            recoveredBlock63Local2 := recoveredBlock63Stack4.
            recoveredBlock63PC := 116.
        ].
        recoveredBlock63Step = 116 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) < (recoveredBlock63Stack3).
            recoveredBlock63PC := 117.
        ].
        recoveredBlock63Step = 117 ifTrue: [
            (recoveredBlock63Stack2) ifTrue: [recoveredBlock63PC := 119] ifFalse: [recoveredBlock63PC := 80].
        ].
        recoveredBlock63Step = 119 ifTrue: [
            recoveredBlock63Stack2 := nil.
            recoveredBlock63PC := 120.
        ].
        recoveredBlock63Step = 120 ifTrue: [
            recoveredBlock63Local2 := recoveredBlock63Stack2.
            recoveredBlock63PC := 121.
        ].
        recoveredBlock63Step = 121 ifTrue: [
            recoveredBlock63Result := recoveredBlock63Stack1.
            recoveredBlock63Done := true.
        ].
    ].
    recoveredBlock63Result
].
    (recoveredValue5) keysAndValuesDo: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"cfsnls.ic method 0x200103a4; bytecode file offset 0x3362c"
!ObjectLoader methodsFor: 'recovered'!
loadFromFileHandle: recoveredArg1 atOffset: recoveredArg2 errorStream: recoveredArg3
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
            (recoveredStack0) errorStream: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := CfsFileStream.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack3 := recoveredArg1.
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) on: (recoveredBlock9Stack3).
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Stack2.
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredLocal2 := recoveredBlock9Stack3.
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) isCfsError.
            recoveredBlock9PC := 28.
        ].
        recoveredBlock9Step = 28 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 32] ifFalse: [recoveredBlock9PC := 43].
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9PC := 33.
        ].
        recoveredBlock9Step = 33 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Stack2 := InvalidFileHandle.
            recoveredBlock9PC := 36.
        ].
        recoveredBlock9Step = 36 ifTrue: [
            recoveredBlock9Stack3 := recoveredArg1.
            recoveredBlock9PC := 39.
        ].
        recoveredBlock9Step = 39 ifTrue: [
            (recoveredBlock9Stack1) generateError: (recoveredBlock9Stack2) forObject: (recoveredBlock9Stack3).
            recoveredBlock9PC := 41.
        ].
        recoveredBlock9Step = 41 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 42.
        ].
        recoveredBlock9Step = 42 ifTrue: [
            ^recoveredBlock9Stack1
        ].
        recoveredBlock9Step = 43 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 |
    recoveredLocal2 := nil.
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := (recoveredBlock46Value0) exitWith: (nil).
    recoveredBlock46Value1
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := InvalidFileHandle.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) generateError: (recoveredStack1) forObject: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) isBytes: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := [
    (self) interruptBlock: (nil).
    ^nil
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) interruptBlock: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) checkOffset: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := (recoveredStack3) position.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) skip: (recoveredStack2) inStream: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) swappingStream: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) load.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadedHeader.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOldFormat.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := CfsConstants.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := 'SEEKSET'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) lseek: (recoveredStack1) whence: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20010e90; bytecode file offset 0x34124"
!ObjectLoader methodsFor: 'recovered'!
load
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) initializeForLoading.
    recoveredValue0 := [
    (self) interruptBlock: (nil).
    ^nil
].
    (self) interruptBlock: (recoveredValue0).
    recoveredValue1 := [
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) loadHeader.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredLocal2 := recoveredBlock21Stack0.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack0 := recoveredLocal2.
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) isOldFormat.
            recoveredBlock21PC := 36.
        ].
        recoveredBlock21Step = 36 ifTrue: [
            (recoveredBlock21Stack0) ifTrue: [recoveredBlock21PC := 40] ifFalse: [recoveredBlock21PC := 116].
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) oldLoader.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            (recoveredBlock21Stack0 ~~ nil) ifTrue: [recoveredBlock21PC := 55] ifFalse: [recoveredBlock21PC := 46].
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 47.
        ].
        recoveredBlock21Step = 47 ifTrue: [
            recoveredBlock21Stack1 := OldFormatWithoutLoader.
            recoveredBlock21PC := 49.
        ].
        recoveredBlock21Step = 49 ifTrue: [
            recoveredBlock21Stack2 := recoveredLocal2.
            recoveredBlock21PC := 52.
        ].
        recoveredBlock21Step = 52 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) generateError: (recoveredBlock21Stack1) forObject: (recoveredBlock21Stack2).
            recoveredBlock21PC := 54.
        ].
        recoveredBlock21Step = 54 ifTrue: [
            ^recoveredBlock21Stack0
        ].
        recoveredBlock21Step = 55 ifTrue: [
            recoveredBlock21Stack0 := [
    | recoveredBlock21Block55Value0 recoveredBlock21Block55Value1 recoveredBlock21Block55Value2 recoveredBlock21Block55Value3 recoveredBlock21Block55Value4 |
    recoveredBlock21Block55Value0 := (self) swappingStream.
    recoveredBlock21Block55Value1 := recoveredBlock21Block55Value0.
    recoveredBlock21Block55Value2 := recoveredLocal2.
    recoveredBlock21Block55Value3 := (recoveredBlock21Block55Value2) size.
    recoveredBlock21Block55Value4 := (recoveredBlock21Block55Value3) negated.
    (recoveredBlock21Block55Value1) skip: (recoveredBlock21Block55Value4).
    recoveredBlock21Block55Value0
].
            recoveredBlock21PC := 75.
        ].
        recoveredBlock21Step = 75 ifTrue: [
            recoveredBlock21Stack1 := ExError.
            recoveredBlock21PC := 77.
        ].
        recoveredBlock21Step = 77 ifTrue: [
            recoveredBlock21Stack2 := [:block28004d00Arg1 | 
    | block28004d00Value0 block28004d00Value1 |
    block28004d00Value0 := block28004d00Arg1.
    block28004d00Value1 := (block28004d00Value0) exitWith: (nil).
    block28004d00Value1
].
            recoveredBlock21PC := 79.
        ].
        recoveredBlock21Step = 79 ifTrue: [
            recoveredBlock21PC := 87.
        ].
        recoveredBlock21Step = 87 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) when: (recoveredBlock21Stack1) do: (recoveredBlock21Stack2).
            recoveredBlock21PC := 89.
        ].
        recoveredBlock21Step = 89 ifTrue: [
            (recoveredBlock21Stack0 ~~ nil) ifTrue: [recoveredBlock21PC := 101] ifFalse: [recoveredBlock21PC := 92].
        ].
        recoveredBlock21Step = 92 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 93.
        ].
        recoveredBlock21Step = 93 ifTrue: [
            recoveredBlock21Stack1 := SeekError.
            recoveredBlock21PC := 95.
        ].
        recoveredBlock21Step = 95 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 96.
        ].
        recoveredBlock21Step = 96 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) swappingStream.
            recoveredBlock21PC := 98.
        ].
        recoveredBlock21Step = 98 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) generateError: (recoveredBlock21Stack1) forObject: (recoveredBlock21Stack2).
            recoveredBlock21PC := 100.
        ].
        recoveredBlock21Step = 100 ifTrue: [
            ^recoveredBlock21Stack0
        ].
        recoveredBlock21Step = 101 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 102.
        ].
        recoveredBlock21Step = 102 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) loadWithOldLoader.
            recoveredBlock21PC := 104.
        ].
        recoveredBlock21Step = 104 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack0.
            recoveredBlock21PC := 107.
        ].
        recoveredBlock21Step = 107 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 108.
        ].
        recoveredBlock21Step = 108 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 109.
        ].
        recoveredBlock21Step = 109 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) oldLoader.
            recoveredBlock21PC := 111.
        ].
        recoveredBlock21Step = 111 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) copyStatusFrom: (recoveredBlock21Stack1).
            recoveredBlock21PC := 113.
        ].
        recoveredBlock21Step = 113 ifTrue: [
            recoveredBlock21PC := 144.
        ].
        recoveredBlock21Step = 116 ifTrue: [
            recoveredBlock21Stack0 := recoveredLocal2.
            recoveredBlock21PC := 119.
        ].
        recoveredBlock21Step = 119 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) subheaderSize.
            recoveredBlock21PC := 121.
        ].
        recoveredBlock21Step = 121 ifTrue: [
            recoveredBlock21Stack1 := EswSubheader.
            recoveredBlock21PC := 123.
        ].
        recoveredBlock21Step = 123 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) standardSize.
            recoveredBlock21PC := 125.
        ].
        recoveredBlock21Step = 125 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) ~= (recoveredBlock21Stack1).
            recoveredBlock21PC := 126.
        ].
        recoveredBlock21Step = 126 ifTrue: [
            (recoveredBlock21Stack0) ifTrue: [recoveredBlock21PC := 130] ifFalse: [recoveredBlock21PC := 137].
        ].
        recoveredBlock21Step = 130 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 131.
        ].
        recoveredBlock21Step = 131 ifTrue: [
            recoveredBlock21Stack1 := InvalidObjectStream.
            recoveredBlock21PC := 133.
        ].
        recoveredBlock21Step = 133 ifTrue: [
            recoveredBlock21Stack2 := nil.
            recoveredBlock21PC := 134.
        ].
        recoveredBlock21Step = 134 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) generateError: (recoveredBlock21Stack1) forObject: (recoveredBlock21Stack2).
            recoveredBlock21PC := 136.
        ].
        recoveredBlock21Step = 136 ifTrue: [
            ^recoveredBlock21Stack0
        ].
        recoveredBlock21Step = 137 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 138.
        ].
        recoveredBlock21Step = 138 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) loadAfterHeader.
            recoveredBlock21PC := 140.
        ].
        recoveredBlock21Step = 140 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Stack0.
            recoveredBlock21PC := 141.
        ].
        recoveredBlock21Step = 141 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 144.
        ].
        recoveredBlock21Step = 144 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack0.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    recoveredValue2 := ExError.
    recoveredValue3 := [:recoveredBlock147Arg1 | 
    | recoveredBlock147Value0 recoveredBlock147Value1 recoveredBlock147Value2 |
    (self) interruptBlock: (nil).
    recoveredBlock147Value0 := InternalError.
    (self) generateError: (recoveredBlock147Value0) forObject: (self).
    recoveredBlock147Value1 := recoveredBlock147Arg1.
    recoveredBlock147Value2 := (recoveredBlock147Value1) signal.
    recoveredBlock147Value2
].
    (recoveredValue1) when: (recoveredValue2) do: (recoveredValue3).
    (self) interruptBlock: (nil).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"cfsnls.ic method 0x200112b0; bytecode file offset 0x3452c"
!ObjectLoader methodsFor: 'recovered'!
loadRootFromByteObjects: recoveredArg1 offsetsIntoByteObjects: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initializeForLoading.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := Object.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := EswStreamOnByteArrays.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2) offsets: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) swappingStream: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock25Value0 |
    recoveredBlock25Value0 := (self) loadHeader.
    recoveredBlock25Value0
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := ExCLDTIndexOutOfRange.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := recoveredLocal2.
    recoveredBlock37Value2 := (recoveredBlock37Value0) exitWith: (recoveredBlock37Value1).
    recoveredBlock37Value2
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := ByteArrayOverflow.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateError: (recoveredStack1) forObject: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOldFormat.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := OldFormatWithoutLoader.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateError: (recoveredStack1) forObject: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) oldLoader.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) errorStream.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadFromByteObjects: (recoveredStack1) offsetsIntoByteObjects: (recoveredStack2) errorStream: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) oldLoader.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) copyStatusFrom: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock126Value0 |
    recoveredBlock126Value0 := (self) loadAfterHeader.
    recoveredBlock126Value0
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := ExCLDTIndexOutOfRange.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := [:recoveredBlock137Arg1 | 
    | recoveredBlock137Value0 recoveredBlock137Value1 recoveredBlock137Value2 |
    recoveredBlock137Value0 := recoveredBlock137Arg1.
    recoveredBlock137Value1 := recoveredLocal2.
    recoveredBlock137Value2 := (recoveredBlock137Value0) exitWith: (recoveredBlock137Value1).
    recoveredBlock137Value2
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := ByteArrayOverflow.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) generateError: (recoveredStack1) forObject: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x200133cc; bytecode file offset 0x36660"
!ObjectLoader methodsFor: 'recovered'!
finalMutationTableFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) loadedFormat.
    recoveredValue1 := (recoveredValue0) == (1025).
    recoveredLocal1 := recoveredValue1.
    recoveredLocal2 := 0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 |
    recoveredBlock20Value0 := recoveredLocal2.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (recoveredBlock20Value1) instancesForMutation.
    recoveredBlock20Value3 := (recoveredBlock20Value2) size.
    recoveredBlock20Value4 := (recoveredBlock20Value0) + (recoveredBlock20Value3).
    recoveredBlock20Value5 := recoveredBlock20Value4.
    recoveredLocal2 := recoveredBlock20Value5.
    recoveredBlock20Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := EswCachedIdentityDictionary.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) * (11).
    recoveredValue7 := (recoveredValue6) // (10).
    recoveredValue8 := (recoveredValue4) new: (recoveredValue7).
    recoveredLocal3 := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := [:recoveredBlock59Arg1 :recoveredBlock59Arg2 | 
    | recoveredBlock59Local1 recoveredBlock59Local2 recoveredBlock59Local3 recoveredBlock59Local4 recoveredBlock59Local5 recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59Stack4 recoveredBlock59Stack5 recoveredBlock59Stack6 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Arg2.
            recoveredBlock59PC := 69.
        ].
        recoveredBlock59Step = 69 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) instancesForMutation.
            recoveredBlock59PC := 70.
        ].
        recoveredBlock59Step = 70 ifTrue: [
            recoveredBlock59Local5 := recoveredBlock59Stack1.
            recoveredBlock59PC := 73.
        ].
        recoveredBlock59Step = 73 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 74.
        ].
        recoveredBlock59Step = 74 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Local5.
            recoveredBlock59PC := 77.
        ].
        recoveredBlock59Step = 77 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) isEmpty.
            recoveredBlock59PC := 79.
        ].
        recoveredBlock59Step = 79 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 253] ifFalse: [recoveredBlock59PC := 82].
        ].
        recoveredBlock59Step = 82 ifTrue: [
            recoveredBlock59PC := 83.
        ].
        recoveredBlock59Step = 83 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal1.
            recoveredBlock59PC := 86.
        ].
        recoveredBlock59Step = 86 ifTrue: [
            (recoveredBlock59Stack1) ifTrue: [recoveredBlock59PC := 90] ifFalse: [recoveredBlock59PC := 104].
        ].
        recoveredBlock59Step = 90 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Arg2.
            recoveredBlock59PC := 93.
        ].
        recoveredBlock59Step = 93 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) originalClass.
            recoveredBlock59PC := 95.
        ].
        recoveredBlock59Step = 95 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) allInstVarNames.
            recoveredBlock59PC := 97.
        ].
        recoveredBlock59Step = 97 ifTrue: [
            recoveredBlock59Local2 := recoveredBlock59Stack1.
            recoveredBlock59PC := 100.
        ].
        recoveredBlock59Step = 100 ifTrue: [
            recoveredBlock59PC := 114.
        ].
        recoveredBlock59Step = 104 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Arg2.
            recoveredBlock59PC := 107.
        ].
        recoveredBlock59Step = 107 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) originalClass.
            recoveredBlock59PC := 109.
        ].
        recoveredBlock59Step = 109 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) eswInstVarNames.
            recoveredBlock59PC := 111.
        ].
        recoveredBlock59Step = 111 ifTrue: [
            recoveredBlock59Local2 := recoveredBlock59Stack1.
            recoveredBlock59PC := 114.
        ].
        recoveredBlock59Step = 114 ifTrue: [
            recoveredBlock59Stack1 := Dictionary.
            recoveredBlock59PC := 116.
        ].
        recoveredBlock59Step = 116 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Local2.
            recoveredBlock59PC := 119.
        ].
        recoveredBlock59Step = 119 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) size.
            recoveredBlock59PC := 120.
        ].
        recoveredBlock59Step = 120 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) new: (recoveredBlock59Stack2).
            recoveredBlock59PC := 122.
        ].
        recoveredBlock59Step = 122 ifTrue: [
            recoveredBlock59Local3 := recoveredBlock59Stack1.
            recoveredBlock59PC := 125.
        ].
        recoveredBlock59Step = 125 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Local2.
            recoveredBlock59PC := 128.
        ].
        recoveredBlock59Step = 128 ifTrue: [
            recoveredBlock59Stack2 := [:recoveredBlock59Block128Arg1 :recoveredBlock59Block128Arg2 | 
    | recoveredBlock59Block128Value0 recoveredBlock59Block128Value1 recoveredBlock59Block128Value2 recoveredBlock59Block128Value3 |
    recoveredBlock59Block128Value0 := recoveredBlock59Local3.
    recoveredBlock59Block128Value1 := recoveredBlock59Block128Arg1.
    recoveredBlock59Block128Value2 := recoveredBlock59Block128Arg2.
    recoveredBlock59Block128Value3 := (recoveredBlock59Block128Value0) at: (recoveredBlock59Block128Value1) put: (recoveredBlock59Block128Value2).
    recoveredBlock59Block128Value3
].
            recoveredBlock59PC := 142.
        ].
        recoveredBlock59Step = 142 ifTrue: [
            (recoveredBlock59Stack1) doWithIndex: (recoveredBlock59Stack2).
            recoveredBlock59PC := 144.
        ].
        recoveredBlock59Step = 144 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Arg2.
            recoveredBlock59PC := 147.
        ].
        recoveredBlock59Step = 147 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) originalClass.
            recoveredBlock59PC := 149.
        ].
        recoveredBlock59Step = 149 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) isPointers.
            recoveredBlock59PC := 151.
        ].
        recoveredBlock59Step = 151 ifTrue: [
            (recoveredBlock59Stack1) ifTrue: [recoveredBlock59PC := 154] ifFalse: [recoveredBlock59PC := 170].
        ].
        recoveredBlock59Step = 154 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Local5.
            recoveredBlock59PC := 157.
        ].
        recoveredBlock59Step = 157 ifTrue: [
            recoveredBlock59Stack2 := [:block28004dfcArg1 | 
    | block28004dfcValue0 block28004dfcValue1 block28004dfcValue2 |
    block28004dfcValue0 := Array.
    block28004dfcValue1 := block28004dfcArg1.
    block28004dfcValue2 := (block28004dfcValue0) becomeClassOf: (block28004dfcValue1).
    block28004dfcValue2
].
            recoveredBlock59PC := 159.
        ].
        recoveredBlock59Step = 159 ifTrue: [
            recoveredBlock59PC := 168.
        ].
        recoveredBlock59Step = 168 ifTrue: [
            (recoveredBlock59Stack1) do: (recoveredBlock59Stack2).
            recoveredBlock59PC := 170.
        ].
        recoveredBlock59Step = 170 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Arg2.
            recoveredBlock59PC := 173.
        ].
        recoveredBlock59Step = 173 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) newClass.
            recoveredBlock59PC := 175.
        ].
        recoveredBlock59Step = 175 ifTrue: [
            recoveredBlock59Local1 := recoveredBlock59Stack1.
            recoveredBlock59PC := 178.
        ].
        recoveredBlock59Step = 178 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Local1.
            recoveredBlock59PC := 181.
        ].
        recoveredBlock59Step = 181 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Local5.
            recoveredBlock59PC := 184.
        ].
        recoveredBlock59Step = 184 ifTrue: [
            recoveredBlock59Stack3 := self.
            recoveredBlock59PC := 185.
        ].
        recoveredBlock59Step = 185 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) objectPlatform.
            recoveredBlock59PC := 187.
        ].
        recoveredBlock59Step = 187 ifTrue: [
            recoveredBlock59Stack4 := recoveredBlock59Arg1.
            recoveredBlock59PC := 190.
        ].
        recoveredBlock59Step = 190 ifTrue: [
            recoveredBlock59Stack4 := (recoveredBlock59Stack4) name.
            recoveredBlock59PC := 192.
        ].
        recoveredBlock59Step = 192 ifTrue: [
            recoveredBlock59Stack5 := recoveredBlock59Local3.
            recoveredBlock59PC := 195.
        ].
        recoveredBlock59Step = 195 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) mutateObjects: (recoveredBlock59Stack2) fromPlatform: (recoveredBlock59Stack3) named: (recoveredBlock59Stack4) withDefinition: (recoveredBlock59Stack5).
            recoveredBlock59PC := 198.
        ].
        recoveredBlock59Step = 198 ifTrue: [
            recoveredBlock59Local4 := recoveredBlock59Stack1.
            recoveredBlock59PC := 201.
        ].
        recoveredBlock59Step = 201 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Local4.
            recoveredBlock59PC := 204.
        ].
        recoveredBlock59Step = 204 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Local5.
            recoveredBlock59PC := 207.
        ].
        recoveredBlock59Step = 207 ifTrue: [
            (recoveredBlock59Stack1 ~~ recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 229] ifFalse: [recoveredBlock59PC := 210].
        ].
        recoveredBlock59Step = 210 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal1.
            recoveredBlock59PC := 213.
        ].
        recoveredBlock59Step = 213 ifTrue: [
            (recoveredBlock59Stack1) ifTrue: [recoveredBlock59PC := 216] ifFalse: [recoveredBlock59PC := 229].
        ].
        recoveredBlock59Step = 216 ifTrue: [
            recoveredBlock59Stack1 := self.
            recoveredBlock59PC := 217.
        ].
        recoveredBlock59Step = 217 ifTrue: [
            recoveredBlock59Stack2 := MutationNotPerformed.
            recoveredBlock59PC := 219.
        ].
        recoveredBlock59Step = 219 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Arg2.
            recoveredBlock59PC := 222.
        ].
        recoveredBlock59Step = 222 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) originalClass.
            recoveredBlock59PC := 224.
        ].
        recoveredBlock59Step = 224 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) name.
            recoveredBlock59PC := 226.
        ].
        recoveredBlock59Step = 226 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) generateError: (recoveredBlock59Stack2) forObject: (recoveredBlock59Stack3).
            recoveredBlock59PC := 228.
        ].
        recoveredBlock59Step = 228 ifTrue: [
            ^recoveredBlock59Stack1
        ].
        recoveredBlock59Step = 229 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Local5.
            recoveredBlock59PC := 232.
        ].
        recoveredBlock59Step = 232 ifTrue: [
            recoveredBlock59Stack2 := [:recoveredBlock59Block232Arg1 :recoveredBlock59Block232Arg2 | 
    | recoveredBlock59Block232Value0 recoveredBlock59Block232Value1 recoveredBlock59Block232Value2 recoveredBlock59Block232Value3 recoveredBlock59Block232Value4 recoveredBlock59Block232Value5 |
    recoveredBlock59Block232Value0 := recoveredLocal3.
    recoveredBlock59Block232Value1 := recoveredBlock59Block232Arg1.
    recoveredBlock59Block232Value2 := recoveredBlock59Local4.
    recoveredBlock59Block232Value3 := recoveredBlock59Block232Arg2.
    recoveredBlock59Block232Value4 := (recoveredBlock59Block232Value2) at: (recoveredBlock59Block232Value3).
    recoveredBlock59Block232Value5 := (recoveredBlock59Block232Value0) at: (recoveredBlock59Block232Value1) put: (recoveredBlock59Block232Value4).
    recoveredBlock59Block232Value5
].
            recoveredBlock59PC := 251.
        ].
        recoveredBlock59Step = 251 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) doWithIndex: (recoveredBlock59Stack2).
            recoveredBlock59PC := 253.
        ].
        recoveredBlock59Step = 253 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
    (recoveredValue9) keysAndValuesDo: (recoveredValue10).
    recoveredValue11 := recoveredLocal3.
    ^recoveredValue11
! !

