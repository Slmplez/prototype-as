"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2009de30; bytecode file offset 0x99a6ec"
!ASDXMLImportStepMainBase class methodsFor: 'recovered'!
typeNameDict
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('todo') notNil.
    recoveredValue1 := (LookupTable new) elementCount: (15); keyArray: (#(nil 'ASCET_Protocol' nil 'ASCET_CTClass' 'ASCET_GenericComponent' 'AUTOSAR_ClientServerInterface' 'ASCET_Project' nil nil 'ASCET_DefaultProject' nil nil nil nil nil 'ASCET_ModuleInterface' 'AUTOSAR_NVDataInterface' nil nil nil nil 'ASCET_Record' nil 'AUTOSAR_AtomicSoftwareComponent' 'AUTOSAR_SenderReceiverInterface' nil nil nil nil 'ASCET_Module' nil nil nil 'AUTOSAR_CalibrationInterface' nil nil 'ASCET_ClassInterface' nil nil 'ASCET_Class' nil nil nil nil)); valueArray: (#(nil nil nil #(SGContinuousTimeClass (Set new) add: (SGBdSpecification); add: (SGASDLSpecification); add: (SGCCodeSpecification); yourself) #(ASDGenericComponent (Set new) add: (SGBooleanTableSpecification); add: (SGBdSpecification); add: (SGASDLSpecification); add: (SGConditionalTableSpecification); add: (SGSmSpecification); add: (SGCCodeSpecification); yourself) #(ARClientServerInterface (Set new) add: (ASDMethodInterfaceSpecification); yourself) #(SGProject (Set new) add: (SGProjectSpecification); yourself) nil nil #(SGProject (Set new) add: (SGProjectSpecification); yourself) nil nil nil nil nil nil #(ARDataInterface nil) nil nil nil nil #(ASDRecord nil) nil #(ARAtomicSoftwareComponent (Set new) add: (ARBdSpecification); yourself) #(ARDataInterface nil) nil nil nil nil #(SGModule (Set new) add: (SGBdSpecification); add: (SGASDLSpecification); add: (SGCCodeSpecification); yourself) nil nil nil #(ARDataInterface nil) nil nil nil nil nil #(SGClass (Set new) add: (SGBooleanTableSpecification); add: (SGBdSpecification); add: (SGASDLSpecification); add: (SGConditionalTableSpecification); add: (SGSmSpecification); add: (SGCCodeSpecification); yourself) nil nil nil nil)); yourself.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20186b8c; bytecode file offset 0xa8344c"
!ASDXMLImportStepMainBase class methodsFor: 'recovered'!
typeNameToSTClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (LookupTable new) elementCount: (20); keyArray: (#('ASCET_Experiment' 'ASCET_Signal' nil 'AUTOSAR_DataInterface' 'ASCET_Enumeration' 'ASCET_GenericComponent' 'AUTOSAR_ClientServerInterface' 'ASCET_CTClass' 'ASCET_Project' 'ASCET_DefaultProject' 'ASCET_Image' nil nil nil nil 'AUTOSAR_NVDataInterface' nil nil nil nil 'ASCET_Asap2Item' 'ASCET_Record' nil 'AUTOSAR_AtomicSoftwareComponent' 'AUTOSAR_SenderReceiverInterface' nil nil nil nil 'ASCET_Module' nil nil 'ASCET_Container' 'AUTOSAR_CalibrationInterface' nil nil nil nil nil 'ASCET_Class' nil nil nil 'AUTOSAR_ModeGroup')); valueArray: (#(ASDExperimentComponent SGSignalItem nil ARDataInterface SGEnumerationDB ASDGenericComponent ARClientServerInterface SGContinuousTimeClass SGProject SGProject SGImageDB nil nil nil nil ARDataInterface nil nil nil nil SGAsap2Item ASDRecord nil ARAtomicSoftwareComponent ARDataInterface nil nil nil nil SGModule nil nil ASDContainer ARDataInterface nil nil nil nil nil SGClass nil nil nil ARModeGroupDB)); yourself.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    (self) etasDevHalt.
    ^nil
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

