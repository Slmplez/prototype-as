/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.measurementandcalibration.datadefproperties;

import autosar21.swcomponent.measurementandcalibration.datadefproperties.DatadefpropertiesFactory;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.impl.DatadefpropertiesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface DatadefpropertiesPackage
extends EPackage {
    public static final String eNAME = "datadefproperties";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/mac/ddp";
    public static final String eNS_PREFIX = "";
    public static final DatadefpropertiesPackage eINSTANCE = DatadefpropertiesPackageImpl.init();
    public static final int SW_ARRAYSIZE = 0;
    public static final int SW_ARRAYSIZE__GCHECKSUM = 0;
    public static final int SW_ARRAYSIZE__GTIMESTAMP = 1;
    public static final int SW_ARRAYSIZE__CHECKSUM = 2;
    public static final int SW_ARRAYSIZE__TIMESTAMP = 3;
    public static final int SW_ARRAYSIZE__VFS = 4;
    public static final int SW_ARRAYSIZE__VS = 5;
    public static final int SW_ARRAYSIZE_FEATURE_COUNT = 6;
    public static final int SW_BIT_REPRESENTATION = 1;
    public static final int SW_BIT_REPRESENTATION__GCHECKSUM = 0;
    public static final int SW_BIT_REPRESENTATION__GTIMESTAMP = 1;
    public static final int SW_BIT_REPRESENTATION__CHECKSUM = 2;
    public static final int SW_BIT_REPRESENTATION__TIMESTAMP = 3;
    public static final int SW_BIT_REPRESENTATION__SW_DATA_DEF_PROPS = 4;
    public static final int SW_BIT_REPRESENTATION__BIT_POSITION = 5;
    public static final int SW_BIT_REPRESENTATION__NUMBER_OF_BITS = 6;
    public static final int SW_BIT_REPRESENTATION_FEATURE_COUNT = 7;
    public static final int SW_COMPARISON_VARIABLES = 2;
    public static final int SW_COMPARISON_VARIABLES__GCHECKSUM = 0;
    public static final int SW_COMPARISON_VARIABLES__GTIMESTAMP = 1;
    public static final int SW_COMPARISON_VARIABLES__CHECKSUM = 2;
    public static final int SW_COMPARISON_VARIABLES__TIMESTAMP = 3;
    public static final int SW_COMPARISON_VARIABLES__SW_VARIABLE_REFS = 4;
    public static final int SW_COMPARISON_VARIABLES_FEATURE_COUNT = 5;
    public static final int SW_GENERIC_AXIS_PARAM_VALUE = 3;
    public static final int SW_GENERIC_AXIS_PARAM_VALUE__GCHECKSUM = 0;
    public static final int SW_GENERIC_AXIS_PARAM_VALUE__GTIMESTAMP = 1;
    public static final int SW_GENERIC_AXIS_PARAM_VALUE__CHECKSUM = 2;
    public static final int SW_GENERIC_AXIS_PARAM_VALUE__TIMESTAMP = 3;
    public static final int SW_GENERIC_AXIS_PARAM_VALUE__SW_GENERIC_AXIS_PARAM = 4;
    public static final int SW_GENERIC_AXIS_PARAM_VALUE__VFS = 5;
    public static final int SW_GENERIC_AXIS_PARAM_VALUE__VS = 6;
    public static final int SW_GENERIC_AXIS_PARAM_VALUE_FEATURE_COUNT = 7;
    public static final int SW_DATA_DEPENDENCY = 4;
    public static final int SW_DATA_DEPENDENCY__GCHECKSUM = 0;
    public static final int SW_DATA_DEPENDENCY__GTIMESTAMP = 1;
    public static final int SW_DATA_DEPENDENCY__CHECKSUM = 2;
    public static final int SW_DATA_DEPENDENCY__TIMESTAMP = 3;
    public static final int SW_DATA_DEPENDENCY__SW_DATA_DEF_PROPS = 4;
    public static final int SW_DATA_DEPENDENCY__SW_DATA_DEPENDENCY_FORMULA = 5;
    public static final int SW_DATA_DEPENDENCY__SW_DATA_DEPENDENCY_ARGS = 6;
    public static final int SW_DATA_DEPENDENCY_FEATURE_COUNT = 7;
    public static final int SW_DATA_DEPENDENCY_ARGS = 5;
    public static final int SW_DATA_DEPENDENCY_ARGS__GCHECKSUM = 0;
    public static final int SW_DATA_DEPENDENCY_ARGS__GTIMESTAMP = 1;
    public static final int SW_DATA_DEPENDENCY_ARGS__CHECKSUM = 2;
    public static final int SW_DATA_DEPENDENCY_ARGS__TIMESTAMP = 3;
    public static final int SW_DATA_DEPENDENCY_ARGS__SW_DATA_DEPENDENCY = 4;
    public static final int SW_DATA_DEPENDENCY_ARGS__SW_CALPRMS = 5;
    public static final int SW_DATA_DEPENDENCY_ARGS__SW_VARIABLE_REFS = 6;
    public static final int SW_DATA_DEPENDENCY_ARGS_FEATURE_COUNT = 7;
    public static final int SW_POINTER = 6;
    public static final int SW_POINTER__GCHECKSUM = 0;
    public static final int SW_POINTER__GTIMESTAMP = 1;
    public static final int SW_POINTER__CHECKSUM = 2;
    public static final int SW_POINTER__TIMESTAMP = 3;
    public static final int SW_POINTER__SW_DATA_DEF_PROPS = 4;
    public static final int SW_POINTER_FEATURE_COUNT = 5;
    public static final int SW_SEMAPHORE = 7;
    public static final int SW_SEMAPHORE__GCHECKSUM = 0;
    public static final int SW_SEMAPHORE__GTIMESTAMP = 1;
    public static final int SW_SEMAPHORE__CHECKSUM = 2;
    public static final int SW_SEMAPHORE__TIMESTAMP = 3;
    public static final int SW_SEMAPHORE__SW_VARIABLE_REF = 4;
    public static final int SW_SEMAPHORE_FEATURE_COUNT = 5;
    public static final int SW_TEXT_PROPS = 8;
    public static final int SW_TEXT_PROPS__GCHECKSUM = 0;
    public static final int SW_TEXT_PROPS__GTIMESTAMP = 1;
    public static final int SW_TEXT_PROPS__CHECKSUM = 2;
    public static final int SW_TEXT_PROPS__TIMESTAMP = 3;
    public static final int SW_TEXT_PROPS__SW_DATA_DEF_PROPS = 4;
    public static final int SW_TEXT_PROPS__SW_MAX_TEXT_SIZE = 5;
    public static final int SW_TEXT_PROPS__SW_FILL_CHARACTER = 6;
    public static final int SW_TEXT_PROPS_FEATURE_COUNT = 7;
    public static final int SW_VARIABLE_REF = 9;
    public static final int SW_VARIABLE_REF__GCHECKSUM = 0;
    public static final int SW_VARIABLE_REF__GTIMESTAMP = 1;
    public static final int SW_VARIABLE_REF__CHECKSUM = 2;
    public static final int SW_VARIABLE_REF__TIMESTAMP = 3;
    public static final int SW_VARIABLE_REF__SW_DATA_DEF_PROPS = 4;
    public static final int SW_VARIABLE_REF__SW_VARIABLE_REF = 5;
    public static final int SW_VARIABLE_REF_FEATURE_COUNT = 6;
    public static final int SW_DATA_DEF_PROPS = 10;
    public static final int SW_DATA_DEF_PROPS__GCHECKSUM = 0;
    public static final int SW_DATA_DEF_PROPS__GTIMESTAMP = 1;
    public static final int SW_DATA_DEF_PROPS__CHECKSUM = 2;
    public static final int SW_DATA_DEF_PROPS__TIMESTAMP = 3;
    public static final int SW_DATA_DEF_PROPS__GBASE_TYPE = 4;
    public static final int SW_DATA_DEF_PROPS__GINVALID_VALUE = 5;
    public static final int SW_DATA_DEF_PROPS__GCOMPU_METHOD = 6;
    public static final int SW_DATA_DEF_PROPS__INVALID_VALUE = 7;
    public static final int SW_DATA_DEF_PROPS__SW_ADDR_METHOD = 8;
    public static final int SW_DATA_DEF_PROPS__BASE_TYPE = 9;
    public static final int SW_DATA_DEF_PROPS__SW_BIT_REPRESENTATION = 10;
    public static final int SW_DATA_DEF_PROPS__SW_CALIBRATION_ACCESS = 11;
    public static final int SW_DATA_DEF_PROPS__SW_VALUE_BLOCK_SIZE = 12;
    public static final int SW_DATA_DEF_PROPS__SW_CALPRM_AXIS_SET = 13;
    public static final int SW_DATA_DEF_PROPS__SW_TEXT_PROPS = 14;
    public static final int SW_DATA_DEF_PROPS__SW_CODE_SYNTAX = 15;
    public static final int SW_DATA_DEF_PROPS__COMPU_METHOD = 16;
    public static final int SW_DATA_DEF_PROPS__DATA_CONSTR = 17;
    public static final int SW_DATA_DEF_PROPS__SW_DATA_DEPENDENCY = 18;
    public static final int SW_DATA_DEF_PROPS__SW_HOST_VARIABLE = 19;
    public static final int SW_DATA_DEF_PROPS__SW_IMPL_POLICY = 20;
    public static final int SW_DATA_DEF_PROPS__SW_POINTER = 21;
    public static final int SW_DATA_DEF_PROPS__SW_RECORD_LAYOUT = 22;
    public static final int SW_DATA_DEF_PROPS__UNIT = 23;
    public static final int SW_DATA_DEF_PROPS__SW_VARIABLE_ACCESS_IMPL_POLICY = 24;
    public static final int SW_DATA_DEF_PROPS_FEATURE_COUNT = 25;
    public static final int SW_CALIBRATION_ACCESS_ENUM = 11;
    public static final int SW_IMPL_POLICY_ENUM = 12;
    public static final int SW_VARIABLE_ACCESS_IMPL_POLICY_ENUM = 13;

    public EClass getSwArraysize();

    public EReference getSwArraysize_Vfs();

    public EAttribute getSwArraysize_Vs();

    public EClass getSwBitRepresentation();

    public EReference getSwBitRepresentation_SwDataDefProps();

    public EAttribute getSwBitRepresentation_BitPosition();

    public EAttribute getSwBitRepresentation_NumberOfBits();

    public EClass getSwComparisonVariables();

    public EReference getSwComparisonVariables_SwVariableRefs();

    public EClass getSwGenericAxisParamValue();

    public EReference getSwGenericAxisParamValue_SwGenericAxisParam();

    public EReference getSwGenericAxisParamValue_Vfs();

    public EAttribute getSwGenericAxisParamValue_Vs();

    public EClass getSwDataDependency();

    public EReference getSwDataDependency_SwDataDefProps();

    public EAttribute getSwDataDependency_SwDataDependencyFormula();

    public EReference getSwDataDependency_SwDataDependencyArgs();

    public EClass getSwDataDependencyArgs();

    public EReference getSwDataDependencyArgs_SwDataDependency();

    public EReference getSwDataDependencyArgs_SwCalprms();

    public EReference getSwDataDependencyArgs_SwVariableRefs();

    public EClass getSwPointer();

    public EReference getSwPointer_SwDataDefProps();

    public EClass getSwSemaphore();

    public EReference getSwSemaphore_SwVariableRef();

    public EClass getSwTextProps();

    public EReference getSwTextProps_SwDataDefProps();

    public EReference getSwTextProps_SwMaxTextSize();

    public EAttribute getSwTextProps_SwFillCharacter();

    public EClass getSwVariableRef();

    public EReference getSwVariableRef_SwDataDefProps();

    public EReference getSwVariableRef_SwVariableRef();

    public EClass getSwDataDefProps();

    public EReference getSwDataDefProps_InvalidValue();

    public EReference getSwDataDefProps_SwAddrMethod();

    public EReference getSwDataDefProps_BaseType();

    public EReference getSwDataDefProps_SwBitRepresentation();

    public EAttribute getSwDataDefProps_SwCalibrationAccess();

    public EReference getSwDataDefProps_SwValueBlockSize();

    public EReference getSwDataDefProps_SwCalprmAxisSet();

    public EReference getSwDataDefProps_SwTextProps();

    public EReference getSwDataDefProps_SwCodeSyntax();

    public EReference getSwDataDefProps_CompuMethod();

    public EReference getSwDataDefProps_DataConstr();

    public EReference getSwDataDefProps_SwDataDependency();

    public EReference getSwDataDefProps_SwHostVariable();

    public EAttribute getSwDataDefProps_SwImplPolicy();

    public EReference getSwDataDefProps_SwPointer();

    public EReference getSwDataDefProps_SwRecordLayout();

    public EReference getSwDataDefProps_Unit();

    public EAttribute getSwDataDefProps_SwVariableAccessImplPolicy();

    public EEnum getSwCalibrationAccessEnum();

    public EEnum getSwImplPolicyEnum();

    public EEnum getSwVariableAccessImplPolicyEnum();

    public DatadefpropertiesFactory getDatadefpropertiesFactory();

    public static interface Literals {
        public static final EClass SW_ARRAYSIZE = eINSTANCE.getSwArraysize();
        public static final EReference SW_ARRAYSIZE__VFS = eINSTANCE.getSwArraysize_Vfs();
        public static final EAttribute SW_ARRAYSIZE__VS = eINSTANCE.getSwArraysize_Vs();
        public static final EClass SW_BIT_REPRESENTATION = eINSTANCE.getSwBitRepresentation();
        public static final EReference SW_BIT_REPRESENTATION__SW_DATA_DEF_PROPS = eINSTANCE.getSwBitRepresentation_SwDataDefProps();
        public static final EAttribute SW_BIT_REPRESENTATION__BIT_POSITION = eINSTANCE.getSwBitRepresentation_BitPosition();
        public static final EAttribute SW_BIT_REPRESENTATION__NUMBER_OF_BITS = eINSTANCE.getSwBitRepresentation_NumberOfBits();
        public static final EClass SW_COMPARISON_VARIABLES = eINSTANCE.getSwComparisonVariables();
        public static final EReference SW_COMPARISON_VARIABLES__SW_VARIABLE_REFS = eINSTANCE.getSwComparisonVariables_SwVariableRefs();
        public static final EClass SW_GENERIC_AXIS_PARAM_VALUE = eINSTANCE.getSwGenericAxisParamValue();
        public static final EReference SW_GENERIC_AXIS_PARAM_VALUE__SW_GENERIC_AXIS_PARAM = eINSTANCE.getSwGenericAxisParamValue_SwGenericAxisParam();
        public static final EReference SW_GENERIC_AXIS_PARAM_VALUE__VFS = eINSTANCE.getSwGenericAxisParamValue_Vfs();
        public static final EAttribute SW_GENERIC_AXIS_PARAM_VALUE__VS = eINSTANCE.getSwGenericAxisParamValue_Vs();
        public static final EClass SW_DATA_DEPENDENCY = eINSTANCE.getSwDataDependency();
        public static final EReference SW_DATA_DEPENDENCY__SW_DATA_DEF_PROPS = eINSTANCE.getSwDataDependency_SwDataDefProps();
        public static final EAttribute SW_DATA_DEPENDENCY__SW_DATA_DEPENDENCY_FORMULA = eINSTANCE.getSwDataDependency_SwDataDependencyFormula();
        public static final EReference SW_DATA_DEPENDENCY__SW_DATA_DEPENDENCY_ARGS = eINSTANCE.getSwDataDependency_SwDataDependencyArgs();
        public static final EClass SW_DATA_DEPENDENCY_ARGS = eINSTANCE.getSwDataDependencyArgs();
        public static final EReference SW_DATA_DEPENDENCY_ARGS__SW_DATA_DEPENDENCY = eINSTANCE.getSwDataDependencyArgs_SwDataDependency();
        public static final EReference SW_DATA_DEPENDENCY_ARGS__SW_CALPRMS = eINSTANCE.getSwDataDependencyArgs_SwCalprms();
        public static final EReference SW_DATA_DEPENDENCY_ARGS__SW_VARIABLE_REFS = eINSTANCE.getSwDataDependencyArgs_SwVariableRefs();
        public static final EClass SW_POINTER = eINSTANCE.getSwPointer();
        public static final EReference SW_POINTER__SW_DATA_DEF_PROPS = eINSTANCE.getSwPointer_SwDataDefProps();
        public static final EClass SW_SEMAPHORE = eINSTANCE.getSwSemaphore();
        public static final EReference SW_SEMAPHORE__SW_VARIABLE_REF = eINSTANCE.getSwSemaphore_SwVariableRef();
        public static final EClass SW_TEXT_PROPS = eINSTANCE.getSwTextProps();
        public static final EReference SW_TEXT_PROPS__SW_DATA_DEF_PROPS = eINSTANCE.getSwTextProps_SwDataDefProps();
        public static final EReference SW_TEXT_PROPS__SW_MAX_TEXT_SIZE = eINSTANCE.getSwTextProps_SwMaxTextSize();
        public static final EAttribute SW_TEXT_PROPS__SW_FILL_CHARACTER = eINSTANCE.getSwTextProps_SwFillCharacter();
        public static final EClass SW_VARIABLE_REF = eINSTANCE.getSwVariableRef();
        public static final EReference SW_VARIABLE_REF__SW_DATA_DEF_PROPS = eINSTANCE.getSwVariableRef_SwDataDefProps();
        public static final EReference SW_VARIABLE_REF__SW_VARIABLE_REF = eINSTANCE.getSwVariableRef_SwVariableRef();
        public static final EClass SW_DATA_DEF_PROPS = eINSTANCE.getSwDataDefProps();
        public static final EReference SW_DATA_DEF_PROPS__INVALID_VALUE = eINSTANCE.getSwDataDefProps_InvalidValue();
        public static final EReference SW_DATA_DEF_PROPS__SW_ADDR_METHOD = eINSTANCE.getSwDataDefProps_SwAddrMethod();
        public static final EReference SW_DATA_DEF_PROPS__BASE_TYPE = eINSTANCE.getSwDataDefProps_BaseType();
        public static final EReference SW_DATA_DEF_PROPS__SW_BIT_REPRESENTATION = eINSTANCE.getSwDataDefProps_SwBitRepresentation();
        public static final EAttribute SW_DATA_DEF_PROPS__SW_CALIBRATION_ACCESS = eINSTANCE.getSwDataDefProps_SwCalibrationAccess();
        public static final EReference SW_DATA_DEF_PROPS__SW_VALUE_BLOCK_SIZE = eINSTANCE.getSwDataDefProps_SwValueBlockSize();
        public static final EReference SW_DATA_DEF_PROPS__SW_CALPRM_AXIS_SET = eINSTANCE.getSwDataDefProps_SwCalprmAxisSet();
        public static final EReference SW_DATA_DEF_PROPS__SW_TEXT_PROPS = eINSTANCE.getSwDataDefProps_SwTextProps();
        public static final EReference SW_DATA_DEF_PROPS__SW_CODE_SYNTAX = eINSTANCE.getSwDataDefProps_SwCodeSyntax();
        public static final EReference SW_DATA_DEF_PROPS__COMPU_METHOD = eINSTANCE.getSwDataDefProps_CompuMethod();
        public static final EReference SW_DATA_DEF_PROPS__DATA_CONSTR = eINSTANCE.getSwDataDefProps_DataConstr();
        public static final EReference SW_DATA_DEF_PROPS__SW_DATA_DEPENDENCY = eINSTANCE.getSwDataDefProps_SwDataDependency();
        public static final EReference SW_DATA_DEF_PROPS__SW_HOST_VARIABLE = eINSTANCE.getSwDataDefProps_SwHostVariable();
        public static final EAttribute SW_DATA_DEF_PROPS__SW_IMPL_POLICY = eINSTANCE.getSwDataDefProps_SwImplPolicy();
        public static final EReference SW_DATA_DEF_PROPS__SW_POINTER = eINSTANCE.getSwDataDefProps_SwPointer();
        public static final EReference SW_DATA_DEF_PROPS__SW_RECORD_LAYOUT = eINSTANCE.getSwDataDefProps_SwRecordLayout();
        public static final EReference SW_DATA_DEF_PROPS__UNIT = eINSTANCE.getSwDataDefProps_Unit();
        public static final EAttribute SW_DATA_DEF_PROPS__SW_VARIABLE_ACCESS_IMPL_POLICY = eINSTANCE.getSwDataDefProps_SwVariableAccessImplPolicy();
        public static final EEnum SW_CALIBRATION_ACCESS_ENUM = eINSTANCE.getSwCalibrationAccessEnum();
        public static final EEnum SW_IMPL_POLICY_ENUM = eINSTANCE.getSwImplPolicyEnum();
        public static final EEnum SW_VARIABLE_ACCESS_IMPL_POLICY_ENUM = eINSTANCE.getSwVariableAccessImplPolicyEnum();
    }
}

