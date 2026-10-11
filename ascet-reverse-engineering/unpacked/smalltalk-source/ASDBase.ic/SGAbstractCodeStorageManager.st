"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000c48; bytecode file offset 0x8ffcfc"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
loadHandles
    ^self
! !

"ASDBase.ic method 0x20000e38; bytecode file offset 0x8ffcfc"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
optimizeHandles
    ^self
! !

"ASDBase.ic method 0x20001298; bytecode file offset 0x8ffcfc"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
storeHandles
    ^self
! !

"ASDBase.ic method 0x20001880; bytecode file offset 0x8ffcfc"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
resetCodeStorage
    ^self
! !

"ASDBase.ic method 0x20003e90; bytecode file offset 0x90206c"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
storeOSCode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003fd8; bytecode file offset 0x90206c"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
makeNode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004230; bytecode file offset 0x90206c"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
mapFile: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200043a8; bytecode file offset 0x90206c"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
storeScoopIXFunctionElements: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004ab8; bytecode file offset 0x90206c"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
storeScoopIXDataElements: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004e10; bytecode file offset 0x90206c"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
storeOSGenericCode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005300; bytecode file offset 0x90206c"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
storeInitCode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005420; bytecode file offset 0x90206c"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
storeObjectCode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000cf6c; bytecode file offset 0x909ab8"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
initExternalCodeStorageHandle: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x20012d5c; bytecode file offset 0x912098"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
ascetMainController
    | recoveredValue0 |
    recoveredValue0 := MainController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200245c0; bytecode file offset 0x92209c"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
storageKindLabel
    ^'Abstract Code Container'
! !

"ASDBase.ic method 0x20028664; bytecode file offset 0x934580"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
currentBuildCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentProjectCache.
    recoveredValue1 := (recoveredValue0) currentBuildCache.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031ee4; bytecode file offset 0x934580"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
buildEnvironmentInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) buildEnvironmentInfo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200363d4; bytecode file offset 0x934580"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
codeManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) command.
    recoveredValue1 := (recoveredValue0) codeManager.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200375b4; bytecode file offset 0x934580"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
variantKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) variantKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039584; bytecode file offset 0x938608"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
makeARModeGroupNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeEnumNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200397d0; bytecode file offset 0x938608"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
makeARCSInterfaceNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeMethodInterfaceNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039de8; bytecode file offset 0x938608"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
anyMakeNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) visitMakeNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a910; bytecode file offset 0x938608"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
makeRecordNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeDataTypeNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ab98; bytecode file offset 0x938608"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
makeARComponentNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeComponentNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ac10; bytecode file offset 0x938608"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
makeModuleNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeComponentNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b12c; bytecode file offset 0x938608"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
makeClassNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeComponentNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b384; bytecode file offset 0x938608"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
makeEnumNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeDataTypeNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b5ac; bytecode file offset 0x938608"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
makeARSRInterfaceNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeDataTypeNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f368; bytecode file offset 0x93bf94"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
hostAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGHostAccess.
    recoveredValue1 := (recoveredValue0) instance.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052fc8; bytecode file offset 0x9505d0"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
initPidCodeStorageHandle: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053274; bytecode file offset 0x9505d0"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
initInitCodeStorageHandle: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005343c; bytecode file offset 0x9505d0"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
initOSCodeStorageHandle: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053700; bytecode file offset 0x9505d0"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
initModuleCodeStorageHandle: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20055b48; bytecode file offset 0x952a9c"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
visitMakeNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) acceptMakeNodeVisitor: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059ddc; bytecode file offset 0x9566ac"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
getCompileResults: recoveredArg1 monitorManager: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20065aa4; bytecode file offset 0x963428"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
currentProjectCache
    | recoveredValue0 |
    recoveredValue0 := currentProjectCache.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200677fc; bytecode file offset 0x9646f8"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
command
    | recoveredValue0 |
    recoveredValue0 := command.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068e9c; bytecode file offset 0x965b90"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
codeStorageVariantPath
    | recoveredValue0 |
    recoveredValue0 := codeStorageVariantPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20090050; bytecode file offset 0x98c91c"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
setupCodeStorageVariantPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) codeStorageVariantPath.
    codeStorageVariantPath := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200917e0; bytecode file offset 0x98e0cc"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
initialize
    super initialize.
    ^self
! !

"ASDBase.ic method 0x200a21f0; bytecode file offset 0x99eb44"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
projectID
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) context.
    recoveredValue2 := (recoveredValue1) project.
    recoveredValue3 := (recoveredValue2) dbObject.
    recoveredValue4 := (recoveredValue3) globalIdString.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200be3e4; bytecode file offset 0x9bb178"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
currentProjectCache: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentProjectCache := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf0b8; bytecode file offset 0x9bc0b4"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
command: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    command := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e1854; bytecode file offset 0x9de130"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
timeStampNow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_67666').
    recoveredValue1 := Date.
    recoveredValue2 := (recoveredValue1) dateAndTimeNowInSeconds.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200f85f0; bytecode file offset 0x9f4eb8"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
