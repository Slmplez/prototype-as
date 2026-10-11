"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008a14; bytecode file offset 0x908be4"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgParameterInterfaceType
    | recoveredValue0 |
    recoveredValue0 := (self) isCgCalPrmInterfaceType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027714; bytecode file offset 0x924260"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgExternalName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) externalName.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034654; bytecode file offset 0x934580"
!SGCgComponentAttributes methodsFor: 'recovered'!
componentTypeLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) componentInfo.
    recoveredValue1 := (recoveredValue0) componentTypeLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004e2f4; bytecode file offset 0x94d048"
!SGCgComponentAttributes methodsFor: 'recovered'!
cachingAutomatic
    (self) cachingOff.
    ^self
! !

"ASDBase.ic method 0x2005e684; bytecode file offset 0x95af48"
!SGCgComponentAttributes methodsFor: 'recovered'!
cachingOn
    caching := 'On'.
    ^self
! !

"ASDBase.ic method 0x2005e690; bytecode file offset 0x95af48"
!SGCgComponentAttributes methodsFor: 'recovered'!
cachingOff
    caching := 'Off'.
    ^self
! !

"ASDBase.ic method 0x2006006c; bytecode file offset 0x95c920"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptClass
    kind := 1.
    ^self
! !

"ASDBase.ic method 0x200600e8; bytecode file offset 0x95c99c"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptModule
    kind := 2.
    ^self
! !

"ASDBase.ic method 0x20060124; bytecode file offset 0x95c9d8"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptProject
    kind := 3.
    ^self
! !

"ASDBase.ic method 0x2006014c; bytecode file offset 0x95ca00"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptSoftwareComponent
    kind := 4.
    ^self
! !

"ASDBase.ic method 0x20060174; bytecode file offset 0x95ca28"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptRecordType
    kind := 5.
    ^self
! !

"ASDBase.ic method 0x20060188; bytecode file offset 0x95ca3c"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptSRInterfaceType
    kind := 6.
    ^self
! !

"ASDBase.ic method 0x2006019c; bytecode file offset 0x95ca50"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptCSInterfaceType
    kind := 7.
    ^self
! !

"ASDBase.ic method 0x200601b0; bytecode file offset 0x95ca64"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptCalPrmInterfaceType
    kind := 8.
    ^self
! !

"ASDBase.ic method 0x200601c4; bytecode file offset 0x95ca78"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptStruct
    kind := 9.
    ^self
! !

"ASDBase.ic method 0x200601f0; bytecode file offset 0x95caa4"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNVDataInterfaceType
    kind := 14.
    ^self
! !

"ASDBase.ic method 0x20060204; bytecode file offset 0x95cab8"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptGenericComponent
    kind := 15.
    ^self
! !

"ASDBase.ic method 0x2006d75c; bytecode file offset 0x96a390"
!SGCgComponentAttributes methodsFor: 'recovered'!
componentInfo
    | recoveredValue0 |
    recoveredValue0 := componentInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006deb0; bytecode file offset 0x96a9dc"
!SGCgComponentAttributes methodsFor: 'recovered'!
operatingSystemInfo
    | recoveredValue0 |
    recoveredValue0 := operatingSystemInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e848; bytecode file offset 0x96b41c"
!SGCgComponentAttributes methodsFor: 'recovered'!
arBehaviorUUID
    | recoveredValue0 |
    recoveredValue0 := arBehaviorUUID.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006efb4; bytecode file offset 0x96b8a0"
!SGCgComponentAttributes methodsFor: 'recovered'!
autosarPackageName
    | recoveredValue0 |
    recoveredValue0 := arPackageName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f2b0; bytecode file offset 0x96bc1c"
!SGCgComponentAttributes methodsFor: 'recovered'!
externalName
    | recoveredValue0 |
    recoveredValue0 := externalName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072318; bytecode file offset 0x96ee04"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitSingleInstance
    ^1
! !

"ASDBase.ic method 0x200726c8; bytecode file offset 0x96f1c4"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitCTBlock
    ^2
! !

"ASDBase.ic method 0x20072ae8; bytecode file offset 0x96f3cc"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitPrototype
    ^3
! !

"ASDBase.ic method 0x20072bb0; bytecode file offset 0x96f6d4"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitCCodeBlock
    ^4
! !

"ASDBase.ic method 0x20072ea0; bytecode file offset 0x96f7ac"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitRequiresOSInterface
    ^5
! !

"ASDBase.ic method 0x20072f80; bytecode file offset 0x96f8bc"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitMethodCalls
    ^6
