"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200415b8; bytecode file offset 0x93e1a0"
!DBCacheObject methodsFor: 'recovered'!
dbObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := object.
    recoveredValue1 := (recoveredValue0) dbObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d9ac; bytecode file offset 0x95a2b8"
!DBCacheObject methodsFor: 'recovered'!
setModified
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := object.
    recoveredValue1 := (recoveredValue0) dbObject.
    recoveredValue2 := (recoveredValue1) setModified.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d9bc; bytecode file offset 0x95a2b8"
!DBCacheObject methodsFor: 'recovered'!
isCommitted
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := object.
    recoveredValue1 := (recoveredValue0) dbObject.
    recoveredValue2 := (recoveredValue1) isCommitted.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d9cc; bytecode file offset 0x95a2b8"
!DBCacheObject methodsFor: 'recovered'!
isModified
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := object.
    recoveredValue1 := (recoveredValue0) dbObject.
    recoveredValue2 := (recoveredValue1) isModified.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d9ec; bytecode file offset 0x95a2b8"
!DBCacheObject methodsFor: 'recovered'!
isWritten
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := object.
    recoveredValue1 := (recoveredValue0) dbObject.
    recoveredValue2 := (recoveredValue1) isWritten.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d9fc; bytecode file offset 0x95a2b8"
!DBCacheObject methodsFor: 'recovered'!
setModify
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := object.
    recoveredValue1 := (recoveredValue0) dbObject.
    recoveredValue2 := (recoveredValue1) setModify.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20069520; bytecode file offset 0x966bdc"
!DBCacheObject methodsFor: 'recovered'!
object
    | recoveredValue0 |
    recoveredValue0 := object.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006afec; bytecode file offset 0x967a18"
!DBCacheObject methodsFor: 'recovered'!
bytes
    | recoveredValue0 |
    recoveredValue0 := bytes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bdd8; bytecode file offset 0x96873c"
!DBCacheObject methodsFor: 'recovered'!
referenceCount
    | recoveredValue0 |
    recoveredValue0 := referenceCount.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006befc; bytecode file offset 0x9692b0"
!DBCacheObject methodsFor: 'recovered'!
timeStamp
    | recoveredValue0 |
    recoveredValue0 := timeStamp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cab8; bytecode file offset 0x969c04"
!DBCacheObject methodsFor: 'recovered'!
linkObject
    | recoveredValue0 |
    recoveredValue0 := linkObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008b5b0; bytecode file offset 0x987e64"
!DBCacheObject methodsFor: 'recovered'!
decReferences
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := referenceCount.
    recoveredValue1 := (recoveredValue0) + (-1).
    referenceCount := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008b5c4; bytecode file offset 0x987e78"
!DBCacheObject methodsFor: 'recovered'!
incReferences
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := referenceCount.
    recoveredValue1 := (recoveredValue0) + (1).
    referenceCount := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2009e1a0; bytecode file offset 0x99aa54"
!DBCacheObject methodsFor: 'recovered'!
removeCacheValues
    bytes := nil.
    linkObject := nil.
    ^self
! !

"ASDBase.ic method 0x200c1518; bytecode file offset 0x9bdf14"
!DBCacheObject methodsFor: 'recovered'!
object: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    object := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c21a4; bytecode file offset 0x9beac8"
!DBCacheObject methodsFor: 'recovered'!
bytes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bytes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2318; bytecode file offset 0x9bf474"
!DBCacheObject methodsFor: 'recovered'!
referenceCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    referenceCount := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3324; bytecode file offset 0x9bfde0"
!DBCacheObject methodsFor: 'recovered'!
timeStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timeStamp := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c38d0; bytecode file offset 0x9c058c"
!DBCacheObject methodsFor: 'recovered'!
linkObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    linkObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d3570; bytecode file offset 0x9cfe24"
!DBCacheObject methodsFor: 'recovered'!
initializeInstances
    referenceCount := 0.
    timeStamp := 0.
    ^self
! !

"ASDBase.ic method 0x2013adf0; bytecode file offset 0xa376ac"
!DBCacheObject methodsFor: 'recovered'!
uniqueCacheKeyValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := object.
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
            recoveredStack1 := (recoveredStack1) uniqueKeyValue.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := object.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueKeyValue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2019fb48; bytecode file offset 0xa9c404"
!DBCacheObject methodsFor: 'recovered'!
isLockCache
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := object.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := object.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLockCache.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := object.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLockCache.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

