"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200091e8; bytecode file offset 0x908be4"
!SGImplConfiguration methodsFor: 'recovered'!
memoryLocationInstance
    | recoveredValue0 |
    recoveredValue0 := (self) memoryClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014094; bytecode file offset 0x912098"
!SGImplConfiguration methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIImplementationConfiguration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a198; bytecode file offset 0x92209c"
!SGImplConfiguration methodsFor: 'recovered'!
exportTypeString
    ^'Implementation Configuration'
! !

"ASDBase.ic method 0x2001d780; bytecode file offset 0x92209c"
!SGImplConfiguration methodsFor: 'recovered'!
type
    ^'implementation'
! !

"ASDBase.ic method 0x200235dc; bytecode file offset 0x92209c"
!SGImplConfiguration methodsFor: 'recovered'!
visualCallBackImage
    ^'GeneralImplementation'
! !

"ASDBase.ic method 0x20023e1c; bytecode file offset 0x92209c"
!SGImplConfiguration methodsFor: 'recovered'!
bitSmAutoInlinePrivateMethods
    ^16384
! !

"ASDBase.ic method 0x20024860; bytecode file offset 0x92209c"
!SGImplConfiguration methodsFor: 'recovered'!
memoryLocationReference
    ^''
! !

"ASDBase.ic method 0x2002626c; bytecode file offset 0x923928"
!SGImplConfiguration methodsFor: 'recovered'!
isServiceFlagKey
    ^'ARIsServiceFlagKey'
! !

"ASDBase.ic method 0x20026bc0; bytecode file offset 0x923928"
!SGImplConfiguration methodsFor: 'recovered'!
autosarPackageNameKey
    ^'ARPackageNameKey'
! !

"ASDBase.ic method 0x20038d3c; bytecode file offset 0x935c54"
!SGImplConfiguration methodsFor: 'recovered'!
isUniqueConfiguredElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isUniqueImplConfigured.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038d6c; bytecode file offset 0x935c54"
!SGImplConfiguration methodsFor: 'recovered'!
checkCorrectContextElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isImplConfiguredElement.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042530; bytecode file offset 0x93edec"
!SGImplConfiguration methodsFor: 'recovered'!
existsInlineTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := inlineTimeStamp.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049d9c; bytecode file offset 0x947128"
!SGImplConfiguration methodsFor: 'recovered'!
hasAutosarPackageName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) autosarPackageNameKey.
    recoveredValue1 := (self) hasDatamodelPropertyAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a02c; bytecode file offset 0x947128"
!SGImplConfiguration methodsFor: 'recovered'!
hasIsServiceFlag
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isServiceFlagKey.
    recoveredValue1 := (self) hasDatamodelPropertyAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059e58; bytecode file offset 0x956800"
!SGImplConfiguration methodsFor: 'recovered'!
checkEntry: recoveredArg1 forType: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) checkImplementation: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059fe0; bytecode file offset 0x9568b0"
!SGImplConfiguration methodsFor: 'recovered'!
updateElement: recoveredArg1 forNewConfig: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) updateForNewImplConfig.
    ^self
! !

"ASDBase.ic method 0x2005ffac; bytecode file offset 0x95c860"
!SGImplConfiguration methodsFor: 'recovered'!
initAttributes
    attributes := 0.
    ^self
! !

"ASDBase.ic method 0x2006e8c0; bytecode file offset 0x96b41c"
!SGImplConfiguration methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071d38; bytecode file offset 0x96e60c"
!SGImplConfiguration methodsFor: 'recovered'!
bitUserDefinedOrder
    ^128
! !

"ASDBase.ic method 0x20071d94; bytecode file offset 0x96e680"
!SGImplConfiguration methodsFor: 'recovered'!
bitGenerateDataStructures
    ^256
! !

"ASDBase.ic method 0x20071e20; bytecode file offset 0x96e6dc"
!SGImplConfiguration methodsFor: 'recovered'!
bitProductionCodeOnly
    ^512
! !

"ASDBase.ic method 0x20071f28; bytecode file offset 0x96e80c"
!SGImplConfiguration methodsFor: 'recovered'!
bitSmHierarchicalGeneration
    ^8192
! !

"ASDBase.ic method 0x20071fc8; bytecode file offset 0x96ee04"
!SGImplConfiguration methodsFor: 'recovered'!
bitInline
    ^1
! !

"ASDBase.ic method 0x200726e8; bytecode file offset 0x96f1c4"
!SGImplConfiguration methodsFor: 'recovered'!
bitUsingServiceRoutine
    ^2
! !

"ASDBase.ic method 0x20072d70; bytecode file offset 0x96f6d4"
!SGImplConfiguration methodsFor: 'recovered'!
bitPrototype
    ^4
! !

"ASDBase.ic method 0x2007880c; bytecode file offset 0x9757c8"
!SGImplConfiguration methodsFor: 'recovered'!
noUseOfMethodLocalVariables
    ^true
! !

"ASDBase.ic method 0x20078fb8; bytecode file offset 0x97594c"
!SGImplConfiguration methodsFor: 'recovered'!
bitNoGenerate
    ^16
! !

"ASDBase.ic method 0x2007fdb8; bytecode file offset 0x97c764"
!SGImplConfiguration methodsFor: 'recovered'!
bitOptimize
    ^32
! !

"ASDBase.ic method 0x200805e0; bytecode file offset 0x97cf3c"
!SGImplConfiguration methodsFor: 'recovered'!
bitSmOutline
    ^64
! !

"ASDBase.ic method 0x200830c4; bytecode file offset 0x97f988"
!SGImplConfiguration methodsFor: 'recovered'!
memoryClass: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    memoryClass := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20087f40; bytecode file offset 0x984bc0"
!SGImplConfiguration methodsFor: 'recovered'!
docuImpl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('complex Implementation').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008cd5c; bytecode file offset 0x9896b8"
!SGImplConfiguration methodsFor: 'recovered'!
isServiceFlag
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isServiceFlagKey.
    recoveredValue1 := (self) datamodelPropertyAt: (recoveredValue0) ifAbsent: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008e70c; bytecode file offset 0x98b0bc"
!SGImplConfiguration methodsFor: 'recovered'!
isCacheAutomatic
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) memorySegmentID.
    recoveredValue1 := TGPlatform.
    recoveredValue2 := (recoveredValue1) memorySegmentIDAutomatic.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e75c; bytecode file offset 0x98b0bc"
!SGImplConfiguration methodsFor: 'recovered'!
isCacheOff
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) memorySegmentID.
    recoveredValue1 := TGPlatform.
    recoveredValue2 := (recoveredValue1) memorySegmentIDOff.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e7e8; bytecode file offset 0x98b0bc"
!SGImplConfiguration methodsFor: 'recovered'!
isCacheOn
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) memorySegmentID.
    recoveredValue1 := TGPlatform.
    recoveredValue2 := (recoveredValue1) memorySegmentIDOn.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20093870; bytecode file offset 0x9904ac"
!SGImplConfiguration methodsFor: 'recovered'!
xmlIsServiceFlag: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) isServiceFlagKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) datamodelPropertyAt: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200939b0; bytecode file offset 0x9904ac"
!SGImplConfiguration methodsFor: 'recovered'!
xmlAutosarPackageName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) autosarPackageNameKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) datamodelPropertyAt: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20095e74; bytecode file offset 0x992748"
!SGImplConfiguration methodsFor: 'recovered'!
isValidForComponent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) implementationKeys.
    recoveredValue2 := (self) dbObject.
    recoveredValue3 := (recoveredValue1) includes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009708c; bytecode file offset 0x9939e8"
!SGImplConfiguration methodsFor: 'recovered'!
copyConfigLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) copyImplConfig: (self) label: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e338; bytecode file offset 0x99ad10"
!SGImplConfiguration methodsFor: 'recovered'!
autosarPackageName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) autosarPackageNameKey.
    recoveredValue1 := (self) datamodelPropertyAt: (recoveredValue0) ifAbsent: ('').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009e650; bytecode file offset 0x99b544"
!SGImplConfiguration methodsFor: 'recovered'!
clearNoOptimize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65503).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009eaa0; bytecode file offset 0x99b544"
!SGImplConfiguration methodsFor: 'recovered'!
clearNoGenerateDataStructures
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65279).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009eb78; bytecode file offset 0x99b544"
!SGImplConfiguration methodsFor: 'recovered'!
clearUserDefinedOrder
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (1048447).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009ee18; bytecode file offset 0x99b784"
!SGImplConfiguration methodsFor: 'recovered'!
clearSmHierarchicalGeneration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitSmHierarchicalGeneration.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    recoveredValue3 := (self) attributes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009ee30; bytecode file offset 0x99b784"
!SGImplConfiguration methodsFor: 'recovered'!
setNoOptimize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitOptimize.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    recoveredValue3 := (self) attributes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009ee48; bytecode file offset 0x99b784"
!SGImplConfiguration methodsFor: 'recovered'!
setNoGenerate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitNoGenerate.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    recoveredValue3 := (self) attributes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009ee60; bytecode file offset 0x99b784"
!SGImplConfiguration methodsFor: 'recovered'!
setNoGenerateDataStructures
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitGenerateDataStructures.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    recoveredValue3 := (self) attributes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009ee78; bytecode file offset 0x99b784"
!SGImplConfiguration methodsFor: 'recovered'!
setProductionCodeOnly
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitProductionCodeOnly.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    recoveredValue3 := (self) attributes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009ee90; bytecode file offset 0x99b784"
!SGImplConfiguration methodsFor: 'recovered'!
clearSmAutoInlinePrivateMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitSmAutoInlinePrivateMethods.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    recoveredValue3 := (self) attributes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ab5d0; bytecode file offset 0x9a8250"
!SGImplConfiguration methodsFor: 'recovered'!
getImplementationForMethodAliasName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) methodImplementation.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b46fc; bytecode file offset 0x9b10e8"
!SGImplConfiguration methodsFor: 'recovered'!
isNoOptimize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitOptimize.
    recoveredValue2 := (recoveredValue0) bitAnd: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) ~= (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b4788; bytecode file offset 0x9b10e8"
!SGImplConfiguration methodsFor: 'recovered'!
isNoGenerate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitNoGenerate.
    recoveredValue2 := (recoveredValue0) bitAnd: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) ~= (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b479c; bytecode file offset 0x9b10e8"
!SGImplConfiguration methodsFor: 'recovered'!
isPrototype
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitPrototype.
    recoveredValue2 := (recoveredValue0) bitAnd: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) ~= (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b47b0; bytecode file offset 0x9b10e8"
!SGImplConfiguration methodsFor: 'recovered'!
isUsingServiceRoutine
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitUsingServiceRoutine.
    recoveredValue2 := (recoveredValue0) bitAnd: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) ~= (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b47ec; bytecode file offset 0x9b10e8"
!SGImplConfiguration methodsFor: 'recovered'!
isNoGenerateDataStructures
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitGenerateDataStructures.
    recoveredValue2 := (recoveredValue0) bitAnd: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) ~= (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b4828; bytecode file offset 0x9b10e8"
!SGImplConfiguration methodsFor: 'recovered'!
isProductionCodeOnly
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitProductionCodeOnly.
    recoveredValue2 := (recoveredValue0) bitAnd: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) ~= (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b6038; bytecode file offset 0x9b39ac"
!SGImplConfiguration methodsFor: 'recovered'!
pathName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super pathName.
    recoveredValue1 := (recoveredValue0) , (' (Impl)').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bb4c0; bytecode file offset 0x9b7da8"
!SGImplConfiguration methodsFor: 'recovered'!
changeMemoryClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) modified.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    (self) memoryClass: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c4ff8; bytecode file offset 0x9c1afc"
!SGImplConfiguration methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6014; bytecode file offset 0x9c29e8"
!SGImplConfiguration methodsFor: 'recovered'!
additionalImplInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    additionalImplInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6200; bytecode file offset 0x9c2bec"
!SGImplConfiguration methodsFor: 'recovered'!
rescalingFormulas: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rescalingFormulas := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6414; bytecode file offset 0x9c2dd0"
!SGImplConfiguration methodsFor: 'recovered'!
memorySegmentID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    memorySegmentID := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6640; bytecode file offset 0x9c3164"
!SGImplConfiguration methodsFor: 'recovered'!
externalStructDeclarationMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    extStructDeclMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6bd8; bytecode file offset 0x9c36ec"
!SGImplConfiguration methodsFor: 'recovered'!
productionCodeOnly: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    productionCodeOnly := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cb2b8; bytecode file offset 0x9c7b78"
!SGImplConfiguration methodsFor: 'recovered'!
getRealGetConfigElementFor: recoveredArg1 element: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) sgClass.
    recoveredValue2 := (recoveredValue1) createImplementation.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) updateDataElement: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200cf104; bytecode file offset 0x9cb9d0"
!SGImplConfiguration methodsFor: 'recovered'!
clearSmOutline
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65471).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf114; bytecode file offset 0x9cb9d0"
!SGImplConfiguration methodsFor: 'recovered'!
clearOptimize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65503).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf134; bytecode file offset 0x9cba00"
!SGImplConfiguration methodsFor: 'recovered'!
setOptimize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := attributes.
    recoveredValue1 := (self) bitOptimize.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    attributes := recoveredValue3.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cf144; bytecode file offset 0x9cba00"
!SGImplConfiguration methodsFor: 'recovered'!
setSmOutline
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := attributes.
    recoveredValue1 := (self) bitSmOutline.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    attributes := recoveredValue3.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cf164; bytecode file offset 0x9cba30"
!SGImplConfiguration methodsFor: 'recovered'!
isSmHierarchicalGeneration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := attributes.
    recoveredValue1 := (self) bitSmHierarchicalGeneration.
    recoveredValue2 := (recoveredValue0) bitAnd: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) = (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200cf174; bytecode file offset 0x9cba30"
!SGImplConfiguration methodsFor: 'recovered'!
isSmAutoInlinePrivateMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := attributes.
    recoveredValue1 := (self) bitSmAutoInlinePrivateMethods.
    recoveredValue2 := (recoveredValue0) bitAnd: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) = (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d2afc; bytecode file offset 0x9cf3fc"
!SGImplConfiguration methodsFor: 'recovered'!
clearPrototype
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitPrototype.
    recoveredValue2 := (recoveredValue1) bitInvert.
    recoveredValue3 := (recoveredValue0) bitAnd: (recoveredValue2).
    recoveredValue4 := (self) attributes: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d2b18; bytecode file offset 0x9cf3fc"
!SGImplConfiguration methodsFor: 'recovered'!
clearUsingServiceRoutine
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitUsingServiceRoutine.
    recoveredValue2 := (recoveredValue1) bitInvert.
    recoveredValue3 := (recoveredValue0) bitAnd: (recoveredValue2).
    recoveredValue4 := (self) attributes: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d2b34; bytecode file offset 0x9cf3fc"
!SGImplConfiguration methodsFor: 'recovered'!
clearProductionCodeOnly
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitProductionCodeOnly.
    recoveredValue2 := (recoveredValue1) bitInvert.
    recoveredValue3 := (recoveredValue0) bitAnd: (recoveredValue2).
    recoveredValue4 := (self) attributes: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d2da0; bytecode file offset 0x9cf6d8"
!SGImplConfiguration methodsFor: 'recovered'!
setUserDefinedOrder
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (128).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d47d4; bytecode file offset 0x9d10b0"
!SGImplConfiguration methodsFor: 'recovered'!
isUserDefinedOrder
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (128).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e2164; bytecode file offset 0x9dec60"
!SGImplConfiguration methodsFor: 'recovered'!
isNoGenerateAPI
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) localAttributesAvailable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNoGenerate.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e2214; bytecode file offset 0x9dec60"
!SGImplConfiguration methodsFor: 'recovered'!
isNoGenerateDataStructuresAPI
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) localAttributesLocalDataStructsAvailable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNoGenerateDataStructures.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e2244; bytecode file offset 0x9dec60"
!SGImplConfiguration methodsFor: 'recovered'!
isProductionCodeOnlyAPI
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) localAttributesAvailable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProductionCodeOnly.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e2294; bytecode file offset 0x9dec60"
!SGImplConfiguration methodsFor: 'recovered'!
isUserDefinedOrderEnabled
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isUserDefinedOrder.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUserDefinedOrderAvailable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e2364; bytecode file offset 0x9dec60"
!SGImplConfiguration methodsFor: 'recovered'!
isNoOptimizeAPI
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) localAttributesAvailable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNoOptimize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200eef00; bytecode file offset 0x9eb7c4"
!SGImplConfiguration methodsFor: 'recovered'!
getAdditionalImplInfoForElementPrivate: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) additionalImplInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) aliasName.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x200f0e20; bytecode file offset 0x9ed6d8"
!SGImplConfiguration methodsFor: 'recovered'!
isSmOutline
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (64).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f18e8; bytecode file offset 0x9ee39c"
!SGImplConfiguration methodsFor: 'recovered'!
relatedClassConfig
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c3df8Arg1 | 
    | block280c3df8Value0 block280c3df8Value1 |
    block280c3df8Value0 := block280c3df8Arg1.
    block280c3df8Value1 := (block280c3df8Value0) getOrCreateClassImplConfig.
    block280c3df8Value1
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) relatedClassConfig: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ff738; bytecode file offset 0x9fc02c"
!SGImplConfiguration methodsFor: 'recovered'!
resetImplementationForMethodAliasName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) methodImplementation.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200ff750; bytecode file offset 0x9fc02c"
!SGImplConfiguration methodsFor: 'recovered'!
resetImplementationForOperatorAliasName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) operatorImplementation.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x2010354c; bytecode file offset 0x9ffe0c"
!SGImplConfiguration methodsFor: 'recovered'!
isServiceFlag: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) isServiceFlagKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) datamodelPropertyAt: (recoveredValue0) put: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    (self) modified.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201054ec; bytecode file offset 0xa01db0"
!SGImplConfiguration methodsFor: 'recovered'!
isInline
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'should not be used any more'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20106418; bytecode file offset 0xa02cf4"
!SGImplConfiguration methodsFor: 'recovered'!
setSmAutoInlinePrivateMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := attributes.
    recoveredValue1 := (self) bitSmAutoInlinePrivateMethods.
    recoveredValue2 := (recoveredValue1) bitXor: (65535).
    recoveredValue3 := (recoveredValue0) bitAnd: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    attributes := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20106430; bytecode file offset 0xa02cf4"
!SGImplConfiguration methodsFor: 'recovered'!
setSmHierarchicalGeneration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := attributes.
    recoveredValue1 := (self) bitSmHierarchicalGeneration.
    recoveredValue2 := (recoveredValue1) bitXor: (65535).
    recoveredValue3 := (recoveredValue0) bitAnd: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    attributes := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201067e8; bytecode file offset 0xa030ac"
!SGImplConfiguration methodsFor: 'recovered'!
inlineTimeStamp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := inlineTimeStamp.
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
            (recoveredStack1) updateInlineTimeStamp.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := inlineTimeStamp.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20108a38; bytecode file offset 0xa0532c"
!SGImplConfiguration methodsFor: 'recovered'!
allConfiguredElements
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allImplConfiguredElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c65a0Arg1 | 
    | block280c65a0Value0 block280c65a0Value1 block280c65a0Value2 |
    block280c65a0Value0 := block280c65a0Arg1.
    block280c65a0Value1 := (block280c65a0Value0) isUniqueImplConfigured.
    block280c65a0Value2 := (block280c65a0Value1) not.
    block280c65a0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010c034; bytecode file offset 0xa08928"
!SGImplConfiguration methodsFor: 'recovered'!
initialize
    super initialize.
    (self) initAttributes.
    (self) setSmOutline.
    ^self
! !

"ASDBase.ic method 0x2010ed10; bytecode file offset 0xa0b5cc"
!SGImplConfiguration methodsFor: 'recovered'!
xmlEquals: recoveredArg1
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
            recoveredStack0 := super xmlEquals: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20116b28; bytecode file offset 0xa133e0"