fatalNoCodeHandle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (self) storageKindLabel.
    recoveredValue2 := (recoveredValue0) fatalError: ('CodeStorage') with: (recoveredValue1) with: ('could not create code container handle').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2021414c; bytecode file offset 0xb10a0c"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
makeGenericComponentNode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) initAdditionalFilesStorageHandle: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) additionalFilesStorageHandle: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue1) notNil: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20260860; bytecode file offset 0xb5d134"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
operatingSystemKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) currentProjectCache.
    recoveredValue1 := (recoveredValue0) project.
    recoveredValue2 := (recoveredValue1) osLogicForCurrentTarget.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) dbObject.
    recoveredBlock7Value2 := [:recoveredBlock7Block16Arg1 | 
    | recoveredBlock7Block16Value0 recoveredBlock7Block16Value1 |
    recoveredBlock7Block16Value0 := recoveredBlock7Block16Arg1.
    recoveredBlock7Block16Value1 := (recoveredBlock7Block16Value0) globalId.
    ^recoveredBlock7Block16Value1
].
    recoveredBlock7Value3 := (recoveredBlock7Value1) ifNotNil: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := (self) currentProjectCache.
    recoveredValue5 := (recoveredValue4) project.
    recoveredValue6 := (recoveredValue5) target.
    recoveredValue7 := (recoveredValue6) osLogicKey.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2027d358; bytecode file offset 0xb79c28"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
initAdditionalFilesStorageHandle: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGenericComponent.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := ASDExternalFilesCodeContainerHandle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) componentInfo.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForPrimaryKey: (recoveredStack2) secondaryKey: (recoveredStack3) componentInfo: (recoveredStack4) codeStorageManager: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) fatalNoCodeHandle.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202b8480; bytecode file offset 0xbb4d50"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
makeMethodInterfaceNode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) initModuleCodeStorageHandle: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := recoveredLocal1.
    (recoveredBlock12Value0) moduleCodeStorageHandle: (recoveredBlock12Value1).
    recoveredBlock12Value2 := recoveredArg1.
    recoveredBlock12Value3 := (self) currentBuildCache.
    recoveredBlock12Value4 := recoveredArg1.
    recoveredBlock12Value5 := (recoveredBlock12Value3) retrieveMdlClassInterface: (recoveredBlock12Value4).
    recoveredBlock12Value6 := (recoveredBlock12Value2) mdlClassInterface: (recoveredBlock12Value5).
    recoveredBlock12Value6
].
    (recoveredValue1) notNil: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) makeNode: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2033dfb4; bytecode file offset 0xc3a8a0"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
makeProjectNode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) initOSCodeStorageHandle: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) osCodeStorageHandle: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue1) notNil: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) initPidCodeStorageHandle: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := [
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := recoveredArg1.
    recoveredBlock37Value1 := recoveredLocal1.
    recoveredBlock37Value2 := (recoveredBlock37Value0) pidCodeStorageHandle: (recoveredBlock37Value1).
    recoveredBlock37Value2
].
    (recoveredValue5) notNil: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) makeModuleNode: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x2033dfd4; bytecode file offset 0xc3a8a0"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
makeComponentNode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) initExternalCodeStorageHandle: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) externalCCKey: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue1) notNil: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) initAdditionalFilesStorageHandle: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := [
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := recoveredArg1.
    recoveredBlock37Value1 := recoveredLocal1.
    recoveredBlock37Value2 := (recoveredBlock37Value0) additionalFilesStorageHandle: (recoveredBlock37Value1).
    recoveredBlock37Value2
].
    (recoveredValue5) notNil: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) makeDataTypeNode: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x203915ec; bytecode file offset 0xc8dec4"
!SGAbstractCodeStorageManager methodsFor: 'recovered'!
makeDataTypeNode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) initModuleCodeStorageHandle: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := recoveredLocal1.
    (recoveredBlock12Value0) moduleCodeStorageHandle: (recoveredBlock12Value1).
    recoveredBlock12Value2 := recoveredArg1.
    recoveredBlock12Value3 := (self) currentBuildCache.
    recoveredBlock12Value4 := recoveredArg1.
    recoveredBlock12Value5 := (recoveredBlock12Value3) retrieveMdlClassInterface: (recoveredBlock12Value4).
    recoveredBlock12Value6 := (recoveredBlock12Value2) mdlClassInterface: (recoveredBlock12Value5).
    recoveredBlock12Value6
].
    (recoveredValue1) notNil: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) initInitCodeStorageHandle: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := [
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 |
    recoveredBlock50Value0 := recoveredArg1.
    recoveredBlock50Value1 := recoveredLocal1.
    recoveredBlock50Value2 := (recoveredBlock50Value0) initCodeStorageHandle: (recoveredBlock50Value1).
    recoveredBlock50Value2
].
    (recoveredValue5) notNil: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) makeNode: (recoveredValue8).
    ^recoveredValue9
! !

