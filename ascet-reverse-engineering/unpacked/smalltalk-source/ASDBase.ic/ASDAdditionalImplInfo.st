"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003ae08; bytecode file offset 0x938608"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005ff70; bytecode file offset 0x95c824"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
initAttributes
    attributes := 0.
    ^self
! !

"ASDBase.ic method 0x2006628c; bytecode file offset 0x963428"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
memoryLocationReference
    | recoveredValue0 |
    recoveredValue0 := memoryLocationReference.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067a34; bytecode file offset 0x9646f8"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
memoryLocationInstance
    | recoveredValue0 |
    recoveredValue0 := memoryLocationInstance.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069294; bytecode file offset 0x965b90"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
memoryLocationSearchResult
    | recoveredValue0 |
    recoveredValue0 := memoryLocationSearchResult.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b004; bytecode file offset 0x967a18"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
index
    | recoveredValue0 |
    recoveredValue0 := index.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ba88; bytecode file offset 0x96873c"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
policy
    | recoveredValue0 |
    recoveredValue0 := policy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e6e4; bytecode file offset 0x98b0bc"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
isCacheAutomatic
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) memorySegmentID.
    recoveredValue1 := TGPlatform.
    recoveredValue2 := (recoveredValue1) memorySegmentIDAutomatic.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e734; bytecode file offset 0x98b0bc"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
isCacheOff
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) memorySegmentID.
    recoveredValue1 := TGPlatform.
    recoveredValue2 := (recoveredValue1) memorySegmentIDOff.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e7ac; bytecode file offset 0x98b0bc"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
isCacheOn
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) memorySegmentID.
    recoveredValue1 := TGPlatform.
    recoveredValue2 := (recoveredValue1) memorySegmentIDOn.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bdd7c; bytecode file offset 0x9bb178"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
memoryLocationReference: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    memoryLocationReference := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bee50; bytecode file offset 0x9bc0b4"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
memoryLocationInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    memoryLocationInstance := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfb84; bytecode file offset 0x9bd228"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
memoryLocationSearchResult: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    memoryLocationSearchResult := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0f18; bytecode file offset 0x9bdf14"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1ab4; bytecode file offset 0x9beac8"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
index: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    index := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2428; bytecode file offset 0x9bf474"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
policy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    policy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2ccc; bytecode file offset 0x9bfde0"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
memorySegmentID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    memorySegmentID := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20105ca0; bytecode file offset 0xa02570"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
attributes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := attributes.
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
            (recoveredStack1) initAttributes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := attributes.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20163418; bytecode file offset 0xa5fcd8"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
memorySegmentID
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := memorySegmentID.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := TGPlatform.
    recoveredBlock6Value1 := (recoveredBlock6Value0) memorySegmentIDAutomatic.
    ^recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := memorySegmentID.
    ^recoveredValue2
! !

"ASDBase.ic method 0x202307a0; bytecode file offset 0xb2d07c"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    (self) initAttributes.
    recoveredValue0 := SGExtraImplInfo.
    recoveredValue1 := (recoveredValue0) memoryClassDefault.
    (self) memoryLocationInstance: (recoveredValue1).
    recoveredValue2 := SGExtraImplInfo.
    recoveredValue3 := (recoveredValue2) memoryClassReferenceDefault.
    (self) memoryLocationReference: (recoveredValue3).
    recoveredValue4 := SGExtraImplInfo.
    recoveredValue5 := (recoveredValue4) memoryLocationSearchResultDefault.
    (self) memoryLocationSearchResult: (recoveredValue5).
    recoveredValue6 := SGExtraImplInfo.
    recoveredValue7 := (recoveredValue6) policyDefault.
    (self) policy: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20323628; bytecode file offset 0xc1fef4"
!ASDAdditionalImplInfo methodsFor: 'recovered'!
convertToASDV621
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := memorySegmentID.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := TGPlatform.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegmentIDAutomatic.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            memorySegmentID := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 4096.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := TGPlatform.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegmentIDOff.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            memorySegmentID := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 2048.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := TGPlatform.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegmentIDOn.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            memorySegmentID := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