!SGImplConfiguration methodsFor: 'recovered'!
externalStructDeclarationName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := extStructDeclName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := extStructDeclName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a7b4; bytecode file offset 0xa270b0"
!SGImplConfiguration methodsFor: 'recovered'!
methodImplementation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := methodImplementation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            methodImplementation := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := methodImplementation.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a8e4; bytecode file offset 0xa271a0"
!SGImplConfiguration methodsFor: 'recovered'!
configsUsedReferenced
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := configsUsedReferenced.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            configsUsedReferenced := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := configsUsedReferenced.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012aa9c; bytecode file offset 0xa27388"
!SGImplConfiguration methodsFor: 'recovered'!
additionalImplInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := additionalImplInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            additionalImplInfo := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := additionalImplInfo.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012ab8c; bytecode file offset 0xa27488"
!SGImplConfiguration methodsFor: 'recovered'!
rescalingFormulas
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := rescalingFormulas.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            rescalingFormulas := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := rescalingFormulas.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012ac80; bytecode file offset 0xa2753c"
!SGImplConfiguration methodsFor: 'recovered'!
externalStructDeclarationMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := extStructDeclMode.
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
            recoveredStack1 := (recoveredStack1) recImplGenerateStructMode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := extStructDeclMode.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20133ec8; bytecode file offset 0xa30790"
!SGImplConfiguration methodsFor: 'recovered'!
toggleIsUsingReferenceForElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) configsUsedReferenced.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) aliasName.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) configForElementIsUsingReference: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) not.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue5).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x20138b7c; bytecode file offset 0xa35460"
!SGImplConfiguration methodsFor: 'recovered'!
createImplementationForMethodAliasName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) methodImplementation.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := SGMethodImplementation.
    recoveredValue3 := (recoveredValue2) createDefault.
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue3).
    (self) modified.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20138b98; bytecode file offset 0xa35460"
!SGImplConfiguration methodsFor: 'recovered'!
createImplementationForOperatorAliasName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) operatorImplementation.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := SGOperatorImplementation.
    recoveredValue3 := (recoveredValue2) createDefault.
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue3).
    (self) modified.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2013c6bc; bytecode file offset 0xa38f84"
!SGImplConfiguration methodsFor: 'recovered'!
updateInlineTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Muzaffar') == ('EHI_72149').
    recoveredValue1 := Date.
    recoveredValue2 := (recoveredValue1) dateAndTimeNowInSeconds.
    inlineTimeStamp := recoveredValue2.
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x2013d71c; bytecode file offset 0xa3a008"
!SGImplConfiguration methodsFor: 'recovered'!
setPrototype
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) setNoGenerate.
    (self) clearUsingServiceRoutine.
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitPrototype.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    recoveredValue3 := (self) attributes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2013d73c; bytecode file offset 0xa3a008"
!SGImplConfiguration methodsFor: 'recovered'!
setUsingServiceRoutine
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) setNoGenerate.
    (self) clearPrototype.
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitUsingServiceRoutine.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    recoveredValue3 := (self) attributes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20140ff8; bytecode file offset 0xa3d8b0"
!SGImplConfiguration methodsFor: 'recovered'!
productionCodeOnly
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := productionCodeOnly.
    recoveredValue1 := [
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := productionCodeOnly.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20146c04; bytecode file offset 0xa43500"
!SGImplConfiguration methodsFor: 'recovered'!
systemDefaultConfigFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    ^nil
].
    recoveredValue2 := (recoveredValue0) sgClassIfUndefined: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) createDataElement.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2014e6ec; bytecode file offset 0xa4afd4"
!SGImplConfiguration methodsFor: 'recovered'!
isUsingServiceRoutineAPI
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) localAttributesAvailable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNoGenerate.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUsingServiceRoutine.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014e700; bytecode file offset 0xa4afd4"
!SGImplConfiguration methodsFor: 'recovered'!
isPrototypeAPI
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) localAttributesAvailable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNoGenerate.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrototype.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014e714; bytecode file offset 0xa4afd4"
!SGImplConfiguration methodsFor: 'recovered'!
isUsingPrototypeAPI
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) localAttributesAvailable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNoGenerate.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrototype.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20157120; bytecode file offset 0xa53a1c"
!SGImplConfiguration methodsFor: 'recovered'!
setMethodImplementation: recoveredArg1 inlining: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) inlining.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) inlining: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) modified.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20157134; bytecode file offset 0xa53a1c"
!SGImplConfiguration methodsFor: 'recovered'!
setMethodImplementation: recoveredArg1 symbol: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) symbol: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) modified.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20157148; bytecode file offset 0xa53a1c"
!SGImplConfiguration methodsFor: 'recovered'!
setMethodImplementation: recoveredArg1 memorySegmentID: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) memorySegmentID.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) memorySegmentID: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) modified.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015715c; bytecode file offset 0xa53a1c"
!SGImplConfiguration methodsFor: 'recovered'!
setMethodImplementation: recoveredArg1 memoryClass: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) memoryClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) memoryClass: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) modified.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201571a8; bytecode file offset 0xa53a6c"
!SGImplConfiguration methodsFor: 'recovered'!
setMethodImplementation: recoveredArg1 useFPU: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isUseFPU.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) xor: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) useFPU: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) modified.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015d840; bytecode file offset 0xa5a100"
!SGImplConfiguration methodsFor: 'recovered'!
operatorImplementation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := operatorImplementation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            operatorImplementation := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) modified.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := operatorImplementation.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015f6c4; bytecode file offset 0xa5bf94"
!SGImplConfiguration methodsFor: 'recovered'!
clearNoGenerate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) clearPrototype.
    (self) clearUsingServiceRoutine.
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (self) bitNoGenerate.
    recoveredValue2 := (recoveredValue1) bitInvert.
    recoveredValue3 := (recoveredValue0) bitAnd: (recoveredValue2).
    recoveredValue4 := (self) attributes: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20163470; bytecode file offset 0xa5fd30"
!SGImplConfiguration methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2016568c; bytecode file offset 0xa61f54"
!SGImplConfiguration methodsFor: 'recovered'!
convertToASDV50Elements: recoveredArg1
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
            recoveredStack2 := [:block280ce574Arg1 :block280ce574Arg2 | 
    | block280ce574Local1 block280ce574Value0 block280ce574Value1 block280ce574Value2 block280ce574Value3 block280ce574Value4 block280ce574Value5 |
    block280ce574Value0 := block280ce574Arg1.
    block280ce574Value1 := block280ce574Arg2.
    block280ce574Value2 := (block280ce574Value1) sgClass.
    block280ce574Value3 := (block280ce574Value0) asASDPrimitiveImplObjectModelType: (block280ce574Value2).
    block280ce574Local1 := block280ce574Value3.
    block280ce574Value4 := block280ce574Local1.
    block280ce574Value5 := (block280ce574Value4) convertToASDV50Implementation.
    block280ce574Value5
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) convertToASDV50Elements: (recoveredStack1) convertConfigBlock: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20172340; bytecode file offset 0xa6ec2c"
!SGImplConfiguration methodsFor: 'recovered'!
convertToASDV60
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodImplementation.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cf024Arg1 | 
    | block280cf024Value0 block280cf024Value1 |
    block280cf024Value0 := block280cf024Arg1.
    block280cf024Value1 := (block280cf024Value0) convertToASDV60.
    block280cf024Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20172360; bytecode file offset 0xa6ec2c"
!SGImplConfiguration methodsFor: 'recovered'!
convertToASDV630
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodImplementation.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cf048Arg1 | 
    | block280cf048Value0 block280cf048Value1 |
    block280cf048Value0 := block280cf048Arg1.
    block280cf048Value1 := (block280cf048Value0) convertToASDV630.
    block280cf048Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20177a50; bytecode file offset 0xa74310"
!SGImplConfiguration methodsFor: 'recovered'!
getOrCreateImplementationForMethodAliasName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) methodImplementation.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (self) createImplementationForMethodAliasName: (recoveredBlock8Value0).
    ^recoveredBlock8Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20183a1c; bytecode file offset 0xa802e0"
!SGImplConfiguration methodsFor: 'recovered'!
isDefaultConfig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) defaultImplementation.
    recoveredBlock5Value2 := (recoveredBlock5Value1) dbObject.
    recoveredBlock5Value3 := (self) dbObject.
    recoveredBlock5Value4 := (recoveredBlock5Value2) = (recoveredBlock5Value3).
    ^recoveredBlock5Value4
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x20185268; bytecode file offset 0xa81b28"
!SGImplConfiguration methodsFor: 'recovered'!
convertToASDV50FromNewDataElementsElements: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    (recoveredBlock5Value0) convertToASDV50Implementation.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := recoveredBlock5Arg2.
    recoveredBlock5Value3 := (self) getRealGetConfigElementFor: (recoveredBlock5Value1) element: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := (self) convertToASDV50FromNewDataElementsElements: (recoveredValue0) convertConfigBlock: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20187e44; bytecode file offset 0xa8470c"
!SGImplConfiguration methodsFor: 'recovered'!
setMethodImplementation: recoveredArg1 inline: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isInline.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) xor: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) updateInlineTimeStamp.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) inline: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) modified.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018e0a4; bytecode file offset 0xa8a964"
!SGImplConfiguration methodsFor: 'recovered'!
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := memoryClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLocationName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            memoryClass := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := memoryClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2019fc94; bytecode file offset 0xa9c550"
!SGImplConfiguration methodsFor: 'recovered'!
restoreInstVars
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := primitiveValues.
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
            recoveredStack1 := attributes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) initAttributes.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) repairMultipleReferences.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a0cf0; bytecode file offset 0xa9d5c0"
!SGImplConfiguration methodsFor: 'recovered'!
asdDatabaseLink
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280d2744Arg1 | 
    '<Missing>'
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdDatabaseLink.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := '::[I]'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a4434; bytecode file offset 0xaa0cfc"
!SGImplConfiguration methodsFor: 'recovered'!
getImplementationForOperatorAliasName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_2009405745'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := operatorImplementation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) operatorImplementation.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201aa120; bytecode file offset 0xaa69e8"
!SGImplConfiguration methodsFor: 'recovered'!
availableInstanceConfigurationKeys
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62774'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) implConfigKeys.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d8040; bytecode file offset 0xad4914"
!SGImplConfiguration methodsFor: 'recovered'!
xmlInit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super xmlInit.
    (self) initAttributes.
    (self) setSmOutline.
    recoveredValue0 := ('Kli') == ('WorkspaceTimeStamps').
    recoveredValue1 := Dictionary.
    recoveredValue2 := (recoveredValue1) new.
    operatorImplementation := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x201e488c; bytecode file offset 0xae115c"
!SGImplConfiguration methodsFor: 'recovered'!
makeConfigConsistentLocal
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allConfiguredElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) additionalImplInfo.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
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
            recoveredStack1 := (recoveredStack1) allConfiguredElements.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) removeElementsAdditionalNotInList: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) getConsistentConfigElementsInUserDefinedOrder.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            super makeConfigConsistentLocal.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e6e0c; bytecode file offset 0xae36cc"
!SGImplConfiguration methodsFor: 'recovered'!
externalStructDeclarationName: recoveredArg1
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimBlanks.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidANSICIdentifier.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            extStructDeclName := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ff03c; bytecode file offset 0xafb900"
!SGImplConfiguration methodsFor: 'recovered'!
isUserDefinedOrderAvailable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRecord.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSenderReceiverInterface.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNVDataInterface.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202026b8; bytecode file offset 0xafef84"
!SGImplConfiguration methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super replaceAliasNames: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) methodImplementation.
    (self) replaceAliasNames: (recoveredValue1) inDictionary: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) additionalImplInfo.
    (self) replaceAliasNames: (recoveredValue3) inDictionary: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) rescalingFormulas.
    (self) replaceAliasNames: (recoveredValue5) inDictionary: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20211790; bytecode file offset 0xb0e054"
!SGImplConfiguration methodsFor: 'recovered'!
localAttributesLocalDataStructsAvailable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := [:block280da910Arg1 | 
    nil
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClassIfUndefined: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSGClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021f274; bytecode file offset 0xb1bb38"
!SGImplConfiguration methodsFor: 'recovered'!
localAttributesAvailable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := [:block280dbac8Arg1 | 
    nil
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClassIfUndefined: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSGClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProcessClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20227a54; bytecode file offset 0xb2431c"
!SGImplConfiguration methodsFor: 'recovered'!
convertToASDV50FromOldDataElementsElements: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isASDPrimitiveConfigObject.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 26].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg2.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) getRealGetConfigElementFor: (recoveredBlock5Stack2) element: (recoveredBlock5Stack3).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) sgClass.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) convertImplDataElementForAscet50ModelType: (recoveredBlock5Stack2).
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := (self) convertToASDV50FromOldDataElementsElements: (recoveredValue0) convertConfigBlock: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2022c404; bytecode file offset 0xb28cd0"
!SGImplConfiguration methodsFor: 'recovered'!
autosarPackageName: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) autosarPackageNameKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) datamodelPropertyAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) autosarPackageNameKey.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) datamodelPropertyAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20232100; bytecode file offset 0xb2e9d4"
!SGImplConfiguration methodsFor: 'recovered'!
checkIfToAddForSGClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    ^self
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementationKeys.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'Call_83523'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) addUniqueLabeledImplConfig: (recoveredStack1).
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

"ASDBase.ic method 0x20238dac; bytecode file offset 0xb35698"
!SGImplConfiguration methodsFor: 'recovered'!
checkOperatorAliasNames: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) operatorImplementation.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asArray.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) includes: (recoveredBlock7Value1).
    recoveredBlock7Value3 := (recoveredBlock7Value2) not.
    recoveredBlock7Value3
].
    recoveredValue4 := (recoveredValue2) select: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) operatorImplementation.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) removeAllKeys: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20238dcc; bytecode file offset 0xb35698"
!SGImplConfiguration methodsFor: 'recovered'!
checkMethodAliasNames: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) methodImplementation.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asArray.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) includes: (recoveredBlock7Value1).
    recoveredBlock7Value3 := (recoveredBlock7Value2) not.
    recoveredBlock7Value3
].
    recoveredValue4 := (recoveredValue2) select: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) methodImplementation.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) removeAllKeys: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2023dd50; bytecode file offset 0xb3a630"
!SGImplConfiguration methodsFor: 'recovered'!
writeXMLRecordImplExternDeclaration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('RecordImplExternDeclaration').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) externalStructDeclarationMode.
    (recoveredValue1) attr: ('externalStructDeclarationMode') string: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) externalStructDeclarationName.
    (recoveredValue3) attr: ('externalStructDeclarationName') string: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) productionCodeOnly.
    (recoveredValue5) attr: ('productionCodeOnly') boolean: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) closeComplex.
    ^self
! !

"ASDBase.ic method 0x2025e038; bytecode file offset 0xb5a90c"
!SGImplConfiguration methodsFor: 'recovered'!
getLastModuleChange
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationTimeStamp.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastModuleChange.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportedVariables.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) classImplConfig.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) applicationTimeStamp.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026aa94; bytecode file offset 0xb67364"
!SGImplConfiguration methodsFor: 'recovered'!
convertToASDV640_Step2
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNoGenerate.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUsingServiceRoutine.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) clearPrototype.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) setPrototype.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) clearPrototype.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) clearUsingServiceRoutine.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) clearProductionCodeOnly.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027b1ec; bytecode file offset 0xb77acc"
!SGImplConfiguration methodsFor: 'recovered'!
getAdditionalImplInfoForElementBasic: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) getAdditionalImplInfoForElementPrivate: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := SGExtraImplInfo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := ASDAdditionalImplInfo.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b5c5c; bytecode file offset 0xbb252c"
!SGImplConfiguration methodsFor: 'recovered'!
ascetLink: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := recoveredArg2.
    (recoveredBlock4Value0) nextPutAll: ('<Missing>').
    ^self
].
    recoveredValue1 := (self) sgClassIfUndefined: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) ascetLink: (recoveredValue2) on: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) nextPutAll: ('/').
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) nextPutAll: ('implementation=').
    recoveredValue7 := (self) label.
    (recoveredValue4) nextPutAll: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x202d0b84; bytecode file offset 0xbcd458"
!SGImplConfiguration methodsFor: 'recovered'!
setRescalingFormula: recoveredArg1 forElement: recoveredArg2
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) rescalingFormulas.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) modified.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) rescalingFormulas.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) aliasName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) rescalingFormulas.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x202da614; bytecode file offset 0xbd6ee0"
!SGImplConfiguration methodsFor: 'recovered'!
setConfig: recoveredArg1 forElement: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := true.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg2.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isMethodLocal.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 23] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) notNil.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) runtimeAssert: (recoveredValue0) additionalInfo: ('nil is not allowed as implementation configuration').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := recoveredArg2.
    recoveredBlock31Value2 := super setConfig: (recoveredBlock31Value0) forElement: (recoveredBlock31Value1).
    recoveredBlock31Value2
].
    recoveredValue3 := (recoveredValue1) ifNotNil: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202e6068; bytecode file offset 0xbe2944"
!SGImplConfiguration methodsFor: 'recovered'!
configForElementIsUsingReference: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_82604'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodElement.
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
            recoveredStack0 := (recoveredStack0) configsUsedReferenced.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'Call_82457'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCClass.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e7180; bytecode file offset 0xbe3a64"
!SGImplConfiguration methodsFor: 'recovered'!
setAdditionalImplInfo: recoveredArg1 forElement: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) configForElement: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUserDefined.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryLocationInstance.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) memoryLocationInstance: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryLocationReference.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) memoryLocationReference: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryLocationSearchResult.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) memoryLocationSearchResult: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x20307d18; bytecode file offset 0xc045ec"
!SGImplConfiguration methodsFor: 'recovered'!
checkBeforeImported
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClassConfig.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    ^nil
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassIfUndefined: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) asdImportExportOptions.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionImportDiscardExistingImplementations.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementations.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := recoveredLocal1.
    recoveredBlock37Value1 := recoveredBlock37Arg1.
    recoveredBlock37Value2 := (recoveredBlock37Value0) removeImplConfig: (recoveredBlock37Value1).
    recoveredBlock37Value2
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030c560; bytecode file offset 0xc08e44"
!SGImplConfiguration methodsFor: 'recovered'!
attributesPrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isUsingServiceRoutine.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isUsingServiceRoutine: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) isNoOptimize.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('isNoOptimize: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    (recoveredValue5) cr.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := (self) isNoGenerate.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := ('isNoGenerate: ') , (recoveredValue13).
    (recoveredValue11) nextPutAll: (recoveredValue14).
    (recoveredValue10) cr.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := (self) isNoGenerateDataStructures.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := ('isNoGenerateDataStructures: ') , (recoveredValue18).
    (recoveredValue16) nextPutAll: (recoveredValue19).
    (recoveredValue15) cr.
    ^self
! !

"ASDBase.ic method 0x20321940; bytecode file offset 0xc1e218"
!SGImplConfiguration methodsFor: 'recovered'!
removeElementsAdditionalNotInList: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280eba4cArg1 | 
    | block280eba4cValue0 block280eba4cValue1 |
    block280eba4cValue0 := block280eba4cArg1.
    block280eba4cValue1 := (block280eba4cValue0) aliasName.
    block280eba4cValue1
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal2.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 39.
        ].
        recoveredBlock28Step = 39 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) includes: (recoveredBlock28Stack3).
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 53] ifFalse: [recoveredBlock28PC := 44].
        ].
        recoveredBlock28Step = 44 ifTrue: [
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            recoveredBlock28Stack1 := self.
            recoveredBlock28PC := 46.
        ].
        recoveredBlock28Step = 46 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) additionalImplInfo.
            recoveredBlock28PC := 47.
        ].
        recoveredBlock28Step = 47 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 48.
        ].
        recoveredBlock28Step = 48 ifTrue: [
            (recoveredBlock28Stack1) removeKey: (recoveredBlock28Stack2).
            recoveredBlock28PC := 50.
        ].
        recoveredBlock28Step = 50 ifTrue: [
            recoveredBlock28Stack1 := self.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) modified.
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20333520; bytecode file offset 0xc2fe10"
!SGImplConfiguration methodsFor: 'recovered'!
convertToASDV42
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUsingServiceRoutine.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNoGenerate.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := attributes.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'Convert impl '.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := ' to No Generate and Service Routines!!!!'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) setNoGenerate.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'Call_62437'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) setModifyBit.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) commit.
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

