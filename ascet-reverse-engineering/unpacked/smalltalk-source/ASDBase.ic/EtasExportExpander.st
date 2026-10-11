"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200048a8; bytecode file offset 0x90206c"
!EtasExportExpander methodsFor: 'recovered'!
makeHeaderFor: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000d58c; bytecode file offset 0x90a4b8"
!EtasExportExpander methodsFor: 'recovered'!
checkName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000dd04; bytecode file offset 0x90ab8c"
!EtasExportExpander methodsFor: 'recovered'!
printHeaderStart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000deb4; bytecode file offset 0x90ab8c"
!EtasExportExpander methodsFor: 'recovered'!
printFooter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000e058; bytecode file offset 0x90ab8c"
!EtasExportExpander methodsFor: 'recovered'!
printHeaderEnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f6c0; bytecode file offset 0x90bff0"
!EtasExportExpander methodsFor: 'recovered'!
attribute: recoveredArg1 with: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003d988; bytecode file offset 0x93bf94"
!EtasExportExpander methodsFor: 'recovered'!
monitor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003db78; bytecode file offset 0x93bf94"
!EtasExportExpander methodsFor: 'recovered'!
xmlExportOption
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDImportExportOptions.
    recoveredValue1 := (recoveredValue0) instance.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200416c0; bytecode file offset 0x93e1a0"
!EtasExportExpander methodsFor: 'recovered'!
removeCurrentTag
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := tagStack.
    recoveredValue1 := (recoveredValue0) removeLast.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041780; bytecode file offset 0x93e1a0"
!EtasExportExpander methodsFor: 'recovered'!
getCurrentTag
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := tagStack.
    recoveredValue1 := (recoveredValue0) last.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004de38; bytecode file offset 0x94d048"
!EtasExportExpander methodsFor: 'recovered'!
writeHeaderEnd
    (self) headerEnd.
    ^self
! !

"ASDBase.ic method 0x2004f530; bytecode file offset 0x94d048"
!EtasExportExpander methodsFor: 'recovered'!
writeFooter
    (self) footer.
    ^self
! !

"ASDBase.ic method 0x2004f5e4; bytecode file offset 0x94d048"
!EtasExportExpander methodsFor: 'recovered'!
writeHeaderStart
    (self) headerStart.
    ^self
! !

"ASDBase.ic method 0x20063954; bytecode file offset 0x961970"
!EtasExportExpander methodsFor: 'recovered'!
printCr
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x20064474; bytecode file offset 0x961970"
!EtasExportExpander methodsFor: 'recovered'!
close
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) close.
    ^self
! !

"ASDBase.ic method 0x200666ec; bytecode file offset 0x963428"
!EtasExportExpander methodsFor: 'recovered'!
stream
    | recoveredValue0 |
    recoveredValue0 := stream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066f1c; bytecode file offset 0x9646f8"
!EtasExportExpander methodsFor: 'recovered'!
outputPath
    | recoveredValue0 |
    recoveredValue0 := outputPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200688c4; bytecode file offset 0x965b90"
!EtasExportExpander methodsFor: 'recovered'!
outputFileName
    | recoveredValue0 |
    recoveredValue0 := outputFileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083d90; bytecode file offset 0x9807dc"
!EtasExportExpander methodsFor: 'recovered'!
asExportedString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getMappingDictionary.
    recoveredValue2 := (recoveredValue0) asExportExpanderStringMapping: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20084a68; bytecode file offset 0x981ca4"
!EtasExportExpander methodsFor: 'recovered'!
writeContents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printValue: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084bac; bytecode file offset 0x981ca4"
!EtasExportExpander methodsFor: 'recovered'!
writePlainContents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printPlainValue: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200897c0; bytecode file offset 0x9860ac"
!EtasExportExpander methodsFor: 'recovered'!
init
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    tagStack := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20094290; bytecode file offset 0x990b44"
!EtasExportExpander methodsFor: 'recovered'!
sortedExport: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    sortedExport := recoveredValue0.
    recoveredValue1 := sortedExport.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009b730; bytecode file offset 0x99803c"
!EtasExportExpander methodsFor: 'recovered'!
writeHeaderStartEnd
    (self) headerStart.
    (self) headerEnd.
    ^self
! !

