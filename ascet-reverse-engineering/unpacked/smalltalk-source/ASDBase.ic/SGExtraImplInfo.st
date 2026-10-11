"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002e30; bytecode file offset 0x8ffcfc"
!SGExtraImplInfo methodsFor: 'recovered'!
generateConstants
    ^self
! !

"ASDBase.ic method 0x20006d28; bytecode file offset 0x908be4"
!SGExtraImplInfo methodsFor: 'recovered'!
zeroNotIncluded
    | recoveredValue0 |
    recoveredValue0 := (self) setZeroNotIncluded.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007190; bytecode file offset 0x908be4"
!SGExtraImplInfo methodsFor: 'recovered'!
zeroIncluded
    | recoveredValue0 |
    recoveredValue0 := (self) clearZeroNotIncluded.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007778; bytecode file offset 0x908be4"
!SGExtraImplInfo methodsFor: 'recovered'!
limitOverflows
    | recoveredValue0 |
    recoveredValue0 := (self) setLimitOverflow.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007a54; bytecode file offset 0x908be4"
!SGExtraImplInfo methodsFor: 'recovered'!
memoryLocationInstance
    | recoveredValue0 |
    recoveredValue0 := (self) memoryClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007d6c; bytecode file offset 0x908be4"
!SGExtraImplInfo methodsFor: 'recovered'!
useLimiter
    | recoveredValue0 |
    recoveredValue0 := (self) clearUseLimiterBit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200089cc; bytecode file offset 0x908be4"
!SGExtraImplInfo methodsFor: 'recovered'!
dontLimitOverflows
    | recoveredValue0 |
    recoveredValue0 := (self) clearLimitOverflow.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008e1c; bytecode file offset 0x908be4"
!SGExtraImplInfo methodsFor: 'recovered'!
dontUseLimiter
    | recoveredValue0 |
    recoveredValue0 := (self) setUseLimiterBit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000aa48; bytecode file offset 0x908be4"
!SGExtraImplInfo methodsFor: 'recovered'!
memoryLocationReference
    | recoveredValue0 |
    recoveredValue0 := (self) memoryClassReference.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d7ec; bytecode file offset 0x90a4b8"
!SGExtraImplInfo methodsFor: 'recovered'!
write: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027a9c; bytecode file offset 0x92454c"
!SGExtraImplInfo methodsFor: 'recovered'!
limiterUsed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isUseLimiterBit.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a358; bytecode file offset 0x938608"
!SGExtraImplInfo methodsFor: 'recovered'!
xmlEquals: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) xmlGenericCompare: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ba44; bytecode file offset 0x938608"
!SGExtraImplInfo methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f0b8; bytecode file offset 0x93bf94"
!SGExtraImplInfo methodsFor: 'recovered'!
defaultMemorySegmentID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := TGPlatform.
    recoveredValue1 := (recoveredValue0) memorySegmentIDAutomatic.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060268; bytecode file offset 0x95cb20"
!SGExtraImplInfo methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    (self) checkAttributes.
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066554; bytecode file offset 0x963428"
!SGExtraImplInfo methodsFor: 'recovered'!
referencedImplTypeName
    | recoveredValue0 |
    recoveredValue0 := referencedImplTypeName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dcc0; bytecode file offset 0x96a9dc"
!SGExtraImplInfo methodsFor: 'recovered'!
fixAxisPar
    | recoveredValue0 |
    recoveredValue0 := fixAxisPar.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e53c; bytecode file offset 0x96af48"
!SGExtraImplInfo methodsFor: 'recovered'!
fixAxisParDist
    | recoveredValue0 |
    recoveredValue0 := fixAxisParDist.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e748; bytecode file offset 0x96b41c"
!SGExtraImplInfo methodsFor: 'recovered'!
deposit
    | recoveredValue0 |
    recoveredValue0 := deposit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071d10; bytecode file offset 0x96e60c"
!SGExtraImplInfo methodsFor: 'recovered'!
bitImplementationType
    ^128
! !