"ASDBase.ic method 0x203474f4; bytecode file offset 0xc43dcc"
!SGImplConfiguration methodsFor: 'recovered'!
getRescalingFormulaForElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) rescalingFormulas.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := RBFormulaId.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'RemoveMeBeforeRelease'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) rescalingFormulas.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203678a8; bytecode file offset 0xc64178"
!SGImplConfiguration methodsFor: 'recovered'!
getMasterConfigForMethodElement: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) realizedSignature.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) realizedElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) realizedSignature.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementAliasName: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) configForElement: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) realizedElement.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementAliasName: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) configForElement: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038068c; bytecode file offset 0xc7cf6c"
!SGImplConfiguration methodsFor: 'recovered'!
convertToASDV61
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveValues.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) species.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 :recoveredBlock19Arg2 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
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
            recoveredBlock19Stack2 := recoveredBlock19Arg2.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack3 := SGBooleanImplementation.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isKindOf: (recoveredBlock19Stack3).
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 36] ifFalse: [recoveredBlock19PC := 47].
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg2.
            recoveredBlock19PC := 42.
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19Stack4 := nil.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) convertImplDataElementForAscet50ModelType: (recoveredBlock19Stack4).
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) put: (recoveredBlock19Stack3).
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bc448; bytecode file offset 0xcb8d28"
!SGImplConfiguration methodsFor: 'recovered'!
defaultConfigFor: recoveredArg1
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
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    ^nil
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultOrCreateImplementation.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBComposedDataElement.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVectoredType.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasExtraImplInfo.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) policy.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 recoveredBlock51Value5 recoveredBlock51Value6 |
    recoveredBlock51Value0 := recoveredLocal1.
    recoveredBlock51Value1 := (recoveredBlock51Value0) extraImplInfo.
    recoveredBlock51Value2 := recoveredLocal1.
    recoveredBlock51Value3 := (recoveredBlock51Value2) extraImplInfo.
    recoveredBlock51Value4 := (recoveredBlock51Value3) class.
    recoveredBlock51Value5 := (recoveredBlock51Value4) policyDefault.
    recoveredBlock51Value6 := (recoveredBlock51Value1) policy: (recoveredBlock51Value5).
    recoveredBlock51Value6
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203d53a4; bytecode file offset 0xcd1d1c"
!SGImplConfiguration methodsFor: 'recovered'!
setCacheOffRecursive
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := TGPlatform.
    recoveredValue1 := (recoveredValue0) memorySegmentIDOff.
    (self) memorySegmentID: (recoveredValue1).
    recoveredValue2 := (self) sgClass.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    ^self
].
    recoveredValue4 := (recoveredValue2) getObjectIfUndefined: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) complexVariables.
    recoveredValue6 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 |
    recoveredBlock23Value0 := ('Kli') == ('Call_77839').
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := (recoveredBlock23Value1) sgClass.
    recoveredBlock23Value3 := [:recoveredBlock23Block40Arg1 | 
    | recoveredBlock23Block40Stack0 recoveredBlock23Block40Stack1 recoveredBlock23Block40Stack2 recoveredBlock23Block40Stack3 recoveredBlock23Block40PC recoveredBlock23Block40Step recoveredBlock23Block40Done recoveredBlock23Block40Result |
    recoveredBlock23Block40Stack0 := self.
    recoveredBlock23Block40PC := 46.
    recoveredBlock23Block40Done := false.
    [recoveredBlock23Block40Done not] whileTrue: [
        recoveredBlock23Block40Step := recoveredBlock23Block40PC.
        recoveredBlock23Block40Step = 46 ifTrue: [
            recoveredBlock23Block40Stack1 := nil.
            recoveredBlock23Block40PC := 47.
        ].
        recoveredBlock23Block40Step = 47 ifTrue: [
            recoveredBlock23Block40Stack2 := recoveredBlock23Block40Arg1.
            recoveredBlock23Block40PC := 48.
        ].
        recoveredBlock23Block40Step = 48 ifTrue: [
            recoveredBlock23Block40Stack2 := (recoveredBlock23Block40Stack2) modifiable.
            recoveredBlock23Block40PC := 50.
        ].
        recoveredBlock23Block40Step = 50 ifTrue: [
            (recoveredBlock23Block40Stack2) ifTrue: [recoveredBlock23Block40PC := 54] ifFalse: [recoveredBlock23Block40PC := 78].
        ].
        recoveredBlock23Block40Step = 54 ifTrue: [
            recoveredBlock23Block40PC := 55.
        ].
        recoveredBlock23Block40Step = 55 ifTrue: [
            recoveredBlock23Block40Stack1 := 'Kli'.
            recoveredBlock23Block40PC := 57.
        ].
        recoveredBlock23Block40Step = 57 ifTrue: [
            recoveredBlock23Block40Stack2 := 'Call_2007402677'.
            recoveredBlock23Block40PC := 59.
        ].
        recoveredBlock23Block40Step = 59 ifTrue: [
            recoveredBlock23Block40Stack1 := (recoveredBlock23Block40Stack1) == (recoveredBlock23Block40Stack2).
            recoveredBlock23Block40PC := 60.
        ].
        recoveredBlock23Block40Step = 60 ifTrue: [
            recoveredBlock23Block40PC := 61.
        ].
        recoveredBlock23Block40Step = 61 ifTrue: [
            recoveredBlock23Block40Stack1 := self.
            recoveredBlock23Block40PC := 62.
        ].
        recoveredBlock23Block40Step = 62 ifTrue: [
            recoveredBlock23Block40Stack2 := recoveredBlock23Arg1.
            recoveredBlock23Block40PC := 65.
        ].
        recoveredBlock23Block40Step = 65 ifTrue: [
            recoveredBlock23Block40Stack1 := (recoveredBlock23Block40Stack1) configForElement: (recoveredBlock23Block40Stack2).
            recoveredBlock23Block40PC := 67.
        ].
        recoveredBlock23Block40Step = 67 ifTrue: [
            recoveredBlock23Block40Stack2 := [:block280f7a1cArg1 | 
    | block280f7a1cValue0 block280f7a1cValue1 |
    block280f7a1cValue0 := block280f7a1cArg1.
    block280f7a1cValue1 := (block280f7a1cValue0) setCacheOffRecursive.
    block280f7a1cValue1
].
            recoveredBlock23Block40PC := 69.
        ].
        recoveredBlock23Block40Step = 69 ifTrue: [
            recoveredBlock23Block40PC := 76.
        ].
        recoveredBlock23Block40Step = 76 ifTrue: [
            recoveredBlock23Block40Stack1 := (recoveredBlock23Block40Stack1) ifNotNil: (recoveredBlock23Block40Stack2).
            recoveredBlock23Block40PC := 78.
        ].
        recoveredBlock23Block40Step = 78 ifTrue: [
            recoveredBlock23Block40Result := recoveredBlock23Block40Stack1.
            recoveredBlock23Block40Done := true.
        ].
    ].
    recoveredBlock23Block40Result
].
    recoveredBlock23Value4 := (recoveredBlock23Value2) ifNotNil: (recoveredBlock23Value3).
    recoveredBlock23Value4
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203d53e8; bytecode file offset 0xcd1d1c"
!SGImplConfiguration methodsFor: 'recovered'!
setCacheOnRecursive
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := TGPlatform.
    recoveredValue1 := (recoveredValue0) memorySegmentIDOn.
    (self) memorySegmentID: (recoveredValue1).
    recoveredValue2 := (self) sgClass.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    ^self
].
    recoveredValue4 := (recoveredValue2) getObjectIfUndefined: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) complexVariables.
    recoveredValue6 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 |
    recoveredBlock23Value0 := ('Kli') == ('Call_77839').
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := (recoveredBlock23Value1) sgClass.
    recoveredBlock23Value3 := [:recoveredBlock23Block40Arg1 | 
    | recoveredBlock23Block40Stack0 recoveredBlock23Block40Stack1 recoveredBlock23Block40Stack2 recoveredBlock23Block40Stack3 recoveredBlock23Block40PC recoveredBlock23Block40Step recoveredBlock23Block40Done recoveredBlock23Block40Result |
    recoveredBlock23Block40Stack0 := self.
    recoveredBlock23Block40PC := 46.
    recoveredBlock23Block40Done := false.
    [recoveredBlock23Block40Done not] whileTrue: [
        recoveredBlock23Block40Step := recoveredBlock23Block40PC.
        recoveredBlock23Block40Step = 46 ifTrue: [
            recoveredBlock23Block40Stack1 := nil.
            recoveredBlock23Block40PC := 47.
        ].
        recoveredBlock23Block40Step = 47 ifTrue: [
            recoveredBlock23Block40Stack2 := recoveredBlock23Block40Arg1.
            recoveredBlock23Block40PC := 48.
        ].
        recoveredBlock23Block40Step = 48 ifTrue: [
            recoveredBlock23Block40Stack2 := (recoveredBlock23Block40Stack2) modifiable.
            recoveredBlock23Block40PC := 50.
        ].
        recoveredBlock23Block40Step = 50 ifTrue: [
            (recoveredBlock23Block40Stack2) ifTrue: [recoveredBlock23Block40PC := 54] ifFalse: [recoveredBlock23Block40PC := 78].
        ].
        recoveredBlock23Block40Step = 54 ifTrue: [
            recoveredBlock23Block40PC := 55.
        ].
        recoveredBlock23Block40Step = 55 ifTrue: [
            recoveredBlock23Block40Stack1 := 'Kli'.
            recoveredBlock23Block40PC := 57.
        ].
        recoveredBlock23Block40Step = 57 ifTrue: [
            recoveredBlock23Block40Stack2 := 'Call_2007402677'.
            recoveredBlock23Block40PC := 59.
        ].
        recoveredBlock23Block40Step = 59 ifTrue: [
            recoveredBlock23Block40Stack1 := (recoveredBlock23Block40Stack1) == (recoveredBlock23Block40Stack2).
            recoveredBlock23Block40PC := 60.
        ].
        recoveredBlock23Block40Step = 60 ifTrue: [
            recoveredBlock23Block40PC := 61.
        ].
        recoveredBlock23Block40Step = 61 ifTrue: [
            recoveredBlock23Block40Stack1 := self.
            recoveredBlock23Block40PC := 62.
        ].
        recoveredBlock23Block40Step = 62 ifTrue: [
            recoveredBlock23Block40Stack2 := recoveredBlock23Arg1.
            recoveredBlock23Block40PC := 65.
        ].
        recoveredBlock23Block40Step = 65 ifTrue: [
            recoveredBlock23Block40Stack1 := (recoveredBlock23Block40Stack1) configForElement: (recoveredBlock23Block40Stack2).
            recoveredBlock23Block40PC := 67.
        ].
        recoveredBlock23Block40Step = 67 ifTrue: [
            recoveredBlock23Block40Stack2 := [:block280f7a40Arg1 | 
    | block280f7a40Value0 block280f7a40Value1 |
    block280f7a40Value0 := block280f7a40Arg1.
    block280f7a40Value1 := (block280f7a40Value0) setCacheOnRecursive.
    block280f7a40Value1
].
            recoveredBlock23Block40PC := 69.
        ].
        recoveredBlock23Block40Step = 69 ifTrue: [
            recoveredBlock23Block40PC := 76.
        ].
        recoveredBlock23Block40Step = 76 ifTrue: [
            recoveredBlock23Block40Stack1 := (recoveredBlock23Block40Stack1) ifNotNil: (recoveredBlock23Block40Stack2).
            recoveredBlock23Block40PC := 78.
        ].
        recoveredBlock23Block40Step = 78 ifTrue: [
            recoveredBlock23Block40Result := recoveredBlock23Block40Stack1.
            recoveredBlock23Block40Done := true.
        ].
    ].
    recoveredBlock23Block40Result
].
    recoveredBlock23Value4 := (recoveredBlock23Value2) ifNotNil: (recoveredBlock23Value3).
    recoveredBlock23Value4
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203d542c; bytecode file offset 0xcd1d1c"
!SGImplConfiguration methodsFor: 'recovered'!
setCacheAutomaticRecursive
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := TGPlatform.
    recoveredValue1 := (recoveredValue0) memorySegmentIDAutomatic.
    (self) memorySegmentID: (recoveredValue1).
    recoveredValue2 := (self) sgClass.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    ^self
].
    recoveredValue4 := (recoveredValue2) getObjectIfUndefined: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) complexVariables.
    recoveredValue6 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 |
    recoveredBlock23Value0 := ('Kli') == ('Call_77839').
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := (recoveredBlock23Value1) sgClass.
    recoveredBlock23Value3 := [:recoveredBlock23Block40Arg1 | 
    | recoveredBlock23Block40Stack0 recoveredBlock23Block40Stack1 recoveredBlock23Block40Stack2 recoveredBlock23Block40Stack3 recoveredBlock23Block40PC recoveredBlock23Block40Step recoveredBlock23Block40Done recoveredBlock23Block40Result |
    recoveredBlock23Block40Stack0 := self.
    recoveredBlock23Block40PC := 46.
    recoveredBlock23Block40Done := false.
    [recoveredBlock23Block40Done not] whileTrue: [
        recoveredBlock23Block40Step := recoveredBlock23Block40PC.
        recoveredBlock23Block40Step = 46 ifTrue: [
            recoveredBlock23Block40Stack1 := nil.
            recoveredBlock23Block40PC := 47.
        ].
        recoveredBlock23Block40Step = 47 ifTrue: [
            recoveredBlock23Block40Stack2 := recoveredBlock23Block40Arg1.
            recoveredBlock23Block40PC := 48.
        ].
        recoveredBlock23Block40Step = 48 ifTrue: [
            recoveredBlock23Block40Stack2 := (recoveredBlock23Block40Stack2) modifiable.
            recoveredBlock23Block40PC := 50.
        ].
        recoveredBlock23Block40Step = 50 ifTrue: [
            (recoveredBlock23Block40Stack2) ifTrue: [recoveredBlock23Block40PC := 54] ifFalse: [recoveredBlock23Block40PC := 78].
        ].
        recoveredBlock23Block40Step = 54 ifTrue: [
            recoveredBlock23Block40PC := 55.
        ].
        recoveredBlock23Block40Step = 55 ifTrue: [
            recoveredBlock23Block40Stack1 := 'Kli'.
            recoveredBlock23Block40PC := 57.
        ].
        recoveredBlock23Block40Step = 57 ifTrue: [
            recoveredBlock23Block40Stack2 := 'Call_2007402677'.
            recoveredBlock23Block40PC := 59.
        ].
        recoveredBlock23Block40Step = 59 ifTrue: [
            recoveredBlock23Block40Stack1 := (recoveredBlock23Block40Stack1) == (recoveredBlock23Block40Stack2).
            recoveredBlock23Block40PC := 60.
        ].
        recoveredBlock23Block40Step = 60 ifTrue: [
            recoveredBlock23Block40PC := 61.
        ].
        recoveredBlock23Block40Step = 61 ifTrue: [
            recoveredBlock23Block40Stack1 := self.
            recoveredBlock23Block40PC := 62.
        ].
        recoveredBlock23Block40Step = 62 ifTrue: [
            recoveredBlock23Block40Stack2 := recoveredBlock23Arg1.
            recoveredBlock23Block40PC := 65.
        ].
        recoveredBlock23Block40Step = 65 ifTrue: [
            recoveredBlock23Block40Stack1 := (recoveredBlock23Block40Stack1) configForElement: (recoveredBlock23Block40Stack2).
            recoveredBlock23Block40PC := 67.
        ].
        recoveredBlock23Block40Step = 67 ifTrue: [
            recoveredBlock23Block40Stack2 := [:block280f7a64Arg1 | 
    | block280f7a64Value0 block280f7a64Value1 |
    block280f7a64Value0 := block280f7a64Arg1.
    block280f7a64Value1 := (block280f7a64Value0) setCacheAutomaticRecursive.
    block280f7a64Value1
].
            recoveredBlock23Block40PC := 69.
        ].
        recoveredBlock23Block40Step = 69 ifTrue: [
            recoveredBlock23Block40PC := 76.
        ].
        recoveredBlock23Block40Step = 76 ifTrue: [
            recoveredBlock23Block40Stack1 := (recoveredBlock23Block40Stack1) ifNotNil: (recoveredBlock23Block40Stack2).
            recoveredBlock23Block40PC := 78.
        ].
        recoveredBlock23Block40Step = 78 ifTrue: [
            recoveredBlock23Block40Result := recoveredBlock23Block40Stack1.
            recoveredBlock23Block40Done := true.
        ].
    ].
    recoveredBlock23Block40Result
].
    recoveredBlock23Value4 := (recoveredBlock23Value2) ifNotNil: (recoveredBlock23Value3).
    recoveredBlock23Value4
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203d5e20; bytecode file offset 0xcd270c"
!SGImplConfiguration methodsFor: 'recovered'!
configForElement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_2008405105'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Hw'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Call_85863'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
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
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isCTClass.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 32] ifFalse: [recoveredBlock18PC := 59].
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack1 := recoveredArg1.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) isPrimitive.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 42] ifFalse: [recoveredBlock18PC := 52].
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg1.
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) systemDefaultConfigFor: (recoveredBlock18Stack2).
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18Stack1 := self.
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg1.
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) defaultConfigFor: (recoveredBlock18Stack2).
            recoveredBlock18PC := 58.
        ].
        recoveredBlock18Step = 58 ifTrue: [
            ^recoveredBlock18Stack1
        ].
        recoveredBlock18Step = 59 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealizedMethodElement.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMasterConfigForMethodElement: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := super configForElement: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041c9ec; bytecode file offset 0xd192d8"
!SGImplConfiguration methodsFor: 'recovered'!
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
            recoveredStack0 := (recoveredStack0) primitiveValues.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:block280fbebcArg1 | 
    | block280fbebcStack0 block280fbebcStack1 block280fbebcStack2 block280fbebcStack3 block280fbebcPC block280fbebcStep block280fbebcDone block280fbebcResult |
    block280fbebcStack0 := self.
    block280fbebcPC := 4.
    block280fbebcDone := false.
    [block280fbebcDone not] whileTrue: [
        block280fbebcStep := block280fbebcPC.
        block280fbebcStep = 4 ifTrue: [
            block280fbebcStack1 := nil.
            block280fbebcPC := 5.
        ].
        block280fbebcStep = 5 ifTrue: [
            block280fbebcStack2 := block280fbebcArg1.
            block280fbebcPC := 6.
        ].
        block280fbebcStep = 6 ifTrue: [
            (block280fbebcStack2 == nil) ifTrue: [block280fbebcPC := 14] ifFalse: [block280fbebcPC := 10].
        ].
        block280fbebcStep = 10 ifTrue: [
            block280fbebcPC := 11.
        ].
        block280fbebcStep = 11 ifTrue: [
            block280fbebcStack1 := block280fbebcArg1.
            block280fbebcPC := 12.
        ].
        block280fbebcStep = 12 ifTrue: [
            block280fbebcStack1 := (block280fbebcStack1) convertToASDV621.
            block280fbebcPC := 14.
        ].
        block280fbebcStep = 14 ifTrue: [
            block280fbebcResult := block280fbebcStack1.
            block280fbebcDone := true.
        ].
    ].
    block280fbebcResult
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodImplementation.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:block280fbee0Arg1 | 
    | block280fbee0Value0 block280fbee0Value1 |
    block280fbee0Value0 := block280fbee0Arg1.
    block280fbee0Value1 := (block280fbee0Value0) convertToASDV621.
    block280fbee0Value1
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20432e54; bytecode file offset 0xd2f8b8"
!SGImplConfiguration methodsFor: 'recovered'!
attributesTest
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: (' ').
    recoveredLocal1 := recoveredValue1.
    (self) setUsingServiceRoutine.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('--------setUsingServiceRoutine--------').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue4).
    (self) setNoOptimize.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('--------setNoOptimize--------').
    (recoveredValue5) cr.
    recoveredValue7 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue7).
    (self) setNoGenerate.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) nextPutAll: ('--------setNoGenerate--------').
    (recoveredValue8) cr.
    recoveredValue10 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue10).
    (self) setPrototype.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPutAll: ('--------setPrototype--------').
    (recoveredValue11) cr.
    recoveredValue13 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue13).
    (self) clearNoOptimize.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) nextPutAll: ('--------clearNoOptimize--------').
    (recoveredValue14) cr.
    recoveredValue16 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue16).
    (self) clearNoGenerate.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) nextPutAll: ('--------clearNoGenerate--------').
    (recoveredValue17) cr.
    recoveredValue19 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue19).
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (recoveredValue20) contents.
    (recoveredValue21) edit.
    ^self
