"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000108; bytecode file offset 0x23338"
!ObjectSwapper methodsFor: 'recovered'!
includeInstVarNames: recoveredArg1
    ^self
! !

"cfsnls.ic method 0x20000128; bytecode file offset 0x23404"
!ObjectSwapper methodsFor: 'recovered'!
initializeSwappingStrategy
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000170; bytecode file offset 0x23404"
!ObjectSwapper methodsFor: 'recovered'!
cleanupAfterError
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000c4c; bytecode file offset 0x23f54"
!ObjectSwapper methodsFor: 'recovered'!
supportedPlatforms
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) supportedPlatforms.
    ^recoveredValue1
! !

"cfsnls.ic method 0x20000ccc; bytecode file offset 0x23f54"
!ObjectSwapper methodsFor: 'recovered'!
initialGroupOfEncodedClasses
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) initialGroupOfEncodedClasses.
    ^recoveredValue1
! !

"cfsnls.ic method 0x20000cfc; bytecode file offset 0x23f54"
!ObjectSwapper methodsFor: 'recovered'!
versionNumber
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) versionNumber.
    ^recoveredValue1
! !

"cfsnls.ic method 0x20000ec4; bytecode file offset 0x2415c"
!ObjectSwapper methodsFor: 'recovered'!
errorCodes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"cfsnls.ic method 0x200018cc; bytecode file offset 0x24b00"
!ObjectSwapper methodsFor: 'recovered'!
hasErrorOccurred
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentError.
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x200019d4; bytecode file offset 0x24c64"
!ObjectSwapper methodsFor: 'recovered'!
currentError
    | recoveredValue0 |
    recoveredValue0 := currentError.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001a98; bytecode file offset 0x24d00"
!ObjectSwapper methodsFor: 'recovered'!
errorObject
    | recoveredValue0 |
    recoveredValue0 := errorObject.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001af4; bytecode file offset 0x24dac"
!ObjectSwapper methodsFor: 'recovered'!
errorStream
    | recoveredValue0 |
    recoveredValue0 := errorStream.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001bd8; bytecode file offset 0x24e10"
!ObjectSwapper methodsFor: 'recovered'!
warnedObjects
    | recoveredValue0 |
    recoveredValue0 := warnedObjects.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001c34; bytecode file offset 0x24e64"
!ObjectSwapper methodsFor: 'recovered'!
warnings
    | recoveredValue0 |
    recoveredValue0 := warnings.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001c48; bytecode file offset 0x24ea8"
!ObjectSwapper methodsFor: 'recovered'!
swappingStream
    | recoveredValue0 |
    recoveredValue0 := swappingStream.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001c94; bytecode file offset 0x24ee4"
!ObjectSwapper methodsFor: 'recovered'!
omittedObjects
    | recoveredValue0 |
    recoveredValue0 := omittedObjects.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001ce8; bytecode file offset 0x24f28"
!ObjectSwapper methodsFor: 'recovered'!
interruptBlock
    | recoveredValue0 |
    recoveredValue0 := interruptBlock.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001d24; bytecode file offset 0x24f6c"
!ObjectSwapper methodsFor: 'recovered'!
swappingStrategy
    | recoveredValue0 |
    recoveredValue0 := swappingStrategy.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001d50; bytecode file offset 0x24fa0"
!ObjectSwapper methodsFor: 'recovered'!
memorySegments
    | recoveredValue0 |
    recoveredValue0 := memorySegments.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001d9c; bytecode file offset 0x24fcc"
!ObjectSwapper methodsFor: 'recovered'!
classEncoder
    | recoveredValue0 |
    recoveredValue0 := classEncoder.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001db0; bytecode file offset 0x24fe8"
!ObjectSwapper methodsFor: 'recovered'!
swapperSubheader
    | recoveredValue0 |
    recoveredValue0 := swapperSubheader.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001ddc; bytecode file offset 0x2500c"
!ObjectSwapper methodsFor: 'recovered'!
graphRoot
    | recoveredValue0 |
    recoveredValue0 := graphRoot.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20002110; bytecode file offset 0x25340"
!ObjectSwapper methodsFor: 'recovered'!
dumpIntegerSize
    ^4
! !

"cfsnls.ic method 0x200021b0; bytecode file offset 0x25458"
!ObjectSwapper methodsFor: 'recovered'!
includeInstVarNames
    ^true
! !