"ASDBase.ic method 0x20071dcc; bytecode file offset 0x96e680"
!SGExtraImplInfo methodsFor: 'recovered'!
bitReduceResolution
    ^256
! !

"ASDBase.ic method 0x20071e10; bytecode file offset 0x96e6dc"
!SGExtraImplInfo methodsFor: 'recovered'!
bitAutomaticResolution
    ^512
! !

"ASDBase.ic method 0x200724a0; bytecode file offset 0x96ee04"
!SGExtraImplInfo methodsFor: 'recovered'!
bitRescaled
    ^1
! !

"ASDBase.ic method 0x200726f8; bytecode file offset 0x96f1c4"
!SGExtraImplInfo methodsFor: 'recovered'!
bitImplementationMaster
    ^2
! !

"ASDBase.ic method 0x20072b98; bytecode file offset 0x96f6d4"
!SGExtraImplInfo methodsFor: 'recovered'!
bitZeroNotIncluded
    ^4
! !

"ASDBase.ic method 0x20073678; bytecode file offset 0x970b34"
!SGExtraImplInfo methodsFor: 'recovered'!
read
    ^nil
! !

"ASDBase.ic method 0x20074138; bytecode file offset 0x970b34"
!SGExtraImplInfo methodsFor: 'recovered'!
index
    ^nil
! !

"ASDBase.ic method 0x200741e0; bytecode file offset 0x970b34"
!SGExtraImplInfo methodsFor: 'recovered'!
reversed
    ^nil
! !

"ASDBase.ic method 0x200743e4; bytecode file offset 0x970de8"
!SGExtraImplInfo methodsFor: 'recovered'!
bitUseLimiterBit
    ^8
! !

"ASDBase.ic method 0x20079018; bytecode file offset 0x97594c"
!SGExtraImplInfo methodsFor: 'recovered'!
bitLimitOverflow
    ^16
! !

"ASDBase.ic method 0x2007fdd8; bytecode file offset 0x97c764"
!SGExtraImplInfo methodsFor: 'recovered'!
bitKeepResolution
    ^32
! !

"ASDBase.ic method 0x20080610; bytecode file offset 0x97cf3c"
!SGExtraImplInfo methodsFor: 'recovered'!
bitNoImplementation
    ^64
! !

"ASDBase.ic method 0x20084360; bytecode file offset 0x981ca4"
!SGExtraImplInfo methodsFor: 'recovered'!
memoryLocationInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) memoryClass: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008475c; bytecode file offset 0x981ca4"
!SGExtraImplInfo methodsFor: 'recovered'!
memoryLocationReference: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) memoryClassReference: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008e6f8; bytecode file offset 0x98b0bc"
!SGExtraImplInfo methodsFor: 'recovered'!
isCacheAutomatic
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) memorySegmentID.
    recoveredValue1 := TGPlatform.
    recoveredValue2 := (recoveredValue1) memorySegmentIDAutomatic.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e748; bytecode file offset 0x98b0bc"
!SGExtraImplInfo methodsFor: 'recovered'!
isCacheOff
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) memorySegmentID.
    recoveredValue1 := TGPlatform.
    recoveredValue2 := (recoveredValue1) memorySegmentIDOff.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e7d4; bytecode file offset 0x98b0bc"
!SGExtraImplInfo methodsFor: 'recovered'!
isCacheOn
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) memorySegmentID.
    recoveredValue1 := TGPlatform.
    recoveredValue2 := (recoveredValue1) memorySegmentIDOn.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009e590; bytecode file offset 0x99b544"