! !

"ASDBase.ic method 0x200742f4; bytecode file offset 0x970bc8"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitSmClass
    ^7
! !

"ASDBase.ic method 0x200743cc; bytecode file offset 0x970de8"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitOrderedElements
    ^8
! !

"ASDBase.ic method 0x200745c4; bytecode file offset 0x970e78"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitComponentNotInstantiated
    ^9
! !

"ASDBase.ic method 0x200746d4; bytecode file offset 0x970f98"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitGeneratingDataStructures
    ^10
! !

"ASDBase.ic method 0x20074758; bytecode file offset 0x97102c"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitNeedsIntegerType
    ^11
! !

"ASDBase.ic method 0x200747c8; bytecode file offset 0x9710d4"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitNeedsIntegerCode
    ^12
! !

"ASDBase.ic method 0x20074860; bytecode file offset 0x971134"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitARService
    ^13
! !

"ASDBase.ic method 0x200748c8; bytecode file offset 0x9711ac"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitContainsRescalableElements
    ^14
! !

"ASDBase.ic method 0x20074964; bytecode file offset 0x9757c8"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgAttrComponentNoReference
    ^true
! !

"ASDBase.ic method 0x200766ac; bytecode file offset 0x9757c8"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgAttrComponent
    ^true
! !

"ASDBase.ic method 0x200784fc; bytecode file offset 0x9757c8"
!SGCgComponentAttributes methodsFor: 'recovered'!
isMdlComponentAttributes
    ^true
! !

"ASDBase.ic method 0x20078f30; bytecode file offset 0x97580c"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitDefinesForEnum
    ^15
! !

"ASDBase.ic method 0x20079008; bytecode file offset 0x97594c"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitExpandEnumDefines
    ^16
! !

"ASDBase.ic method 0x200790ec; bytecode file offset 0x9759d0"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitARType
    ^17
! !

"ASDBase.ic method 0x2007916c; bytecode file offset 0x975a30"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitAREnumLabels
    ^18
! !

"ASDBase.ic method 0x20079264; bytecode file offset 0x975b38"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitExperimentService
    ^20
! !

"ASDBase.ic method 0x200792bc; bytecode file offset 0x975b70"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitContainsLegacyHwcVariable
    ^21
! !

"ASDBase.ic method 0x200792f4; bytecode file offset 0x975bb8"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitContainsLegacyHwxProjectFiles
    ^22
! !

"ASDBase.ic method 0x2007fa98; bytecode file offset 0x97c354"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitServiceRoutineComponent
    ^23
! !

"ASDBase.ic method 0x2007faf8; bytecode file offset 0x97c3ac"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitExternalTypedef
    ^24
! !

"ASDBase.ic method 0x2007fb54; bytecode file offset 0x97c428"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitExternalStruct
    ^25
! !

"ASDBase.ic method 0x2007fbb4; bytecode file offset 0x97c468"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitProductionCodeOnly
    ^26
! !

"ASDBase.ic method 0x2007fc34; bytecode file offset 0x97c4e8"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitContainsGenericPhysicalUnit
    ^27
! !

"ASDBase.ic method 0x2007fc8c; bytecode file offset 0x97c540"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitContainsGenericPhysicalUnitWithOffset
    ^28
! !

"ASDBase.ic method 0x2007fcb4; bytecode file offset 0x97c570"
!SGCgComponentAttributes methodsFor: 'recovered'!
bitInternalTypedef
    ^29
! !