"cfsnls.ic method 0x200023a8; bytecode file offset 0x256b0"
!ObjectSwapper methodsFor: 'recovered'!
messageStringFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := NlsCatESW.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) indexedMsg: (recoveredValue1).
    ^recoveredValue2
! !

"cfsnls.ic method 0x20002418; bytecode file offset 0x256b0"
!ObjectSwapper methodsFor: 'recovered'!
newMemorySegmentOfSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EsMemorySegment.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) newSegment: (recoveredValue1).
    ^recoveredValue2
! !

"cfsnls.ic method 0x20002698; bytecode file offset 0x258c8"
!ObjectSwapper methodsFor: 'recovered'!
graphRoot: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    graphRoot := recoveredValue1.
    ^recoveredValue0
! !

"cfsnls.ic method 0x2000292c; bytecode file offset 0x25b64"
!ObjectSwapper methodsFor: 'recovered'!
initializeSubheader
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EswSubheader.
    recoveredValue1 := (recoveredValue0) new.
    swapperSubheader := recoveredValue1.
    ^self
! !

"cfsnls.ic method 0x20002a4c; bytecode file offset 0x25c84"
!ObjectSwapper methodsFor: 'recovered'!
initializeObjectsToOmit
    (self) omittedObjects: (#()).
    ^self
! !

"cfsnls.ic method 0x200030dc; bytecode file offset 0x26318"
!ObjectSwapper methodsFor: 'recovered'!
loadWithOldLoader
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MissingBackwardsCompatibilityApp.
    recoveredValue1 := (self) swappingStream.
    recoveredValue2 := (self) generateError: (recoveredValue0) forObject: (recoveredValue1).
    ^recoveredValue2
! !

"cfsnls.ic method 0x200031a8; bytecode file offset 0x263e4"
!ObjectSwapper methodsFor: 'recovered'!
initializeMemorySegments
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) memorySegments: (recoveredValue1).
    ^self
! !

"cfsnls.ic method 0x20003be0; bytecode file offset 0x26e1c"
!ObjectSwapper methodsFor: 'recovered'!
classForName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) classAt: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"cfsnls.ic method 0x20003e60; bytecode file offset 0x270d8"
!ObjectSwapper methodsFor: 'recovered'!
currentError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentError := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20003ef4; bytecode file offset 0x27124"
!ObjectSwapper methodsFor: 'recovered'!
errorObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorObject := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20003f18; bytecode file offset 0x27170"
!ObjectSwapper methodsFor: 'recovered'!
errorStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorStream := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20003f5c; bytecode file offset 0x271c4"
!ObjectSwapper methodsFor: 'recovered'!
warnedObjects: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    warnedObjects := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20003fc0; bytecode file offset 0x27210"
!ObjectSwapper methodsFor: 'recovered'!
warnings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    warnings := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20003ffc; bytecode file offset 0x2723c"
!ObjectSwapper methodsFor: 'recovered'!
swappingStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    swappingStream := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20004028; bytecode file offset 0x27270"
!ObjectSwapper methodsFor: 'recovered'!
omittedObjects: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    omittedObjects := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20004098; bytecode file offset 0x272c8"
!ObjectSwapper methodsFor: 'recovered'!
swappingStrategy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    swappingStrategy := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x200040bc; bytecode file offset 0x272ec"
!ObjectSwapper methodsFor: 'recovered'!
memorySegments: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    memorySegments := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x200040d8; bytecode file offset 0x27318"
!ObjectSwapper methodsFor: 'recovered'!
classEncoder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    classEncoder := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x200043c4; bytecode file offset 0x27600"
!ObjectSwapper methodsFor: 'recovered'!
deleteSegmentsBeingProcessed
    | recoveredValue0 |
    recoveredValue0 := (self) memorySegments.
    (self) deleteSegments: (recoveredValue0).
    (self) initializeMemorySegments.
    ^self
! !

"cfsnls.ic method 0x200047a8; bytecode file offset 0x27a00"
!ObjectSwapper methodsFor: 'recovered'!
resetError
    (self) currentError: (0).
    (self) errorObject: (nil).
    ^self
! !

"cfsnls.ic method 0x20004d68; bytecode file offset 0x27fa4"
!ObjectSwapper methodsFor: 'recovered'!
generateWarning: recoveredArg1 forObject: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) warnedObjects.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := (self) warnings.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) add: (recoveredValue3).
    ^self
! !