!SGExtraImplInfo methodsFor: 'recovered'!
clearImplementationMaster
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65533).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e6b0; bytecode file offset 0x99b544"
!SGExtraImplInfo methodsFor: 'recovered'!
clearReduceResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65279).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e710; bytecode file offset 0x99b544"
!SGExtraImplInfo methodsFor: 'recovered'!
clearAutomaticResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65023).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e728; bytecode file offset 0x99b544"
!SGExtraImplInfo methodsFor: 'recovered'!
clearLimitOverflow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65519).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e938; bytecode file offset 0x99b544"
!SGExtraImplInfo methodsFor: 'recovered'!
clearKeepResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65503).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e9c8; bytecode file offset 0x99b544"
!SGExtraImplInfo methodsFor: 'recovered'!
clearRescaled
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65534).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009ea70; bytecode file offset 0x99b544"
!SGExtraImplInfo methodsFor: 'recovered'!
clearImplementationType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65407).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009eb30; bytecode file offset 0x99b544"
!SGExtraImplInfo methodsFor: 'recovered'!
clearZeroNotIncluded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65531).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009eba8; bytecode file offset 0x99b544"
!SGExtraImplInfo methodsFor: 'recovered'!
clearUseLimiterBit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65527).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009ebc0; bytecode file offset 0x99b544"
!SGExtraImplInfo methodsFor: 'recovered'!
clearNoImplementation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65471).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009ef70; bytecode file offset 0x99b844"
!SGExtraImplInfo methodsFor: 'recovered'!
setRescaled
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (1).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009efcc; bytecode file offset 0x99b918"
!SGExtraImplInfo methodsFor: 'recovered'!
setImplementationMaster
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (2).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009f0b4; bytecode file offset 0x99b99c"
!SGExtraImplInfo methodsFor: 'recovered'!
setZeroNotIncluded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (4).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009f110; bytecode file offset 0x99ba0c"
!SGExtraImplInfo methodsFor: 'recovered'!
setUseLimiterBit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (8).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009f1bc; bytecode file offset 0x99ba90"
!SGExtraImplInfo methodsFor: 'recovered'!
setLimitOverflow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (16).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009f5a4; bytecode file offset 0x99c9e0"
!SGExtraImplInfo methodsFor: 'recovered'!
initializeMemoryLocationSearchResult
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) memoryLocationSearchResultDefault.
    (self) memoryLocationSearchResult: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200abd8c; bytecode file offset 0x9a8668"
!SGExtraImplInfo methodsFor: 'recovered'!
memoryClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) stringPoolGet: (recoveredValue1).
    memoryClass := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200abdc8; bytecode file offset 0x9a8694"
!SGExtraImplInfo methodsFor: 'recovered'!
memoryClassReference: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) stringPoolGet: (recoveredValue1).
    memoryClassReference := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200abdf4; bytecode file offset 0x9a86c0"
!SGExtraImplInfo methodsFor: 'recovered'!
memoryLocationSearchResult: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) stringPoolGet: (recoveredValue1).
    memoryLocationSearchResult := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200abe20; bytecode file offset 0x9a86ec"
!SGExtraImplInfo methodsFor: 'recovered'!
recordLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) stringPoolGet: (recoveredValue1).
    recordLayout := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200abe4c; bytecode file offset 0x9a8708"
!SGExtraImplInfo methodsFor: 'recovered'!
text: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) stringPoolGet: (recoveredValue1).
    text := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b3c2c; bytecode file offset 0x9b04ec"
