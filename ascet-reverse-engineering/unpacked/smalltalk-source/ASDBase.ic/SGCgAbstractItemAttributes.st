"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200045e0; bytecode file offset 0x90206c"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
printErrLabelOn: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20068efc; bytecode file offset 0x965b90"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
memoryClass
    | recoveredValue0 |
    recoveredValue0 := memoryClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069ee0; bytecode file offset 0x966bdc"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
memoryClassReference
    | recoveredValue0 |
    recoveredValue0 := memoryClassReference.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aadc; bytecode file offset 0x967a18"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
memorySegment
    | recoveredValue0 |
    recoveredValue0 := memorySegment.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bc28; bytecode file offset 0x96873c"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
resolvedMemoryClassOrNil
    | recoveredValue0 |
    recoveredValue0 := resolvedMemoryClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c5cc; bytecode file offset 0x9692b0"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
resolvedMemorySegment
    | recoveredValue0 |
    recoveredValue0 := resolvedMemorySegment.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007a37c; bytecode file offset 0x97c330"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
isCgAttrRedundantDataSlave
    ^false
! !

"ASDBase.ic method 0x2008d254; bytecode file offset 0x989db0"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
resetPropagatedMemory
    | recoveredValue0 |
    recoveredValue0 := (self) memorySegment.
    (self) resolvedMemorySegment: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d494; bytecode file offset 0x989db0"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
initMemoryClassReference
    | recoveredValue0 |
    recoveredValue0 := (self) defaultMemoryClass.
    (self) memoryClassReference: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008f4a0; bytecode file offset 0x98bd60"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
hasResolvedMemorySegmentAutomatic
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) resolvedMemorySegment.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) resolvedMemorySegmentAutomatic.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a289c; bytecode file offset 0x99f158"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
memoryClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := StringPool.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) get: (recoveredValue1).
    memoryClass := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200a28b8; bytecode file offset 0x99f174"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
memoryClassReference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := StringPool.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) get: (recoveredValue1).
    memoryClassReference := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200c1ffc; bytecode file offset 0x9beac8"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
memorySegment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    memorySegment := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2a28; bytecode file offset 0x9bf474"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
resolvedMemoryClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resolvedMemoryClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2c0c; bytecode file offset 0x9bfde0"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
resolvedMemorySegment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resolvedMemorySegment := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f2d30; bytecode file offset 0x9ef5f4"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
prepareMemoryClassForArguments
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) memoryClass.
    (self) memoryClassReference: (recoveredValue0).
    recoveredValue1 := (self) defaultMemoryClass.
    (self) memoryClass: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2010cc3c; bytecode file offset 0xa094f4"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
resolvedMemoryClassIfAbsentDo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := resolvedMemoryClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := resolvedMemoryClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20162724; bytecode file offset 0xa5eff0"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := (self) defaultMemoryClass.
    (self) memoryClass: (recoveredValue0).
    recoveredValue1 := (self) defaultMemorySegment.
    (self) memorySegment: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201d67d4; bytecode file offset 0xad3094"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
resolvedMemoryClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := resolvedMemoryClass.
    recoveredBlock4Value1 := (recoveredBlock4Value0) notNil.
    recoveredBlock4Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    'Memory class should have been resolved!!'
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := resolvedMemoryClass.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040b4e0; bytecode file offset 0xd07dd4"
!SGCgAbstractItemAttributes methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) printErrLabelOn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) nextPutAll: ('   memoryClass: ').
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) memoryClass.
    recoveredValue7 := (recoveredValue6) asString.
    (recoveredValue5) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) nextPutAll: ('   memoryClassReference: ').
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := (self) memoryClassReference.
    recoveredValue12 := (recoveredValue11) asString.
    (recoveredValue10) nextPutAll: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) cr.
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) nextPutAll: ('   memorySegment: ').
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := (self) memorySegment.
    recoveredValue17 := (recoveredValue16) asString.
    (recoveredValue15) nextPutAll: (recoveredValue17).
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) cr.
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) nextPutAll: ('   resolvedMemoryClass: ').
    recoveredValue20 := recoveredValue2.
    recoveredValue21 := (self) resolvedMemoryClassOrNil.
    recoveredValue22 := (recoveredValue21) asString.
    (recoveredValue20) nextPutAll: (recoveredValue22).
    recoveredValue23 := recoveredValue2.
    (recoveredValue23) cr.
    recoveredValue24 := recoveredValue2.
    (recoveredValue24) nextPutAll: ('   resolvedMemorySegment: ').
    recoveredValue25 := recoveredValue2.
    recoveredValue26 := (self) resolvedMemorySegment.
    recoveredValue27 := (recoveredValue26) asString.
    (recoveredValue25) nextPutAll: (recoveredValue27).
    ^self
! !