"ASDBase.ic method 0x200a3190; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeUsingServiceRoutines: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('UsingServiceRoutines') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a31b0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeEndBlockId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('EndBlockId') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a31c0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Name') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a31e0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMethodId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('MethodId') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3200; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeUseLongFileNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('UseLongFileNames') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3220; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeAllowDoubleBitSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('AllowDoubleBitSize') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3240; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMethodType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('MethodType') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3290; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributePhysType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('PhysType') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a32a0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeEventId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('EventId') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a32b0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeDefault: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('Default') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a32e0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMaximumBitLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('MaximumBitLength') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a32f0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeProtectVectorIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('ProtectVectorIndex') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3300; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeExecute: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('Execute') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3310; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeElementId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('ElementId') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3390; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMaxLoopIterations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('MaxLoopIterations') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a33b0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeGenerateOSConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('GenerateOSConfiguration') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a33c0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeClassConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('ClassConfig') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a33f0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeIsHierarchyState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('IsHierarchyState') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3440; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeScheduling: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Scheduling') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3460; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeGenerateAccessMethodsForDT: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('GenerateAccessMethodsForDT') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3480; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeTempFloats32Bit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('TempVarsFloat32Bit') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a34b0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeSizeX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('SizeX') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a34d0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeInterpolation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Interpolation') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a34f0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeROMCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('ROMCode') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3500; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeCompilerType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('CompilerType') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3520; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeCPUType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('CPUType') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3530; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeGraphicLayoutFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('GraphicLayoutFile') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3550; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeUseFPU: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('UseFPU') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3560; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeSequenceCallVisibility: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('SequenceCallVisibility') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3580; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeConnectorNameVisibility: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('ConnectorNameVisibility') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3590; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeImplementationOid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('ImplementationOid') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a35c0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributePinIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('PinIdentifier') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a35e0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeComment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Comment') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a35f0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeFormulaReference: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Formula') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3620; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeActualNameVisibility: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('ActualNameVisibility') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3630; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeAliasId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('AliasId') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3650; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeGenerateMapFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('GenerateMapFile') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3660; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeInline: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('Inline') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3670; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeRescaled: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('Rescaled') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3680; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeGenerate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('Generate') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a36b0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeGenerateLimiters: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('GenerateLimiters') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a36c0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeAliasName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('AliasName') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a36e0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeSuppressExportedParams: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('SuppressExportedParameters') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a36f0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeIconVisibility: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('IconVisibility') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3770; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeDeadlineValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('DeadlineValue') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3780; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeOptimizeMultipleLevelDirectAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('OptimizeMultipleLevelDirectAccess') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3790; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributePositionY: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('PositionY') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a37a0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeInputSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('InputSize') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a37c0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeLimitOverflow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('LimitOverflow') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a37d0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeUseHeader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Header') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3800; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeAutostart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('Autostart') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3820; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeLimitAssignments: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('LimitAssignments') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3850; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributePriority: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Priority') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3860; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeDataLogging: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('DataLogging') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3870; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributePositionX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('PositionX') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3880; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeBasicModelType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('BasicModelType') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a38a0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeGenerateDependencyFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('GenerateDependencyFiles') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a38c0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeStartAlarm: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('StartAlarm') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a38d0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMonitoring: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('Monitoring') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a38f0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeUnit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Unit') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3900; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeFilePath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('FilePath') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3910; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeComponentName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('ComponentName') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3920; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeNamePositionX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('NamePositionX') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3930; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeExistence: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Existence') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3950; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeSizeY: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('SizeY') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3960; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeDataOid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('DataOid') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3970; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Type') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3980; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeStartConnectorId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('StartConnectorId') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3990; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeConnectorVisibility: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('ConnectorVisibility') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a39b0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeDependency: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Dependency') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a39c0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeIsHistory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('IsHistory') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a39e0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeComponentOid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('ComponentOid') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3a20; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeAreaColor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('AreaColor') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3a40; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeHierarchicalNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('HierarchicalNames') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3a60; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Value') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3a70; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeFrameVisibility: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('FrameVisibility') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3a80; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributePath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Path') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3aa0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeUsePMI: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('UsePMI') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3ab0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeFormulaName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Name') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3ae0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeHasTempVar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('HasTempVar') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3af0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeCalibration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Calibration') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3b00; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeRead: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('Read') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3b20; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeUseShiftForDivision: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('UseShiftForDivision') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3b30; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeKind: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Kind') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3b40; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeSet: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('Set') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3b50; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributePinNameVisibility: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('PinNameVisibility') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3b90; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeGet: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('Get') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3bc0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMemory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Memory') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3c60; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributePreempLevels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('PreempLevels') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3c70; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeGenerateRound: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('GenerateRound') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3c80; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeLineType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('LineType') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3c90; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeWrite: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('Write') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3ca0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeImplType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('ImplType') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3cb0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeDeadline: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('Deadline') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3cc0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeViewType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('ViewType') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3cd0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Identifier') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3cf0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeLineColor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('LineColor') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3d00; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeZeroNotIncluded: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('ZeroNotIncluded') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3d20; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeIntervalRight: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Right') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3d40; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMessageType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('MessageType') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3d50; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeProtectDivision: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('ProtectDivision') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3d70; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeImplementationName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('ImplementationName') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3d80; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeDirection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Direction') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3d90; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeOptimizeOneLevelDirectAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('OptimizeOneLevelDirectAccess') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3db0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeShiftBitsForDivision: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('ShiftBitsForDivision') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3dc0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeAdditionalInformation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('AdditionalInformation') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3dd0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeEdition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('Edition') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3de0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMinimumPeriodValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('MinimumPeriodValue') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3df0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeIsrSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('IsrSource') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3e10; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeUpdateDependentParams: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('UpdateDependentParameter') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3e40; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMaster: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Master') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3e50; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeGenerateMethodBody: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('GenerateMethodBody') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3e60; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeEndConnectorId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('EndConnectorId') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3e80; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeEnableMonitoring: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('EnableMonitoring') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3e90; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeIsStartState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('IsStartState') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3ea0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeNamePositionY: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('NamePositionY') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3ed0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeDataName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('DataName') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3ee0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeCodeGenerator: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('CodeGenerator') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3ef0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeModifiedTimeStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('ModifiedTimeStamp') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3f00; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeOriginalFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('OriginalFileName') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3f10; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeIntervalLeft: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Left') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3f30; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeIsResultPin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('IsResultPin') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3f40; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeResultOnDivisionByZero: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('ResultOnDivisionByZero') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3f60; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeStartBlockId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('StartBlockId') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3f70; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeSuppressExportOfPrototypes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('SuppressExportOfPrototypes') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3f80; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('FileName') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3f90; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeCalibrate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('Calibrate') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3fa0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeScope: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Scope') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3fb0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeClassType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('ClassType') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3fc0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeTargetType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('TargetType') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3fd0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeSequenceCallAtomicType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('SequenceCallAtomicType') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3fe0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Index') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4000; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeModelType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('ModelType') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4010; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMaxNoActivations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('MaxNoActivations') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4020; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Version') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4030; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeOptimizeMethodCalls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('OptimizeMethodCalls') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4050; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMaxSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('MaxSize') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4060; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeSequenceNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('SequenceNumber') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4080; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeFormulasWithUnits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('FormulasWithUnits') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a40a0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMaxPrio: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('MaxPrio') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a40d0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMinPrio: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('MinPrio') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a40e0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeTempInt32Bit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('TempVarsInteger32Bit') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a40f0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMemoryLocation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('MemoryLocation') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4100; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeLineWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('LineWidth') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4110; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeEventLevels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('EventLevels') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4170; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeVariantKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('VariantKey') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4180; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeExternalIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('ExternalIdentifier') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4190; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeImageFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('ImageFile') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a41a0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributePrePostHooks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('PrePostHooks') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a41c0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeLiteralString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Literal') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a41d0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributePeriod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Period') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a41f0; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeExtrapolation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Extrapolation') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4200; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeCoopLevels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('CoopLevels') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4210; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeDelay: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Delay') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4220; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeFormula: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('Formula') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4240; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeMinimumPeriod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attributeNamed: ('MinimumPeriod') boolean: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4260; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeSpecificationType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('SpecificationType') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4270; bytecode file offset 0x9a0b4c"
!EtasExportExpander methodsFor: 'recovered'!
attributeWarningLevel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('WarningLevel') with: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200adb6c; bytecode file offset 0x9aa428"
!EtasExportExpander methodsFor: 'recovered'!
attributeNamed: recoveredArg1 boolean: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) printString.
    (self) attribute: (recoveredValue0) with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b461c; bytecode file offset 0x9b0f88"