!SGExtraImplInfo methodsFor: 'recovered'!
setModelMaster
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65533).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b4a7c; bytecode file offset 0x9b1368"
!SGExtraImplInfo methodsFor: 'recovered'!
isRescaled
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b4cdc; bytecode file offset 0x9b15b8"
!SGExtraImplInfo methodsFor: 'recovered'!
isImplementationMaster
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b4ec4; bytecode file offset 0x9b1780"
!SGExtraImplInfo methodsFor: 'recovered'!
isZeroNotIncluded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (4).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b4f70; bytecode file offset 0x9b184c"
!SGExtraImplInfo methodsFor: 'recovered'!
isUseLimiterBit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (8).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b50a8; bytecode file offset 0x9b1974"
!SGExtraImplInfo methodsFor: 'recovered'!
isLimitOverflow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (16).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b5150; bytecode file offset 0x9b1a2c"
!SGExtraImplInfo methodsFor: 'recovered'!
isKeepResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (32).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200be73c; bytecode file offset 0x9bb178"
!SGExtraImplInfo methodsFor: 'recovered'!
referencedImplTypeName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    referencedImplTypeName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2f1c; bytecode file offset 0x9bfde0"
!SGExtraImplInfo methodsFor: 'recovered'!
address: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    address := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3bb0; bytecode file offset 0x9c058c"
!SGExtraImplInfo methodsFor: 'recovered'!
bitmask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bitmask := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3f54; bytecode file offset 0x9c0bf0"
!SGExtraImplInfo methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4420; bytecode file offset 0x9c11bc"
!SGExtraImplInfo methodsFor: 'recovered'!
fixAxisPar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fixAxisPar := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4d6c; bytecode file offset 0x9c16b0"
!SGExtraImplInfo methodsFor: 'recovered'!
fixAxisParDist: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fixAxisParDist := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c50f8; bytecode file offset 0x9c1afc"
!SGExtraImplInfo methodsFor: 'recovered'!
deposit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    deposit := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5350; bytecode file offset 0x9c1f64"
!SGExtraImplInfo methodsFor: 'recovered'!
policy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    policy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5774; bytecode file offset 0x9c22c8"
!SGExtraImplInfo methodsFor: 'recovered'!
memorySegmentID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    memorySegmentID := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d2ddc; bytecode file offset 0x9cf6d8"
!SGExtraImplInfo methodsFor: 'recovered'!
setImplementationType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (128).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d3024; bytecode file offset 0x9cf934"
!SGExtraImplInfo methodsFor: 'recovered'!
setNoImplementation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (64).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d4794; bytecode file offset 0x9d10b0"
!SGExtraImplInfo methodsFor: 'recovered'!
isImplementationType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (128).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d4854; bytecode file offset 0x9d1120"
!SGExtraImplInfo methodsFor: 'recovered'!
isReduceResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (256).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d48b4; bytecode file offset 0x9d1170"
!SGExtraImplInfo methodsFor: 'recovered'!
isAutomaticResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (512).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d49a4; bytecode file offset 0x9d12b0"
!SGExtraImplInfo methodsFor: 'recovered'!
isNoImplementation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (64).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f2c54; bytecode file offset 0x9ef51c"
!SGExtraImplInfo methodsFor: 'recovered'!
setKeepResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (64735).
    recoveredValue2 := (recoveredValue1) bitOr: (32).
    recoveredValue3 := (self) attributes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20106278; bytecode file offset 0xa02b30"
!SGExtraImplInfo methodsFor: 'recovered'!
checkAttributes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := attributes.
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
            (recoveredStack1) attributes: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20107fa8; bytecode file offset 0xa04870"
!SGExtraImplInfo methodsFor: 'recovered'!
setReduceResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (64735).
    recoveredValue2 := (recoveredValue1) bitOr: (256).
    recoveredValue3 := (self) attributes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20107fd4; bytecode file offset 0xa0489c"
!SGExtraImplInfo methodsFor: 'recovered'!
setAutomaticResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (64735).
    recoveredValue2 := (recoveredValue1) bitOr: (512).
    recoveredValue3 := (self) attributes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2011579c; bytecode file offset 0xa12058"
