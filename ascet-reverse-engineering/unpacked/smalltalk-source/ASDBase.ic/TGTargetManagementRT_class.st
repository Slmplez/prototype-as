"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200003e0; bytecode file offset 0x8ffcfc"
!TGTargetManagementRT class methodsFor: 'recovered'!
_PRAGMA_SGTargetManagementExceptions
    ^self
! !

"ASDBase.ic method 0x200012b8; bytecode file offset 0x8ffcfc"
!TGTargetManagementRT class methodsFor: 'recovered'!
_PRAGMA_TGExperimentalTargetConstants
    ^self
! !

"ASDBase.ic method 0x20001d20; bytecode file offset 0x8ffcfc"
!TGTargetManagementRT class methodsFor: 'recovered'!
wasRemovedCodeRB
    ^self
! !

"ASDBase.ic method 0x20002760; bytecode file offset 0x8ffcfc"
!TGTargetManagementRT class methodsFor: 'recovered'!
_PRAGMA_TGTargetConstants
    ^self
! !

"ASDBase.ic method 0x20002c90; bytecode file offset 0x8ffcfc"
!TGTargetManagementRT class methodsFor: 'recovered'!
_PRAGMA_TGTargetManagementRTNlsPool
    ^self
! !

"ASDBase.ic method 0x20019d0c; bytecode file offset 0x92209c"
!TGTargetManagementRT class methodsFor: 'recovered'!
toBeLoadedCodeRB
    ^'
	SystemExceptions declareVariable: ''ExTGTargetManagerFatal''.

	Smalltalk declarePoolDictionary: ''TGTargetConstants'' .

	"LoadableCode"	
	(Smalltalk declareVariable: ''HEX_STREAM_END'' poolName: ''TGTargetConstants'') 	  	value: 1.
	(Smalltalk declareVariable: ''HEX_BLOCK_END'' poolName: ''TGTargetConstants'') 					value: 2.
	(Smalltalk declareVariable: ''HEX_ETARGET_HEADER'' poolName: ''TGTargetConstants'') 					value: 3.
	(Smalltalk declareVariable: ''HEX_RAM'' poolName: ''TGTargetConstants'') 											value: 16r100.
	(Smalltalk declareVariable: ''HEX_T8_RAM'' poolName: ''TGTargetConstants'') 								value: 16r101.
	(Smalltalk declareVariable: ''HEX_PPC_RAM'' poolName: ''TGTargetConstants'') 		  			value: 16r102.
	(Smalltalk declareVariable: ''HEX_PPC_L1_RAM'' poolName: ''TGTargetConstants'') 	  	value: 16r103.
	(Smalltalk declareVariable: ''HEX_PC_DLL'' poolName: ''TGTargetConstants'') 	  					value: 16r104.
	(Smalltalk declareVariable: ''HEX_PC_DLL_NAME'' poolName: ''TGTargetConstants'') 	  value: 16r105.

	(Smalltalk declareVariable: ''HEX_ROM'' poolName: ''TGTargetConstants'') 				    value: 16r200.
	(Smalltalk declareVariable: ''HEX_T8_ROM'' poolName: ''TGTargetConstants'') 				value: 16r201.
	(Smalltalk declareVariable: ''HEX_PPC_ROM'' poolName: ''TGTargetConstants'') 		  	value: 16r202.
	(Smalltalk declareVariable: ''HEX_PPC_L1_ROM'' poolName: ''TGTargetConstants'') 		value: 16r203.
'
! !

"ASDBase.ic method 0x2015c1d0; bytecode file offset 0xa58aa0"
!TGTargetManagementRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := TGTarget.
    (recoveredValue0) initializeClassVariables.
    recoveredValue1 := TGAccessCTargetDebug.
    (recoveredValue1) initializeCMethods.
    recoveredValue2 := TGTarget.
    (recoveredValue2) initializeExceptions.
    recoveredValue3 := TGErrorWarning.
    (recoveredValue3) initializeTGErrorWarning.
    ^self
! !