"ASDBase.ic method 0x2008a3e0; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgSingleInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitSingleInstance.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a3f0; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgSmClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitSmClass.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a420; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgCTBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCTBlock.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a430; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgAttrDefinesForEnum
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitDefinesForEnum.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a440; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgContainsLegacyHwxProjectFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitContainsLegacyHwxProjectFiles.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a4d0; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgContainsLegacyHwcVariable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitContainsLegacyHwcVariable.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a510; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgAttrExpandEnumDefines
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitExpandEnumDefines.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a520; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgRequiresOSInterface
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitRequiresOSInterface.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a540; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgCCodeBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCCodeBlock.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a620; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgPrototype
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitPrototype.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a630; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgAttrGeneratingDataStructures
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitGeneratingDataStructures.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a650; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgOrderedElements
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitOrderedElements.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a6a0; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgOptimizeMethodCalls
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitMethodCalls.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a6b0; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgAttrARService
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitARService.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a6d0; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgComponentNotInstantiated
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitComponentNotInstantiated.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a710; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgExternalTypedef
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitExternalTypedef.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a750; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgContainsRescalableElements
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitContainsRescalableElements.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a7e0; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgServiceRoutineComponent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitServiceRoutineComponent.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a7f0; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgInternalTypedef
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitInternalTypedef.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a800; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgAttrAREnumLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAREnumLabels.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a830; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgOptNeedsIntegerCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitNeedsIntegerCode.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a860; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgAttrProductionCodeOnly
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitProductionCodeOnly.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a8b0; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgAttrARType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitARType.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a8f0; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgOptNeedsIntegerType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitNeedsIntegerType.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a960; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgContainsGenericPhysicalUnit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitContainsGenericPhysicalUnit.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a9a0; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgContainsGenericPhysicalUnitWithOffset
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitContainsGenericPhysicalUnitWithOffset.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a9c0; bytecode file offset 0x98729c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgExternalStruct
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitExternalStruct.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008b72c; bytecode file offset 0x987fe0"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgClassNoStruct
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := kind.
    recoveredValue1 := (recoveredValue0) == (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b788; bytecode file offset 0x98803c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgProject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := kind.
    recoveredValue1 := (recoveredValue0) == (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b79c; bytecode file offset 0x988050"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgSoftwareComponent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := kind.
    recoveredValue1 := (recoveredValue0) == (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b7b0; bytecode file offset 0x988064"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgRecordType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := kind.
    recoveredValue1 := (recoveredValue0) == (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b7c4; bytecode file offset 0x988078"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgSRInterfaceType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := kind.
    recoveredValue1 := (recoveredValue0) == (6).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b7d8; bytecode file offset 0x98808c"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgCSInterfaceType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := kind.
    recoveredValue1 := (recoveredValue0) == (7).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b7ec; bytecode file offset 0x9880a0"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgCalPrmInterfaceType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := kind.
    recoveredValue1 := (recoveredValue0) == (8).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b800; bytecode file offset 0x9880b4"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgStruct
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := kind.
    recoveredValue1 := (recoveredValue0) == (9).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b814; bytecode file offset 0x9880c8"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgNVDataInterfaceType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := kind.
    recoveredValue1 := (recoveredValue0) == (14).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b828; bytecode file offset 0x9880dc"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgGenericComponent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := kind.
    recoveredValue1 := (recoveredValue0) == (15).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008ba08; bytecode file offset 0x9882c0"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCachingOn
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := caching.
    recoveredValue1 := (recoveredValue0) == ('On').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009dda0; bytecode file offset 0x99a69c"
!SGCgComponentAttributes methodsFor: 'recovered'!
externalTypedef
    | recoveredValue0 |
    (self) assertDeprecated: ('externalName').
    recoveredValue0 := (self) externalName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b0a28; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrNoExternalStruct
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitExternalStruct.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0a88; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrNoDefinesForEnum
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitDefinesForEnum.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0ac8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrNoProductionCodeOnly
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitProductionCodeOnly.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0b18; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNoServiceRoutineComponent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitServiceRoutineComponent.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0b58; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptContainsRescalableElements
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitContainsRescalableElements.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0b78; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrDefinesForEnum
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitDefinesForEnum.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0b98; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNeedsStandardType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitNeedsIntegerType.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0be8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptSinglelnstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitSingleInstance.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0c28; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrProductionCodeOnly
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitProductionCodeOnly.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0c38; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNoRequiresOSInterface
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitRequiresOSInterface.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0c58; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptContainsGenericPhysicalUnit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitContainsGenericPhysicalUnit.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0c68; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrExpandEnumDefines
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitExpandEnumDefines.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0c88; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrNoExpandEnumDefines
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitExpandEnumDefines.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0ce8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptMethodCalls
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitMethodCalls.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0dc8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrNoExternalTypedef
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitExternalTypedef.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0dd8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNoOrderedElements
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitOrderedElements.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0e08; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrARType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitARType.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0e38; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptContainsLegacyHwxProjectFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitContainsLegacyHwxProjectFiles.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0e68; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptRequiresOSInterface
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitRequiresOSInterface.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0ec8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNeedsStandardCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitNeedsIntegerCode.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0ee8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNeedsIntegerType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitNeedsIntegerType.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0f18; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrNoAREnumLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAREnumLabels.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0f48; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptServiceRoutineComponent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitServiceRoutineComponent.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0f88; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrNoARService
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitARService.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0fb8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptSmClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitSmClass.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0fe8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNoMethodCalls
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitMethodCalls.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0ff8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNoContainsRescalableElements
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitContainsRescalableElements.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1008; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrAREnumLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAREnumLabels.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1028; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptContainsLegacyHwcVariable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitContainsLegacyHwcVariable.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b10d8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNoCTBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCTBlock.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1118; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNeedsIntegerCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitNeedsIntegerCode.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1138; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrNotGeneratingDataStructures
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitGeneratingDataStructures.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1148; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrGeneratingDataStructures
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitGeneratingDataStructures.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1158; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNoPrototype
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitPrototype.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1168; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrARService
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitARService.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1178; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNoContainsGenericPhysicalUnitWithOffset
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitContainsGenericPhysicalUnitWithOffset.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b11d8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptCCodeBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCCodeBlock.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1268; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrNoARType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitARType.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1278; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptOrderedElements
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitOrderedElements.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b12b8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrInternalTypedef
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitInternalTypedef.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b12c8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptContainsGenericPhysicalUnitWithOffset
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitContainsGenericPhysicalUnitWithOffset.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1318; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNoSmClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitSmClass.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1368; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptCTBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCTBlock.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1448; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNoCCodeBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCCodeBlock.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1468; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptPrototype
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitPrototype.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1478; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptComponentNotInstantiated
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitComponentNotInstantiated.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b14a8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrNoInternalTypedef
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitInternalTypedef.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b14c8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptNoContainsGenericPhysicalUnit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitContainsGenericPhysicalUnit.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b14d8; bytecode file offset 0x9add94"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgOptMultiplelnstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitSingleInstance.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200c4214; bytecode file offset 0x9c0bf0"
!SGCgComponentAttributes methodsFor: 'recovered'!
componentInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    componentInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4448; bytecode file offset 0x9c11bc"
!SGCgComponentAttributes methodsFor: 'recovered'!
operatingSystemInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    operatingSystemInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4f78; bytecode file offset 0x9c1afc"
!SGCgComponentAttributes methodsFor: 'recovered'!
arBehaviorUUID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    arBehaviorUUID := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c52c0; bytecode file offset 0x9c1f64"
!SGCgComponentAttributes methodsFor: 'recovered'!
autosarPackageName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    arPackageName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e2944; bytecode file offset 0x9df430"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgExternalStructOrTypedef
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgExternalStruct.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgExternalTypedef.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200f69dc; bytecode file offset 0x9f32b0"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrExternalStruct
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) cgAttrNoExternalTypedef.
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitExternalStruct.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200f69f0; bytecode file offset 0x9f32b0"
!SGCgComponentAttributes methodsFor: 'recovered'!
cgAttrExternalTypedef
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) cgAttrNoExternalStruct.
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitExternalTypedef.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x201082d8; bytecode file offset 0xa04b90"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := kind.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgStruct.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201082f4; bytecode file offset 0xa04bac"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgModule
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := kind.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgGenericComponent.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201545e0; bytecode file offset 0xa50e98"
!SGCgComponentAttributes methodsFor: 'recovered'!
externalName: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            externalName := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            externalName := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017092c; bytecode file offset 0xa6d1ec"
!SGCgComponentAttributes methodsFor: 'recovered'!
isCgTypedefType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgInternalTypedef.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgExternalTypedef.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrARType.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b458c; bytecode file offset 0xab0e60"
!SGCgComponentAttributes methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := (self) isCgAttrARType.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := ('   isARType: ') , (recoveredValue4).
    (recoveredValue1) nextPutAll: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2038ede8; bytecode file offset 0xc8b6f4"
!SGCgComponentAttributes methodsFor: 'recovered'!
initialize
    super initialize.
    flags := 0.
    (self) cgOptMultiplelnstance.
    (self) cgOptMethodCalls.
    (self) cgOptNoPrototype.
    (self) cgOptNoCTBlock.
    (self) cgOptClass.
    (self) cgOptNoCCodeBlock.
    (self) cgOptNoRequiresOSInterface.
    (self) cgOptNoOrderedElements.
    (self) cachingOff.
    (self) cgAttrGeneratingDataStructures.
    (self) cgOptNeedsIntegerType.
    (self) cgOptNeedsIntegerCode.
    (self) cgAttrNoARService.
    (self) cgAttrNoDefinesForEnum.
    (self) cgAttrNoExpandEnumDefines.
    (self) cgAttrNoARType.
    (self) cgAttrNoExternalTypedef.
    (self) cgAttrNoExternalStruct.
    (self) cgAttrNoProductionCodeOnly.
    (self) cgAttrNoInternalTypedef.
    ^self
! !