!SGExtraImplInfo methodsFor: 'recovered'!
memoryClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := memoryClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryClassDefault.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := memoryClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201159e8; bytecode file offset 0xa122a4"
!SGExtraImplInfo methodsFor: 'recovered'!
memoryClassReference
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := memoryClassReference.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryClassReferenceDefault.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := memoryClassReference.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20115bd0; bytecode file offset 0xa1248c"
!SGExtraImplInfo methodsFor: 'recovered'!
memoryLocationSearchResult
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := memoryLocationSearchResult.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryLocationSearchResultDefault.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := memoryLocationSearchResult.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20115d90; bytecode file offset 0xa1264c"
!SGExtraImplInfo methodsFor: 'recovered'!
recordLayout
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recordLayout.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) recordLayoutDefault.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recordLayout.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20115f78; bytecode file offset 0xa12834"
!SGExtraImplInfo methodsFor: 'recovered'!
text
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := text.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) textDefault.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := text.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116104; bytecode file offset 0xa129b8"
!SGExtraImplInfo methodsFor: 'recovered'!
address
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := address.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            address := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := address.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116220; bytecode file offset 0xa12ad4"
!SGExtraImplInfo methodsFor: 'recovered'!
bitmask
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := bitmask.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            bitmask := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := bitmask.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20131cbc; bytecode file offset 0xa2e6a8"
!SGExtraImplInfo methodsFor: 'recovered'!
useLimiter: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) useLimiter.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) dontUseLimiter.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20131cec; bytecode file offset 0xa2e6a8"
!SGExtraImplInfo methodsFor: 'recovered'!
rescaled: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) setRescaled.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) clearRescaled.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013b990; bytecode file offset 0xa38250"
!SGExtraImplInfo methodsFor: 'recovered'!
policy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := policy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) policyDefault.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) policy: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := policy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20140f3c; bytecode file offset 0xa3d7f8"
!SGExtraImplInfo methodsFor: 'recovered'!
memorySegmentID
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := memorySegmentID.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) defaultMemorySegmentID.
    ^recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := memorySegmentID.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2021427c; bytecode file offset 0xb10b60"
!SGExtraImplInfo methodsFor: 'recovered'!
ifDataKPBlobForDeviceLabel: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) ifData.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) kpBlobKey.
    recoveredValue7 := [].
    recoveredValue8 := (recoveredValue4) at: (recoveredValue6) ifAbsent: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20214298; bytecode file offset 0xb10b60"
!SGExtraImplInfo methodsFor: 'recovered'!
ifDataDPBlobForDeviceLabel: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) ifData.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) dpBlobKey.
    recoveredValue7 := [].
    recoveredValue8 := (recoveredValue4) at: (recoveredValue6) ifAbsent: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x202b2934; bytecode file offset 0xbaf218"
!SGExtraImplInfo methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    (self) attributes: (0).
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) memoryClassDefault.
    (self) memoryClass: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) recordLayoutDefault.
    (self) recordLayout: (recoveredValue3).
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) textDefault.
    (self) text: (recoveredValue5).
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) policyDefault.
    (self) policy: (recoveredValue7).
    (self) address: (0).
    (self) bitmask: (0).
    ^self
! !

"ASDBase.ic method 0x20323684; bytecode file offset 0xc1ff50"
!SGExtraImplInfo methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20376c00; bytecode file offset 0xc734e8"
!SGExtraImplInfo methodsFor: 'recovered'!
writeXMLPrimitiveImplementation: recoveredArg1
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
            recoveredStack2 := 'memoryLocationInstance'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) memoryClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'additionalInformation'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) text.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) policy.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := recoveredArg1.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) attr: ('policy') string: (recoveredBlock25Value1).
    recoveredBlock25Value2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRescaled.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'rescaled'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'cacheLocking'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) memorySegmentID.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20493f1c; bytecode file offset 0xd90830"