"cfsnls.ic method 0x200050d8; bytecode file offset 0x28318"
!ObjectSwapper methodsFor: 'recovered'!
initializeWarnings
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) warnedObjects: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    (self) warnings: (recoveredValue3).
    ^self
! !

"cfsnls.ic method 0x20005424; bytecode file offset 0x28664"
!ObjectSwapper methodsFor: 'recovered'!
initializeFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) initializeSwappingStrategy.
    recoveredValue0 := (self) swappingStrategy.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) defaultSize: (recoveredValue1).
    recoveredValue2 := (self) swappingStrategy.
    (self) initializeWith: (recoveredValue2).
    ^self
! !

"cfsnls.ic method 0x200054a0; bytecode file offset 0x286f0"
!ObjectSwapper methodsFor: 'recovered'!
logMessage: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 16.
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

"cfsnls.ic method 0x20005950; bytecode file offset 0x28b80"
!ObjectSwapper methodsFor: 'recovered'!
interruptBlock: recoveredArg1
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := interruptBlock.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            interruptBlock := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20005e80; bytecode file offset 0x290c0"
!ObjectSwapper methodsFor: 'recovered'!
initializeWith: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    swappingStrategy := recoveredValue0.
    recoveredValue1 := swappingStrategy.
    (recoveredValue1) swapper: (self).
    (self) initializeObjectsToOmit.
    (self) resetError.
    (self) initializeSubheader.
    ^self
! !