!EtasExportExpander methodsFor: 'recovered'!
getCompleteFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) outputPath.
    recoveredValue1 := (self) outputFileName.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    recoveredValue3 := (self) defaultExtension.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b7d7c; bytecode file offset 0x9b46dc"
!EtasExportExpander methodsFor: 'recovered'!
openFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CfsReadWriteFileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) openEmpty: (recoveredValue1).
    (self) stream: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9468; bytecode file offset 0x9b5dc8"
!EtasExportExpander methodsFor: 'recovered'!
attributeOutputs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    (self) attribute: ('Outputs') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b9490; bytecode file offset 0x9b5dc8"
!EtasExportExpander methodsFor: 'recovered'!
attributeInputs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    (self) attribute: ('Inputs') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b94b8; bytecode file offset 0x9b5dc8"
!EtasExportExpander methodsFor: 'recovered'!
attributeInstructions: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    (self) attribute: ('Instructions') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b94cc; bytecode file offset 0x9b5dc8"
!EtasExportExpander methodsFor: 'recovered'!
attributeConditions: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    (self) attribute: ('Conditions') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b94e0; bytecode file offset 0x9b5dc8"
!EtasExportExpander methodsFor: 'recovered'!
attributeCombinations: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    (self) attribute: ('Combinations') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b9508; bytecode file offset 0x9b5dc8"
!EtasExportExpander methodsFor: 'recovered'!
attributeRows: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    (self) attribute: ('Rows') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be4b4; bytecode file offset 0x9bb178"
!EtasExportExpander methodsFor: 'recovered'!
stream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stream := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf528; bytecode file offset 0x9bc0b4"
!EtasExportExpander methodsFor: 'recovered'!
outputPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    outputPath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf8b4; bytecode file offset 0x9bd228"
!EtasExportExpander methodsFor: 'recovered'!
outputFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    outputFileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d79fc; bytecode file offset 0x9d42bc"
!EtasExportExpander methodsFor: 'recovered'!
attributeNameC: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) checkName: (recoveredValue0).
    (self) attribute: ('Name') with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e4d08; bytecode file offset 0x9e15d0"