!SGExtraImplInfo methodsFor: 'recovered'!
attributesPrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isImplementationMaster.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isImplementationMaster: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) isZeroNotIncluded.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('isZeroNotIncluded: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    (recoveredValue5) cr.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := (self) isUseLimiterBit.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := ('isUseLimiterBit: ') , (recoveredValue13).
    (recoveredValue11) nextPutAll: (recoveredValue14).
    (recoveredValue10) cr.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := (self) isLimitOverflow.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := ('isLimitOverflow: ') , (recoveredValue18).
    (recoveredValue16) nextPutAll: (recoveredValue19).
    (recoveredValue15) cr.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := recoveredValue20.
    recoveredValue22 := (self) isNoImplementation.
    recoveredValue23 := (recoveredValue22) printString.
    recoveredValue24 := ('isNoImplementation: ') , (recoveredValue23).
    (recoveredValue21) nextPutAll: (recoveredValue24).
    (recoveredValue20) cr.
    recoveredValue25 := recoveredArg1.
    recoveredValue26 := recoveredValue25.
    recoveredValue27 := (self) isAutomaticResolution.
    recoveredValue28 := (recoveredValue27) printString.
    recoveredValue29 := ('isAutomaticResolution: ') , (recoveredValue28).
    (recoveredValue26) nextPutAll: (recoveredValue29).
    (recoveredValue25) cr.
    recoveredValue30 := recoveredArg1.
    recoveredValue31 := recoveredValue30.
    recoveredValue32 := (self) isKeepResolution.
    recoveredValue33 := (recoveredValue32) printString.
    recoveredValue34 := ('isKeepResolution: ') , (recoveredValue33).
    (recoveredValue31) nextPutAll: (recoveredValue34).
    (recoveredValue30) cr.
    recoveredValue35 := recoveredArg1.
    recoveredValue36 := recoveredValue35.
    recoveredValue37 := (self) isReduceResolution.
    recoveredValue38 := (recoveredValue37) printString.
    recoveredValue39 := ('isReduceResolution: ') , (recoveredValue38).
    (recoveredValue36) nextPutAll: (recoveredValue39).
    (recoveredValue35) cr.
    recoveredValue40 := recoveredArg1.
    recoveredValue41 := recoveredValue40.
    recoveredValue42 := (self) isImplementationType.
    recoveredValue43 := (recoveredValue42) printString.
    recoveredValue44 := ('isImplementationType: ') , (recoveredValue43).
    (recoveredValue41) nextPutAll: (recoveredValue44).
    (recoveredValue40) cr.
    recoveredValue45 := recoveredArg1.
    recoveredValue46 := recoveredValue45.
    recoveredValue47 := (self) isRescaled.
    recoveredValue48 := (recoveredValue47) printString.
    recoveredValue49 := ('isRescaled: ') , (recoveredValue48).
    (recoveredValue46) nextPutAll: (recoveredValue49).
    (recoveredValue45) cr.
    ^self
! !

"ASDBase.ic method 0x2055a53c; bytecode file offset 0xe56e7c"
!SGExtraImplInfo methodsFor: 'recovered'!
printOn: recoveredArg1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'Limit assignment: '.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) limiterUsed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'Overflow: '.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) isLimitOverflow.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) isKeepResolution.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 'Keep resolution'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) isReduceResolution.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := 'Reduce resolution'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) isAutomaticResolution.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := 'Automatic'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := '?'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := 'None'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := 'Zero not included: '.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) isZeroNotIncluded.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := 'Memory class: '.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) memoryClass.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := ' (not stored)'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := 'Memory class reference: '.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) memoryClassReference.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := ' (not stored)'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := 'Memory Segment: '.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) memorySegmentID.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := 'Uses impl. type: '.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImplementationType.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) referencedImplTypeName.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := ' true'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := '"'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := (recoveredStack3) referencedImplTypeName.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredPC := 198.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := 'false'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := 'Policy: '.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := (recoveredStack2) policy.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := 'Rescaled: '.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRescaled.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ac1e0; bytecode file offset 0xea8b4c"
!SGExtraImplInfo methodsFor: 'recovered'!
attributesTest
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: (' ').
    recoveredLocal1 := recoveredValue1.
    (self) setRescaled.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('--------setRescaled--------').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue4).
    (self) setImplementationMaster.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('--------setImplementationMaster--------').
    (recoveredValue5) cr.
    recoveredValue7 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue7).
    (self) setZeroNotIncluded.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) nextPutAll: ('--------setZeroNotIncluded--------').
    (recoveredValue8) cr.
    recoveredValue10 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue10).
    (self) setUseLimiterBit.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPutAll: ('--------setUseLimiterBit--------').
    (recoveredValue11) cr.
    recoveredValue13 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue13).
    (self) setLimitOverflow.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) nextPutAll: ('--------setLimitOverflow--------').
    (recoveredValue14) cr.
    recoveredValue16 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue16).
    (self) setNoImplementation.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) nextPutAll: ('--------setNoImplementation--------').
    (recoveredValue17) cr.
    recoveredValue19 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue19).
    recoveredValue20 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue20).
    (self) setAutomaticResolution.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := recoveredValue21.
    (recoveredValue22) nextPutAll: ('--------setAutomaticResolution--------').
    (recoveredValue21) cr.
    recoveredValue23 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue23).
    (self) setKeepResolution.
    recoveredValue24 := recoveredLocal1.
    recoveredValue25 := recoveredValue24.
    (recoveredValue25) nextPutAll: ('--------setKeepResolution--------').
    (recoveredValue24) cr.
    recoveredValue26 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue26).
    (self) setReduceResolution.
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := recoveredValue27.
    (recoveredValue28) nextPutAll: ('--------setReduceResolution--------').
    (recoveredValue27) cr.
    recoveredValue29 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue29).
    (self) setImplementationType.
    recoveredValue30 := recoveredLocal1.
    recoveredValue31 := recoveredValue30.
    (recoveredValue31) nextPutAll: ('--------setImplementationType--------').
    (recoveredValue30) cr.
    recoveredValue32 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue32).
    (self) clearImplementationMaster.
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := recoveredValue33.
    (recoveredValue34) nextPutAll: ('--------clearImplementationMaster--------').
    (recoveredValue33) cr.
    recoveredValue35 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue35).
    (self) clearZeroNotIncluded.
    recoveredValue36 := recoveredLocal1.
    recoveredValue37 := recoveredValue36.
    (recoveredValue37) nextPutAll: ('--------clearZeroNotIncluded--------').
    (recoveredValue36) cr.
    recoveredValue38 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue38).
    (self) clearUseLimiterBit.
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := recoveredValue39.
    (recoveredValue40) nextPutAll: ('--------clearUseLimiterBit--------').
    (recoveredValue39) cr.
    recoveredValue41 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue41).
    (self) clearLimitOverflow.
    recoveredValue42 := recoveredLocal1.
    recoveredValue43 := recoveredValue42.
    (recoveredValue43) nextPutAll: ('--------clearLimitOverflow--------').
    (recoveredValue42) cr.
    recoveredValue44 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue44).
    (self) clearNoImplementation.
    recoveredValue45 := recoveredLocal1.
    recoveredValue46 := recoveredValue45.
    (recoveredValue46) nextPutAll: ('--------clearNoImplementation--------').
    (recoveredValue45) cr.
    recoveredValue47 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue47).
    (self) clearAutomaticResolution.
    recoveredValue48 := recoveredLocal1.
    recoveredValue49 := recoveredValue48.
    (recoveredValue49) nextPutAll: ('--------clearAutomaticResolution--------').
    (recoveredValue48) cr.
    recoveredValue50 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue50).
    (self) clearKeepResolution.
    recoveredValue51 := recoveredLocal1.
    recoveredValue52 := recoveredValue51.
    (recoveredValue52) nextPutAll: ('--------clearKeepResolution--------').
    (recoveredValue51) cr.
    recoveredValue53 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue53).
    (self) clearReduceResolution.
    recoveredValue54 := recoveredLocal1.
    recoveredValue55 := recoveredValue54.
    (recoveredValue55) nextPutAll: ('--------clearReduceResolution--------').
    (recoveredValue54) cr.
    recoveredValue56 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue56).
    (self) clearImplementationType.
    recoveredValue57 := recoveredLocal1.
    recoveredValue58 := recoveredValue57.
    (recoveredValue58) nextPutAll: ('--------clearImplementationType--------').
    (recoveredValue57) cr.
    recoveredValue59 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue59).
    recoveredValue60 := recoveredLocal1.
    recoveredValue61 := (recoveredValue60) contents.
    (recoveredValue61) edit.
    ^self
! !

