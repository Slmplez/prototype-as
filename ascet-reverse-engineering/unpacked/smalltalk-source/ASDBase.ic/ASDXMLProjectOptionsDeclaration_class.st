"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001bc44; bytecode file offset 0x92209c"
!ASDXMLProjectOptionsDeclaration class methodsFor: 'recovered'!
projectOptionsDeclarationsString
    ^'<?xml version="1.0" encoding="US-ASCII"?>
<OptionDeclarations xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="D:/ETAS/ASCET6.0/Schemas/externalOptions.xsd">
	<OptionDeclaration xmlCategory="Build" attributeName="Target" optionClass="EtasEnumerationOption" optionCategory="FILE">
		<Group>Build</Group>
		<Label>Target</Label>
		<Description>Generate code for the selected target device</Description>
		<Tooltip>Set the target device for code generation</Tooltip>
		<DefaultValue>PC</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue/>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="CodeGenerator" optionClass="EtasEnumerationOption" optionCategory="FILE">
		<Group>Build</Group>
		<Label>Code Generator</Label>
		<Description>Set the type of code to be generated</Description>
		<Tooltip>Set code generation type</Tooltip>
		<DefaultValue>Physical Experiment</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue/>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="Compiler" optionClass="EtasEnumerationOption" optionCategory="FILE">
		<Group>Build</Group>
		<Label>Compiler</Label>
		<Description>Set the compiler to be invoked by ASCET to compile generated code</Description>
		<Tooltip>Use this compiler in the build process</Tooltip>
		<DefaultValue>GNUCV4x</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue/>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="CompilerSettingsHyperlink" optionClass="EtasButtonOption" optionCategory="FILE">
		<Group>Build</Group>
		<Label>Edit Compiler Settings</Label>
		<Description>Open the Tools > Options dialog to edit compiler specific options</Description>
		<Tooltip>Edit settings for selected compiler</Tooltip>
		<DefaultValue/>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="OperatingSystem" optionClass="EtasStringOption" optionCategory="FILE">
		<Group>Build</Group>
		<Label>Operating System</Label>
		<Description>Generate code to interface with the selected operating system or run-time environment</Description>
		<Tooltip>Set operating system/run-time environment for code generation</Tooltip>
		<DefaultValue/>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="Separator" optionClass="EtasSeparatorOption" optionCategory="FIXED">
		<Group>Build</Group>
		<Label>Separator</Label>
		<Description>Separator</Description>
		<Tooltip>Separator</Tooltip>
		<DefaultValue/>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="useLongNames" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build</Group>
		<Label>Use Long File Names (deprecated)</Label>
		<Description><!![CDATA[If checked, ASCET will generate long Windows file names that use the full name of the component in the file. Names can be longer 8 characters.<br>
If not checked, ASCET will generate short Windows file names with maximum of 8 characters before the extension period. All names will conform to the 8.3 the file name part.
This variant should be chosen if the host OS or build system uses the FAT file system (Windows 3.1 and earlier or MS-DOS) or if the compiler cannot handle long file names.<br>
<b>This option is marked as deprecated and will be removed in the next ASCET version. ASCET will always use long file names.</b>]]></Description>
		<Tooltip>Use Long File Names</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="genDependencyFiles" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build</Group>
		<Label>Generate Dependency Files</Label>
		<Description>If set, generates GNU make files containing the dependencies of all generated header files.</Description>
		<Tooltip>Generate GNU make compatible dependency files</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="makeHeaderStructure" optionClass="EtasEnumerationOption" optionCategory="FILE">
		<Group>Build</Group>
		<Label>Header Structure</Label>
		<Description><!![CDATA[Select the C header file structure for generated code. The following options are available:
- Component (default): generate one C header file for each component. File names are derived from the component name.
- Module: generate one C header file for each module. File names are derived from the module name.
- Project: generate a single C header file for the complete project. The file name is derived from the project name. This option should be selected for best results when using option "Precompiled Header" -> Set to project]]></Description>
		<Tooltip>Choose the structure for generated C header files</Tooltip>
		<DefaultValue>Component</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue>Component</StringValue>
				<StringValue>Module</StringValue>
				<StringValue>Project</StringValue>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="projectCBannerTemplates" optionClass="EtasStringOption" optionCategory="FILE">
		<Group>Build</Group>
		<Label>Banner Templates for C files</Label>
		<Description><!![CDATA[List of banner templates that are placed at the beginning of each C file. The file names may contain the following placeholders:<br/>
%ASCET%: the product installation directory<br/>
%DATA%: the data directory<br/>
%TARGETROOT%: the target root directory (%ASCET%\Target\)<br/>
%P_TARGET%: the target directory (e.g. %ASCET%\Target\trg_ansi)<br/>

The banner files themselves may contain the following placeholders:<br/>
$(COMPONENT.KIND)<br/>
$(COMPONENT.NAME)<br/>
$(COMPONENT.SPECIFICATION)<br/>
$(COMPONENT.VERSION)<br/>
$(COMPONENT.IMPLEMENTATION)<br/>
$(COMPONENT.DATASET)<br/>

$(FILE.NAME)<br/>
$(FILE.EXTENSION)<br/>
$(FILE.DESCRIPTION)<br/>
$(FILE.DATE)<br/>
$(FILE.TIME)<br/>

$(ASCET.USER)<br/>
$(ASCET.MD.VERSION)<br/>
$(ASCET.RP.VERSION)<br/> 
$(ASCET.SE.VERSION)<br/>
$(ASCET.SE.CID)<br/>
]]></Description>
		<Tooltip>Banner Templates for C files</Tooltip>
		<DefaultValue>%TARGETROOT%\banner.template.c</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="projectHBannerTemplates" optionClass="EtasStringOption" optionCategory="FILE">
		<Group>Build</Group>
		<Label>Banner Templates for H files</Label>
		<Description><!![CDATA[List of banner templates that are placed at the beginning of each H file. The placeholders in the banner file names and in the banner files are the same as for the C banners.]]></Description>
		<Tooltip>Banner Templates for H files</Tooltip>
		<DefaultValue>%TARGETROOT%\banner.template.h</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGenMessageConfiguration" attributeName="CodeGenMessageConfigurationButton" optionClass="EtasButtonOption" optionCategory="FILE">
		<Group>Build</Group>
		<Label>Configure Code Generation Messages</Label>
		<Description><!![CDATA[By default ASCET will show all error, warning and information messages created during code generation in the "Monitor" window. The importance of a messages can be promoted (e.g. to enforce compliance with in-house modeling guidelines). Warnings can be promoted to errors. Information messages can be promoted to warnings or errors.
		It is not possible to demote the importance of a message. Messages can, however, be suppressed to prevent their display in the "Monitor" window. For safety critical systems it is recommended that messages are not suppressed and that all warnings are promoted to errors.]]></Description>
		<Tooltip>Configure suppression and promotion code generation messages</Tooltip>
		<DefaultValue/>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="ETargetHexCodeIncludesROMCode" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>ASAM-2MC</Group>
		<Label>ROM Code</Label>
		<Description>E-Target HEX code includes ROM code</Description>
		<Tooltip>HEX code includes ROM code</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="HierarchicalNames" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>ASAM-2MC</Group>
		<Label>Hierarchical Names</Label>
		<Description>Build hierarchical names</Description>
		<Tooltip>Hierarchical Names</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="Formulawithunit" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>ASAM-2MC</Group>
		<Label>Formulas with Unit</Label>
		<Description>Create formulas containing the unit of the labels</Description>
		<Tooltip>Formulas with Unit</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="Suppressexportswithinasap2" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>ASAM-2MC</Group>
		<Label>Suppress exported Parameters</Label>
		<Description>Exported parameters of components (not of project) are ignored during ASAM-2MC file generation</Description>
		<Tooltip>Ignore exported parameters during ASAM-2MC file generation</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="Suppressexportsprototypewithinasap2" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>ASAM-2MC</Group>
		<Label>Suppress exported Elements</Label>
		<Description>Exported elements of classes (not of project and not of modules) are ignored during ASAM-2MC file generation</Description>
		<Tooltip>Ignore exported elements during ASAM-2MC file generation</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="SuppressGroupInformationInAsap2" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>ASAM-2MC</Group>
		<Label>Suppress grouping Information</Label>
		<Description>Do not generate the Additional Group Information for the project in ASAM-2MC file</Description>
		<Tooltip>Do not generate Group Information in ASAM-2MC file</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="SuppressFunctionInformationInAsap2" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>ASAM-2MC</Group>
		<Label>Suppress grouping Information</Label>
		<Description>Do not generate the Additional Function Information for the project in ASAM-2MC file</Description>
		<Tooltip>Do not generate Function Information in ASAM-2MC file</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="considerDepParams" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build</Group>
		<Label>Update Dependent Parameters</Label>
		<Description>Update Dependent Parameters</Description>
		<Tooltip>Update Dependent Parameters</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="protectDiv" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation</Group>
		<Label>Protected against division by zero</Label>
		<Description>If the denominator of a division expression evaluates to zero then the expression has no meaning. Most devices handle this as a machine exception. If this option is set, ASCET automatically generates a check to prevent division by zero at run time. If the denominator is non-zero then the expression is evaluated as normal. If the denominator is zero then, by default, the numerator of the division is returned as the result (i.e. a/b == a, if b==0). The default result returned for a zero denominator can be modified using the option "Result on Division by Zero".&lt;br/>