"cfsnls.ic method 0x200064d0; bytecode file offset 0x29710"
!ObjectSwapper methodsFor: 'recovered'!
currentErrorString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentError.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := NlsCatESW.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := NoError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexedMsg: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := NlsCatESW.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentError.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexedMsg: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x200078e8; bytecode file offset 0x2ab24"
!ObjectSwapper methodsFor: 'recovered'!
checkOffset: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := InvalidOffset.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateError: (recoveredStack2) forObject: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := InvalidOffset.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateError: (recoveredStack2) forObject: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20007e6c; bytecode file offset 0x2b0b8"
!ObjectSwapper methodsFor: 'recovered'!
generateError: recoveredArg1 forObject: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interruptBlock.
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) currentError: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) errorObject: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentErrorString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) logMessage: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) cleanupAfterError.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x200084b4; bytecode file offset 0x2b6f0"
!ObjectSwapper methodsFor: 'recovered'!
deleteSegments: recoveredArg1
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) delete.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 35]] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x200149e8; bytecode file offset 0x37c60"
!ObjectSwapper methodsFor: 'recovered'!
checkByteArrays: recoveredArg1 andOffsets: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ByteArrayOverflow.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateError: (recoveredStack2) forObject: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := ByteArrayOverflow.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateError: (recoveredStack2) forObject: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44Stack4 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := nil.
            recoveredBlock44PC := 51.
        ].
        recoveredBlock44Step = 51 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 52.
        ].
        recoveredBlock44Step = 52 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) isValidBufferForSwapping.
            recoveredBlock44PC := 54.
        ].
        recoveredBlock44Step = 54 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 58] ifFalse: [recoveredBlock44PC := 72].
        ].
        recoveredBlock44Step = 58 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 59.
        ].
        recoveredBlock44Step = 59 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) notEmpty.
            recoveredBlock44PC := 61.
        ].
        recoveredBlock44Step = 61 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 64] ifFalse: [recoveredBlock44PC := 72].
        ].
        recoveredBlock44Step = 64 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 65.
        ].
        recoveredBlock44Step = 65 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) size.
            recoveredBlock44PC := 67.
        ].
        recoveredBlock44Step = 67 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) odd.
            recoveredBlock44PC := 69.
        ].
        recoveredBlock44Step = 69 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 72] ifFalse: [recoveredBlock44PC := 82].
        ].
        recoveredBlock44Step = 72 ifTrue: [
            recoveredBlock44PC := 73.
        ].
        recoveredBlock44Step = 73 ifTrue: [
            recoveredBlock44Stack1 := self.
            recoveredBlock44PC := 74.
        ].
        recoveredBlock44Step = 74 ifTrue: [
            recoveredBlock44Stack2 := ByteArrayOverflow.
            recoveredBlock44PC := 76.
        ].
        recoveredBlock44Step = 76 ifTrue: [
            recoveredBlock44Stack3 := recoveredArg1.
            recoveredBlock44PC := 79.
        ].
        recoveredBlock44Step = 79 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) generateError: (recoveredBlock44Stack2) forObject: (recoveredBlock44Stack3).
            recoveredBlock44PC := 81.
        ].
        recoveredBlock44Step = 81 ifTrue: [
            ^recoveredBlock44Stack1
        ].
        recoveredBlock44Step = 82 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := InvalidArrayOfOffsets.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateError: (recoveredStack2) forObject: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 141].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := InvalidArrayOfOffsets.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateError: (recoveredStack2) forObject: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) odd.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := [:recoveredBlock167Arg1 | 
    | recoveredBlock167Stack0 recoveredBlock167Stack1 recoveredBlock167Stack2 recoveredBlock167Stack3 recoveredBlock167Stack4 recoveredBlock167PC recoveredBlock167Step recoveredBlock167Done recoveredBlock167Result |
    recoveredBlock167Stack0 := self.
    recoveredBlock167PC := 174.
    recoveredBlock167Done := false.
    [recoveredBlock167Done not] whileTrue: [
        recoveredBlock167Step := recoveredBlock167PC.
        recoveredBlock167Step = 174 ifTrue: [
            recoveredBlock167Stack1 := recoveredLocal1.
            recoveredBlock167PC := 177.
        ].
        recoveredBlock167Step = 177 ifTrue: [
            recoveredBlock167Stack2 := recoveredBlock167Arg1.
            recoveredBlock167PC := 178.
        ].
        recoveredBlock167Step = 178 ifTrue: [
            recoveredBlock167Stack2 := (recoveredBlock167Stack2) size.
            recoveredBlock167PC := 180.
        ].
        recoveredBlock167Step = 180 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) > (recoveredBlock167Stack2).
            recoveredBlock167PC := 181.
        ].
        recoveredBlock167Step = 181 ifTrue: [
            (recoveredBlock167Stack1) ifTrue: [recoveredBlock167PC := 184] ifFalse: [recoveredBlock167PC := 193].
        ].
        recoveredBlock167Step = 184 ifTrue: [
            recoveredBlock167Stack1 := self.
            recoveredBlock167PC := 185.
        ].
        recoveredBlock167Step = 185 ifTrue: [
            recoveredBlock167Stack2 := InvalidArrayOfOffsets.
            recoveredBlock167PC := 187.
        ].
        recoveredBlock167Step = 187 ifTrue: [
            recoveredBlock167Stack3 := recoveredArg2.
            recoveredBlock167PC := 190.
        ].
        recoveredBlock167Step = 190 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) generateError: (recoveredBlock167Stack2) forObject: (recoveredBlock167Stack3).
            recoveredBlock167PC := 192.
        ].
        recoveredBlock167Step = 192 ifTrue: [
            ^recoveredBlock167Stack1
        ].
        recoveredBlock167Step = 193 ifTrue: [
            recoveredBlock167Stack1 := Array.
            recoveredBlock167PC := 195.
        ].
        recoveredBlock167Step = 195 ifTrue: [
            recoveredBlock167Stack2 := recoveredArg1.
            recoveredBlock167PC := 198.
        ].
        recoveredBlock167Step = 198 ifTrue: [
            recoveredBlock167Stack2 := (recoveredBlock167Stack2) size.
            recoveredBlock167PC := 200.
        ].
        recoveredBlock167Step = 200 ifTrue: [
            recoveredBlock167Stack1 := (recoveredBlock167Stack1) new: (recoveredBlock167Stack2).
            recoveredBlock167PC := 202.
        ].
        recoveredBlock167Step = 202 ifTrue: [
            recoveredBlock167Stack2 := recoveredBlock167Stack1.
            recoveredBlock167PC := 203.
        ].
        recoveredBlock167Step = 203 ifTrue: [
            recoveredBlock167Stack3 := recoveredLocal1.
            recoveredBlock167PC := 206.
        ].
        recoveredBlock167Step = 206 ifTrue: [
            (recoveredBlock167Stack2) atAllPut: (recoveredBlock167Stack3).
            recoveredBlock167PC := 208.
        ].
        recoveredBlock167Step = 208 ifTrue: [
            recoveredBlock167Stack2 := recoveredBlock167Stack1.
            recoveredBlock167PC := 209.
        ].
        recoveredBlock167Step = 209 ifTrue: [
            recoveredLocal2 := recoveredBlock167Stack2.
            recoveredBlock167PC := 212.
        ].
        recoveredBlock167Step = 212 ifTrue: [
            recoveredBlock167Result := recoveredBlock167Stack1.
            recoveredBlock167Done := true.
        ].
    ].
    recoveredBlock167Result
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredPC := 337.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 241].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := InvalidArrayOfOffsets.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateError: (recoveredStack2) forObject: (recoveredStack3).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := [:recoveredBlock252Arg1 :recoveredBlock252Arg2 | 
    | recoveredBlock252Local1 recoveredBlock252Stack0 recoveredBlock252Stack1 recoveredBlock252Stack2 recoveredBlock252Stack3 recoveredBlock252Stack4 recoveredBlock252Stack5 recoveredBlock252PC recoveredBlock252Step recoveredBlock252Done recoveredBlock252Result |
    recoveredBlock252Stack0 := self.
    recoveredBlock252PC := 258.
    recoveredBlock252Done := false.
    [recoveredBlock252Done not] whileTrue: [
        recoveredBlock252Step := recoveredBlock252PC.
        recoveredBlock252Step = 258 ifTrue: [
            recoveredBlock252Stack1 := recoveredBlock252Arg1.
            recoveredBlock252PC := 259.
        ].
        recoveredBlock252Step = 259 ifTrue: [
            recoveredBlock252Stack1 := (recoveredBlock252Stack1) isInteger.
            recoveredBlock252PC := 261.
        ].
        recoveredBlock252Step = 261 ifTrue: [
            (recoveredBlock252Stack1) ifTrue: [recoveredBlock252PC := 273] ifFalse: [recoveredBlock252PC := 264].
        ].
        recoveredBlock252Step = 264 ifTrue: [
            recoveredBlock252Stack1 := self.
            recoveredBlock252PC := 265.
        ].
        recoveredBlock252Step = 265 ifTrue: [
            recoveredBlock252Stack2 := InvalidArrayOfOffsets.
            recoveredBlock252PC := 267.
        ].
        recoveredBlock252Step = 267 ifTrue: [
            recoveredBlock252Stack3 := recoveredArg2.
            recoveredBlock252PC := 270.
        ].
        recoveredBlock252Step = 270 ifTrue: [
            recoveredBlock252Stack1 := (recoveredBlock252Stack1) generateError: (recoveredBlock252Stack2) forObject: (recoveredBlock252Stack3).
            recoveredBlock252PC := 272.
        ].
        recoveredBlock252Step = 272 ifTrue: [
            ^recoveredBlock252Stack1
        ].
        recoveredBlock252Step = 273 ifTrue: [
            recoveredBlock252Stack1 := recoveredBlock252Arg1.
            recoveredBlock252PC := 274.
        ].
        recoveredBlock252Step = 274 ifTrue: [
            recoveredBlock252Stack2 := 0.
            recoveredBlock252PC := 276.
        ].
        recoveredBlock252Step = 276 ifTrue: [
            recoveredBlock252Stack1 := (recoveredBlock252Stack1) < (recoveredBlock252Stack2).
            recoveredBlock252PC := 277.
        ].
        recoveredBlock252Step = 277 ifTrue: [
            (recoveredBlock252Stack1) ifTrue: [recoveredBlock252PC := 280] ifFalse: [recoveredBlock252PC := 289].
        ].
        recoveredBlock252Step = 280 ifTrue: [
            recoveredBlock252Stack1 := self.
            recoveredBlock252PC := 281.
        ].
        recoveredBlock252Step = 281 ifTrue: [
            recoveredBlock252Stack2 := InvalidArrayOfOffsets.
            recoveredBlock252PC := 283.
        ].
        recoveredBlock252Step = 283 ifTrue: [
            recoveredBlock252Stack3 := recoveredArg2.
            recoveredBlock252PC := 286.
        ].
        recoveredBlock252Step = 286 ifTrue: [
            recoveredBlock252Stack1 := (recoveredBlock252Stack1) generateError: (recoveredBlock252Stack2) forObject: (recoveredBlock252Stack3).
            recoveredBlock252PC := 288.
        ].
        recoveredBlock252Step = 288 ifTrue: [
            ^recoveredBlock252Stack1
        ].
        recoveredBlock252Step = 289 ifTrue: [
            recoveredBlock252Stack1 := recoveredBlock252Arg1.
            recoveredBlock252PC := 290.
        ].
        recoveredBlock252Step = 290 ifTrue: [
            recoveredBlock252Stack1 := (recoveredBlock252Stack1) odd.
            recoveredBlock252PC := 292.
        ].
        recoveredBlock252Step = 292 ifTrue: [
            (recoveredBlock252Stack1) ifTrue: [recoveredBlock252PC := 296] ifFalse: [recoveredBlock252PC := 308].
        ].
        recoveredBlock252Step = 296 ifTrue: [
            recoveredBlock252Stack1 := recoveredLocal2.
            recoveredBlock252PC := 299.
        ].
        recoveredBlock252Step = 299 ifTrue: [
            recoveredBlock252Stack2 := recoveredBlock252Arg2.
            recoveredBlock252PC := 300.
        ].
        recoveredBlock252Step = 300 ifTrue: [
            recoveredBlock252Stack3 := recoveredBlock252Arg1.
            recoveredBlock252PC := 301.
        ].
        recoveredBlock252Step = 301 ifTrue: [
            recoveredBlock252Stack3 := (recoveredBlock252Stack3) + (1).
            recoveredBlock252PC := 302.
        ].
        recoveredBlock252Step = 302 ifTrue: [
            recoveredBlock252Stack1 := (recoveredBlock252Stack1) at: (recoveredBlock252Stack2) put: (recoveredBlock252Stack3).
            recoveredBlock252PC := 304.
        ].
        recoveredBlock252Step = 304 ifTrue: [
            recoveredBlock252PC := 309.
        ].
        recoveredBlock252Step = 308 ifTrue: [
            recoveredBlock252Stack1 := recoveredBlock252Arg1.
            recoveredBlock252PC := 309.
        ].
        recoveredBlock252Step = 309 ifTrue: [
            recoveredBlock252Local1 := recoveredBlock252Stack1.
            recoveredBlock252PC := 310.
        ].
        recoveredBlock252Step = 310 ifTrue: [
            recoveredBlock252Stack1 := nil.
            recoveredBlock252PC := 311.
        ].
        recoveredBlock252Step = 311 ifTrue: [
            recoveredBlock252Stack2 := recoveredBlock252Local1.
            recoveredBlock252PC := 312.
        ].
        recoveredBlock252Step = 312 ifTrue: [
            recoveredBlock252Stack3 := recoveredArg1.
            recoveredBlock252PC := 315.
        ].
        recoveredBlock252Step = 315 ifTrue: [
            recoveredBlock252Stack4 := recoveredBlock252Arg2.
            recoveredBlock252PC := 316.
        ].
        recoveredBlock252Step = 316 ifTrue: [
            recoveredBlock252Stack3 := (recoveredBlock252Stack3) at: (recoveredBlock252Stack4).
            recoveredBlock252PC := 318.
        ].
        recoveredBlock252Step = 318 ifTrue: [
            recoveredBlock252Stack3 := (recoveredBlock252Stack3) size.
            recoveredBlock252PC := 320.
        ].
        recoveredBlock252Step = 320 ifTrue: [
            recoveredBlock252Stack2 := (recoveredBlock252Stack2) > (recoveredBlock252Stack3).
            recoveredBlock252PC := 321.
        ].
        recoveredBlock252Step = 321 ifTrue: [
            (recoveredBlock252Stack2) ifTrue: [recoveredBlock252PC := 324] ifFalse: [recoveredBlock252PC := 334].
        ].
        recoveredBlock252Step = 324 ifTrue: [
            recoveredBlock252PC := 325.
        ].
        recoveredBlock252Step = 325 ifTrue: [
            recoveredBlock252Stack1 := self.
            recoveredBlock252PC := 326.
        ].
        recoveredBlock252Step = 326 ifTrue: [
            recoveredBlock252Stack2 := InvalidArrayOfOffsets.
            recoveredBlock252PC := 328.
        ].
        recoveredBlock252Step = 328 ifTrue: [
            recoveredBlock252Stack3 := recoveredArg2.
            recoveredBlock252PC := 331.
        ].
        recoveredBlock252Step = 331 ifTrue: [
            recoveredBlock252Stack1 := (recoveredBlock252Stack1) generateError: (recoveredBlock252Stack2) forObject: (recoveredBlock252Stack3).
            recoveredBlock252PC := 333.
        ].
        recoveredBlock252Step = 333 ifTrue: [
            ^recoveredBlock252Stack1
        ].
        recoveredBlock252Step = 334 ifTrue: [
            recoveredBlock252Result := recoveredBlock252Stack1.
            recoveredBlock252Done := true.
        ].
    ].
    recoveredBlock252Result
].
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