! !

"ASDBase.ic method 0x20444290; bytecode file offset 0xd40b68"
!SGImplConfiguration methodsFor: 'recovered'!
configForElementHierarchical: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := recoveredLocal2.
    ^recoveredBlock9Value0
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLocal.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModelPathLocalFor: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) getModelPathFor: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Stack0 recoveredBlock75Stack1 recoveredBlock75Stack2 recoveredBlock75Stack3 recoveredBlock75PC recoveredBlock75Step recoveredBlock75Done recoveredBlock75Result |
    recoveredBlock75Stack0 := self.
    recoveredBlock75PC := 82.
    recoveredBlock75Done := false.
    [recoveredBlock75Done not] whileTrue: [
        recoveredBlock75Step := recoveredBlock75PC.
        recoveredBlock75Step = 82 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal2.
            recoveredBlock75PC := 85.
        ].
        recoveredBlock75Step = 85 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Arg1.
            recoveredBlock75PC := 86.
        ].
        recoveredBlock75Step = 86 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) configForElement: (recoveredBlock75Stack2).
            recoveredBlock75PC := 88.
        ].
        recoveredBlock75Step = 88 ifTrue: [
            recoveredLocal2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 91.
        ].
        recoveredBlock75Step = 91 ifTrue: [
            recoveredBlock75Stack1 := nil.
            recoveredBlock75PC := 92.
        ].
        recoveredBlock75Step = 92 ifTrue: [
            recoveredBlock75Stack2 := recoveredLocal2.
            recoveredBlock75PC := 95.
        ].
        recoveredBlock75Step = 95 ifTrue: [
            (recoveredBlock75Stack2 ~~ nil) ifTrue: [recoveredBlock75PC := 103] ifFalse: [recoveredBlock75PC := 98].
        ].
        recoveredBlock75Step = 98 ifTrue: [
            recoveredBlock75PC := 99.
        ].
        recoveredBlock75Step = 99 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal2.
            recoveredBlock75PC := 102.
        ].
        recoveredBlock75Step = 102 ifTrue: [
            ^recoveredBlock75Stack1
        ].
        recoveredBlock75Step = 103 ifTrue: [
            recoveredBlock75Result := recoveredBlock75Stack1.
            recoveredBlock75Done := true.
        ].
    ].
    recoveredBlock75Result
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047e604; bytecode file offset 0xd7af0c"
!SGImplConfiguration methodsFor: 'recovered'!
convertToDefaultMemoryLocation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_79038'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGExtraImplInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryClassDefault.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) memoryClass: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveValues.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:block28102310Arg1 | 
    | block28102310Stack0 block28102310Stack1 block28102310Stack2 block28102310Stack3 block28102310PC block28102310Step block28102310Done block28102310Result |
    block28102310Stack0 := self.
    block28102310PC := 4.
    block28102310Done := false.
    [block28102310Done not] whileTrue: [
        block28102310Step := block28102310PC.
        block28102310Step = 4 ifTrue: [
            block28102310Stack1 := nil.
            block28102310PC := 5.
        ].
        block28102310Step = 5 ifTrue: [
            block28102310Stack2 := block28102310Arg1.
            block28102310PC := 6.
        ].
        block28102310Step = 6 ifTrue: [
            (block28102310Stack2 == nil) ifTrue: [block28102310PC := 31] ifFalse: [block28102310PC := 10].
        ].
        block28102310Step = 10 ifTrue: [
            block28102310PC := 11.
        ].
        block28102310Step = 11 ifTrue: [
            block28102310Stack1 := block28102310Arg1.
            block28102310PC := 12.
        ].
        block28102310Step = 12 ifTrue: [
            block28102310Stack2 := SGExtraImplInfo.
            block28102310PC := 14.
        ].
        block28102310Step = 14 ifTrue: [
            block28102310Stack2 := (block28102310Stack2) memoryClassDefault.
            block28102310PC := 15.
        ].
        block28102310Step = 15 ifTrue: [
            (block28102310Stack1) memoryClass: (block28102310Stack2).
            block28102310PC := 17.
        ].
        block28102310Step = 17 ifTrue: [
            block28102310Stack1 := block28102310Arg1.
            block28102310PC := 18.
        ].
        block28102310Step = 18 ifTrue: [
            block28102310Stack2 := SGExtraImplInfo.
            block28102310PC := 20.
        ].
        block28102310Step = 20 ifTrue: [
            block28102310Stack2 := (block28102310Stack2) memoryClassReferenceDefault.
            block28102310PC := 22.
        ].
        block28102310Step = 22 ifTrue: [
            (block28102310Stack1) memoryLocationReference: (block28102310Stack2).
            block28102310PC := 24.
        ].
        block28102310Step = 24 ifTrue: [
            block28102310Stack1 := block28102310Arg1.
            block28102310PC := 25.
        ].
        block28102310Step = 25 ifTrue: [
            block28102310Stack2 := SGExtraImplInfo.
            block28102310PC := 27.
        ].
        block28102310Step = 27 ifTrue: [
            block28102310Stack2 := (block28102310Stack2) memoryLocationSearchResultDefault.
            block28102310PC := 29.
        ].
        block28102310Step = 29 ifTrue: [
            block28102310Stack1 := (block28102310Stack1) memoryLocationSearchResult: (block28102310Stack2).
            block28102310PC := 31.
        ].
        block28102310Step = 31 ifTrue: [
            block28102310Result := block28102310Stack1.
            block28102310Done := true.
        ].
    ].
    block28102310Result
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'Call_91941'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:block28102334Arg1 | 
    | block28102334Value0 block28102334Value1 block28102334Value2 block28102334Value3 block28102334Value4 block28102334Value5 block28102334Value6 block28102334Value7 block28102334Value8 block28102334Value9 |
    block28102334Value0 := block28102334Arg1.
    block28102334Value1 := SGExtraImplInfo.
    block28102334Value2 := (block28102334Value1) memoryClassDefault.
    (block28102334Value0) memoryLocationInstance: (block28102334Value2).
    block28102334Value3 := block28102334Arg1.
    block28102334Value4 := SGExtraImplInfo.
    block28102334Value5 := (block28102334Value4) memoryClassReferenceDefault.
    (block28102334Value3) memoryLocationReference: (block28102334Value5).
    block28102334Value6 := block28102334Arg1.
    block28102334Value7 := SGExtraImplInfo.
    block28102334Value8 := (block28102334Value7) memoryLocationSearchResultDefault.
    block28102334Value9 := (block28102334Value6) memoryLocationSearchResult: (block28102334Value8).
    block28102334Value9
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := 'Call_65898'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodImplementation.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := [:block28102358Arg1 | 
    | block28102358Stack0 block28102358Stack1 block28102358Stack2 block28102358Stack3 block28102358PC block28102358Step block28102358Done block28102358Result |
    block28102358Stack0 := self.
    block28102358PC := 4.
    block28102358Done := false.
    [block28102358Done not] whileTrue: [
        block28102358Step := block28102358PC.
        block28102358Step = 4 ifTrue: [
            block28102358Stack1 := nil.
            block28102358PC := 5.
        ].
        block28102358Step = 5 ifTrue: [
            block28102358Stack2 := block28102358Arg1.
            block28102358PC := 6.
        ].
        block28102358Step = 6 ifTrue: [
            (block28102358Stack2 == nil) ifTrue: [block28102358PC := 17] ifFalse: [block28102358PC := 10].
        ].
        block28102358Step = 10 ifTrue: [
            block28102358PC := 11.
        ].
        block28102358Step = 11 ifTrue: [
            block28102358Stack1 := block28102358Arg1.
            block28102358PC := 12.
        ].
        block28102358Step = 12 ifTrue: [
            block28102358Stack2 := SGExtraImplInfo.
            block28102358PC := 14.
        ].
        block28102358Step = 14 ifTrue: [
            block28102358Stack2 := (block28102358Stack2) memoryClassDefault.
            block28102358PC := 15.
        ].
        block28102358Step = 15 ifTrue: [
            block28102358Stack1 := (block28102358Stack1) memoryClass: (block28102358Stack2).
            block28102358PC := 17.
        ].
        block28102358Step = 17 ifTrue: [
            block28102358Result := block28102358Stack1.
            block28102358Done := true.
        ].
    ].
    block28102358Result
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20501f88; bytecode file offset 0xdfe898"
!SGImplConfiguration methodsFor: 'recovered'!
getAdditionalImplInfoForElement: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAdditionalImplInfoForElementBasic: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) isUserDefinedOrderEnabled.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) index.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) getConsistentConfigElementsInUserDefinedOrder.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerSGClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEntryForElement: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isContinuousTimeClass.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:block2810a764Arg1 | 
    nil
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 78].
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
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUserDefined.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 175] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 'call_80647'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLocationInstance.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLocationInstance.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := SGExtraImplInfo.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryClassDefault.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) memoryLocationInstance: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLocationReference.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLocationReference.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := SGExtraImplInfo.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryClassReferenceDefault.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) memoryLocationReference: (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLocationSearchResult.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLocationSearchResult.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 157].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := SGExtraImplInfo.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryLocationSearchResultDefault.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) memoryLocationSearchResult: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryLocationInstance.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) memoryLocationInstance: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryLocationReference.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) memoryLocationReference: (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryLocationSearchResult.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) memoryLocationSearchResult: (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20510580; bytecode file offset 0xe0ce7c"
!SGImplConfiguration methodsFor: 'recovered'!
getConsistentConfigElementsInUserDefinedOrder
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := #().
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
            recoveredStack0 := (recoveredStack0) allConfiguredElements.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block2810b358Arg1 | 
    | block2810b358Value0 block2810b358Value1 block2810b358Value2 |
    block2810b358Value0 := block2810b358Arg1.
    block2810b358Value1 := (block2810b358Value0) isImplementationCast.
    block2810b358Value2 := (block2810b358Value1) not.
    block2810b358Value2
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Local1 recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := false.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) getAdditionalImplInfoForElementBasic: (recoveredBlock25Stack3).
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Stack2.
            recoveredBlock25PC := 38.
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25Local1 := recoveredBlock25Stack3.
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            (recoveredBlock25Stack2 == nil) ifTrue: [recoveredBlock25PC := 47] ifFalse: [recoveredBlock25PC := 42].
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Local1.
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) index.
            recoveredBlock25PC := 46.
        ].
        recoveredBlock25Step = 46 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) notNil.
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [:recoveredBlock50Arg1 :recoveredBlock50Arg2 | 
    | recoveredBlock50Local1 recoveredBlock50Local2 recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Arg1.
            recoveredBlock50PC := 57.
        ].
        recoveredBlock50Step = 57 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) getAdditionalImplInfoForElementBasic: (recoveredBlock50Stack1).
            recoveredBlock50PC := 59.
        ].
        recoveredBlock50Step = 59 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) index.
            recoveredBlock50PC := 61.
        ].
        recoveredBlock50Step = 61 ifTrue: [
            recoveredBlock50Local2 := recoveredBlock50Stack0.
            recoveredBlock50PC := 62.
        ].
        recoveredBlock50Step = 62 ifTrue: [
            recoveredBlock50Stack0 := self.
            recoveredBlock50PC := 63.
        ].
        recoveredBlock50Step = 63 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Arg2.
            recoveredBlock50PC := 64.
        ].
        recoveredBlock50Step = 64 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) getAdditionalImplInfoForElementBasic: (recoveredBlock50Stack1).
            recoveredBlock50PC := 66.
        ].
        recoveredBlock50Step = 66 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) index.
            recoveredBlock50PC := 68.
        ].
        recoveredBlock50Step = 68 ifTrue: [
            recoveredBlock50Local1 := recoveredBlock50Stack0.
            recoveredBlock50PC := 69.
        ].
        recoveredBlock50Step = 69 ifTrue: [
            recoveredBlock50Stack0 := recoveredBlock50Local1.
            recoveredBlock50PC := 70.
        ].
        recoveredBlock50Step = 70 ifTrue: [
            (recoveredBlock50Stack0 == nil) ifTrue: [recoveredBlock50PC := 84] ifFalse: [recoveredBlock50PC := 74].
        ].
        recoveredBlock50Step = 74 ifTrue: [
            recoveredBlock50Stack0 := recoveredBlock50Local2.
            recoveredBlock50PC := 75.
        ].
        recoveredBlock50Step = 75 ifTrue: [
            (recoveredBlock50Stack0 == nil) ifTrue: [recoveredBlock50PC := 84] ifFalse: [recoveredBlock50PC := 78].
        ].
        recoveredBlock50Step = 78 ifTrue: [
            recoveredBlock50Stack0 := recoveredBlock50Local2.
            recoveredBlock50PC := 79.
        ].
        recoveredBlock50Step = 79 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Local1.
            recoveredBlock50PC := 80.
        ].
        recoveredBlock50Step = 80 ifTrue: [
            recoveredBlock50Stack0 := (recoveredBlock50Stack0) < (recoveredBlock50Stack1).
            recoveredBlock50PC := 81.
        ].
        recoveredBlock50Step = 81 ifTrue: [
            recoveredBlock50PC := 85.
        ].
        recoveredBlock50Step = 84 ifTrue: [
            recoveredBlock50Stack0 := true.
            recoveredBlock50PC := 85.
        ].
        recoveredBlock50Step = 85 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack0.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) allConfiguredElements.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [:block2810b37cArg1 | 
    | block2810b37cValue0 block2810b37cValue1 block2810b37cValue2 |
    block2810b37cValue0 := block2810b37cArg1.
    block2810b37cValue1 := (block2810b37cValue0) isImplementationCast.
    block2810b37cValue2 := (block2810b37cValue1) not.
    block2810b37cValue2
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := [:recoveredBlock103Arg1 | 
    | recoveredBlock103Local1 recoveredBlock103Stack0 recoveredBlock103Stack1 recoveredBlock103Stack2 recoveredBlock103Stack3 recoveredBlock103Stack4 recoveredBlock103PC recoveredBlock103Step recoveredBlock103Done recoveredBlock103Result |
    recoveredBlock103Stack0 := self.
    recoveredBlock103PC := 110.
    recoveredBlock103Done := false.
    [recoveredBlock103Done not] whileTrue: [
        recoveredBlock103Step := recoveredBlock103PC.
        recoveredBlock103Step = 110 ifTrue: [
            recoveredBlock103Stack1 := true.
            recoveredBlock103PC := 111.
        ].
        recoveredBlock103Step = 111 ifTrue: [
            recoveredBlock103Stack2 := self.
            recoveredBlock103PC := 112.
        ].
        recoveredBlock103Step = 112 ifTrue: [
            recoveredBlock103Stack3 := recoveredBlock103Arg1.
            recoveredBlock103PC := 113.
        ].
        recoveredBlock103Step = 113 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) getAdditionalImplInfoForElementBasic: (recoveredBlock103Stack3).
            recoveredBlock103PC := 115.
        ].
        recoveredBlock103Step = 115 ifTrue: [
            recoveredBlock103Stack3 := recoveredBlock103Stack2.
            recoveredBlock103PC := 116.
        ].
        recoveredBlock103Step = 116 ifTrue: [
            recoveredBlock103Local1 := recoveredBlock103Stack3.
            recoveredBlock103PC := 117.
        ].
        recoveredBlock103Step = 117 ifTrue: [
            (recoveredBlock103Stack2 == nil) ifTrue: [recoveredBlock103PC := 125] ifFalse: [recoveredBlock103PC := 120].
        ].
        recoveredBlock103Step = 120 ifTrue: [
            recoveredBlock103PC := 121.
        ].
        recoveredBlock103Step = 121 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Local1.
            recoveredBlock103PC := 122.
        ].
        recoveredBlock103Step = 122 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) index.
            recoveredBlock103PC := 124.
        ].
        recoveredBlock103Step = 124 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) isNil.
            recoveredBlock103PC := 125.
        ].
        recoveredBlock103Step = 125 ifTrue: [
            recoveredBlock103Result := recoveredBlock103Stack1.
            recoveredBlock103Done := true.
        ].
    ].
    recoveredBlock103Result
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := [:block2810b3a0Arg1 :block2810b3a0Arg2 | 
    | block2810b3a0Value0 block2810b3a0Value1 block2810b3a0Value2 block2810b3a0Value3 block2810b3a0Value4 |
    block2810b3a0Value0 := block2810b3a0Arg1.
    block2810b3a0Value1 := (block2810b3a0Value0) label.
    block2810b3a0Value2 := block2810b3a0Arg2.
    block2810b3a0Value3 := (block2810b3a0Value2) label.
    block2810b3a0Value4 := (block2810b3a0Value1) < (block2810b3a0Value3).
    block2810b3a0Value4
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUserDefinedOrderAvailable.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 183].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := [:recoveredBlock165Arg1 :recoveredBlock165Arg2 | 
    | recoveredBlock165Local1 recoveredBlock165Value0 recoveredBlock165Value1 recoveredBlock165Value2 recoveredBlock165Value3 recoveredBlock165Value4 |
    recoveredBlock165Value0 := recoveredBlock165Arg1.
    recoveredBlock165Value1 := (self) getAdditionalImplInfoForElementBasic: (recoveredBlock165Value0).
    recoveredBlock165Local1 := recoveredBlock165Value1.
    recoveredBlock165Value2 := recoveredBlock165Local1.
    recoveredBlock165Value3 := recoveredBlock165Arg2.
    recoveredBlock165Value4 := (recoveredBlock165Value2) index: (recoveredBlock165Value3).
    recoveredBlock165Value4
].
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20558c80; bytecode file offset 0xe55594"
!SGImplConfiguration methodsFor: 'recovered'!
replaceFormulaNamed: recoveredArg1 withFormula: recoveredArg2 monitor: recoveredArg3 visited: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_68013'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) asRBDBReference.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) asRBDBReference.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRBDBReference.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRBDBReference.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) importLabel.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := ' is not modifiable. Formula is not replaced.'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 'Replace Formulas in: '.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) completeLabel.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) makeConsistent.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 'Call_70560'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) allConfiguredElements.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := [:recoveredBlock115Arg1 | 
    | recoveredBlock115Local1 recoveredBlock115Local2 recoveredBlock115Stack0 recoveredBlock115Stack1 recoveredBlock115Stack2 recoveredBlock115Stack3 recoveredBlock115Stack4 recoveredBlock115PC recoveredBlock115Step recoveredBlock115Done recoveredBlock115Result |
    recoveredBlock115Stack0 := self.
    recoveredBlock115PC := 122.
    recoveredBlock115Done := false.
    [recoveredBlock115Done not] whileTrue: [
        recoveredBlock115Step := recoveredBlock115PC.
        recoveredBlock115Step = 122 ifTrue: [
            recoveredBlock115Stack1 := nil.
            recoveredBlock115PC := 123.
        ].
        recoveredBlock115Step = 123 ifTrue: [
            recoveredBlock115Stack2 := recoveredBlock115Arg1.
            recoveredBlock115PC := 124.
        ].
        recoveredBlock115Step = 124 ifTrue: [
            recoveredBlock115Stack2 := (recoveredBlock115Stack2) isPrimitive.
            recoveredBlock115PC := 126.
        ].
        recoveredBlock115Step = 126 ifTrue: [
            (recoveredBlock115Stack2) ifTrue: [recoveredBlock115PC := 130] ifFalse: [recoveredBlock115PC := 208].
        ].
        recoveredBlock115Step = 130 ifTrue: [
            recoveredBlock115PC := 131.
        ].
        recoveredBlock115Step = 131 ifTrue: [
            recoveredBlock115Stack1 := nil.
            recoveredBlock115PC := 132.
        ].
        recoveredBlock115Step = 132 ifTrue: [
            recoveredBlock115Stack2 := self.
            recoveredBlock115PC := 133.
        ].
        recoveredBlock115Step = 133 ifTrue: [
            recoveredBlock115Stack3 := recoveredBlock115Arg1.
            recoveredBlock115PC := 134.
        ].
        recoveredBlock115Step = 134 ifTrue: [
            recoveredBlock115Stack2 := (recoveredBlock115Stack2) configForElement: (recoveredBlock115Stack3).
            recoveredBlock115PC := 136.
        ].
        recoveredBlock115Step = 136 ifTrue: [
            recoveredBlock115Stack3 := recoveredBlock115Stack2.
            recoveredBlock115PC := 137.
        ].
        recoveredBlock115Step = 137 ifTrue: [
            recoveredBlock115Local2 := recoveredBlock115Stack3.
            recoveredBlock115PC := 138.
        ].
        recoveredBlock115Step = 138 ifTrue: [
            (recoveredBlock115Stack2 == nil) ifTrue: [recoveredBlock115PC := 206] ifFalse: [recoveredBlock115PC := 142].
        ].
        recoveredBlock115Step = 142 ifTrue: [
            recoveredBlock115PC := 143.
        ].
        recoveredBlock115Step = 143 ifTrue: [
            recoveredBlock115Stack1 := recoveredBlock115Local2.
            recoveredBlock115PC := 144.
        ].
        recoveredBlock115Step = 144 ifTrue: [
            recoveredBlock115Stack2 := recoveredArg1.
            recoveredBlock115PC := 147.
        ].
        recoveredBlock115Step = 147 ifTrue: [
            recoveredBlock115Stack3 := recoveredArg2.
            recoveredBlock115PC := 150.
        ].
        recoveredBlock115Step = 150 ifTrue: [
            recoveredBlock115Stack1 := (recoveredBlock115Stack1) replaceFormulaNamed: (recoveredBlock115Stack2) withFormula: (recoveredBlock115Stack3).
            recoveredBlock115PC := 152.
        ].
        recoveredBlock115Step = 152 ifTrue: [
            recoveredBlock115Local1 := recoveredBlock115Stack1.
            recoveredBlock115PC := 153.
        ].
        recoveredBlock115Step = 153 ifTrue: [
            recoveredBlock115Stack1 := recoveredBlock115Local1.
            recoveredBlock115PC := 154.
        ].
        recoveredBlock115Step = 154 ifTrue: [
            recoveredBlock115Stack2 := 2.
            recoveredBlock115PC := 156.
        ].
        recoveredBlock115Step = 156 ifTrue: [
            recoveredBlock115Stack1 := (recoveredBlock115Stack1) bitAnd: (recoveredBlock115Stack2).
            recoveredBlock115PC := 158.
        ].
        recoveredBlock115Step = 158 ifTrue: [
            recoveredBlock115Stack2 := 2.
            recoveredBlock115PC := 160.
        ].
        recoveredBlock115Step = 160 ifTrue: [
            recoveredBlock115Stack1 := (recoveredBlock115Stack1) = (recoveredBlock115Stack2).
            recoveredBlock115PC := 161.
        ].
        recoveredBlock115Step = 161 ifTrue: [
            (recoveredBlock115Stack1) ifTrue: [recoveredBlock115PC := 164] ifFalse: [recoveredBlock115PC := 180].
        ].
        recoveredBlock115Step = 164 ifTrue: [
            recoveredBlock115Stack1 := recoveredArg3.
            recoveredBlock115PC := 167.
        ].
        recoveredBlock115Step = 167 ifTrue: [
            recoveredBlock115Stack2 := recoveredBlock115Stack1.
            recoveredBlock115PC := 168.
        ].
        recoveredBlock115Step = 168 ifTrue: [
            (recoveredBlock115Stack2) cr.
            recoveredBlock115Stack2 := recoveredBlock115Stack1.
            recoveredBlock115PC := 171.
        ].
        recoveredBlock115Step = 171 ifTrue: [
            recoveredBlock115Stack3 := 'Impl type changed in element: '.
            recoveredBlock115PC := 173.
        ].
        recoveredBlock115Step = 173 ifTrue: [
            (recoveredBlock115Stack2) nextPutAll: (recoveredBlock115Stack3).
            recoveredBlock115PC := 175.
        ].
        recoveredBlock115Step = 175 ifTrue: [
            recoveredBlock115Stack2 := recoveredBlock115Arg1.
            recoveredBlock115PC := 176.
        ].
        recoveredBlock115Step = 176 ifTrue: [
            recoveredBlock115Stack2 := (recoveredBlock115Stack2) label.
            recoveredBlock115PC := 178.
        ].
        recoveredBlock115Step = 178 ifTrue: [
            (recoveredBlock115Stack1) nextPutAll: (recoveredBlock115Stack2).
            recoveredBlock115PC := 180.
        ].
        recoveredBlock115Step = 180 ifTrue: [
            recoveredBlock115Stack1 := 'Kk'.
            recoveredBlock115PC := 182.
        ].
        recoveredBlock115Step = 182 ifTrue: [
            recoveredBlock115Stack2 := 'Call_70560'.
            recoveredBlock115PC := 184.
        ].
        recoveredBlock115Step = 184 ifTrue: [
            recoveredBlock115Stack1 := (recoveredBlock115Stack1) == (recoveredBlock115Stack2).
            recoveredBlock115PC := 185.
        ].
        recoveredBlock115Step = 185 ifTrue: [
            recoveredBlock115PC := 186.
        ].
        recoveredBlock115Step = 186 ifTrue: [
            recoveredBlock115Stack1 := nil.
            recoveredBlock115PC := 187.
        ].
        recoveredBlock115Step = 187 ifTrue: [
            recoveredBlock115Stack2 := recoveredBlock115Local1.
            recoveredBlock115PC := 188.
        ].
        recoveredBlock115Step = 188 ifTrue: [
            recoveredBlock115Stack3 := 3.
            recoveredBlock115PC := 190.
        ].
        recoveredBlock115Step = 190 ifTrue: [
            recoveredBlock115Stack2 := (recoveredBlock115Stack2) bitAnd: (recoveredBlock115Stack3).
            recoveredBlock115PC := 192.
        ].
        recoveredBlock115Step = 192 ifTrue: [
            recoveredBlock115Stack3 := 0.
            recoveredBlock115PC := 194.
        ].
        recoveredBlock115Step = 194 ifTrue: [
            recoveredBlock115Stack2 := (recoveredBlock115Stack2) ~= (recoveredBlock115Stack3).
            recoveredBlock115PC := 195.
        ].
        recoveredBlock115Step = 195 ifTrue: [
            (recoveredBlock115Stack2) ifTrue: [recoveredBlock115PC := 198] ifFalse: [recoveredBlock115PC := 204].
        ].
        recoveredBlock115Step = 198 ifTrue: [
            recoveredBlock115PC := 199.
        ].
        recoveredBlock115Step = 199 ifTrue: [
            recoveredBlock115Stack1 := true.
            recoveredBlock115PC := 200.
        ].
        recoveredBlock115Step = 200 ifTrue: [
            recoveredBlock115Stack2 := recoveredBlock115Stack1.
            recoveredBlock115PC := 201.
        ].
        recoveredBlock115Step = 201 ifTrue: [
            recoveredLocal1 := recoveredBlock115Stack2.
            recoveredBlock115PC := 204.
        ].
        recoveredBlock115Step = 204 ifTrue: [
            recoveredBlock115Stack2 := nil.
            recoveredBlock115PC := 205.
        ].
        recoveredBlock115Step = 205 ifTrue: [
            recoveredBlock115Local1 := recoveredBlock115Stack2.
            recoveredBlock115PC := 206.
        ].
        recoveredBlock115Step = 206 ifTrue: [
            recoveredBlock115Stack2 := nil.
            recoveredBlock115PC := 207.
        ].
        recoveredBlock115Step = 207 ifTrue: [
            recoveredBlock115Local2 := recoveredBlock115Stack2.
            recoveredBlock115PC := 208.
        ].
        recoveredBlock115Step = 208 ifTrue: [
            recoveredBlock115Result := recoveredBlock115Stack1.
            recoveredBlock115Done := true.
        ].
    ].
    recoveredBlock115Result
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := 'Call_70560'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 227].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ee2f4; bytecode file offset 0xeeac80"
!SGImplConfiguration methodsFor: 'recovered'!
internalWriteXML: recoveredArg1 implementations: recoveredArg2 guts: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'XMLExport'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 |
    recoveredBlock25Value0 := recoveredLocal1.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value1) aliasName.
    recoveredBlock25Value3 := recoveredBlock25Arg1.
    recoveredBlock25Value4 := (recoveredBlock25Value0) at: (recoveredBlock25Value2) put: (recoveredBlock25Value3).
    recoveredBlock25Value4
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) allElementsDo: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 :recoveredBlock51Arg2 | 
    | recoveredBlock51Local1 recoveredBlock51Local2 recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51Stack5 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 59.
        ].
        recoveredBlock51Step = 59 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) isString.
            recoveredBlock51PC := 61.
        ].
        recoveredBlock51Step = 61 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 64] ifFalse: [recoveredBlock51PC := 68].
        ].
        recoveredBlock51Step = 64 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 65.
        ].
        recoveredBlock51Step = 65 ifTrue: [
            recoveredBlock51PC := 87.
        ].
        recoveredBlock51Step = 68 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal1.
            recoveredBlock51PC := 71.
        ].
        recoveredBlock51Step = 71 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 72.
        ].
        recoveredBlock51Step = 72 ifTrue: [
            recoveredBlock51Stack3 := [].
            recoveredBlock51PC := 74.
        ].
        recoveredBlock51Step = 74 ifTrue: [
            recoveredBlock51Stack4 := [:block2811b5f4Arg1 | 
    | block2811b5f4Value0 block2811b5f4Value1 |
    block2811b5f4Value0 := block2811b5f4Arg1.
    block2811b5f4Value1 := (block2811b5f4Value0) label.
    block2811b5f4Value1
].
            recoveredBlock51PC := 76.
        ].
        recoveredBlock51Step = 76 ifTrue: [
            recoveredBlock51PC := 84.
        ].
        recoveredBlock51Step = 84 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) at: (recoveredBlock51Stack2) ifAbsent: (recoveredBlock51Stack3) ifPresent: (recoveredBlock51Stack4).
            recoveredBlock51PC := 87.
        ].
        recoveredBlock51Step = 87 ifTrue: [
            recoveredBlock51Local2 := recoveredBlock51Stack1.
            recoveredBlock51PC := 88.
        ].
        recoveredBlock51Step = 88 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg2.
            recoveredBlock51PC := 89.
        ].
        recoveredBlock51Step = 89 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) isString.
            recoveredBlock51PC := 91.
        ].
        recoveredBlock51Step = 91 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 94] ifFalse: [recoveredBlock51PC := 98].
        ].
        recoveredBlock51Step = 94 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg2.
            recoveredBlock51PC := 95.
        ].
        recoveredBlock51Step = 95 ifTrue: [
            recoveredBlock51PC := 117.
        ].
        recoveredBlock51Step = 98 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal1.
            recoveredBlock51PC := 101.
        ].
        recoveredBlock51Step = 101 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg2.
            recoveredBlock51PC := 102.
        ].
        recoveredBlock51Step = 102 ifTrue: [
            recoveredBlock51Stack3 := [].
            recoveredBlock51PC := 104.
        ].
        recoveredBlock51Step = 104 ifTrue: [
            recoveredBlock51Stack4 := [:block2811b618Arg1 | 
    | block2811b618Value0 block2811b618Value1 |
    block2811b618Value0 := block2811b618Arg1.
    block2811b618Value1 := (block2811b618Value0) label.
    block2811b618Value1
].
            recoveredBlock51PC := 106.
        ].
        recoveredBlock51Step = 106 ifTrue: [
            recoveredBlock51PC := 114.
        ].
        recoveredBlock51Step = 114 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) at: (recoveredBlock51Stack2) ifAbsent: (recoveredBlock51Stack3) ifPresent: (recoveredBlock51Stack4).
            recoveredBlock51PC := 117.
        ].
        recoveredBlock51Step = 117 ifTrue: [
            recoveredBlock51Local1 := recoveredBlock51Stack1.
            recoveredBlock51PC := 118.
        ].
        recoveredBlock51Step = 118 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local2.
            recoveredBlock51PC := 119.
        ].
        recoveredBlock51Step = 119 ifTrue: [
            (recoveredBlock51Stack1 ~~ nil) ifTrue: [recoveredBlock51PC := 125] ifFalse: [recoveredBlock51PC := 122].
        ].
        recoveredBlock51Step = 122 ifTrue: [
            recoveredBlock51Stack1 := ''.
            recoveredBlock51PC := 124.
        ].
        recoveredBlock51Step = 124 ifTrue: [
            recoveredBlock51Local2 := recoveredBlock51Stack1.
            recoveredBlock51PC := 125.
        ].
        recoveredBlock51Step = 125 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local1.
            recoveredBlock51PC := 126.
        ].
        recoveredBlock51Step = 126 ifTrue: [
            (recoveredBlock51Stack1 ~~ nil) ifTrue: [recoveredBlock51PC := 133] ifFalse: [recoveredBlock51PC := 130].
        ].
        recoveredBlock51Step = 130 ifTrue: [
            recoveredBlock51Stack1 := ''.
            recoveredBlock51PC := 132.
        ].
        recoveredBlock51Step = 132 ifTrue: [
            recoveredBlock51Local1 := recoveredBlock51Stack1.
            recoveredBlock51PC := 133.
        ].
        recoveredBlock51Step = 133 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local2.
            recoveredBlock51PC := 134.
        ].
        recoveredBlock51Step = 134 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Local1.
            recoveredBlock51PC := 135.
        ].
        recoveredBlock51Step = 135 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) < (recoveredBlock51Stack2).
            recoveredBlock51PC := 136.
        ].
        recoveredBlock51Step = 136 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := [:recoveredBlock145Arg1 | 
    | recoveredBlock145Local1 recoveredBlock145Local2 recoveredBlock145Stack0 recoveredBlock145Stack1 recoveredBlock145Stack2 recoveredBlock145Stack3 recoveredBlock145Stack4 recoveredBlock145Stack5 recoveredBlock145PC recoveredBlock145Step recoveredBlock145Done recoveredBlock145Result |
    recoveredBlock145Stack0 := self.
    recoveredBlock145PC := 152.
    recoveredBlock145Done := false.
    [recoveredBlock145Done not] whileTrue: [
        recoveredBlock145Step := recoveredBlock145PC.
        recoveredBlock145Step = 152 ifTrue: [
            recoveredBlock145Stack1 := recoveredLocal1.
            recoveredBlock145PC := 155.
        ].
        recoveredBlock145Step = 155 ifTrue: [
            recoveredBlock145Stack2 := recoveredBlock145Arg1.
            recoveredBlock145PC := 156.
        ].
        recoveredBlock145Step = 156 ifTrue: [
            recoveredBlock145Stack3 := [].
            recoveredBlock145PC := 158.
        ].
        recoveredBlock145Step = 158 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) at: (recoveredBlock145Stack2) ifAbsent: (recoveredBlock145Stack3).
            recoveredBlock145PC := 160.
        ].
        recoveredBlock145Step = 160 ifTrue: [
            recoveredBlock145Local2 := recoveredBlock145Stack1.
            recoveredBlock145PC := 161.
        ].
        recoveredBlock145Step = 161 ifTrue: [
            recoveredBlock145Stack1 := recoveredArg2.
            recoveredBlock145PC := 164.
        ].
        recoveredBlock145Step = 164 ifTrue: [
            recoveredBlock145Stack2 := recoveredBlock145Arg1.
            recoveredBlock145PC := 165.
        ].
        recoveredBlock145Step = 165 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) at: (recoveredBlock145Stack2).
            recoveredBlock145PC := 167.
        ].
        recoveredBlock145Step = 167 ifTrue: [
            recoveredBlock145Local1 := recoveredBlock145Stack1.
            recoveredBlock145PC := 168.
        ].
        recoveredBlock145Step = 168 ifTrue: [
            recoveredBlock145Stack1 := nil.
            recoveredBlock145PC := 169.
        ].
        recoveredBlock145Step = 169 ifTrue: [
            recoveredBlock145Stack2 := recoveredBlock145Local2.
            recoveredBlock145PC := 170.
        ].
        recoveredBlock145Step = 170 ifTrue: [
            (recoveredBlock145Stack2 == nil) ifTrue: [recoveredBlock145PC := 400] ifFalse: [recoveredBlock145PC := 174].
        ].
        recoveredBlock145Step = 174 ifTrue: [
            recoveredBlock145Stack2 := recoveredBlock145Local1.
            recoveredBlock145PC := 175.
        ].
        recoveredBlock145Step = 175 ifTrue: [
            (recoveredBlock145Stack2 == nil) ifTrue: [recoveredBlock145PC := 400] ifFalse: [recoveredBlock145PC := 178].
        ].
        recoveredBlock145Step = 178 ifTrue: [
            recoveredBlock145PC := 179.
        ].
        recoveredBlock145Step = 179 ifTrue: [
            recoveredBlock145Stack1 := recoveredArg1.
            recoveredBlock145PC := 182.
        ].
        recoveredBlock145Step = 182 ifTrue: [
            recoveredBlock145Stack2 := 'ImplementationEntry'.
            recoveredBlock145PC := 184.
        ].
        recoveredBlock145Step = 184 ifTrue: [
            (recoveredBlock145Stack1) openComplex: (recoveredBlock145Stack2).
            recoveredBlock145PC := 186.
        ].
        recoveredBlock145Step = 186 ifTrue: [
            recoveredBlock145Stack1 := recoveredArg1.
            recoveredBlock145PC := 189.
        ].
        recoveredBlock145Step = 189 ifTrue: [
            recoveredBlock145Stack2 := 'ImplementationVariant'.
            recoveredBlock145PC := 191.
        ].
        recoveredBlock145Step = 191 ifTrue: [
            (recoveredBlock145Stack1) openComplex: (recoveredBlock145Stack2).
            recoveredBlock145PC := 193.
        ].
        recoveredBlock145Step = 193 ifTrue: [
            recoveredBlock145Stack1 := EtasXmlUtil.
            recoveredBlock145PC := 195.
        ].
        recoveredBlock145Step = 195 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) isXMLDebug.
            recoveredBlock145PC := 197.
        ].
        recoveredBlock145Step = 197 ifTrue: [
            (recoveredBlock145Stack1) ifTrue: [recoveredBlock145PC := 200] ifFalse: [recoveredBlock145PC := 216].
        ].
        recoveredBlock145Step = 200 ifTrue: [
            recoveredBlock145Stack1 := recoveredArg1.
            recoveredBlock145PC := 203.
        ].
        recoveredBlock145Step = 203 ifTrue: [
            recoveredBlock145Stack2 := 'name'.
            recoveredBlock145PC := 205.
        ].
        recoveredBlock145Step = 205 ifTrue: [
            recoveredBlock145Stack3 := recoveredBlock145Local1.
            recoveredBlock145PC := 206.
        ].
        recoveredBlock145Step = 206 ifTrue: [
            recoveredBlock145Stack3 := (recoveredBlock145Stack3) class.
            recoveredBlock145PC := 208.
        ].
        recoveredBlock145Step = 208 ifTrue: [
            recoveredBlock145Stack3 := (recoveredBlock145Stack3) name.
            recoveredBlock145PC := 210.
        ].
        recoveredBlock145Step = 210 ifTrue: [
            (recoveredBlock145Stack1) attr: (recoveredBlock145Stack2) id: (recoveredBlock145Stack3).
            recoveredBlock145PC := 212.
        ].
        recoveredBlock145Step = 212 ifTrue: [
            recoveredBlock145PC := 225.
        ].
        recoveredBlock145Step = 216 ifTrue: [
            recoveredBlock145Stack1 := recoveredArg1.
            recoveredBlock145PC := 219.
        ].
        recoveredBlock145Step = 219 ifTrue: [
            recoveredBlock145Stack2 := 'name'.
            recoveredBlock145PC := 221.
        ].
        recoveredBlock145Step = 221 ifTrue: [
            recoveredBlock145Stack3 := 'default'.
            recoveredBlock145PC := 223.
        ].
        recoveredBlock145Step = 223 ifTrue: [
            (recoveredBlock145Stack1) attr: (recoveredBlock145Stack2) id: (recoveredBlock145Stack3).
            recoveredBlock145PC := 225.
        ].
        recoveredBlock145Step = 225 ifTrue: [
            recoveredBlock145Stack1 := recoveredArg1.
            recoveredBlock145PC := 228.
        ].
        recoveredBlock145Step = 228 ifTrue: [
            recoveredBlock145Stack2 := 'ElementImplementation'.
            recoveredBlock145PC := 230.
        ].
        recoveredBlock145Step = 230 ifTrue: [
            (recoveredBlock145Stack1) openComplex: (recoveredBlock145Stack2).
            recoveredBlock145PC := 232.
        ].
        recoveredBlock145Step = 232 ifTrue: [
            recoveredBlock145Stack1 := recoveredArg1.
            recoveredBlock145PC := 235.
        ].
        recoveredBlock145Step = 235 ifTrue: [
            recoveredBlock145Stack2 := recoveredBlock145Local2.
            recoveredBlock145PC := 236.
        ].
        recoveredBlock145Step = 236 ifTrue: [
            (recoveredBlock145Stack1) elementIdentification: (recoveredBlock145Stack2).
            recoveredBlock145PC := 238.
        ].
        recoveredBlock145Step = 238 ifTrue: [
            recoveredBlock145Stack1 := 'Kli'.
            recoveredBlock145PC := 240.
        ].
        recoveredBlock145Step = 240 ifTrue: [
            recoveredBlock145Stack2 := 'Call_91302'.
            recoveredBlock145PC := 242.
        ].
        recoveredBlock145Step = 242 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) == (recoveredBlock145Stack2).
            recoveredBlock145PC := 243.
        ].
        recoveredBlock145Step = 243 ifTrue: [
            recoveredBlock145PC := 244.
        ].
        recoveredBlock145Step = 244 ifTrue: [
            recoveredBlock145Stack1 := recoveredBlock145Local2.
            recoveredBlock145PC := 245.
        ].
        recoveredBlock145Step = 245 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) isAliasDummy.
            recoveredBlock145PC := 247.
        ].
        recoveredBlock145Step = 247 ifTrue: [
            (recoveredBlock145Stack1) ifTrue: [recoveredBlock145PC := 250] ifFalse: [recoveredBlock145PC := 260].
        ].
        recoveredBlock145Step = 250 ifTrue: [
            recoveredBlock145Stack1 := recoveredBlock145Local2.
            recoveredBlock145PC := 251.
        ].
        recoveredBlock145Step = 251 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) isReturn.
            recoveredBlock145PC := 253.
        ].
        recoveredBlock145Step = 253 ifTrue: [
            (recoveredBlock145Stack1) ifTrue: [recoveredBlock145PC := 256] ifFalse: [recoveredBlock145PC := 260].
        ].
        recoveredBlock145Step = 256 ifTrue: [
            recoveredBlock145PC := 270.
        ].
        recoveredBlock145Step = 260 ifTrue: [
            recoveredBlock145Stack1 := recoveredArg1.
            recoveredBlock145PC := 263.
        ].
        recoveredBlock145Step = 263 ifTrue: [
            recoveredBlock145Stack2 := 'elementOID'.
            recoveredBlock145PC := 265.
        ].
        recoveredBlock145Step = 265 ifTrue: [
            recoveredBlock145Stack3 := recoveredBlock145Local2.
            recoveredBlock145PC := 266.
        ].
        recoveredBlock145Step = 266 ifTrue: [
            recoveredBlock145Stack3 := (recoveredBlock145Stack3) aliasName.
            recoveredBlock145PC := 268.
        ].
        recoveredBlock145Step = 268 ifTrue: [
            (recoveredBlock145Stack1) attr: (recoveredBlock145Stack2) localId: (recoveredBlock145Stack3).
            recoveredBlock145PC := 270.
        ].
        recoveredBlock145Step = 270 ifTrue: [
            recoveredBlock145Stack1 := 'Kli'.
            recoveredBlock145PC := 272.
        ].
        recoveredBlock145Step = 272 ifTrue: [
            recoveredBlock145Stack2 := 'Call_71172'.
            recoveredBlock145PC := 274.
        ].
        recoveredBlock145Step = 274 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) == (recoveredBlock145Stack2).
            recoveredBlock145PC := 275.
        ].
        recoveredBlock145Step = 275 ifTrue: [
            recoveredBlock145PC := 276.
        ].
        recoveredBlock145Step = 276 ifTrue: [
            recoveredBlock145Stack1 := recoveredBlock145Local2.
            recoveredBlock145PC := 277.
        ].
        recoveredBlock145Step = 277 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) isPrimitive.
            recoveredBlock145PC := 279.
        ].
        recoveredBlock145Step = 279 ifTrue: [
            (recoveredBlock145Stack1) ifTrue: [recoveredBlock145PC := 282] ifFalse: [recoveredBlock145PC := 296].
        ].
        recoveredBlock145Step = 282 ifTrue: [
            recoveredBlock145Stack1 := recoveredBlock145Local2.
            recoveredBlock145PC := 283.
        ].
        recoveredBlock145Step = 283 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) sgClass.
            recoveredBlock145PC := 285.
        ].
        recoveredBlock145Step = 285 ifTrue: [
            (recoveredBlock145Stack1 == nil) ifTrue: [recoveredBlock145PC := 312] ifFalse: [recoveredBlock145PC := 288].
        ].
        recoveredBlock145Step = 288 ifTrue: [
            recoveredBlock145Stack1 := recoveredBlock145Local2.
            recoveredBlock145PC := 289.
        ].
        recoveredBlock145Step = 289 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) sgClass.
            recoveredBlock145PC := 291.
        ].
        recoveredBlock145Step = 291 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) isComplexType.
            recoveredBlock145PC := 293.
        ].
        recoveredBlock145Step = 293 ifTrue: [
            (recoveredBlock145Stack1) ifTrue: [recoveredBlock145PC := 296] ifFalse: [recoveredBlock145PC := 312].
        ].
        recoveredBlock145Step = 296 ifTrue: [
            recoveredBlock145Stack1 := self.
            recoveredBlock145PC := 297.
        ].
        recoveredBlock145Step = 297 ifTrue: [
            recoveredBlock145Stack2 := recoveredBlock145Local2.
            recoveredBlock145PC := 298.
        ].
        recoveredBlock145Step = 298 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) configForElementIsUsingReference: (recoveredBlock145Stack2).
            recoveredBlock145PC := 300.
        ].
        recoveredBlock145Step = 300 ifTrue: [
            (recoveredBlock145Stack1) ifTrue: [recoveredBlock145PC := 304] ifFalse: [recoveredBlock145PC := 312].
        ].
        recoveredBlock145Step = 304 ifTrue: [
            recoveredBlock145Stack1 := recoveredArg1.
            recoveredBlock145PC := 307.
        ].
        recoveredBlock145Step = 307 ifTrue: [
            recoveredBlock145Stack2 := 'asReference'.
            recoveredBlock145PC := 309.
        ].
        recoveredBlock145Step = 309 ifTrue: [
            recoveredBlock145Stack3 := true.
            recoveredBlock145PC := 310.
        ].
        recoveredBlock145Step = 310 ifTrue: [
            (recoveredBlock145Stack1) attr: (recoveredBlock145Stack2) boolean: (recoveredBlock145Stack3).
            recoveredBlock145PC := 312.
        ].
        recoveredBlock145Step = 312 ifTrue: [
            recoveredBlock145Stack1 := 'Kli'.
            recoveredBlock145PC := 314.
        ].
        recoveredBlock145Step = 314 ifTrue: [
            recoveredBlock145Stack2 := 'Call_1004130'.
            recoveredBlock145PC := 316.
        ].
        recoveredBlock145Step = 316 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) == (recoveredBlock145Stack2).
            recoveredBlock145PC := 317.
        ].
        recoveredBlock145Step = 317 ifTrue: [
            recoveredBlock145PC := 318.
        ].
        recoveredBlock145Step = 318 ifTrue: [
            recoveredBlock145Stack1 := self.
            recoveredBlock145PC := 319.
        ].
        recoveredBlock145Step = 319 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) isUserDefinedOrderAvailable.
            recoveredBlock145PC := 321.
        ].
        recoveredBlock145Step = 321 ifTrue: [
            (recoveredBlock145Stack1) ifTrue: [recoveredBlock145PC := 324] ifFalse: [recoveredBlock145PC := 367].
        ].
        recoveredBlock145Step = 324 ifTrue: [
            recoveredBlock145Stack1 := self.
            recoveredBlock145PC := 325.
        ].
        recoveredBlock145Step = 325 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) additionalImplInfo.
            recoveredBlock145PC := 327.
        ].
        recoveredBlock145Step = 327 ifTrue: [
            (recoveredBlock145Stack1 == nil) ifTrue: [recoveredBlock145PC := 367] ifFalse: [recoveredBlock145PC := 330].
        ].
        recoveredBlock145Step = 330 ifTrue: [
            recoveredBlock145Stack1 := self.
            recoveredBlock145PC := 331.
        ].
        recoveredBlock145Step = 331 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) additionalImplInfo.
            recoveredBlock145PC := 333.
        ].
        recoveredBlock145Step = 333 ifTrue: [
            recoveredBlock145Stack2 := recoveredBlock145Local2.
            recoveredBlock145PC := 334.
        ].
        recoveredBlock145Step = 334 ifTrue: [
            recoveredBlock145Stack2 := (recoveredBlock145Stack2) aliasName.
            recoveredBlock145PC := 336.
        ].
        recoveredBlock145Step = 336 ifTrue: [
            recoveredBlock145Stack3 := [].
            recoveredBlock145PC := 338.
        ].
        recoveredBlock145Step = 338 ifTrue: [
            recoveredBlock145Stack4 := [:recoveredBlock145Block338Arg1 | 
    | recoveredBlock145Block338Stack0 recoveredBlock145Block338Stack1 recoveredBlock145Block338Stack2 recoveredBlock145Block338Stack3 recoveredBlock145Block338Stack4 recoveredBlock145Block338PC recoveredBlock145Block338Step recoveredBlock145Block338Done recoveredBlock145Block338Result |
    recoveredBlock145Block338Stack0 := nil.
    recoveredBlock145Block338PC := 344.
    recoveredBlock145Block338Done := false.
    [recoveredBlock145Block338Done not] whileTrue: [
        recoveredBlock145Block338Step := recoveredBlock145Block338PC.
        recoveredBlock145Block338Step = 344 ifTrue: [
            recoveredBlock145Block338Stack1 := nil.
            recoveredBlock145Block338PC := 345.
        ].
        recoveredBlock145Block338Step = 345 ifTrue: [
            recoveredBlock145Block338Stack2 := recoveredBlock145Block338Arg1.
            recoveredBlock145Block338PC := 346.
        ].
        recoveredBlock145Block338Step = 346 ifTrue: [
            recoveredBlock145Block338Stack2 := (recoveredBlock145Block338Stack2) index.
            recoveredBlock145Block338PC := 348.
        ].
        recoveredBlock145Block338Step = 348 ifTrue: [
            (recoveredBlock145Block338Stack2 == nil) ifTrue: [recoveredBlock145Block338PC := 363] ifFalse: [recoveredBlock145Block338PC := 352].
        ].
        recoveredBlock145Block338Step = 352 ifTrue: [
            recoveredBlock145Block338PC := 353.
        ].
        recoveredBlock145Block338Step = 353 ifTrue: [
            recoveredBlock145Block338Stack1 := recoveredArg1.
            recoveredBlock145Block338PC := 356.
        ].
        recoveredBlock145Block338Step = 356 ifTrue: [
            recoveredBlock145Block338Stack2 := 'index'.
            recoveredBlock145Block338PC := 358.
        ].
        recoveredBlock145Block338Step = 358 ifTrue: [
            recoveredBlock145Block338Stack3 := recoveredBlock145Block338Arg1.
            recoveredBlock145Block338PC := 359.
        ].
        recoveredBlock145Block338Step = 359 ifTrue: [
            recoveredBlock145Block338Stack3 := (recoveredBlock145Block338Stack3) index.
            recoveredBlock145Block338PC := 361.
        ].
        recoveredBlock145Block338Step = 361 ifTrue: [
            recoveredBlock145Block338Stack1 := (recoveredBlock145Block338Stack1) attr: (recoveredBlock145Block338Stack2) nnInt: (recoveredBlock145Block338Stack3).
            recoveredBlock145Block338PC := 363.
        ].
        recoveredBlock145Block338Step = 363 ifTrue: [
            recoveredBlock145Block338Result := recoveredBlock145Block338Stack1.
            recoveredBlock145Block338Done := true.
        ].
    ].
    recoveredBlock145Block338Result
].
            recoveredBlock145PC := 364.
        ].
        recoveredBlock145Step = 364 ifTrue: [
            (recoveredBlock145Stack1) at: (recoveredBlock145Stack2) ifAbsent: (recoveredBlock145Stack3) ifPresent: (recoveredBlock145Stack4).
            recoveredBlock145PC := 367.
        ].
        recoveredBlock145Step = 367 ifTrue: [
            recoveredBlock145Stack1 := recoveredArg3.
            recoveredBlock145PC := 370.
        ].
        recoveredBlock145Step = 370 ifTrue: [
            recoveredBlock145Stack2 := recoveredBlock145Local2.
            recoveredBlock145PC := 371.
        ].
        recoveredBlock145Step = 371 ifTrue: [
            recoveredBlock145Stack3 := recoveredBlock145Local1.
            recoveredBlock145PC := 372.
        ].
        recoveredBlock145Step = 372 ifTrue: [
            recoveredBlock145Stack4 := recoveredBlock145Local2.
            recoveredBlock145PC := 373.
        ].
        recoveredBlock145Step = 373 ifTrue: [
            recoveredBlock145Stack4 := (recoveredBlock145Stack4) isReference.
            recoveredBlock145PC := 375.
        ].
        recoveredBlock145Step = 375 ifTrue: [
            (recoveredBlock145Stack1) value: (recoveredBlock145Stack2) value: (recoveredBlock145Stack3) value: (recoveredBlock145Stack4).
            recoveredBlock145PC := 378.
        ].
        recoveredBlock145Step = 378 ifTrue: [
            recoveredBlock145Stack1 := recoveredArg1.
            recoveredBlock145PC := 381.
        ].
        recoveredBlock145Step = 381 ifTrue: [
            (recoveredBlock145Stack1) closeComplex.
            recoveredBlock145PC := 383.
        ].
        recoveredBlock145Step = 383 ifTrue: [
            recoveredBlock145Stack1 := recoveredArg1.
            recoveredBlock145PC := 386.
        ].
        recoveredBlock145Step = 386 ifTrue: [
            (recoveredBlock145Stack1) closeComplex.
            recoveredBlock145PC := 388.
        ].
        recoveredBlock145Step = 388 ifTrue: [
            recoveredBlock145Stack1 := self.
            recoveredBlock145PC := 389.
        ].
        recoveredBlock145Step = 389 ifTrue: [
            recoveredBlock145Stack2 := recoveredArg1.
            recoveredBlock145PC := 392.
        ].
        recoveredBlock145Step = 392 ifTrue: [
            recoveredBlock145Stack3 := recoveredBlock145Local2.
            recoveredBlock145PC := 393.
        ].
        recoveredBlock145Step = 393 ifTrue: [
            (recoveredBlock145Stack1) writeXMLCustomerDatas: (recoveredBlock145Stack2) forElement: (recoveredBlock145Stack3).
            recoveredBlock145PC := 395.
        ].
        recoveredBlock145Step = 395 ifTrue: [
            recoveredBlock145Stack1 := recoveredArg1.
            recoveredBlock145PC := 398.
        ].
        recoveredBlock145Step = 398 ifTrue: [
            recoveredBlock145Stack1 := (recoveredBlock145Stack1) closeComplex.
            recoveredBlock145PC := 400.
        ].
        recoveredBlock145Step = 400 ifTrue: [
            recoveredBlock145Result := recoveredBlock145Stack1.
            recoveredBlock145Done := true.
        ].
    ].
    recoveredBlock145Result
].
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205fb620; bytecode file offset 0xef7fb4"
!SGImplConfiguration methodsFor: 'recovered'!
adjustConfig: recoveredArg1 forElement: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [:block2811c1a0Arg1 | 
    nil
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGEnumeration.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isARModeGroup.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDataEnumeration.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultConfigFor: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) setConfig: (recoveredStack2) forElement: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) createFormula.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) formula: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 'Call_54930'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) implType.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'Call_56618'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) setImplType: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) modified.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSmClass.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 193].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSmVariable.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 193].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) specification.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) numberOfStates.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) integerType.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 159] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) setImplType: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := 'Call_54930'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 189] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) setPhysInterval: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) setImplInterval: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := 'Call_54930'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := 'Call_86140'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGBoolean.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 235].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBBoolean.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 235].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBImplBoolean.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 235] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := RBImplBoolean.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) setImplType: (recoveredStack1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIntervalInteger.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 429].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicElementType.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultPhysType.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysType.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 277] ifFalse: [recoveredPC := 268].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultPhysType.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack0) setPhysType: (recoveredStack1).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImplementationMaster.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack0) clearImplementationMaster.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysInterval.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 309].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack0) setPhysInterval: (recoveredStack1).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLimitedInteger.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 316] ifFalse: [recoveredPC := 377].
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 334].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := RBInt32Signed.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredPC := 338.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := RBInt32Unsigned.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysType.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualType.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 350] ifFalse: [recoveredPC := 359].
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysType.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack0) actualType: (recoveredStack1).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBInteger.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 375] ifFalse: [recoveredPC := 368].
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack0) setImplType: (recoveredStack1).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWrapAroundInteger.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 384] ifFalse: [recoveredPC := 425].
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementationType.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysType.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualType.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 398] ifFalse: [recoveredPC := 407].
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysType.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack0) actualType: (recoveredStack1).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 416] ifFalse: [recoveredPC := 423].
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack0) setImplType: (recoveredStack1).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206666b4; bytecode file offset 0xf6314c"
!SGImplConfiguration methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) makeConsistent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            super writeXMLCommon: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'memoryLocation'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) memoryClass.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'generateMethodBody'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNoGenerateAPI.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'prototype'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPrototypeAPI.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'usingServiceRoutines'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) isUsingServiceRoutineAPI.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'productionCodeOnly'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) isProductionCodeOnlyAPI.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 'optimizeMethodCalls'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNoOptimizeAPI.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'hierarchicalGenerationForSM'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSmAutoInlinePrivateMethods.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := 'outlineMethodsSM'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSmOutline.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := 'inlinePrivateMethodsSM'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSmAutoInlinePrivateMethods.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := 'Call_312528'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) localAttributesLocalDataStructsAvailable.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := 'generateDataStructures'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNoGenerateDataStructuresAPI.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) isServiceFlagKey.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasDatamodelPropertyAt: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := 'isService'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) isServiceFlag.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) autosarPackageNameKey.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasDatamodelPropertyAt: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := 'packageName'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) autosarPackageName.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := 'Call_2008400501'.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := 'cacheLocking'.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := (recoveredStack2) memorySegmentID.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := 'Call_1004130'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := 'userDefinedOrder'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := (recoveredStack2) isUserDefinedOrder.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) boolean: (recoveredStack2).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := 'WorkspaceTimeStamps'.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) separateMeta.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) writeXMLTimeStamp: (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) writeXMLNotesAndCustomerDatas: (recoveredStack1).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := 'Bfr'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := 'Call_382688'.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRecord.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack0) writeXMLRecordImplExternDeclaration: (recoveredStack1).
            recoveredPC := 256.
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
            recoveredStack2 := primitiveValues.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack3 := [:recoveredBlock262Arg1 :recoveredBlock262Arg2 :recoveredBlock262Arg3 | 
    | recoveredBlock262Local1 recoveredBlock262Stack0 recoveredBlock262Stack1 recoveredBlock262Stack2 recoveredBlock262Stack3 recoveredBlock262Stack4 recoveredBlock262Stack5 recoveredBlock262Stack6 recoveredBlock262PC recoveredBlock262Step recoveredBlock262Done recoveredBlock262Result |
    recoveredBlock262Stack0 := self.
    recoveredBlock262PC := 268.
    recoveredBlock262Done := false.
    [recoveredBlock262Done not] whileTrue: [
        recoveredBlock262Step := recoveredBlock262PC.
        recoveredBlock262Step = 268 ifTrue: [
            recoveredBlock262Stack1 := recoveredBlock262Arg1.
            recoveredBlock262PC := 269.
        ].
        recoveredBlock262Step = 269 ifTrue: [
            recoveredBlock262Stack1 := (recoveredBlock262Stack1) sgClass.
            recoveredBlock262PC := 270.
        ].
        recoveredBlock262Step = 270 ifTrue: [
            recoveredBlock262Local1 := recoveredBlock262Stack1.
            recoveredBlock262PC := 271.
        ].
        recoveredBlock262Step = 271 ifTrue: [
            recoveredBlock262Stack1 := 'Kli'.
            recoveredBlock262PC := 273.
        ].
        recoveredBlock262Step = 273 ifTrue: [
            recoveredBlock262Stack2 := 'Call_287670'.
            recoveredBlock262PC := 275.
        ].
        recoveredBlock262Step = 275 ifTrue: [
            recoveredBlock262Stack1 := (recoveredBlock262Stack1) == (recoveredBlock262Stack2).
            recoveredBlock262PC := 276.
        ].
        recoveredBlock262Step = 276 ifTrue: [
            recoveredBlock262PC := 277.
        ].
        recoveredBlock262Step = 277 ifTrue: [
            recoveredBlock262Stack1 := recoveredBlock262Arg1.
            recoveredBlock262PC := 278.
        ].
        recoveredBlock262Step = 278 ifTrue: [
            recoveredBlock262Stack1 := (recoveredBlock262Stack1) isPrimitive.
            recoveredBlock262PC := 280.
        ].
        recoveredBlock262Step = 280 ifTrue: [
            (recoveredBlock262Stack1) ifTrue: [recoveredBlock262PC := 304] ifFalse: [recoveredBlock262PC := 284].
        ].
        recoveredBlock262Step = 284 ifTrue: [
            recoveredBlock262Stack1 := recoveredArg1.
            recoveredBlock262PC := 287.
        ].
        recoveredBlock262Step = 287 ifTrue: [
            recoveredBlock262Stack2 := 'Inconsistent data model detected in %1. Complex element %2 has no primitive implementation.'.
            recoveredBlock262PC := 289.
        ].
        recoveredBlock262Step = 289 ifTrue: [
            recoveredBlock262Stack3 := self.
            recoveredBlock262PC := 290.
        ].
        recoveredBlock262Step = 290 ifTrue: [
            recoveredBlock262Stack4 := nil.
            recoveredBlock262PC := 291.
        ].
        recoveredBlock262Step = 291 ifTrue: [
            recoveredBlock262Stack3 := (recoveredBlock262Stack3) ascetLink: (recoveredBlock262Stack4).
            recoveredBlock262PC := 293.
        ].
        recoveredBlock262Step = 293 ifTrue: [
            recoveredBlock262Stack4 := recoveredBlock262Arg1.
            recoveredBlock262PC := 294.
        ].
        recoveredBlock262Step = 294 ifTrue: [
            recoveredBlock262Stack5 := nil.
            recoveredBlock262PC := 295.
        ].
        recoveredBlock262Step = 295 ifTrue: [
            recoveredBlock262Stack4 := (recoveredBlock262Stack4) ascetLink: (recoveredBlock262Stack5).
            recoveredBlock262PC := 297.
        ].
        recoveredBlock262Step = 297 ifTrue: [
            recoveredBlock262Stack2 := (recoveredBlock262Stack2) bindWith: (recoveredBlock262Stack3) with: (recoveredBlock262Stack4).
            recoveredBlock262PC := 299.
        ].
        recoveredBlock262Step = 299 ifTrue: [
            recoveredBlock262Stack1 := (recoveredBlock262Stack1) logInfo: (recoveredBlock262Stack2).
            recoveredBlock262PC := 301.
        ].
        recoveredBlock262Step = 301 ifTrue: [
            recoveredBlock262PC := 391.
        ].
        recoveredBlock262Step = 304 ifTrue: [
            recoveredBlock262Stack1 := nil.
            recoveredBlock262PC := 305.
        ].
        recoveredBlock262Step = 305 ifTrue: [
            recoveredBlock262Stack2 := recoveredBlock262Local1.
            recoveredBlock262PC := 306.
        ].
        recoveredBlock262Step = 306 ifTrue: [
            (recoveredBlock262Stack2 == nil) ifTrue: [recoveredBlock262PC := 391] ifFalse: [recoveredBlock262PC := 310].
        ].
        recoveredBlock262Step = 310 ifTrue: [
            recoveredBlock262Stack2 := recoveredBlock262Arg2.
            recoveredBlock262PC := 311.
        ].
        recoveredBlock262Step = 311 ifTrue: [
            (recoveredBlock262Stack2 == nil) ifTrue: [recoveredBlock262PC := 391] ifFalse: [recoveredBlock262PC := 314].
        ].
        recoveredBlock262Step = 314 ifTrue: [
            recoveredBlock262PC := 315.
        ].
        recoveredBlock262Step = 315 ifTrue: [
            recoveredBlock262Stack1 := recoveredArg1.
            recoveredBlock262PC := 318.
        ].
        recoveredBlock262Step = 318 ifTrue: [
            recoveredBlock262Stack2 := recoveredBlock262Arg3.
            recoveredBlock262PC := 319.
        ].
        recoveredBlock262Step = 319 ifTrue: [
            (recoveredBlock262Stack2) ifTrue: [recoveredBlock262PC := 322] ifFalse: [recoveredBlock262PC := 330].
        ].
        recoveredBlock262Step = 322 ifTrue: [
            recoveredBlock262Stack2 := recoveredBlock262Local1.
            recoveredBlock262PC := 323.
        ].
        recoveredBlock262Step = 323 ifTrue: [
            recoveredBlock262Stack2 := (recoveredBlock262Stack2) getModelReferenceTypeXML.
            recoveredBlock262PC := 327.
        ].
        recoveredBlock262Step = 327 ifTrue: [
            recoveredBlock262PC := 335.
        ].
        recoveredBlock262Step = 330 ifTrue: [
            recoveredBlock262Stack2 := recoveredBlock262Local1.
            recoveredBlock262PC := 331.
        ].
        recoveredBlock262Step = 331 ifTrue: [
            recoveredBlock262Stack2 := (recoveredBlock262Stack2) getModelTypeXML.
            recoveredBlock262PC := 335.
        ].
        recoveredBlock262Step = 335 ifTrue: [
            (recoveredBlock262Stack1) openComplex: (recoveredBlock262Stack2).
            recoveredBlock262PC := 339.
        ].
        recoveredBlock262Step = 339 ifTrue: [
            recoveredBlock262Stack1 := recoveredBlock262Local1.
            recoveredBlock262PC := 340.
        ].
        recoveredBlock262Step = 340 ifTrue: [
            recoveredBlock262Stack2 := recoveredArg1.
            recoveredBlock262PC := 343.
        ].
        recoveredBlock262Step = 343 ifTrue: [
            recoveredBlock262Stack3 := recoveredBlock262Arg2.
            recoveredBlock262PC := 344.
        ].
        recoveredBlock262Step = 344 ifTrue: [
            (recoveredBlock262Stack1) writeXML: (recoveredBlock262Stack2) implementation: (recoveredBlock262Stack3).
            recoveredBlock262PC := 349.
        ].
        recoveredBlock262Step = 349 ifTrue: [
            recoveredBlock262Stack1 := recoveredBlock262Arg3.
            recoveredBlock262PC := 350.
        ].
        recoveredBlock262Step = 350 ifTrue: [
            (recoveredBlock262Stack1) ifTrue: [recoveredBlock262PC := 354] ifFalse: [recoveredBlock262PC := 383].
        ].
        recoveredBlock262Step = 354 ifTrue: [
            recoveredBlock262Stack1 := recoveredArg1.
            recoveredBlock262PC := 357.
        ].
        recoveredBlock262Step = 357 ifTrue: [
            recoveredBlock262Stack2 := 'memoryLocationReference'.
            recoveredBlock262PC := 360.
        ].
        recoveredBlock262Step = 360 ifTrue: [
            recoveredBlock262Stack3 := recoveredBlock262Arg2.
            recoveredBlock262PC := 361.
        ].
        recoveredBlock262Step = 361 ifTrue: [
            recoveredBlock262Stack3 := (recoveredBlock262Stack3) memoryClassReference.
            recoveredBlock262PC := 365.
        ].
        recoveredBlock262Step = 365 ifTrue: [
            recoveredBlock262Stack4 := [
    'Default'
].
            recoveredBlock262PC := 368.
        ].
        recoveredBlock262Step = 368 ifTrue: [
            recoveredBlock262PC := 377.
        ].
        recoveredBlock262Step = 377 ifTrue: [
            recoveredBlock262Stack3 := (recoveredBlock262Stack3) ifNil: (recoveredBlock262Stack4).
            recoveredBlock262PC := 381.
        ].
        recoveredBlock262Step = 381 ifTrue: [
            (recoveredBlock262Stack1) attr: (recoveredBlock262Stack2) string: (recoveredBlock262Stack3).
            recoveredBlock262PC := 383.
        ].
        recoveredBlock262Step = 383 ifTrue: [
            recoveredBlock262Stack1 := recoveredArg1.
            recoveredBlock262PC := 386.
        ].
        recoveredBlock262Step = 386 ifTrue: [
            recoveredBlock262Stack1 := (recoveredBlock262Stack1) closeComplex.
            recoveredBlock262PC := 391.
        ].
        recoveredBlock262Step = 391 ifTrue: [
            recoveredBlock262Result := recoveredBlock262Stack1.
            recoveredBlock262Done := true.
        ].
    ].
    recoveredBlock262Result
].
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack0) internalWriteXML: (recoveredStack1) implementations: (recoveredStack2) guts: (recoveredStack3).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := 'BugZilla_2295'.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := [:block28125788Arg1 | 
    | block28125788Value0 block28125788Value1 block28125788Value2 |
    block28125788Value0 := block28125788Arg1.
    block28125788Value1 := (block28125788Value0) defaultImplementation.
    block28125788Value2 := (block28125788Value1) dbObject.
    block28125788Value2
].
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlComplexValuesToWrite: (recoveredStack1).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack3 := [:recoveredBlock437Arg1 :recoveredBlock437Arg2 :recoveredBlock437Arg3 | 
    | recoveredBlock437Local1 recoveredBlock437Local2 recoveredBlock437Stack0 recoveredBlock437Stack1 recoveredBlock437Stack2 recoveredBlock437Stack3 recoveredBlock437Stack4 recoveredBlock437PC recoveredBlock437Step recoveredBlock437Done recoveredBlock437Result |
    recoveredBlock437Stack0 := self.
    recoveredBlock437PC := 444.
    recoveredBlock437Done := false.
    [recoveredBlock437Done not] whileTrue: [
        recoveredBlock437Step := recoveredBlock437PC.
        recoveredBlock437Step = 444 ifTrue: [
            recoveredBlock437Stack1 := recoveredArg1.
            recoveredBlock437PC := 447.
        ].
        recoveredBlock437Step = 447 ifTrue: [
            recoveredBlock437Stack2 := recoveredBlock437Arg3.
            recoveredBlock437PC := 450.
        ].
        recoveredBlock437Step = 450 ifTrue: [
            (recoveredBlock437Stack2) ifTrue: [recoveredBlock437PC := 454] ifFalse: [recoveredBlock437PC := 462].
        ].
        recoveredBlock437Step = 454 ifTrue: [
            recoveredBlock437Stack2 := 'ComplexReferenceImplementation'.
            recoveredBlock437PC := 458.
        ].
        recoveredBlock437Step = 458 ifTrue: [
            recoveredBlock437PC := 466.
        ].
        recoveredBlock437Step = 462 ifTrue: [
            recoveredBlock437Stack2 := 'ComplexImplementation'.
            recoveredBlock437PC := 466.
        ].
        recoveredBlock437Step = 466 ifTrue: [
            (recoveredBlock437Stack1) openComplex: (recoveredBlock437Stack2).
            recoveredBlock437PC := 471.
        ].
        recoveredBlock437Step = 471 ifTrue: [
            recoveredBlock437Stack1 := 'Kli'.
            recoveredBlock437PC := 473.
        ].
        recoveredBlock437Step = 473 ifTrue: [
            recoveredBlock437Stack2 := 'Call_2009403259'.
            recoveredBlock437PC := 476.
        ].
        recoveredBlock437Step = 476 ifTrue: [
            recoveredBlock437Stack1 := (recoveredBlock437Stack1) == (recoveredBlock437Stack2).
            recoveredBlock437PC := 477.
        ].
        recoveredBlock437Step = 477 ifTrue: [
            recoveredBlock437PC := 478.
        ].
        recoveredBlock437Step = 478 ifTrue: [
            recoveredBlock437Stack1 := recoveredBlock437Arg2.
            recoveredBlock437PC := 481.
        ].
        recoveredBlock437Step = 481 ifTrue: [
            recoveredBlock437Stack2 := [:recoveredBlock437Block481Arg1 | 
    | recoveredBlock437Block481Value0 |
    recoveredBlock437Block481Value0 := recoveredBlock437Arg2.
    recoveredBlock437Block481Value0
].
            recoveredBlock437PC := 492.
        ].
        recoveredBlock437Step = 492 ifTrue: [
            recoveredBlock437Stack1 := (recoveredBlock437Stack1) getObjectIfUndefined: (recoveredBlock437Stack2).
            recoveredBlock437PC := 497.
        ].
        recoveredBlock437Step = 497 ifTrue: [
            recoveredBlock437Stack1 := (recoveredBlock437Stack1) xmlLabel.
            recoveredBlock437PC := 501.
        ].
        recoveredBlock437Step = 501 ifTrue: [
            recoveredBlock437Local2 := recoveredBlock437Stack1.
            recoveredBlock437PC := 504.
        ].
        recoveredBlock437Step = 504 ifTrue: [
            recoveredBlock437Stack1 := recoveredBlock437Local2.
            recoveredBlock437PC := 507.
        ].
        recoveredBlock437Step = 507 ifTrue: [
            recoveredBlock437Stack1 := (recoveredBlock437Stack1) size.
            recoveredBlock437PC := 511.
        ].
        recoveredBlock437Step = 511 ifTrue: [
            recoveredBlock437Stack2 := 0.
            recoveredBlock437PC := 513.
        ].
        recoveredBlock437Step = 513 ifTrue: [
            (recoveredBlock437Stack1 ~~ recoveredBlock437Stack2) ifTrue: [recoveredBlock437PC := 523] ifFalse: [recoveredBlock437PC := 516].
        ].
        recoveredBlock437Step = 516 ifTrue: [
            recoveredBlock437Stack1 := '--absent--'.
            recoveredBlock437PC := 520.
        ].
        recoveredBlock437Step = 520 ifTrue: [
            recoveredBlock437Local2 := recoveredBlock437Stack1.
            recoveredBlock437PC := 523.
        ].
        recoveredBlock437Step = 523 ifTrue: [
            recoveredBlock437Stack1 := recoveredArg1.
            recoveredBlock437PC := 526.
        ].
        recoveredBlock437Step = 526 ifTrue: [
            recoveredBlock437Stack2 := 'implementationName'.
            recoveredBlock437PC := 530.
        ].
        recoveredBlock437Step = 530 ifTrue: [
            recoveredBlock437Stack3 := recoveredBlock437Local2.
            recoveredBlock437PC := 533.
        ].
        recoveredBlock437Step = 533 ifTrue: [
            (recoveredBlock437Stack1) attr: (recoveredBlock437Stack2) nmToken: (recoveredBlock437Stack3).
            recoveredBlock437PC := 537.
        ].
        recoveredBlock437Step = 537 ifTrue: [
            recoveredBlock437Stack1 := recoveredArg1.
            recoveredBlock437PC := 540.
        ].
        recoveredBlock437Step = 540 ifTrue: [
            recoveredBlock437Stack2 := 'implementationOID'.
            recoveredBlock437PC := 544.
        ].
        recoveredBlock437Step = 544 ifTrue: [
            recoveredBlock437Stack3 := recoveredBlock437Arg2.
            recoveredBlock437PC := 547.
        ].
        recoveredBlock437Step = 547 ifTrue: [
            recoveredBlock437Stack3 := (recoveredBlock437Stack3) globalId.
            recoveredBlock437PC := 551.
        ].
        recoveredBlock437Step = 551 ifTrue: [
            (recoveredBlock437Stack1) attr: (recoveredBlock437Stack2) oid: (recoveredBlock437Stack3).
            recoveredBlock437PC := 555.
        ].
        recoveredBlock437Step = 555 ifTrue: [
            recoveredBlock437Stack0 := (recoveredBlock437Stack0) additionalImplInfo.
            recoveredBlock437PC := 559.
        ].
        recoveredBlock437Step = 559 ifTrue: [
            recoveredBlock437Stack1 := recoveredBlock437Arg1.
            recoveredBlock437PC := 562.
        ].
        recoveredBlock437Step = 562 ifTrue: [
            recoveredBlock437Stack1 := (recoveredBlock437Stack1) aliasName.
            recoveredBlock437PC := 567.
        ].
        recoveredBlock437Step = 567 ifTrue: [
            recoveredBlock437Stack2 := [
    | block281257acValue0 block281257acValue1 block281257acValue2 block281257acValue3 block281257acValue4 block281257acValue5 |
    block281257acValue0 := ASDAdditionalImplInfo.
    block281257acValue1 := (block281257acValue0) new.
    block281257acValue2 := block281257acValue1.
    (block281257acValue2) initialize.
    block281257acValue3 := block281257acValue1.
    (block281257acValue3) memoryLocationReference.
    block281257acValue4 := block281257acValue1.
    (block281257acValue4) memoryLocationInstance.
    block281257acValue5 := block281257acValue1.
    (block281257acValue5) memorySegmentID.
    block281257acValue1
].
            recoveredBlock437PC := 570.
        ].
        recoveredBlock437Step = 570 ifTrue: [
            recoveredBlock437PC := 600.
        ].
        recoveredBlock437Step = 600 ifTrue: [
            recoveredBlock437Stack0 := (recoveredBlock437Stack0) at: (recoveredBlock437Stack1) ifAbsent: (recoveredBlock437Stack2).
            recoveredBlock437PC := 605.
        ].
        recoveredBlock437Step = 605 ifTrue: [
            recoveredBlock437Local1 := recoveredBlock437Stack0.
            recoveredBlock437PC := 608.
        ].
        recoveredBlock437Step = 608 ifTrue: [
            recoveredBlock437Stack0 := self.
            recoveredBlock437PC := 609.
        ].
        recoveredBlock437Step = 609 ifTrue: [
            recoveredBlock437Stack1 := recoveredBlock437Arg1.
            recoveredBlock437PC := 612.
        ].
        recoveredBlock437Step = 612 ifTrue: [
            recoveredBlock437Stack0 := (recoveredBlock437Stack0) getRescalingFormulaForElement: (recoveredBlock437Stack1).
            recoveredBlock437PC := 617.
        ].
        recoveredBlock437Step = 617 ifTrue: [
            recoveredBlock437Stack1 := [:recoveredBlock437Block617Arg1 | 
    | recoveredBlock437Block617Value0 recoveredBlock437Block617Value1 recoveredBlock437Block617Value2 |
    recoveredBlock437Block617Value0 := recoveredArg1.
    recoveredBlock437Block617Value1 := recoveredBlock437Block617Arg1.
    recoveredBlock437Block617Value2 := (recoveredBlock437Block617Value0) attr: ('rescalingFormula') string: (recoveredBlock437Block617Value1).
    recoveredBlock437Block617Value2
].
            recoveredBlock437PC := 634.
        ].
        recoveredBlock437Step = 634 ifTrue: [
            (recoveredBlock437Stack0) ifNotNil: (recoveredBlock437Stack1).
            recoveredBlock437PC := 639.
        ].
        recoveredBlock437Step = 639 ifTrue: [
            recoveredBlock437Stack0 := recoveredBlock437Arg1.
            recoveredBlock437PC := 642.
        ].
        recoveredBlock437Step = 642 ifTrue: [
            recoveredBlock437Stack0 := (recoveredBlock437Stack0) isRecord.
            recoveredBlock437PC := 644.
        ].
        recoveredBlock437Step = 644 ifTrue: [
            (recoveredBlock437Stack0) ifTrue: [recoveredBlock437PC := 648] ifFalse: [recoveredBlock437PC := 677].
        ].
        recoveredBlock437Step = 648 ifTrue: [
            recoveredBlock437Stack0 := recoveredBlock437Local1.
            recoveredBlock437PC := 651.
        ].
        recoveredBlock437Step = 651 ifTrue: [
            recoveredBlock437Stack0 := (recoveredBlock437Stack0) policy.
            recoveredBlock437PC := 655.
        ].
        recoveredBlock437Step = 655 ifTrue: [
            recoveredBlock437Stack1 := [:recoveredBlock437Block655Arg1 | 
    | recoveredBlock437Block655Value0 recoveredBlock437Block655Value1 recoveredBlock437Block655Value2 |
    recoveredBlock437Block655Value0 := recoveredArg1.
    recoveredBlock437Block655Value1 := recoveredBlock437Block655Arg1.
    recoveredBlock437Block655Value2 := (recoveredBlock437Block655Value0) attr: ('policy') string: (recoveredBlock437Block655Value1).
    recoveredBlock437Block655Value2
].
            recoveredBlock437PC := 672.
        ].
        recoveredBlock437Step = 672 ifTrue: [
            (recoveredBlock437Stack0) ifNotNil: (recoveredBlock437Stack1).
            recoveredBlock437PC := 677.
        ].
        recoveredBlock437Step = 677 ifTrue: [
            recoveredBlock437Stack0 := recoveredBlock437Arg3.
            recoveredBlock437PC := 680.
        ].
        recoveredBlock437Step = 680 ifTrue: [
            (recoveredBlock437Stack0) ifTrue: [recoveredBlock437PC := 684] ifFalse: [recoveredBlock437PC := 732].
        ].
        recoveredBlock437Step = 684 ifTrue: [
            recoveredBlock437Stack0 := recoveredArg1.
            recoveredBlock437PC := 687.
        ].
        recoveredBlock437Step = 687 ifTrue: [
            recoveredBlock437Stack1 := 'memoryLocationReference'.
            recoveredBlock437PC := 690.
        ].
        recoveredBlock437Step = 690 ifTrue: [
            recoveredBlock437Stack2 := recoveredBlock437Local1.
            recoveredBlock437PC := 693.
        ].
        recoveredBlock437Step = 693 ifTrue: [
            recoveredBlock437Stack2 := (recoveredBlock437Stack2) memoryLocationReference.
            recoveredBlock437PC := 697.
        ].
        recoveredBlock437Step = 697 ifTrue: [
            recoveredBlock437Stack3 := [
    'Default'
].
            recoveredBlock437PC := 700.
        ].
        recoveredBlock437Step = 700 ifTrue: [
            recoveredBlock437PC := 709.
        ].
        recoveredBlock437Step = 709 ifTrue: [
            recoveredBlock437Stack2 := (recoveredBlock437Stack2) ifNil: (recoveredBlock437Stack3).
            recoveredBlock437PC := 713.
        ].
        recoveredBlock437Step = 713 ifTrue: [
            (recoveredBlock437Stack0) attr: (recoveredBlock437Stack1) string: (recoveredBlock437Stack2).
            recoveredBlock437PC := 715.
        ].
        recoveredBlock437Step = 715 ifTrue: [
            recoveredBlock437Stack0 := recoveredArg1.
            recoveredBlock437PC := 718.
        ].
        recoveredBlock437Step = 718 ifTrue: [
            recoveredBlock437Stack1 := 'cacheLocking'.
            recoveredBlock437PC := 720.
        ].
        recoveredBlock437Step = 720 ifTrue: [
            recoveredBlock437Stack2 := recoveredBlock437Local1.
            recoveredBlock437PC := 723.
        ].
        recoveredBlock437Step = 723 ifTrue: [
            recoveredBlock437Stack2 := (recoveredBlock437Stack2) memorySegmentID.
            recoveredBlock437PC := 725.
        ].
        recoveredBlock437Step = 725 ifTrue: [
            (recoveredBlock437Stack0) attr: (recoveredBlock437Stack1) enum: (recoveredBlock437Stack2).
            recoveredBlock437PC := 729.
        ].
        recoveredBlock437Step = 729 ifTrue: [
            recoveredBlock437PC := 785.
        ].
        recoveredBlock437Step = 732 ifTrue: [
            recoveredBlock437Stack0 := recoveredBlock437Arg1.
            recoveredBlock437PC := 735.
        ].
        recoveredBlock437Step = 735 ifTrue: [
            recoveredBlock437Stack0 := (recoveredBlock437Stack0) isRecord.
            recoveredBlock437PC := 737.
        ].
        recoveredBlock437Step = 737 ifTrue: [
            (recoveredBlock437Stack0) ifTrue: [recoveredBlock437PC := 740] ifFalse: [recoveredBlock437PC := 785].
        ].
        recoveredBlock437Step = 740 ifTrue: [
            recoveredBlock437Stack0 := recoveredArg1.
            recoveredBlock437PC := 743.
        ].
        recoveredBlock437Step = 743 ifTrue: [
            recoveredBlock437Stack1 := 'memoryLocationInstance'.
            recoveredBlock437PC := 746.
        ].
        recoveredBlock437Step = 746 ifTrue: [
            recoveredBlock437Stack2 := recoveredBlock437Local1.
            recoveredBlock437PC := 749.
        ].
        recoveredBlock437Step = 749 ifTrue: [
            recoveredBlock437Stack2 := (recoveredBlock437Stack2) memoryLocationInstance.
            recoveredBlock437PC := 753.
        ].
        recoveredBlock437Step = 753 ifTrue: [
            recoveredBlock437Stack3 := [
    'Default'
].
            recoveredBlock437PC := 756.
        ].
        recoveredBlock437Step = 756 ifTrue: [
            recoveredBlock437PC := 765.
        ].
        recoveredBlock437Step = 765 ifTrue: [
            recoveredBlock437Stack2 := (recoveredBlock437Stack2) ifNil: (recoveredBlock437Stack3).
            recoveredBlock437PC := 769.
        ].
        recoveredBlock437Step = 769 ifTrue: [
            (recoveredBlock437Stack0) attr: (recoveredBlock437Stack1) string: (recoveredBlock437Stack2).
            recoveredBlock437PC := 771.
        ].
        recoveredBlock437Step = 771 ifTrue: [
            recoveredBlock437Stack0 := recoveredArg1.
            recoveredBlock437PC := 774.
        ].
        recoveredBlock437Step = 774 ifTrue: [
            recoveredBlock437Stack1 := 'cacheLocking'.
            recoveredBlock437PC := 776.
        ].
        recoveredBlock437Step = 776 ifTrue: [
            recoveredBlock437Stack2 := recoveredBlock437Local1.
            recoveredBlock437PC := 779.
        ].
        recoveredBlock437Step = 779 ifTrue: [
            recoveredBlock437Stack2 := (recoveredBlock437Stack2) memorySegmentID.
            recoveredBlock437PC := 781.
        ].
        recoveredBlock437Step = 781 ifTrue: [
            (recoveredBlock437Stack0) attr: (recoveredBlock437Stack1) enum: (recoveredBlock437Stack2).
            recoveredBlock437PC := 785.
        ].
        recoveredBlock437Step = 785 ifTrue: [
            recoveredBlock437Stack0 := recoveredArg1.
            recoveredBlock437PC := 788.
        ].
        recoveredBlock437Step = 788 ifTrue: [
            recoveredBlock437Stack0 := (recoveredBlock437Stack0) closeComplex.
            recoveredBlock437PC := 793.
        ].
        recoveredBlock437Step = 793 ifTrue: [
            recoveredBlock437Result := recoveredBlock437Stack0.
            recoveredBlock437Done := true.
        ].
    ].
    recoveredBlock437Result
].
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            (recoveredStack0) internalWriteXML: (recoveredStack1) implementations: (recoveredStack2) guts: (recoveredStack3).
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack0 := methodImplementation.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 812] ifFalse: [recoveredPC := 1035].
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack0 := methodImplementation.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack1 := [:recoveredBlock814Arg1 :recoveredBlock814Arg2 | 
    | recoveredBlock814Stack0 recoveredBlock814Stack1 recoveredBlock814Stack2 recoveredBlock814Stack3 recoveredBlock814Stack4 recoveredBlock814Stack5 recoveredBlock814PC recoveredBlock814Step recoveredBlock814Done recoveredBlock814Result |
    recoveredBlock814Stack0 := self.
    recoveredBlock814PC := 820.
    recoveredBlock814Done := false.
    [recoveredBlock814Done not] whileTrue: [
        recoveredBlock814Step := recoveredBlock814PC.
        recoveredBlock814Step = 820 ifTrue: [
            recoveredBlock814Stack1 := recoveredLocal2.
            recoveredBlock814PC := 823.
        ].
        recoveredBlock814Step = 823 ifTrue: [
            (recoveredBlock814Stack1 == nil) ifTrue: [recoveredBlock814PC := 838] ifFalse: [recoveredBlock814PC := 826].
        ].
        recoveredBlock814Step = 826 ifTrue: [
            recoveredBlock814Stack1 := recoveredLocal2.
            recoveredBlock814PC := 829.
        ].
        recoveredBlock814Step = 829 ifTrue: [
            recoveredBlock814Stack2 := recoveredBlock814Arg1.
            recoveredBlock814PC := 830.
        ].
        recoveredBlock814Step = 830 ifTrue: [
            recoveredBlock814Stack1 := (recoveredBlock814Stack1) methodAliasName: (recoveredBlock814Stack2).
            recoveredBlock814PC := 835.
        ].
        recoveredBlock814Step = 835 ifTrue: [
            (recoveredBlock814Stack1 ~~ nil) ifTrue: [recoveredBlock814PC := 854] ifFalse: [recoveredBlock814PC := 838].
        ].
        recoveredBlock814Step = 838 ifTrue: [
            recoveredBlock814Stack1 := recoveredArg1.
            recoveredBlock814PC := 841.
        ].
        recoveredBlock814Step = 841 ifTrue: [
            recoveredBlock814Stack1 := (recoveredBlock814Stack1) controller.
            recoveredBlock814PC := 843.
        ].
        recoveredBlock814Step = 843 ifTrue: [
            recoveredBlock814Stack2 := 'method'.
            recoveredBlock814PC := 846.
        ].
        recoveredBlock814Step = 846 ifTrue: [
            recoveredBlock814Stack3 := recoveredBlock814Arg1.
            recoveredBlock814PC := 847.
        ].
        recoveredBlock814Step = 847 ifTrue: [
            recoveredBlock814Stack1 := (recoveredBlock814Stack1) badRef: (recoveredBlock814Stack2) oid: (recoveredBlock814Stack3).
            recoveredBlock814PC := 851.
        ].
        recoveredBlock814Step = 851 ifTrue: [
            recoveredBlock814PC := 1029.
        ].
        recoveredBlock814Step = 854 ifTrue: [
            recoveredBlock814Stack1 := recoveredArg1.
            recoveredBlock814PC := 857.
        ].
        recoveredBlock814Step = 857 ifTrue: [
            recoveredBlock814Stack2 := 'ImplementationEntry'.
            recoveredBlock814PC := 860.
        ].
        recoveredBlock814Step = 860 ifTrue: [
            (recoveredBlock814Stack1) openComplex: (recoveredBlock814Stack2).
            recoveredBlock814PC := 865.
        ].
        recoveredBlock814Step = 865 ifTrue: [
            recoveredBlock814Stack1 := recoveredArg1.
            recoveredBlock814PC := 868.
        ].
        recoveredBlock814Step = 868 ifTrue: [
            recoveredBlock814Stack2 := 'ImplementationVariant'.
            recoveredBlock814PC := 872.
        ].
        recoveredBlock814Step = 872 ifTrue: [
            (recoveredBlock814Stack1) openComplex: (recoveredBlock814Stack2).
            recoveredBlock814PC := 877.
        ].
        recoveredBlock814Step = 877 ifTrue: [
            recoveredBlock814Stack1 := recoveredArg1.
            recoveredBlock814PC := 880.
        ].
        recoveredBlock814Step = 880 ifTrue: [
            recoveredBlock814Stack2 := 'MethodImplementation'.
            recoveredBlock814PC := 884.
        ].
        recoveredBlock814Step = 884 ifTrue: [
            (recoveredBlock814Stack1) openComplex: (recoveredBlock814Stack2).
            recoveredBlock814PC := 889.
        ].
        recoveredBlock814Step = 889 ifTrue: [
            recoveredBlock814Stack1 := recoveredArg1.
            recoveredBlock814PC := 892.
        ].
        recoveredBlock814Step = 892 ifTrue: [
            recoveredBlock814Stack2 := 'methodOID'.
            recoveredBlock814PC := 896.
        ].
        recoveredBlock814Step = 896 ifTrue: [
            recoveredBlock814Stack3 := recoveredBlock814Arg1.
            recoveredBlock814PC := 897.
        ].
        recoveredBlock814Step = 897 ifTrue: [
            (recoveredBlock814Stack1) attr: (recoveredBlock814Stack2) localId: (recoveredBlock814Stack3).
            recoveredBlock814PC := 901.
        ].
        recoveredBlock814Step = 901 ifTrue: [
            recoveredBlock814Stack1 := recoveredArg1.
            recoveredBlock814PC := 904.
        ].
        recoveredBlock814Step = 904 ifTrue: [
            recoveredBlock814Stack2 := 'methodName'.
            recoveredBlock814PC := 908.
        ].
        recoveredBlock814Step = 908 ifTrue: [
            recoveredBlock814Stack3 := recoveredLocal2.
            recoveredBlock814PC := 911.
        ].
        recoveredBlock814Step = 911 ifTrue: [
            recoveredBlock814Stack4 := recoveredBlock814Arg1.
            recoveredBlock814PC := 912.
        ].
        recoveredBlock814Step = 912 ifTrue: [
            recoveredBlock814Stack3 := (recoveredBlock814Stack3) methodAliasName: (recoveredBlock814Stack4).
            recoveredBlock814PC := 917.
        ].
        recoveredBlock814Step = 917 ifTrue: [
            recoveredBlock814Stack3 := (recoveredBlock814Stack3) methodName.
            recoveredBlock814PC := 921.
        ].
        recoveredBlock814Step = 921 ifTrue: [
            (recoveredBlock814Stack1) attr: (recoveredBlock814Stack2) nmToken: (recoveredBlock814Stack3).
            recoveredBlock814PC := 925.
        ].
        recoveredBlock814Step = 925 ifTrue: [
            recoveredBlock814Stack1 := recoveredArg1.
            recoveredBlock814PC := 928.
        ].
        recoveredBlock814Step = 928 ifTrue: [
            recoveredBlock814Stack2 := 'memoryLocation'.
            recoveredBlock814PC := 930.
        ].
        recoveredBlock814Step = 930 ifTrue: [
            recoveredBlock814Stack3 := recoveredBlock814Arg2.
            recoveredBlock814PC := 931.
        ].
        recoveredBlock814Step = 931 ifTrue: [
            recoveredBlock814Stack3 := (recoveredBlock814Stack3) memoryClass.
            recoveredBlock814PC := 933.
        ].
        recoveredBlock814Step = 933 ifTrue: [
            recoveredBlock814Stack4 := [
    'Default'
].
            recoveredBlock814PC := 936.
        ].
        recoveredBlock814Step = 936 ifTrue: [
            recoveredBlock814PC := 945.
        ].
        recoveredBlock814Step = 945 ifTrue: [
            recoveredBlock814Stack3 := (recoveredBlock814Stack3) ifNil: (recoveredBlock814Stack4).
            recoveredBlock814PC := 949.
        ].
        recoveredBlock814Step = 949 ifTrue: [
            (recoveredBlock814Stack1) attr: (recoveredBlock814Stack2) string: (recoveredBlock814Stack3).
            recoveredBlock814PC := 951.
        ].
        recoveredBlock814Step = 951 ifTrue: [
            recoveredBlock814Stack1 := recoveredArg1.
            recoveredBlock814PC := 954.
        ].
        recoveredBlock814Step = 954 ifTrue: [
            recoveredBlock814Stack2 := 'cacheLocking'.
            recoveredBlock814PC := 956.
        ].
        recoveredBlock814Step = 956 ifTrue: [
            recoveredBlock814Stack3 := recoveredBlock814Arg2.
            recoveredBlock814PC := 957.
        ].
        recoveredBlock814Step = 957 ifTrue: [
            recoveredBlock814Stack3 := (recoveredBlock814Stack3) memorySegmentID.
            recoveredBlock814PC := 959.
        ].
        recoveredBlock814Step = 959 ifTrue: [
            (recoveredBlock814Stack1) attr: (recoveredBlock814Stack2) enum: (recoveredBlock814Stack3).
            recoveredBlock814PC := 963.
        ].
        recoveredBlock814Step = 963 ifTrue: [
            recoveredBlock814Stack1 := recoveredArg1.
            recoveredBlock814PC := 966.
        ].
        recoveredBlock814Step = 966 ifTrue: [
            recoveredBlock814Stack2 := 'inlining'.
            recoveredBlock814PC := 970.
        ].
        recoveredBlock814Step = 970 ifTrue: [
            recoveredBlock814Stack3 := recoveredBlock814Arg2.
            recoveredBlock814PC := 971.
        ].
        recoveredBlock814Step = 971 ifTrue: [
            recoveredBlock814Stack3 := (recoveredBlock814Stack3) inliningXMLWriter.
            recoveredBlock814PC := 975.
        ].
        recoveredBlock814Step = 975 ifTrue: [
            (recoveredBlock814Stack1) attr: (recoveredBlock814Stack2) string: (recoveredBlock814Stack3).
            recoveredBlock814PC := 977.
        ].
        recoveredBlock814Step = 977 ifTrue: [
            recoveredBlock814Stack1 := recoveredArg1.
            recoveredBlock814PC := 980.
        ].
        recoveredBlock814Step = 980 ifTrue: [
            recoveredBlock814Stack2 := 'useFPU'.
            recoveredBlock814PC := 984.
        ].
        recoveredBlock814Step = 984 ifTrue: [
            recoveredBlock814Stack3 := recoveredBlock814Arg2.
            recoveredBlock814PC := 985.
        ].
        recoveredBlock814Step = 985 ifTrue: [
            recoveredBlock814Stack3 := (recoveredBlock814Stack3) isUseFPU.
            recoveredBlock814PC := 989.
        ].
        recoveredBlock814Step = 989 ifTrue: [
            (recoveredBlock814Stack1) attr: (recoveredBlock814Stack2) boolean: (recoveredBlock814Stack3).
            recoveredBlock814PC := 991.
        ].
        recoveredBlock814Step = 991 ifTrue: [
            recoveredBlock814Stack1 := recoveredArg1.
            recoveredBlock814PC := 994.
        ].
        recoveredBlock814Step = 994 ifTrue: [
            recoveredBlock814Stack2 := 'symbol'.
            recoveredBlock814PC := 998.
        ].
        recoveredBlock814Step = 998 ifTrue: [
            recoveredBlock814Stack3 := recoveredBlock814Arg2.
            recoveredBlock814PC := 999.
        ].
        recoveredBlock814Step = 999 ifTrue: [
            recoveredBlock814Stack3 := (recoveredBlock814Stack3) symbol.
            recoveredBlock814PC := 1003.
        ].
        recoveredBlock814Step = 1003 ifTrue: [
            (recoveredBlock814Stack1) attr: (recoveredBlock814Stack2) string: (recoveredBlock814Stack3).
            recoveredBlock814PC := 1005.
        ].
        recoveredBlock814Step = 1005 ifTrue: [
            recoveredBlock814Stack1 := recoveredArg1.
            recoveredBlock814PC := 1008.
        ].
        recoveredBlock814Step = 1008 ifTrue: [
            (recoveredBlock814Stack1) closeComplex.
            recoveredBlock814PC := 1013.
        ].
        recoveredBlock814Step = 1013 ifTrue: [
            recoveredBlock814Stack1 := recoveredArg1.
            recoveredBlock814PC := 1016.
        ].
        recoveredBlock814Step = 1016 ifTrue: [
            (recoveredBlock814Stack1) closeComplex.
            recoveredBlock814PC := 1021.
        ].
        recoveredBlock814Step = 1021 ifTrue: [
            recoveredBlock814Stack1 := recoveredArg1.
            recoveredBlock814PC := 1024.
        ].
        recoveredBlock814Step = 1024 ifTrue: [
            recoveredBlock814Stack1 := (recoveredBlock814Stack1) closeComplex.
            recoveredBlock814PC := 1029.
        ].
        recoveredBlock814Step = 1029 ifTrue: [
            recoveredBlock814Result := recoveredBlock814Stack1.
            recoveredBlock814Done := true.
        ].
    ].
    recoveredBlock814Result
].
            recoveredPC := 1030.
        ].
        recoveredStep = 1030 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 1035.
        ].
        recoveredStep = 1035 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1036.
        ].
        recoveredStep = 1036 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