This does not apply to integer divisions with arithmetic services, because arithmetic services routines are required to protect against division by 0.&lt;br/>
Note: the calculation of a remainder involves an implicit division. Setting this option also protects the calculation of remainders from a zero divisor.
</Description>
		<Tooltip>Automatically generate a run-time check to prevent division by zero</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="protectDivSignedOverflow" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation</Group>
		<Label>Protected Division against Signed Overflow</Label>
		<Description>Signed overflow occurs during division if the numerator -2147483648 is divided by -1 because the result value 2147483648 is not representable in a signed type.&lt;br/>
The behaviour is undefined in C and it is often handled in the same way at run time as a division by zero, typically by a machine exception. If this option is set, ASCET automatically generates a check to prevent signed overflow at run time. If the check detects that signed overflow would occur the result of the division is set to the maximum value that can be represented by the signed type (i.e. 2147483647).&lt;br/>
This does not apply to integer divisions with arithmetic services, because arithmetic services routines are required to protect against signed overflow.&lt;br/>
Note: the calculation of a remainder involves an implicit division. Setting this option also protects the calculation of remainders from signed overflow.
</Description>
		<Tooltip>Automatically generate a check to prevent signed overflow in division</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="protectVecIndex" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation</Group>
		<Label>Protected Vector Indices</Label>
		<Description>Array, matrix, and char table index values are protected against under- and overflow at runtime if this option is enabled. The protection is implemenented as a limitation. If the protection is applied, a warning WIle77 is issued to inform the user about possible problems at run time.</Description>
		<Tooltip>Protected Vector Indices</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="castStrategy" optionClass="EtasEnumerationOption" optionCategory="FILE">
		<Group>Build\Code Generation</Group>
		<Label>Casting</Label>
		<Description><!![CDATA[Select the casting strategy to use at code generation time:
<b>ASCET legacy (deprecated)</b>: casting supported in ASCET 6.0 and previous releases. This strategy will be removed in a future release of ASCET. A warning will be generated if this strategy is chosen.
<b>MISRA compliant</b>: casting strictly follows the MISRA-C:2004 casting rules (Rules 10.1 to 10.6 inclusive). Arithmetic services cannot be used with this casting strategy.
<b>Arithmetic Services</b>: casting with arithmetic services.
<b>Target Optimized</b>: casting considers the native integer size of the target, avoiding inefficiencies due to casting of types that
are smaller than the native integer type and performing arithmetic operations in larger types than necessary. Arithmetic services
cannot be used with this casting strategy.]]></Description>
		<Tooltip>Select the casting model to be used in generated code</Tooltip>
		<DefaultValue>MISRA</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue>MISRA</StringValue>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="definesForEnumValues" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation</Group>
		<Label>Generate Define Directives for Enum Values</Label>
		<Description><!![CDATA[By default, enumerands in ASCET appear as integer literals in generated code. For example,
		 given an enumeration with enumerands "Red, Yellow, Green", ASCET would use "0" to represent "Red", "1" to represent
		 "Yellow" etc. If this option is set, the declared symbolic names of enumerands are used generated code and are mapped
		 onto integer values using a C pre-processor #define directive. This option should be selected if inspection or review
		 of generate code is part of your development process.]]></Description>
		<Tooltip>Generate C #define directives for enumerands in an Enum type</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="commentFormula" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation</Group>
		<Label>Add Comment with Implementation Information for each Assignment Statement</Label>
		<Description>If set, a C code comment with implementation information (formula, range etc.) is generated before each assignment statement. This option should be selected if inspection or review of generate code is part of your development process.</Description>
		<Tooltip>Add a comment with implementation information to each assignment statement</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="commentSpecificationSource" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation</Group>
		<Label>Add Comment with Specification Source for each Statement</Label>
		<Description>If set, a comment with the specification source (sequence call number for block diagrams or line number for ESDL/C-Code specification) is generated before the corresponding C-code statement or sequence of statements. This option should be selected if inspection or review of generate code is part of your development process.</Description>
		<Tooltip>Add a comment with the specification source to each statement</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="commentGenerationInfo" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation</Group>
		<Label>Add Comment with Generation Information for each Component</Label>
		<Description>If set, a comment describing the settings used for code generation will be generated as a header block in each C file.</Description>
		<Tooltip>Add a comment about code generation settings to each generated C file</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="forceParenthesisLogicalBinOp" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation</Group>
		<Label>Force Parenthesis for Binary Logical Operators</Label>
		<Description>If this option is enabled, binary boolean expressions are placed in parentheses by default. This improves readability. If this option is disabled, the generated C code will violate MISRA-C:2004 Rule 12.5.</Description>
		<Tooltip>Force Parenthesis for Binary Logical Operators</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="parenthesizeForReadability" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation</Group>
		<Label>Add parenthesis for readability</Label>
		<Description>If this option is enabled, additional parentheses are generated in complex expressions to avoid reliance on C''s precedence rules and to improve readability of the generated C-code. If this option is disabled, the generated C code will violate MISRA-C:2004 Rule 12.1.</Description>
		<Tooltip>Add parenthesis for readability</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="redundantDataStorage" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation</Group>
		<Label>Use Redundant Data Storage</Label>
		<Description>This option allows to deactivate the redundant data storage for all variables marked as redundant.</Description>
		<Tooltip>Use Redundant Data Storage</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="allowReferencesWithoutInitValue" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation</Group>
		<Label>Allow References without Init Value</Label>
		<Description>If this option is enabled, References without Init Value are allowed</Description>
		<Tooltip>Allow References without Init Value</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGenMessageConfiguration" attributeName="PromotedToErrorMessages" optionClass="EtasMultiSelectEnumerationOption" optionCategory="FILE">
		<Group>Build\Message Configuration</Group>
		<Label>CodeGen Messages Promoted To Error</Label>
		<Description>A list of all CodeGen messages that are promoted to errors. Checked means promoted!!</Description>
		<Tooltip>CodeGen Messages Promoted To Error</Tooltip>
		<DefaultValue>()</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue/>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGenMessageConfiguration" attributeName="PromotedToWarningMessages" optionClass="EtasMultiSelectEnumerationOption" optionCategory="FILE">
		<Group>Build\Message Configuration</Group>
		<Label>CodeGen Messages Promoted To Warning</Label>
		<Description>A list of all CodeGen messages promoted to warnings. Checked means promoted!!</Description>
		<Tooltip>CodeGen Messages Promoted To Warning</Tooltip>
		<DefaultValue>()</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue/>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGenMessageConfiguration" attributeName="HiddenMessages" optionClass="EtasMultiSelectEnumerationOption" optionCategory="FILE">
		<Group>Build\Message Configuration</Group>
		<Label>Hidden CodeGen Messages</Label>
		<Description>A list of all hidden CodeGen Messages. Checked means hidden!!</Description>
		<Tooltip>Hidden CodeGen Messages</Tooltip>
		<DefaultValue>()</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue/>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="optimizeOneLevelDirectAccess" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Optimization</Group>
		<Label>Optimize Direct Access Methods (One Level)</Label>
		<Description>The direct access methods are replaced by the field access of the component structure. For one hierarchy level only. Note: This option is always enabled for Continuous Time Components and Classes without methods, i.e. can not be disabled for such components.</Description>
		<Tooltip>Optimize Direct Access Methods (One Level)</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="optimizeMultipleLevelDirectAccess" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Optimization</Group>
		<Label>Optimize Direct Access Methods (Multiple Levels)</Label>
		<Description>The direct access methods are replaced by the field access of the component structure. For all hierarchy level. Note: This option is always enabled for Continuous Time Components and Classes without methods, i.e. can not be disabled for such components.</Description>
		<Tooltip>Optimize Direct Access Methods (Multiple Levels)</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="disableBDETempVariables" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Optimization</Group>
		<Label>Disable BDE Temp Variable Generation</Label>
		<Description>The generation of BDE temp variables is sometimes unexpected, therefore this option allows to disable them. BDE temp variables are deprecated and will be removed a future ASCET version. Use the new optimization "Common Subexpression Elimination" to reduce the efficiency reduction due to deactivation of BDE temp variables.</Description>
		<Tooltip>Disable BDE Temp Variable Generation</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="useNewCommonSubexpressionElimination" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Optimization</Group>
		<Label>Common Subexpression Elimination</Label>
		<Description>Reduce code size and runtime by calculating common subexpressions only once and storing result in temp variables if possible. This optimization does not change the functional behaviour of the model.</Description>
		<Tooltip>Common Subexpression Elimination</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="maxLoopIterate" optionClass="EtasNumericOption" optionCategory="FILE">
		<Group>Build\Code Generation\Experiment Code</Group>
		<Label>Max Number of Loop Iterations</Label>
		<Description>Every loop generated by the code generation will contain a loop counter which causes the loop to end if the counter equals to the specified value. Additionally a target error will be generated. Setting this value to 0 will deactivate this feature and not create additional code into a loop</Description>
		<Tooltip>Max Number of Loop Iterations</Tooltip>
		<DefaultValue>1000</DefaultValue>
		<NumericOption>
			<MinValue>0</MinValue>
			<MaxValue>1000000</MaxValue>
		</NumericOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="prefixComponentName" optionClass="EtasStringOption" optionCategory="FILE">
		<Group>Build\Code Generation</Group>
		<Label>Prefix for Component Names</Label>
		<Description>Prefix for Component Names</Description>
		<Tooltip>Prefix for Component Names</Tooltip>
		<DefaultValue/>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="commentElementDeclSource" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Experiment Code</Group>
		<Label>Add Comment with Specification Info for each Element</Label>
		<Description>Add Comment with Element Specification Information for Element Definitions</Description>
		<Tooltip>Add Comment with Element Specification</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="generateDtMacro" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Experiment Code</Group>
		<Label>Generate Access Macro for dT</Label>
		<Description>Using a macro for access to dT element provides the flexibility to customize the access to dT</Description>
		<Tooltip>Generate a macro for access to project dT variable</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="dataLogging" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Experiment Code</Group>
		<Label>Enable logging of all data changes</Label>
		<Description>Enables the log mode &quot;Log all value changes&quot; in the Data Logger</Description>
		<Tooltip>Enable logging of all data changes</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="useGlobalId" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Experiment Code</Group>
		<Label>Use OID for Generation of Component Names</Label>
		<Description>Use OID for Generation of Component Names</Description>
		<Tooltip>Use OID for Generation of Component Names</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="cacheLocking" optionClass="EtasContainerOption" optionCategory="FILE">
		<Group>Build\Code Generation\Experiment Code</Group>
		<Label>Cache Locking</Label>
		<Description>Globally en/disable Cache Locking (code needs to be regenerated)</Description>
		<Tooltip>Cache Locking</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="cacheLockKindCode" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Experiment Code</Group>
		<Label>Cache Lock Code</Label>
		<Description>Globally en/disable Cache Locking for Code (no change to generated code)</Description>
		<Tooltip>Cache Lock Code</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="cacheLockKindData" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Experiment Code</Group>
		<Label>Cache Lock Data </Label>
		<Description>Globally en/disable Cache Locking for Data (no change to generated code)</Description>
		<Tooltip>Cache Lock Data</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="maxLockedWays" optionClass="EtasEnumerationOption" optionCategory="FILE">
		<Group>Build\Code Generation\Experiment Code</Group>
		<Label>Used Cache Size</Label>
		<Description>Used Cache Size for locked code/data (no change to generated code)</Description>
		<Tooltip>Used Cache Size</Tooltip>
		<DefaultValue>768 kB</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue>0 kB</StringValue>
				<StringValue>256 kB</StringValue>
				<StringValue>512 kB</StringValue>
				<StringValue>768 kB</StringValue>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="messageUsageVariant" optionClass="EtasEnumerationOption" optionCategory="FILE">
		<Group>Build\Code Generation\Experiment Code</Group>
		<Label>Message Usage Variant</Label>
		<Description>Generation variant for ASCET Message Usage:
			NON_OPT_COPY_FUNCTION: each message access works on a (function local) copy which will be read at start of function and written back to original upon exit of function. 
			NON_OPT_COPY_TASK: each message access works on a (task specific) copy, which will be read upon entry of task and written upon exit.
			NO_COPY: each message access works on the original. Note: For offline simulation this variant is semantically equivalent to OPT_COPY on SE-Targets.
			</Description>
		<Tooltip>Message Usage Variant</Tooltip>
		<DefaultValue>NON_OPT_COPY_FUNCTION</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue>NON_OPT_COPY_TASK</StringValue>
				<StringValue>NON_OPT_COPY_FUNCTION</StringValue>
				<StringValue>NO_COPY</StringValue>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>	
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="mcaDebuggingSupport" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Experiment Code\MCA</Group>
		<Label>Activate Measurement of Stack Variables</Label>
		<Description>Activate Measurement of Stack Variables. Increases run time and memory footprint.</Description>
		<Tooltip>Activate Measurement of Stack Variables</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="mcaCoverageAnalysis" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Experiment Code\MCA</Group>
		<Label>Activate Coverage Analysis</Label>
		<Description>Activate Coverage Analysis. Increases run time and memory footprint.</Description>
		<Tooltip>Activate Coverage Analysis</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="mcaCountingMode" optionClass="EtasEnumerationOption" optionCategory="FILE">
		<Group>Build\Code Generation\Experiment Code\MCA</Group>
		<Label>Coverage Counting Mode</Label>
		<Description>Counting mode for coverage.</Description>
		<Tooltip>Coverage Mode</Tooltip>
		<DefaultValue>Coverage</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue>Coverage</StringValue>
				<StringValue>Profiling</StringValue>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="mcaValueRangeAnalysis" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Experiment Code\MCA</Group>
		<Label>Activate Value Range Analysis</Label>
		<Description>Activate Value Range Analysis. Increases run time and memory footprint.</Description>
		<Tooltip>Activate Value Range Analysis</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="useAccessMacros" optionClass="EtasMultiSelectEnumerationOption" optionCategory="FILE">
		<Group>Build\Code Generation\Production Code</Group>
		<Label>Generate Access Macros for</Label>
		<Description><!![CDATA[<B>Access Macros</B> are C-preprocessor #define directives used in generated code
		  to access to variables or messages. They are a short-hand used to increase
		  readability of the generated C-code. <B>Access Macros</B> can be activated separately for variables and/or messages.<br>
		  If access macros are enabled, generated code uses macros <b>_variable</b> or <b>_message</b> to access variables and messages respectively.<br>
		  If access macros are not enabled, generated code uses the full access path to the variable or message, for example <b>Mod_IRAM.variable</b>.<br>
		  This option does not change the functional behaviour of the model.
		  ]]></Description>
		<Tooltip>Generate #defines for variable and/or message names to improve readability of generated C-code.</Tooltip>
		<DefaultValue>\variables\messages</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue/>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="generateDataStructures" optionClass="EtasEnumerationOption" optionCategory="FILE">
		<Group>Build\Code Generation\Production Code</Group>
		<Label>Generate Data Structures</Label>
		<Description><!![CDATA[Control which ASCET component data structures are generated. Possible settings are:<br>
		<B>Use Component Settings</B> (default) - Use the setting defined by the implementation of each component
		  (Implementation Editor>Settings>Generate Data Structures). By default, component implementations enable "Generate Data Structures".<br>
		<B>Yes for All Components</B> - Always generate data structures for all components within this project. This option overrides the component settings (i.e. component settings are ignored).<br>
		<B>No for All Components</B> - Never generate data structures for any component
		  within this project. This option overrides the component settings (i.e. component settings are ignored).<br>]]></Description>
		<Tooltip>Control how ASCET data structures are generate for components in the project</Tooltip>
		<DefaultValue>YESALL</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue>Yes for All Components</StringValue>
				<StringValue>No for All Components</StringValue>
				<StringValue>Use Component Settings</StringValue>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="genOSConfiguration" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Production Code</Group>
		<Label>Generate OS Configuration</Label>
		<Description><!![CDATA[If enabled, ASCET will generate C-code to interface with an OSEK operating system, including task and ISR bodies and a StartupHook (if required), C-code will also be generated to support run time calculation of dT. This additional C-code is located in file <b>conf.c</b>. If using RTA-OSEK, task and ISR bodies are generated in files <b>taskname.c</b> and <b>ISRname.c</b> respectively.
		 By default this option is enabled.]]></Description>
		<Tooltip>Generate the C code required to interface ASCET generated code with an OSEK operating system.</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="generateMapFile" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Production Code</Group>
		<Label>Generate Map File</Label>
		<Description><!![CDATA[A <b>Virtual Address Table (VAT)</b> is required
		 for generation of an ASAM2-MC description file with valid physical addresses.<br>
		 If enabled, this option causes ASCET to generate VATs as additional data structures that are allocated to VATROM and
		 should not be located to physical memory on the micro controller.</br>This option does not change the functional behaviour of the model.]]></Description>
		<Tooltip>The generation of the Virtual Address Tables (VAT) is required for generation of an ASAM2-MC description file with valid physical adresses.</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="codeSyntax" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Production Code</Group>
		<Label>Add Implementation Definitions</Label>
		<Description>If enabled, the generated code will include additional comments describing the implementation information for each element.</Description>
		<Tooltip>Control generation of additional comments containing the implementation information for each element.</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="generateMethodsDT" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Production Code</Group>
		<Label>Generate Access Methods for dT (Alternative: use OS dT directly)</Label>
		<Description><!![CDATA[Calculation of dT requires a method called <b>setDeltaT()</b>
		 that converts the value read from the free-running hardware timer providing the time reference for dT to the scaled physical value used in the ASCET model.<br>
		 If this option and <b>Generate OS Configuration</b> are enabled, ASCET will automatically generate an implementation of <b>setDeltaT()</b>.<br>
		 If either this option or <b>Generate OS Configuration</b> are disabled, then an implementation of <b>setDeltaT()</b> must be provided externally.]]></Description>
		<Tooltip>Control whether access methods for dT are generated automatically by ASCET or will be provided by external user code.</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="arithmeticServiceSet" optionClass="EtasEditableEnumerationOption" optionCategory="FILE">
		<Group>Build\Code Generation\Integer Arithmetic</Group>
		<Label>Arithmetic Service Set</Label>
		<Description>This option selects the arithmetic service set that ASCET should use for code generation. See ASCET''s on-line help for details on how to configure arithmetic service sets.</Description>
		<Tooltip>Set the arithmetic service set to use during code generation.</Tooltip>
		<DefaultValue>&lt;None&gt;</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue>&lt;None&gt;</StringValue>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="resultOnDivisionByZero" optionClass="EtasEnumerationOption" optionCategory="FILE">
		<Group>Build\Code Generation\Integer Arithmetic</Group>
		<Label>Result on Division by Zero</Label>
		<Description><!![CDATA[When ASCET generates code to protect against division by zero (see option Project Properties > Build > Code Generation > Protect Against Division by Zero) the value returned in the event of a detected violation is either:
- numerator (default): return the numerator of the expression
- user defined: define the result using an externally provided C macro protDiv0(num, value_range_min, value_range_max)
	The range [value_range_min, value_range_max] is the value range calculated by ASCET for the division.
	Important: The user macro is supposed to return a value in the range [value_range_min, value_range_max], since ASCET assumes this for further optimizations.]]></Description>
		<Tooltip>Specify the result to return when protecting against division by zero</Tooltip>
		<DefaultValue>numerator</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue>numerator</StringValue>
				<StringValue>user defined</StringValue>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="representableBits" optionClass="EtasEnumerationOption" optionCategory="FILE">
		<Group>Build\Code Generation\Integer Arithmetic</Group>
		<Label>Maximum bit Length (int)</Label>
		<Description>This option defines the maximum size in bits of values used by ASCET for integer arithmetic. By default, all targets, irrespective of native word size, allow a maximum of 32-bits and ASCET will use 32-bit values if and when required. Applications required to run on resource constrained 16-bit targets can set this option to 16 to reduce the memory footprint and increase the performance of generated code. However, note that this will reduce range and/or resolution of values that can be supported.
		</Description>
		<Tooltip>Set the maximum size (in bits) for integer arithmetic</Tooltip>
		<DefaultValue>32</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue>8</StringValue>
				<StringValue>16</StringValue>
				<StringValue>32</StringValue>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="representableContinuousBits" optionClass="EtasEnumerationOption" optionCategory="FILE">
		<Group>Build\Code Generation\Integer Arithmetic</Group>
		<Label>Maximum bit Length (float)</Label>
		<Description>This option controls the maximum size in bits of values used by ASCET for floating-point arithmetic. By default, 64-bit (double-precision) values are supported. If 32-bit (single-precision) values are required, ASCET will addend an "f" to each float literal to instruct the compiler to treat these values as single-precision values. This can reduce memory consumption and execution time on devices that provide hardware FPU support for single-precision calculations only.</Description>
		<Tooltip>Set the maximum size (in bits) for floating point arithmetic</Tooltip>
		<DefaultValue>64</DefaultValue>
		<EnumerationOption>
			<StringValues>
				<StringValue>32</StringValue>
				<StringValue>64</StringValue>
			</StringValues>
		</EnumerationOption>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="allowDouble" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Integer Arithmetic</Group>
		<Label>Allow Double bit Size for Division Numerators</Label>
		<Description>Allow double bit size for division numerators</Description>
		<Tooltip>Allow Double bit Size for Division Numerators</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="shiftForDiv" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Integer Arithmetic</Group>
		<Label>Use SHIFT Operation on Signed Values instead of DIV Operation</Label>
		<Description>If this option is enabled, ASCET will replace DIV operations with SHIFT (in combination with MUL) operations in generated code. This can lead to a run time performance improvements. Note that using SHIFT causes rounding to -oo while DIV on many targets rounds to zero and this option can therefore change the behaviour of the application. Enabling this option will cause generated code to violate MISRA-C:2004 Rule 12.7.</Description>
		<Tooltip>Specify whether a (right) SHIFT Operation should be used instead of a DIV operation for dividing signed integer values</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="shiftForMul" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Integer Arithmetic</Group>
		<Label>Use SHIFT Operation on Signed Values instead of MUL Operation</Label>
		<Description>If this option is enabled, ASCET will replace MUL operations with SHIFT (in combination with ADD) operations in generated code. This can lead to a run time performance improvements. Enabling this option will cause generated code to violate MISRA-C:2004 Rule 12.7.</Description>
		<Tooltip>Specify whether a (left) SHIFT Operation should be used instead of a DIV operation for multiplying signed integer values</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="shiftForLiterals" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Integer Arithmetic</Group>
		<Label>Use power of 2 approximations of literals</Label>
		<Description>If this option is enabled, ASCET will approximate literals to values which are powers of 2. This can reduce code size and execution time for a corresponding loss of precision.</Description>
		<Tooltip>Specify whether literals should be approximated by values that are powers of 2</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="generateRound" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Integer Arithmetic</Group>
		<Label>Generate Round Operation on float to integer Assignment</Label>
		<Description>If this option is enabled, ASCET will round floating point values on assignment to integers. Values 0 and above are rounded up (towards +oo). Values lower then zero are rounded down (towards -oo).</Description>
		<Tooltip>Specify whether ASCET should round floating point values when assigning them to integers</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="generateFloatLimiters" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Integer Arithmetic</Group>
		<Label>Generate Float Limiter on Assignment</Label>
		<Description>If this option is enabled, ASCET will generated limiter code depending on the physical interval specified.</Description>
		<Tooltip>Generate Float Limiter Code on assignments based on specified physical interval.</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="tempVarsAlways32Bit" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Integer Arithmetic</Group>
		<Label>Temp Vars always 32 bit (integer)</Label>
		<Description>If enabled, this option forces all ASCET to generate 32-bit temporary variables regardless of the size of result they are required to hold. This option allows an increase in memory (on devices with less than 32-bit memory alignment) to be traded for increased performance.</Description>
		<Tooltip>Specify whether temporary variables generated for integer calculations should always be 32-bit</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="useNewIntegerTypes" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Integer Arithmetic</Group>
		<Label>New Behaviour for Discrete Types</Label>
		<Description>The generation of sdisc and udisc calculations will be changed. If the implementation has the flag "limit assignments" enabled, the calculations are generated as specified in the model, with limitation on assignment and an error occurs if the calculation may overflow.If the implementation has the flag "limit assignments" disabled, the calculations are generated as specified in the model and wrap around on overflow, both during calculations and on assignments.To detect calculations with a potentially changed behaviour, look for the warnings WIle110...WIle 115.</Description>
		<Tooltip>Use new integer types instead of old discrete types</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="outlineAutomaticallyGeneratedMethodsForSM" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Optimization\Statemachine</Group>
		<Label>Outline Generated Methods (may be changed locally)</Label>
		<Description>By default, ASCET in-lines generated methods in state machines. When this option is enabled, the code generator does not in-line multiply-used generated methods and makes a call is made to the method instead. This optimization reduces code size, because the method only appears once in the generated code, but it increases execution time as a method call is required. If the option is enabled it can be overridden in the component implementation for specific state machines.
		</Description>
		<Tooltip>Disable automatic in-lining of common code in state machines to reduce code size</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="autoInlinePrivateMethodsForSM" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Optimization\Statemachine</Group>
		<Label>Auto-inline private methods (Smaller code-size - may be changed locally)</Label>
		<Description>If enabled, this option automatically in-lines private methods increasing run time performance and reducing RAM consumption but possibly increasing code size. This option is most useful for small private methods (or methods with few callers). When this option is enabled, the code generator outputs a compiler directive to suggest to the compiler that they are in-lined. Enabling this option will cause generated C code to violate MISRA-C:2004 rules 8.1, 8.5 ans 19.6.</Description>
		<Tooltip>Automatically inline private methods to increase performance</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="hierarchicalGenerationForSM" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Optimization\Statemachine</Group>
		<Label>Hierarchical Code-Generation (may be changed locally)</Label>
		<Description>State machines can either be generated flatted or hierarchically. By default, ASCET generates flat state machines using a single C switch statement with one case for each non-hierarchy state. Flat generation provides the best run time performance. If this option is enabled, ASCET generates hierarchical state machines using nested C switch statements, with one nested level for each nested level in the state hierarchy. Hierarchical generation provides the smallest code size.</Description>
		<Tooltip>Generate state machines as nested switch statements to optimize code size</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="optimizeStaticActionsForSM" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Optimization\Statemachine</Group>
		<Label>Optimize Static Actions (Restricted Modelling)</Label>
		<Description>If enabled, generate a static action once for each state instead of generating it for each transition. Note: changing this option may lead to a modify the behaviour of the state machine (see the ASCET on-line help for details). The optimization can reduce code size, but has little impact on runtime.</Description>
		<Tooltip>Generate a static action per state instead of per transition to reduce code size</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="misraComplianceForSM" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Optimization\Statemachine</Group>
		<Label>Generate well-formed switch</Label>
		<Description><!![CDATA[If this option is enabled, ASCET generates a C switch statement with the following properties:
- the default clause is generated as the last clause;
- each case clause is terminated by a break-statement;
- all generated functions contain one return statement at the end of the function.

The use of this options ensures that the C switch statements generated conform to the MISRA-C:2004 Rules 14.7, 15.2 and 15.3.]]></Description>
		<Tooltip>Generate a C switch states that satisfies the MISRA-C:2004 guidelines on well-formedness</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="initializeHistoryWith0" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation\Optimization\Statemachine</Group>
		<Label>Initialise history variable with zero</Label>
		<Description>By default, the state machine history variable is initialized with the start state of the history state. If this option is enabled, ASCET generates an extra assignment to initialize all variables with 0. If this option is enabled the generated code may violate MISRA-C:2004 Rule 15.3 (independently of the option "Generate well-formed switch").</Description>
		<Tooltip>Generate code to initialize state machine history variables with zero</Tooltip>
		<DefaultValue>false</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="InstallationPath" optionClass="EtasPathOption" optionCategory="FILE">
		<Group>Build\OS Configuration</Group>
		<Label>Installation Path</Label>
		<Description>Define the installation directory of the OS. The variable $(P_OS_ROOT) is set to the location specified here.</Description>
		<Tooltip>Define the installation directory of the OS</Tooltip>
		<DefaultValue/>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="IncludePaths" optionClass="EtasStringOption" optionCategory="FILE">
		<Group>Build\OS Configuration</Group>
		<Label>Include Paths</Label>
		<Description>Define the search path for OS include files. Multiple paths should be separated with a semi-colon (;). $(P_OS_ROOT) can be used to access the path to the OS installation directory.</Description>
		<Tooltip>Define the search path for OS include files</Tooltip>
		<DefaultValue/>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="LibraryPaths" optionClass="EtasStringOption" optionCategory="FILE">
		<Group>Build\OS Configuration</Group>
		<Label>Library Paths</Label>
		<Description>Define the path to the OS libraries. Multiple paths should not be specified. $(P_OS_ROOT) can be used to access the path to the OS installation directory.</Description>
		<Tooltip>Define the path to OS libraries</Tooltip>
		<DefaultValue/>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="Libraries" optionClass="EtasStringOption" optionCategory="FILE">
		<Group>Build\OS Configuration</Group>
		<Label>Libraries</Label>
		<Description>Define the names of the OS libraries to use. Multiple libraries should be separated with a space.</Description>
		<Tooltip>Define the names of the OS libraries to use</Tooltip>
		<DefaultValue/>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="OSBuildTool" optionClass="EtasFileOption" optionCategory="FILE">
		<Group>Build\OS Configuration</Group>
		<Label>Configuration Tool</Label>
		<Description>Set the name of the tool used to configure/generate the OS. This should be the absolute path to the tool executable. $(P_OS_ROOT) can be used to access the path to the OS installation directory, for example $(P_OS_ROOT)\bin\MyOsBuilder.exe</Description>
		<Tooltip>Define the absolute path of the tool used to generate the OS</Tooltip>
		<DefaultValue/>
		<FileOption/>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="OSConfigurationToolOptions" optionClass="EtasStringOption" optionCategory="FILE">
		<Group>Build\OS Configuration</Group>
		<Label>Configuration Tool Options</Label>
		<Description>Specify the options to pass to the OS configuration/generation tool. Consult the OS vendor''s documentation for valid options.</Description>
		<Tooltip>Specify the options to pass to the OS configuration/generation tool</Tooltip>
		<DefaultValue/>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="Build" attributeName="OILFile" optionClass="EtasFileOption" optionCategory="FILE">
		<Group>Build\OS Configuration</Group>
		<Label>OIL File</Label>
		<Description>Define the name OIL File to pass as the argument to the OS configuration/generation tool. ASCET provides as example a file called conf{version}.oil which is the usual file name. This is accessible using the variable $(EXAMPLE_CONF_OIL) which expands to fully qualified path of conf{version}.oil in the {installdir}\\targets\\trg_{target}\\example directory for the  selected target.</Description>
		<Tooltip>The name of the OIL to process with the OS configuration/generation tool</Tooltip>
		<DefaultValue/>
		<FileOption/>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="INTECRIO" attributeName="ignoreInternalMessages" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>INTECRIO</Group>
		<Label>Ignore Internally Connected Messages</Label>
		<Description>Ignore Internally Connected Messages</Description>
		<Tooltip>Ignore Internally Connected Messages</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
	<OptionDeclaration xmlCategory="CodeGeneration" attributeName="usePMI" optionClass="EtasBooleanOption" optionCategory="FILE">
		<Group>Build\Code Generation</Group>
		<Label>Use PMI when Generating C-Code Components</Label>
		<Description>Use PMI when Generating C-Code Components</Description>
		<Tooltip>Use PMI when Generating C-Code Components</Tooltip>
		<DefaultValue>true</DefaultValue>
	</OptionDeclaration>
</OptionDeclarations>'
! !

