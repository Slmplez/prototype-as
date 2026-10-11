"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a7c8; bytecode file offset 0x92209c"
!EtasXMLExpander class methodsFor: 'recovered'!
sdGeneralDtd
    ^'
<!!--DTD Version 2.1.3-->
<!!ELEMENT SDComponents (SDToolInfo, SDDtdInfo, SDComponent*)>

<!!ELEMENT SDToolInfo EMPTY>
<!!ATTLIST SDToolInfo
	Version CDATA ""
>

<!!ELEMENT SDDtdInfo EMPTY>
<!!ATTLIST SDDtdInfo
	Version CDATA ""
>

<!!ELEMENT SDComponent (SDComponentFolderPath, SDComponentComment?, SDNotes?, SDAccessRights?, SDVersionInfo?, (SDEnumeration | SDIcon | SDSignal | SDExperimentEnvironment | SDHardwareConfiguration | SDClass | SDContainer)?)>
<!!ATTLIST SDComponent
	Name NMTOKEN #REQUIRED
	ComponentOid ID #REQUIRED
	ModifiedTimeStamp CDATA ""
>

<!!ELEMENT SDComponentFolderPath (#PCDATA)>
<!!ELEMENT SDComponentComment (#PCDATA)>
<!!ELEMENT SDNotes (SDEntry*)>
<!!ELEMENT SDEntry (SDKeyString, SDValueString)>
<!!ELEMENT SDKeyString (#PCDATA)>
<!!ELEMENT SDValueString (#PCDATA)>

<!!ELEMENT SDAccessRights EMPTY>
<!!ATTLIST SDAccessRights
	Read (true | false) "true"
	Write (true | false) "true"
	Calibrate (true | false) "true"
	Execute (true | false) "true"
	Generate (true | false) "true"
>

<!!ELEMENT SDVersionInfo (SDVersionString?, SDConfigurationString?)>
<!!ATTLIST SDVersionInfo
	Edition (true | false) "true"
>

<!!ELEMENT SDVersionString (#PCDATA)>
<!!ELEMENT SDConfigurationString (#PCDATA)>
<!!ELEMENT SDEnumeration (SDEnumerationValue*)>

<!!ELEMENT SDEnumerationValue EMPTY>
<!!ATTLIST SDEnumerationValue
	Name NMTOKEN #REQUIRED
	Index CDATA ""
>

<!!ELEMENT SDIcon EMPTY>
<!!ATTLIST SDIcon
	OriginalFileName CDATA ""
	ImageFile CDATA ""
>

<!!ELEMENT SDSignal EMPTY>
<!!ELEMENT SDExperimentEnvironment EMPTY>
<!!ELEMENT SDHardwareConfiguration EMPTY>

<!!ELEMENT SDContainer (SDContainerItems)>
<!!ELEMENT SDContainerItems (SDComplexType)*>

<!!ELEMENT SDClass (SDVariables, SDImplementations, SDDatas, SDSpecDiagrams, SDClassSpecificAttributes)>
<!!ATTLIST SDClass
	ClassType (Class | Module | CtClass | Statemachine | Project | Protocol | ConditionalTable | BooleanTable) "Class"
	SpecificationType (BlockDiagram | CCode | ESDL | StateMachine | Project | Unknown) "Unknown"
	GraphicLayoutFile CDATA ""
>

<!!ELEMENT SDClassSpecificAttributes (SDClassCode*, SDDefaultProject?, SDProjectSettings?, SDOsLogic?)>
<!!--in case of code class: SDCodeHeader-->
<!!--in case of general class: (no project): SDDefaultProject-->
<!!--in case of project: SDOSLogic-->

<!!ELEMENT SDClassCode (SDCodeHeader*, SDExternalCode*)>
<!!ELEMENT SDDefaultProject (SDAccessRights?, SDVersionInfo?, SDClass)>

<!!--Projectsettings must be completed-->
<!!ELEMENT SDProjectSettings (SDASAM2MCSettings, SDCodeSettings, SDFixedPointCodeSettings?, SDMakeSettings, SDTargetSettings, SDFormulas, SDArithmeticService, SDImplementationTypes, SDProjectFiles)>

<!!ELEMENT SDASAM2MCSettings EMPTY>
<!!ATTLIST SDASAM2MCSettings
	ROMCode (true | false) #REQUIRED
	HierarchicalNames (true | false) #REQUIRED
	FormulasWithUnits (true | false) #REQUIRED
	SuppressExportedParameters (true | false) #REQUIRED
	SuppressExportOfPrototypes (true | false) #REQUIRED
>

<!!ELEMENT SDCodeSettings EMPTY>
<!!ATTLIST SDCodeSettings
	CodeGenerator CDATA #REQUIRED 
	GenerateMapFile (true | false) #REQUIRED
	ProtectDivision (true | false) #REQUIRED
	DataLogging (true | false) #REQUIRED
	ProtectVectorIndex (true | false) #REQUIRED
	OptimizeOneLevelDirectAccess (true | false) #REQUIRED
	OptimizeMultipleLevelDirectAccess (true | false) #REQUIRED
	UsePMI (true | false) #REQUIRED
	GenerateAccessMethodsForDT (true | false) #REQUIRED
	MaxLoopIterations CDATA #REQUIRED 
>
	
<!!ELEMENT SDFixedPointCodeSettings EMPTY>
<!!ATTLIST SDFixedPointCodeSettings
	ResultOnDivisionByZero CDATA #REQUIRED 
	MaximumBitLength CDATA #REQUIRED 
	GenerateLimiters (true | false) #REQUIRED 
	ShiftBitsForDivision (true | false) "false"
	AllowDoubleBitSize (true | false) #REQUIRED 
	UseShiftForDivision (true | false) #REQUIRED 
	GenerateRound (true | false) #REQUIRED 
	TempVarsInteger32Bit (true | false) #REQUIRED 
	TempVarsFloat32Bit (true | false) #REQUIRED 
>

<!!ELEMENT SDMakeSettings EMPTY>
<!!ATTLIST SDMakeSettings
	UpdateDependentParameter (true | false) #REQUIRED
	UseLongFileNames (true | false) #REQUIRED
	GenerateOSConfiguration (true | false) #REQUIRED
	GenerateDependencyFiles (true | false) #REQUIRED
>

<!!ELEMENT SDTargetSettings EMPTY>
<!!ATTLIST SDTargetSettings
	TargetType CDATA #REQUIRED
	CompilerType CDATA #REQUIRED
>

<!!ELEMENT SDFormulas (SDFormula*)>

<!!ELEMENT SDFormula (SDParameter*)>
<!!ATTLIST SDFormula
	Name CDATA #REQUIRED
	Type CDATA #REQUIRED
	Unit CDATA #REQUIRED
	Comment CDATA #REQUIRED
	Formula CDATA #REQUIRED
>

<!!ELEMENT SDParameter EMPTY>
<!!ATTLIST SDParameter
	Value CDATA #REQUIRED
>

<!!ELEMENT SDArithmeticService EMPTY>
<!!ATTLIST SDArithmeticService
	Name CDATA #REQUIRED
>

<!!ELEMENT SDImplementationTypes (SDImplementationType)*>

<!!ELEMENT SDImplementationType (SDPhysInterval?, SDImplInterval?)>
<!!ATTLIST SDImplementationType
	Name NMTOKEN #REQUIRED
	Comment CDATA ""
	Formula CDATA ""
	Master (Model | Implementation) #REQUIRED
	PhysType CDATA ""
	ImplType CDATA ""
	ZeroNotIncluded (true | false) #REQUIRED
>

<!!ELEMENT SDProjectFiles (SDProjectFile)*>
<!!ELEMENT SDProjectFile	EMPTY>
<!!ATTLIST SDProjectFile
	FileName CDATA #REQUIRED
	FilePath CDATA ""
	TargetType CDATA ""
>

<!!ELEMENT SDSpecDiagrams (SDSpecDiagram*)>

<!!ELEMENT SDSpecDiagram (SDTableSpecification*, SDMethods*, SDDiagramElements*)>
<!!ATTLIST SDSpecDiagram
	Name NMTOKEN #REQUIRED
>

<!!ELEMENT SDTableSpecification (SDConditionalTable*, SDBooleanTable*)>

<!!ELEMENT SDBooleanTable (SDInputColumns, SDOutputColumns)>
<!!ATTLIST SDBooleanTable
	Name NMTOKEN #REQUIRED
	Inputs CDATA ""
	Outputs CDATA ""
	Combinations CDATA ""
>

<!!ELEMENT SDInputColumns (SDTableColumn*)>
<!!ELEMENT SDOutputColumns (SDTableColumn*)>

<!!ELEMENT SDConditionalTable (SDConditionColumns, SDInstructionColumns)>
<!!ATTLIST SDConditionalTable
	Name NMTOKEN #REQUIRED
	Conditions CDATA ""
	Instructions CDATA ""
	Rows CDATA ""
>

<!!ELEMENT SDConditionColumns (SDTableColumn*)>
<!!ELEMENT SDInstructionColumns (SDTableColumn+)>

<!!ELEMENT SDTableColumn (SDColumnHeading, SDTableCell*)>

<!!ELEMENT SDColumnHeading EMPTY>
<!!ATTLIST SDColumnHeading
	Index CDATA ""
	Name NMTOKEN #REQUIRED
	ElementId CDATA ""
>

<!!ELEMENT SDTableCell EMPTY>
<!!ATTLIST SDTableCell
	Index CDATA ""
	Value CDATA ""
>

<!!ELEMENT SDMethodSpec (SDCodeVariant+)>
<!!ELEMENT SDCodeHeader (SDCodeVariant+)>
<!!ELEMENT SDExternalCode (SDCodeExternalC+, SDCodeExternalH+)>
<!!ELEMENT SDCodeExternalC (SDCodeVariant+)>

<!!ELEMENT SDCodeExternalH (SDCodeVariant+)>
<!!ATTLIST SDCodeExternalH
	Header (global | local) "local"
>

<!!ELEMENT SDCodeVariant (SDTargetKey, SDVariantKey, SDComplexImplementation?, SDCodeString)>

<!!ELEMENT SDTargetKey EMPTY>
<!!ATTLIST SDTargetKey
	Name CDATA #REQUIRED
>

<!!ELEMENT SDVariantKey EMPTY>
<!!ATTLIST SDVariantKey
	Name CDATA #REQUIRED
>

<!!ELEMENT SDCodeString (#PCDATA)>
<!!ELEMENT SDOsLogic (SDOsEntry*)>
<!!ELEMENT SDOsEntry (SDTargetKey, SDOsDescription)>

<!!ELEMENT SDOsDescription (SDTasks, SDOpModes)>
<!!ATTLIST SDOsDescription
	CoopLevels CDATA ""
	PreempLevels CDATA ""
	EventLevels CDATA ""
	EnableMonitoring (true | false) "true"
>

<!!ELEMENT SDTasks (SDTask*)>
<!!ELEMENT SDOpModes (SDOpMode*)>

<!!ELEMENT SDTask (SDAssignedProcessInfo*, SDAssignedOpmodes, SDTaskType)>
<!!ATTLIST SDTask
	Name NMTOKEN #REQUIRED
>

<!!ELEMENT SDAssignedOpmodes (SDOpMode*)>
<!!ELEMENT SDTaskType (SDInterrupt | SDAlarm | SDTimetable | SDSoftware | SDInit)>

<!!ELEMENT SDOpMode EMPTY>
<!!ATTLIST SDOpMode
	Name CDATA #REQUIRED
>

<!!ELEMENT SDAssignedProcessInfo (SDElementInfo?, SDMethodInfo?)>
<!!ATTLIST SDAssignedProcessInfo
	Index CDATA ""
>

<!!ELEMENT SDElementInfo EMPTY>
<!!ATTLIST SDElementInfo
	Name NMTOKEN #REQUIRED
	ElementId CDATA ""
>

<!!ELEMENT SDMethodInfo EMPTY>
<!!ATTLIST SDMethodInfo
	Name NMTOKEN #REQUIRED
	MethodId CDATA ""
>

<!!ELEMENT SDInit EMPTY>

<!!ELEMENT SDAlarm EMPTY>
<!!ATTLIST SDAlarm
	Priority CDATA ""
	Scheduling (cooperative | preemptive | nonpreemptive | undef) "cooperative"
	MaxNoActivations CDATA ""
	Delay CDATA ""
	Period CDATA ""
	Deadline (true | false) "false"
	DeadlineValue CDATA ""
	PrePostHooks (none | dtonly | monitoring) "none"
	StartAlarm (true | false) "true"
>

<!!ELEMENT SDTimetable EMPTY>
<!!ATTLIST SDTimetable
	Priority CDATA ""
	Scheduling (cooperative | preemptive | nonpreemptive | undef) "cooperative"
	MaxNoActivations CDATA ""
	Delay CDATA ""
	Period CDATA ""
	Deadline (true | false) "false"
	DeadlineValue CDATA ""
	PrePostHooks (none | dtonly | monitoring) "none"
>

<!!ELEMENT SDSoftware EMPTY>
<!!ATTLIST SDSoftware
	Priority CDATA ""
	Scheduling (cooperative | preemptive | nonpreemptive | undef) "cooperative"
	MaxNoActivations CDATA ""
	Deadline (true | false) "false"
	DeadlineValue CDATA ""
	PrePostHooks (none | dtonly | monitoring) "none"
	Autostart (true | false) "false"
>

<!!ELEMENT SDInterrupt EMPTY>
<!!ATTLIST SDInterrupt
	Name NMTOKEN #REQUIRED
	EventId CDATA ""
	MinPrio CDATA ""
	MaxPrio CDATA ""
	IsrSource CDATA ""
	MinimumPeriod (true | false) "false"
	MinimumPeriodValue CDATA ""
	PrePostHooks (none | dtonly | monitoring) "none"
>

'
! !

"ASDBase.ic method 0x2001c688; bytecode file offset 0x92209c"
!EtasXMLExpander class methodsFor: 'recovered'!
sdImplementationsDtd
    ^'<!!ELEMENT SDImplementations (SDImplementation*)>

<!!ELEMENT SDImplementation (SDImplementationEntry*, SDMethodImplementation*)>
<!!ATTLIST SDImplementation
		ImplementationName  NMTOKEN #REQUIRED 
		ImplementationOid ID #REQUIRED 
		Default (true|false) "false"
		MemoryLocation CDATA ""
		ClassConfig (true|false) "false"
		GenerateMethodBody (true|false) "true"
		OptimizeMethodCalls (true|false) "true"
		UsingServiceRoutines (true|false) "false">

<!!ELEMENT SDMethodImplementation EMPTY>
<!!ATTLIST SDMethodImplementation 
		Name  NMTOKEN #REQUIRED 
		MethodId 	CDATA "" 
		MemoryLocation CDATA ""
		Inline (true|false) "false"
		UseFPU (true|false) "true">

<!!ELEMENT SDImplementationEntry (SDReferenceImplementation | SDComplexImplementation | SDEnumerationImplementation | SDResourceImplementation | SDNumericImplementation | SDLogicImplementation | SDOneDImplementation | SDTwoDImplementation | SDArrayImplementation | SDMatrixImplementation)*>
<!!ATTLIST SDImplementationEntry 
		Name  NMTOKEN #REQUIRED 
		ElementId 	CDATA "" >

<!!ELEMENT SDReferenceImplementation EMPTY>
<!!ATTLIST SDReferenceImplementation
	Name CDATA #REQUIRED
	LimitAssignments (true | false) #REQUIRED
	LimitOverflow (none | automatic | reduce | keep) #REQUIRED
	MemoryLocation CDATA ""
	AdditionalInformation CDATA ""
>

<!!ELEMENT SDEnumerationImplementation EMPTY>
<!!ATTLIST SDEnumerationImplementation 
		Name NMTOKEN #REQUIRED
		MemoryLocation CDATA ""
		AdditionalInformation CDATA "">

<!!ELEMENT SDResourceImplementation EMPTY>
<!!ATTLIST SDResourceImplementation 
		Name NMTOKEN #REQUIRED
		MemoryLocation CDATA ""
		AdditionalInformation CDATA "">

<!!ELEMENT SDNumericImplementation (SDPhysInterval?, SDImplInterval)?>
<!!ATTLIST SDNumericImplementation
	Name NMTOKEN #REQUIRED
	Formula CDATA ""
	Master (Model | Implementation) #REQUIRED
	PhysType CDATA ""
	ImplType CDATA ""
	ZeroNotIncluded (true | false) #REQUIRED
	LimitAssignments (true | false) #REQUIRED
	LimitOverflow (none | automatic | reduce | keep) #REQUIRED
	MemoryLocation CDATA ""
	AdditionalInformation CDATA ""
>

<!!ELEMENT SDPhysInterval (SDInterval)>
<!!ELEMENT SDImplInterval (SDInterval)>

<!!ELEMENT SDInterval EMPTY>
<!!ATTLIST SDInterval 
	 	Left CDATA "-oo"
		Right CDATA "+oo">

<!!ELEMENT SDLogicImplementation EMPTY>
<!!ATTLIST SDLogicImplementation 
		Name NMTOKEN #REQUIRED
	 	PhysType CDATA ""
		ImplType CDATA ""
		MemoryLocation CDATA ""
		AdditionalInformation CDATA "">

<!!ELEMENT SDOneDImplementation (SDImplementationAxisX, SDImplementationTableValues )>
<!!ATTLIST SDOneDImplementation 
		Name NMTOKEN #REQUIRED>

<!!ELEMENT SDTwoDImplementation (SDImplementationAxisX, SDImplementationAxisY, SDImplementationTableValues )>
<!!ATTLIST SDTwoDImplementation 
		Name NMTOKEN #REQUIRED>

<!!ELEMENT SDArrayImplementation (SDReferenceImplementation | SDNumericImplementation | SDLogicImplementation)>

<!!ELEMENT SDMatrixImplementation (SDReferenceImplementation | SDNumericImplementation | SDLogicImplementation)>

<!!ELEMENT SDImplementationAxisX (SDReferenceImplementation | SDNumericImplementation)>

<!!ELEMENT SDImplementationAxisY (SDReferenceImplementation | SDNumericImplementation)>

<!!ELEMENT SDImplementationTableValues (SDReferenceImplementation | SDNumericImplementation)>

<!!ELEMENT SDComplexImplementation EMPTY>
<!!ATTLIST SDComplexImplementation 
		ImplementationName NMTOKEN #REQUIRED
		ImplementationOid CDATA "">'
! !

"ASDBase.ic method 0x20022370; bytecode file offset 0x92209c"
!EtasXMLExpander class methodsFor: 'recovered'!
sdDatasDtd
    ^'<!!ELEMENT SDDatas (SDData*)>

<!!ELEMENT SDData (SDDataEntry)*>
<!!ATTLIST SDData
		DataName  NMTOKEN #REQUIRED 
		DataOid ID #REQUIRED 
		Default (true|false) "false"
		ClassConfig (true|false) "false">

<!!ELEMENT SDDataEntry (SDElementInfo, SDDataType*)>

<!!ELEMENT SDDataType (SDEnumerationData | SDComplexData | SDNumericData | SDLogicData | SDOneDData | SDTwoDData | SDDistributionData | SDArrayData | SDMatrixData | SDDimensionData )*>
<!!-- SDNoData is for Implementation Casts only!!!!!!!! -->

<!!ELEMENT SDEnumerationData EMPTY>
<!!ATTLIST SDEnumerationData 
		Value CDATA "">

<!!ELEMENT SDNumericData EMPTY>
<!!ATTLIST SDNumericData 
		Value CDATA "">

<!!ELEMENT SDDimensionData (SDValue*)>
<!!ATTLIST SDDimensionData
		MaxSize CDATA ""
>

<!!ELEMENT SDDistributionData (SDValue*)>
<!!ATTLIST SDDistributionData
		MaxSize CDATA ""
>

<!!ELEMENT SDArrayData (SDValue*)>
<!!ATTLIST SDArrayData
		MaxSize CDATA ""
>

<!!ELEMENT SDMatrixData (SDValue*)>
<!!ATTLIST SDMatrixData
		MaxSize CDATA ""
>

<!!ELEMENT SDValue (SDValue*|SDDataType)>
<!!ATTLIST SDValue 
		Index CDATA "">

<!!ELEMENT SDLogicData EMPTY>
<!!ATTLIST SDLogicData 
		Value CDATA "">

<!!ELEMENT SDOneDData (SDDistributionInfoX?, SDDataAxisX, SDDataTableValues )>
<!!ATTLIST SDOneDData 
		Name NMTOKEN #REQUIRED
		Type (normal|fixed|grouped) "normal"
		MaxSize CDATA ""
		Interpolation (Linear|Rounded) "Linear"
		Extrapolation (Constant) "Constant">

<!!ELEMENT SDTwoDData (SDDistributionInfoX?, SDDistributionInfoY?,SDDataAxisX, SDDataAxisY, SDDataTableValues )>
<!!ATTLIST SDTwoDData 
		Name NMTOKEN #REQUIRED
		Type (normal|fixed|grouped) "normal"
		MaxSize CDATA ""
		Interpolation (Linear|Rounded) "Linear"
		Extrapolation (Constant) "Constant">

<!!ELEMENT SDDistributionInfoX EMPTY>
<!!ATTLIST SDDistributionInfoX
		Name NMTOKEN #REQUIRED
		ElementId NMTOKEN #REQUIRED>

<!!ELEMENT SDDistributionInfoY EMPTY>
<!!ATTLIST SDDistributionInfoY
		Name NMTOKEN #REQUIRED
		ElementId NMTOKEN #REQUIRED>

<!!ELEMENT SDDataAxisX (SDDimensionData | SDDistributionData)>

<!!ELEMENT SDDataAxisY (SDDimensionData | SDDistributionData)>

<!!ELEMENT SDDataTableValues (SDDimensionData | SDArrayData | SDMatrixData)>

<!!ELEMENT SDComplexData EMPTY>
<!!ATTLIST SDComplexData 
		DataName NMTOKEN #REQUIRED
		DataOid CDATA "">'
! !

"ASDBase.ic method 0x200232f4; bytecode file offset 0x92209c"
!EtasXMLExpander class methodsFor: 'recovered'!
sdComponentsDtd
    ^'<!!ENTITY % SDGeneral SYSTEM "sdGeneral.dtd">
<!!ENTITY % SDDiagramElements SYSTEM "sdDiagramElements.dtd">
<!!ENTITY % SDModelElements SYSTEM "sdModelElements.dtd">
<!!ENTITY % SDDatas SYSTEM "sdDatas.dtd">
<!!ENTITY % SDImplementations SYSTEM "sdImplementations.dtd">

%SDGeneral;
%SDDiagramElements;
%SDModelElements;
%SDDatas;
%SDImplementations;
'
! !

"ASDBase.ic method 0x20024170; bytecode file offset 0x92209c"
!EtasXMLExpander class methodsFor: 'recovered'!
sdModelElementsDtd
    ^'<!!ELEMENT SDVariables ((SDVariable | SDImplCast)*)>

<!!ELEMENT SDMethods (SDMethod*)>

<!!ELEMENT SDMethod (SDArguments*, SDReturn?, SDMethodLocals*, SDMethodSpec*)>
<!!ATTLIST SDMethod
		Name NMTOKEN #REQUIRED
		MethodId CDATA "" 
		MethodType (Method|Process) "Method">
	
<!!ELEMENT SDArguments (SDElement+)>

<!!ELEMENT SDReturn (SDElement)>

<!!ELEMENT SDMethodLocals (SDElement+)>

<!!ELEMENT SDVariable (SDElement, SDPrimitiveVariable? )>
<!!ATTLIST SDVariable
		Scope (local|imported|exported) "local">

<!!ELEMENT SDImplCast (SDElement)>
<!!ATTLIST SDImplCast
		Scope (local|imported|exported) "local">

<!!ELEMENT SDElement ((SDComplexType|SDPrimitiveType)?, (SDTypeSpecificAttributes?))>
<!!ATTLIST SDElement
		Name NMTOKEN #REQUIRED
		ElementId CDATA "" 
		Comment CDATA "">

<!!ELEMENT SDComplexType EMPTY>
<!!ATTLIST SDComplexType
		ComponentName NMTOKEN #REQUIRED
		ComponentOid CDATA "">

<!!ELEMENT SDPrimitiveType EMPTY>
<!!ATTLIST SDPrimitiveType
		ModelType (scalar|oned|twod|array|matrix|distribution) "scalar"
		BasicModelType (dt|cont|sdisc|udisc|log|enumeration|resource) "cont"
		Unit CDATA "">	


<!!ELEMENT SDPrimitiveVariable EMPTY>
<!!ATTLIST SDPrimitiveVariable
		Kind (variable|parameter|constant|sysconstant|input|output|ct|discrete|continuous|steplocal|dependent) "variable"
		Existence (virtual|real) "real"
		Dependency (independent|dependent) "independent"
		Memory (volatile|nonvolatile) "nonvolatile"
		Calibration (calibration|noncalibration) "noncalibration"
		Set (true|false) "false"
		Get (true|false) "false">

<!!ELEMENT SDTypeSpecificAttributes (SDMessageAttributes|SDResourceAttributes|SDEnumerationAttributes)>
<!!--in case of message: SDMessageAttributes; in case of enum: SDEnumerationAttributes-->

<!!ELEMENT SDEnumerationAttributes (SDComplexType)>
<!!ELEMENT SDResourceAttributes (SDComplexType)>

<!!ELEMENT SDMessageAttributes EMPTY>
<!!ATTLIST SDMessageAttributes
		MessageType (send|receive|sendreceive) "sendreceive">'
! !

"ASDBase.ic method 0x20024ca4; bytecode file offset 0x92209c"
!EtasXMLExpander class methodsFor: 'recovered'!
sdImplTypesDtd
    ^'<!!ELEMENT SDImplementationTypes (SDVersion, SDImplementationType*)>

<!!ELEMENT SDVersion EMPTY>
<!!ATTLIST SDVersion
	Value CDATA #REQUIRED
>

<!!ELEMENT SDImplementationType (SDPhysInterval?, SDImplInterval?)>
<!!ATTLIST SDImplementationType
	Name NMTOKEN #REQUIRED
	Comment CDATA ""
	Formula CDATA ""
	Master (Model | Implementation) #REQUIRED
	PhysType CDATA ""
	ImplType CDATA ""
	ZeroNotIncluded (true | false) #REQUIRED
	Rescaled (true | false) #REQUIRED
>

<!!ELEMENT SDPhysInterval (SDInterval)>
<!!ELEMENT SDImplInterval (SDInterval)>

<!!ELEMENT SDInterval EMPTY>
<!!ATTLIST SDInterval 
	 	Left CDATA "-oo"
		Right CDATA "+oo"
>'
! !

"ASDBase.ic method 0x20026dd0; bytecode file offset 0x923928"
!EtasXMLExpander class methodsFor: 'recovered'!
sdDiagramElementsDtd
    ^'<!!ELEMENT SDDiagramElements (SDDiagramElement*)>

<!!ELEMENT SDDiagramElement (SDAttributedViews?, (SDFunctional | SDOperator | SDControl | SDLiteral | SDConnection | SDState | SDJunction | SDHierarchy | SDSwitch | SDInoutPort)?)>
<!!ATTLIST SDDiagramElement
		PositionX CDATA ""
		PositionY CDATA ""
		Identifier CDATA "">

<!!ELEMENT SDAttributedViews (SDAttributedView*)>
<!!ATTLIST SDAttributedViews
		ElementId CDATA "">

<!!ELEMENT SDAttributedView EMPTY>
<!!ATTLIST SDAttributedView
		Name  CDATA #REQUIRED 
		ViewType CDATA "">

<!!ELEMENT SDFunctional (SDSelectorPort?, SDReturnPort?, SDSequenceCalls?)>
<!!ATTLIST SDFunctional
		ElementId CDATA ""
		LineColor CDATA ""
		LineWidth CDATA ""
		LineType CDATA ""
		AreaColor CDATA ""
		SizeX CDATA ""
		SizeY CDATA ""
		NamePositionX CDATA ""
		NamePositionY CDATA ""
		ActualNameVisibility (true | false) "true"
		FrameVisibility (true | false) "true"
		IconVisibility (true | false) "false"
		PinNameVisibility (true | false) "false">

<!!ELEMENT SDSelectorPort (SDDiagramMethodDescription*)>

<!!ELEMENT SDReturnPort (SDDiagramMethodDescription*)>

<!!ELEMENT SDSequenceCalls (SDSequenceCallDescription*)>

<!!ELEMENT SDDiagramMethodDescription (SDDiagramMethodParameterDescription*)>
<!!ATTLIST SDDiagramMethodDescription
		ElementId CDATA "">

<!!ELEMENT SDDiagramMethodParameterDescription EMPTY>
<!!ATTLIST SDDiagramMethodParameterDescription
		ElementId CDATA ""
		Identifier CDATA ""
		Direction CDATA ""
		PositionX CDATA ""
		PositionY CDATA ""
		ConnectorVisibility (true | false) "true"
		ConnectorNameVisibility (true | false) "true"
		HasTempVar (true | false) "true">

<!!ELEMENT SDSequenceCallDescription EMPTY>
<!!ATTLIST SDSequenceCallDescription
		Identifier CDATA ""
		PinIdentifier CDATA ""
		PositionX CDATA ""
		PositionY CDATA ""
		SequenceCallVisibility (true | false) "true"
		MethodId CDATA ""
		SequenceNumber CDATA ""
		SequenceCallAtomicType CDATA "">

<!!ELEMENT SDOperator (SDInputDescription)>
<!!ATTLIST SDOperator
		AliasId CDATA ""
		Type CDATA ""
		HasTempVar (true | false) "true"
		SizeX CDATA ""
		SizeY CDATA "">

<!!ELEMENT SDInputDescription (SDInputIdentifier*)>
<!!ATTLIST SDInputDescription
		InputSize CDATA "">

<!!ELEMENT SDInputIdentifier EMPTY>
<!!ATTLIST SDInputIdentifier
		PinIdentifier CDATA ""
		Type CDATA ""
		Identifier CDATA "">

<!!ELEMENT SDControl (SDInputDescription, SDControlDescription?, SDSequenceCalls)>
<!!ATTLIST SDControl
		Type CDATA ""
		SizeX CDATA ""
		SizeY CDATA "">

<!!ELEMENT SDControlDescription (SDLiteral*)>

<!!ELEMENT SDLiteral EMPTY>
<!!ATTLIST SDLiteral
		Literal CDATA ""
		SizeX CDATA ""
		SizeY CDATA "">

<!!ELEMENT SDConnection (SDConnectionDescription)>
<!!ATTLIST SDConnection
		Type CDATA ""
		StartBlockId CDATA ""
		EndBlockId CDATA ""
		StartConnectorId CDATA ""
		EndConnectorId CDATA "">

<!!ELEMENT SDConnectionDescription (SDPoint*, (SDBezier|SDLine))>
<!!ATTLIST SDConnectionDescription
		Type CDATA "">

<!!ELEMENT SDPoint EMPTY>
<!!ATTLIST SDPoint
		Index CDATA ""
		PositionX CDATA ""
		PositionY CDATA "">

<!!ELEMENT SDLine EMPTY>

<!!ELEMENT SDBezier (SDTrigger, SDTransitionAction, SDTransitionCondition)>
<!!ATTLIST SDBezier
		Name  NMTOKEN #REQUIRED >

<!!ELEMENT SDTrigger (SDStateAction?)>
<!!ELEMENT SDTransitionAction (SDStateAction?)>
<!!ELEMENT SDTransitionCondition (SDStateAction?)>


<!!ELEMENT SDState (SDStateEntryAction, SDStateStaticAction, SDStateExitAction, SDConnectorDescription, SDHierarchyConnectorDescription?, SDDiagramElements?)>
<!!ATTLIST SDState
		Name NMTOKEN #REQUIRED  
		IsHierarchyState (true | false) "true"
		IsStartState (true | false) "true"
		IsHistory (true | false) "true"
		AreaColor CDATA ""
		SizeX CDATA ""
		SizeY CDATA "">

<!!ELEMENT SDJunction (SDConnectorDescription)>
<!!ATTLIST SDJunction
		AreaColor CDATA ""
		SizeX CDATA ""
		SizeY CDATA "">

<!!ELEMENT SDStateEntryAction (SDStateAction?)>
<!!ELEMENT SDStateStaticAction (SDStateAction?)>
<!!ELEMENT SDStateExitAction (SDStateAction?)>

<!!ELEMENT SDStateAction (SDEsdlCode?)>
<!!ATTLIST SDStateAction
		Type CDATA ""
		MethodId CDATA ""
		Identifier CDATA "">

<!!ELEMENT SDEsdlCode (#PCDATA)>

<!!ELEMENT SDStateInfo EMPTY>
<!!ATTLIST SDState
		Name NMTOKEN #REQUIRED  
		AreaColor CDATA ""
		IsHierarchyState (true | false) "true">

<!!ELEMENT SDConnectorDescription (SDConnectorIdentifier*)>
<!!ATTLIST SDConnectorDescription
		InputSize CDATA "">

<!!ELEMENT SDConnectorIdentifier EMPTY>
<!!ATTLIST SDConnectorIdentifier
		Identifier CDATA ""	
		PositionX CDATA ""
		PositionY CDATA "">

<!!ELEMENT SDHierarchyConnectorDescription (SDHierarchyConnectorIdentifier*)>

<!!ELEMENT SDHierarchyConnectorIdentifier EMPTY>
<!!ATTLIST SDHierarchyConnectorIdentifier
		Identifier CDATA ""	
		Direction CDATA ""
		PositionX CDATA ""
		PositionY CDATA ""
		ConnectorVisibility (true | false) "true"
		ConnectorNameVisibility (true | false) "true"
		HasTempVar (true | false) "true"
		IsResultPin (true | false) "true">

<!!ELEMENT SDSwitch (SDInputDescription)>
<!!ATTLIST SDSwitch
		AliasId CDATA ""
		Type CDATA ""
		HasTempVar (true | false) "true"
		SizeX CDATA ""
		SizeY CDATA "">

<!!ELEMENT SDHierarchy (SDHierarchyConnectorDescription?, SDDiagramElements?)>
<!!ATTLIST SDHierarchy
	Name CDATA #REQUIRED
	NamePositionX CDATA ""
	NamePositionY CDATA ""
	SizeX CDATA ""
	SizeY CDATA ""
	ActualNameVisibility (true | false) "true">

<!!ELEMENT SDInoutPort EMPTY>
<!!ATTLIST SDInoutPort
	Name CDATA #REQUIRED
	Identifier CDATA ""
	ExternalIdentifier CDATA ""
	SizeX CDATA ""
	SizeY CDATA "">
'
! !

"ASDBase.ic method 0x202f4738; bytecode file offset 0xbf1010"
!EtasXMLExpander class methodsFor: 'recovered'!
initializeMappingDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initializeMappingDictionary.
    recoveredValue0 := (self) mappingDictionary.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ($<) put: ('&lt;').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ($&) put: ('&amp;').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) at: ($>) put: ('&gt;').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) at: ($') put: ('&apos;').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) at: ($") put: ('&quot;').
    ^self
! !