!EtasExportExpander methodsFor: 'recovered'!
cleanUpAfterAbortion
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) close.
    recoveredValue1 := CfsFileDescriptor.
    recoveredValue2 := (self) getCompleteFileName.
    recoveredValue3 := (recoveredValue1) remove: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e76d8; bytecode file offset 0x9e3f94"
!EtasExportExpander methodsFor: 'recovered'!
setCurrentTag: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := tagStack.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addLast: (recoveredValue1).
    tagState := 'tagSetDone'.
    ^self
! !

"ASDBase.ic method 0x20105ef4; bytecode file offset 0xa027b0"
!EtasExportExpander methodsFor: 'recovered'!
sortedExport
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sortedExport.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            sortedExport := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := sortedExport.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20110834; bytecode file offset 0xa0d0f8"
!EtasExportExpander methodsFor: 'recovered'!
open: recoveredArg1 path: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    (self) outputPath: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) outputFileName: (recoveredValue1).
    recoveredValue2 := (self) getCompleteFileName.
    recoveredValue3 := (self) openFile: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2012f370; bytecode file offset 0xa2bc30"
!EtasExportExpander methodsFor: 'recovered'!
getMappingDictionary
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) initializeMappingDictionary.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingDictionary.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20188204; bytecode file offset 0xa84acc"
!EtasExportExpander methodsFor: 'recovered'!
setCurrentTag: recoveredArg1 attribute: recoveredArg2 value: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) setCurrentTag: (recoveredValue0).
    (self) writeHeaderStart.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) attribute: (recoveredValue1) with: (recoveredValue2).
    (self) writeHeaderEnd.
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201c7558; bytecode file offset 0xac3e24"
!EtasExportExpander methodsFor: 'recovered'!
headerStart
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tagState.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'tagSetDone'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'no tag set'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCurrentTag.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) printHeaderStart: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := 'headerStartDone'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            tagState := recoveredStack0.
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

"ASDBase.ic method 0x201c75d0; bytecode file offset 0xac3e9c"
!EtasExportExpander methodsFor: 'recovered'!
headerEnd
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tagState.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'headerStartDone'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'no tag set'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCurrentTag.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) printHeaderEnd: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := 'headerEndDone'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            tagState := recoveredStack0.
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

"ASDBase.ic method 0x2020e504; bytecode file offset 0xb0add4"
!EtasExportExpander methodsFor: 'recovered'!
error: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) monitor.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('An exception occured. The exported files may are damaged or incorrect!!').
    (recoveredValue0) cr.
    recoveredValue3 := (self) monitor.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := ('Exception message: ') , (recoveredValue5).
    (recoveredValue4) nextPutAll: (recoveredValue6).
    (recoveredValue3) cr.
    (self) etasDevHalt.
    ^self
! !

"ASDBase.ic method 0x20224268; bytecode file offset 0xb20b38"
!EtasExportExpander methodsFor: 'recovered'!
footer
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tagState.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'headerEndDone'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := tagState.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'no tag set'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCurrentTag.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) printFooter: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) removeCurrentTag.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            tagState := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024a514; bytecode file offset 0xb46de4"
!EtasExportExpander methodsFor: 'recovered'!
printToStream: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'BOSCH_CC'.
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
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) nextPutStream: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

