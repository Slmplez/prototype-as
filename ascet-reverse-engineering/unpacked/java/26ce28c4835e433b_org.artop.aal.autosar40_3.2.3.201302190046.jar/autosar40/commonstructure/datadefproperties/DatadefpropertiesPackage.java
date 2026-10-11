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
package autosar40.commonstructure.datadefproperties;

import autosar40.commonstructure.datadefproperties.DatadefpropertiesFactory;
import autosar40.commonstructure.datadefproperties.impl.DatadefpropertiesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface DatadefpropertiesPackage
extends EPackage {
    public static final String eNAME = "datadefproperties";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/ddp";
    public static final String eNS_PREFIX = "";
    public static final DatadefpropertiesPackage eINSTANCE = DatadefpropertiesPackageImpl.init();
    public static final int VALUE_LIST = 0;
    public static final int VALUE_LIST__GCHECKSUM = 0;
    public static final int VALUE_LIST__GTIMESTAMP = 1;
    public static final int VALUE_LIST__CHECKSUM = 2;
    public static final int VALUE_LIST__TIMESTAMP = 3;
    public static final int VALUE_LIST__VFS = 4;
    public static final int VALUE_LIST__VS = 5;
    public static final int VALUE_LIST_FEATURE_COUNT = 6;
    public static final int SW_BIT_REPRESENTATION = 1;
    public static final int SW_BIT_REPRESENTATION__GCHECKSUM = 0;
    public static final int SW_BIT_REPRESENTATION__GTIMESTAMP = 1;
    public static final int SW_BIT_REPRESENTATION__CHECKSUM = 2;
    public static final int SW_BIT_REPRESENTATION__TIMESTAMP = 3;
    public static final int SW_BIT_REPRESENTATION__SW_DATA_DEF_PROPS_CONTENT = 4;
    public static final int SW_BIT_REPRESENTATION__BIT_POSITION = 5;
    public static final int SW_BIT_REPRESENTATION__NUMBER_OF_BITS = 6;
    public static final int SW_BIT_REPRESENTATION_FEATURE_COUNT = 7;
    public static final int SW_DATA_DEPENDENCY = 2;
    public static final int SW_DATA_DEPENDENCY__GCHECKSUM = 0;
    public static final int SW_DATA_DEPENDENCY__GTIMESTAMP = 1;
    public static final int SW_DATA_DEPENDENCY__CHECKSUM = 2;
    public static final int SW_DATA_DEPENDENCY__TIMESTAMP = 3;
    public static final int SW_DATA_DEPENDENCY__SW_DATA_DEF_PROPS_CONTENT = 4;
    public static final int SW_DATA_DEPENDENCY__SW_DATA_DEPENDENCY_FORMULA = 5;
    public static final int SW_DATA_DEPENDENCY__SW_DATA_DEPENDENCY_ARGS = 6;
    public static final int SW_DATA_DEPENDENCY_FEATURE_COUNT = 7;
    public static final int SW_DATA_DEPENDENCY_ARGS = 3;
    public static final int SW_DATA_DEPENDENCY_ARGS__GCHECKSUM = 0;
    public static final int SW_DATA_DEPENDENCY_ARGS__GTIMESTAMP = 1;
    public static final int SW_DATA_DEPENDENCY_ARGS__CHECKSUM = 2;
    public static final int SW_DATA_DEPENDENCY_ARGS__TIMESTAMP = 3;
    public static final int SW_DATA_DEPENDENCY_ARGS__SW_DATA_DEPENDENCY = 4;
    public static final int SW_DATA_DEPENDENCY_ARGS__SW_CALPRM_REFS = 5;
    public static final int SW_DATA_DEPENDENCY_ARGS__SW_VARIABLES = 6;
    public static final int SW_DATA_DEPENDENCY_ARGS_FEATURE_COUNT = 7;
    public static final int SW_POINTER_TARGET_PROPS = 4;
    public static final int SW_POINTER_TARGET_PROPS__GCHECKSUM = 0;
    public static final int SW_POINTER_TARGET_PROPS__GTIMESTAMP = 1;
    public static final int SW_POINTER_TARGET_PROPS__CHECKSUM = 2;
    public static final int SW_POINTER_TARGET_PROPS__TIMESTAMP = 3;
    public static final int SW_POINTER_TARGET_PROPS__SW_DATA_DEF_PROPS_CONTENT = 4;
    public static final int SW_POINTER_TARGET_PROPS__TARGET_CATEGORY = 5;
    public static final int SW_POINTER_TARGET_PROPS__SW_DATA_DEF_PROPS = 6;
    public static final int SW_POINTER_TARGET_PROPS__FUNCTION_POINTER_SIGNATURE = 7;
    public static final int SW_POINTER_TARGET_PROPS_FEATURE_COUNT = 8;
    public static final int SW_TEXT_PROPS = 5;
    public static final int SW_TEXT_PROPS__GCHECKSUM = 0;
    public static final int SW_TEXT_PROPS__GTIMESTAMP = 1;
    public static final int SW_TEXT_PROPS__CHECKSUM = 2;
    public static final int SW_TEXT_PROPS__TIMESTAMP = 3;
    public static final int SW_TEXT_PROPS__SW_DATA_DEF_PROPS_CONTENT = 4;
    public static final int SW_TEXT_PROPS__ARRAY_SIZE_SEMANTICS = 5;
    public static final int SW_TEXT_PROPS__SW_MAX_TEXT_SIZE = 6;
    public static final int SW_TEXT_PROPS__BASE_TYPE = 7;
    public static final int SW_TEXT_PROPS__SW_FILL_CHARACTER = 8;
    public static final int SW_TEXT_PROPS_FEATURE_COUNT = 9;
    public static final int SW_DATA_DEF_PROPS_CONTENT = 6;
    public static final int SW_DATA_DEF_PROPS_CONTENT__GCHECKSUM = 0;
    public static final int SW_DATA_DEF_PROPS_CONTENT__GTIMESTAMP = 1;
    public static final int SW_DATA_DEF_PROPS_CONTENT__CHECKSUM = 2;
    public static final int SW_DATA_DEF_PROPS_CONTENT__TIMESTAMP = 3;
    public static final int SW_DATA_DEF_PROPS_CONTENT__ANNOTATIONS = 4;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_ADDR_METHOD = 5;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_ALIGNMENT = 6;
    public static final int SW_DATA_DEF_PROPS_CONTENT__BASE_TYPE = 7;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_BIT_REPRESENTATION = 8;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_CALIBRATION_ACCESS = 9;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_VALUE_BLOCK_SIZE = 10;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_CALPRM_AXIS_SET = 11;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_TEXT_PROPS = 12;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_COMPARISON_VARIABLES = 13;
    public static final int SW_DATA_DEF_PROPS_CONTENT__COMPU_METHOD = 14;
    public static final int SW_DATA_DEF_PROPS_CONTENT__DATA_CONSTR = 15;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_DATA_DEPENDENCY = 16;
    public static final int SW_DATA_DEF_PROPS_CONTENT__DISPLAY_FORMAT = 17;
    public static final int SW_DATA_DEF_PROPS_CONTENT__IMPLEMENTATION_DATA_TYPE = 18;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_HOST_VARIABLE = 19;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_IMPL_POLICY = 20;
    public static final int SW_DATA_DEF_PROPS_CONTENT__ADDITIONAL_NATIVE_TYPE_QUALIFIER = 21;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_INTENDED_RESOLUTION = 22;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_INTERPOLATION_METHOD = 23;
    public static final int SW_DATA_DEF_PROPS_CONTENT__INVALID_VALUE = 24;
    public static final int SW_DATA_DEF_PROPS_CONTENT__MC_FUNCTION = 25;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_IS_VIRTUAL = 26;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_POINTER_TARGET_PROPS = 27;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_RECORD_LAYOUT = 28;
    public static final int SW_DATA_DEF_PROPS_CONTENT__SW_REFRESH_TIMING = 29;
    public static final int SW_DATA_DEF_PROPS_CONTENT__UNIT = 30;
    public static final int SW_DATA_DEF_PROPS_CONTENT__VALUE_AXIS_DATA_TYPE = 31;
    public static final int SW_DATA_DEF_PROPS_CONTENT_FEATURE_COUNT = 32;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL = 7;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__GCHECKSUM = 0;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__GTIMESTAMP = 1;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__CHECKSUM = 2;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__TIMESTAMP = 3;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__ANNOTATIONS = 4;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_ADDR_METHOD = 5;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_ALIGNMENT = 6;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__BASE_TYPE = 7;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_BIT_REPRESENTATION = 8;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_CALIBRATION_ACCESS = 9;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_VALUE_BLOCK_SIZE = 10;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_CALPRM_AXIS_SET = 11;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_TEXT_PROPS = 12;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_COMPARISON_VARIABLES = 13;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__COMPU_METHOD = 14;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__DATA_CONSTR = 15;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_DATA_DEPENDENCY = 16;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__DISPLAY_FORMAT = 17;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__IMPLEMENTATION_DATA_TYPE = 18;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_HOST_VARIABLE = 19;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_IMPL_POLICY = 20;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__ADDITIONAL_NATIVE_TYPE_QUALIFIER = 21;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_INTENDED_RESOLUTION = 22;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_INTERPOLATION_METHOD = 23;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__INVALID_VALUE = 24;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__MC_FUNCTION = 25;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_IS_VIRTUAL = 26;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_POINTER_TARGET_PROPS = 27;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_RECORD_LAYOUT = 28;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_REFRESH_TIMING = 29;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__UNIT = 30;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__VALUE_AXIS_DATA_TYPE = 31;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__GBASE_TYPE = 32;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__GINVALID_VALUE = 33;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__GCOMPU_METHOD = 34;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__SW_DATA_DEF_PROPS = 35;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL__VARIATION_POINT = 36;
    public static final int SW_DATA_DEF_PROPS_CONDITIONAL_FEATURE_COUNT = 37;
    public static final int SW_DATA_DEF_PROPS = 8;
    public static final int SW_DATA_DEF_PROPS__GCHECKSUM = 0;
    public static final int SW_DATA_DEF_PROPS__GTIMESTAMP = 1;
    public static final int SW_DATA_DEF_PROPS__CHECKSUM = 2;
    public static final int SW_DATA_DEF_PROPS__TIMESTAMP = 3;
    public static final int SW_DATA_DEF_PROPS__SW_DATA_DEF_PROPS_VARIANTS = 4;
    public static final int SW_DATA_DEF_PROPS_FEATURE_COUNT = 5;
    public static final int SW_CALIBRATION_ACCESS_ENUM = 9;
    public static final int SW_IMPL_POLICY_ENUM = 10;
    public static final int SW_VARIABLE_ACCESS_IMPL_POLICY_ENUM = 11;

    public EClass getValueList();

    public EReference getValueList_Vfs();

    public EAttribute getValueList_Vs();

    public EClass getSwBitRepresentation();

    public EReference getSwBitRepresentation_SwDataDefPropsContent();

    public EAttribute getSwBitRepresentation_BitPosition();

    public EAttribute getSwBitRepresentation_NumberOfBits();

    public EClass getSwDataDependency();

    public EReference getSwDataDependency_SwDataDefPropsContent();

    public EReference getSwDataDependency_SwDataDependencyFormula();

    public EReference getSwDataDependency_SwDataDependencyArgs();

    public EClass getSwDataDependencyArgs();

    public EReference getSwDataDependencyArgs_SwDataDependency();

    public EReference getSwDataDependencyArgs_SwCalprmRefs();

    public EReference getSwDataDependencyArgs_SwVariables();

    public EClass getSwPointerTargetProps();

    public EReference getSwPointerTargetProps_SwDataDefPropsContent();

    public EAttribute getSwPointerTargetProps_TargetCategory();

    public EReference getSwPointerTargetProps_SwDataDefProps();

    public EReference getSwPointerTargetProps_FunctionPointerSignature();

    public EClass getSwTextProps();

    public EReference getSwTextProps_SwDataDefPropsContent();

    public EAttribute getSwTextProps_ArraySizeSemantics();

    public EReference getSwTextProps_SwMaxTextSize();

    public EReference getSwTextProps_BaseType();

    public EAttribute getSwTextProps_SwFillCharacter();

    public EClass getSwDataDefPropsContent();

    public EReference getSwDataDefPropsContent_Annotations();

    public EReference getSwDataDefPropsContent_SwAddrMethod();

    public EAttribute getSwDataDefPropsContent_SwAlignment();

    public EReference getSwDataDefPropsContent_BaseType();

    public EReference getSwDataDefPropsContent_SwBitRepresentation();

    public EAttribute getSwDataDefPropsContent_SwCalibrationAccess();

    public EReference getSwDataDefPropsContent_SwValueBlockSize();

    public EReference getSwDataDefPropsContent_SwCalprmAxisSet();

    public EReference getSwDataDefPropsContent_SwTextProps();

    public EReference getSwDataDefPropsContent_SwComparisonVariables();

    public EReference getSwDataDefPropsContent_CompuMethod();

    public EReference getSwDataDefPropsContent_DataConstr();

    public EReference getSwDataDefPropsContent_SwDataDependency();

    public EAttribute getSwDataDefPropsContent_DisplayFormat();

    public EReference getSwDataDefPropsContent_ImplementationDataType();

    public EReference getSwDataDefPropsContent_SwHostVariable();

    public EAttribute getSwDataDefPropsContent_SwImplPolicy();

    public EAttribute getSwDataDefPropsContent_AdditionalNativeTypeQualifier();

    public EAttribute getSwDataDefPropsContent_SwIntendedResolution();

    public EAttribute getSwDataDefPropsContent_SwInterpolationMethod();

    public EReference getSwDataDefPropsContent_InvalidValue();

    public EAttribute getSwDataDefPropsContent_McFunction();

    public EAttribute getSwDataDefPropsContent_SwIsVirtual();

    public EReference getSwDataDefPropsContent_SwPointerTargetProps();

    public EReference getSwDataDefPropsContent_SwRecordLayout();

    public EReference getSwDataDefPropsContent_SwRefreshTiming();

    public EReference getSwDataDefPropsContent_Unit();

    public EReference getSwDataDefPropsContent_ValueAxisDataType();

    public EClass getSwDataDefPropsConditional();

    public EReference getSwDataDefPropsConditional_SwDataDefProps();

    public EReference getSwDataDefPropsConditional_VariationPoint();

    public EClass getSwDataDefProps();

    public EReference getSwDataDefProps_SwDataDefPropsVariants();

    public EEnum getSwCalibrationAccessEnum();

    public EEnum getSwImplPolicyEnum();

    public EEnum getSwVariableAccessImplPolicyEnum();

    public DatadefpropertiesFactory getDatadefpropertiesFactory();

    public static interface Literals {
        public static final EClass VALUE_LIST = eINSTANCE.getValueList();
        public static final EReference VALUE_LIST__VFS = eINSTANCE.getValueList_Vfs();
        public static final EAttribute VALUE_LIST__VS = eINSTANCE.getValueList_Vs();
        public static final EClass SW_BIT_REPRESENTATION = eINSTANCE.getSwBitRepresentation();
        public static final EReference SW_BIT_REPRESENTATION__SW_DATA_DEF_PROPS_CONTENT = eINSTANCE.getSwBitRepresentation_SwDataDefPropsContent();
        public static final EAttribute SW_BIT_REPRESENTATION__BIT_POSITION = eINSTANCE.getSwBitRepresentation_BitPosition();
        public static final EAttribute SW_BIT_REPRESENTATION__NUMBER_OF_BITS = eINSTANCE.getSwBitRepresentation_NumberOfBits();
        public static final EClass SW_DATA_DEPENDENCY = eINSTANCE.getSwDataDependency();
        public static final EReference SW_DATA_DEPENDENCY__SW_DATA_DEF_PROPS_CONTENT = eINSTANCE.getSwDataDependency_SwDataDefPropsContent();
        public static final EReference SW_DATA_DEPENDENCY__SW_DATA_DEPENDENCY_FORMULA = eINSTANCE.getSwDataDependency_SwDataDependencyFormula();
        public static final EReference SW_DATA_DEPENDENCY__SW_DATA_DEPENDENCY_ARGS = eINSTANCE.getSwDataDependency_SwDataDependencyArgs();
        public static final EClass SW_DATA_DEPENDENCY_ARGS = eINSTANCE.getSwDataDependencyArgs();
        public static final EReference SW_DATA_DEPENDENCY_ARGS__SW_DATA_DEPENDENCY = eINSTANCE.getSwDataDependencyArgs_SwDataDependency();
        public static final EReference SW_DATA_DEPENDENCY_ARGS__SW_CALPRM_REFS = eINSTANCE.getSwDataDependencyArgs_SwCalprmRefs();
        public static final EReference SW_DATA_DEPENDENCY_ARGS__SW_VARIABLES = eINSTANCE.getSwDataDependencyArgs_SwVariables();
        public static final EClass SW_POINTER_TARGET_PROPS = eINSTANCE.getSwPointerTargetProps();
        public static final EReference SW_POINTER_TARGET_PROPS__SW_DATA_DEF_PROPS_CONTENT = eINSTANCE.getSwPointerTargetProps_SwDataDefPropsContent();
        public static final EAttribute SW_POINTER_TARGET_PROPS__TARGET_CATEGORY = eINSTANCE.getSwPointerTargetProps_TargetCategory();
        public static final EReference SW_POINTER_TARGET_PROPS__SW_DATA_DEF_PROPS = eINSTANCE.getSwPointerTargetProps_SwDataDefProps();
        public static final EReference SW_POINTER_TARGET_PROPS__FUNCTION_POINTER_SIGNATURE = eINSTANCE.getSwPointerTargetProps_FunctionPointerSignature();
        public static final EClass SW_TEXT_PROPS = eINSTANCE.getSwTextProps();
        public static final EReference SW_TEXT_PROPS__SW_DATA_DEF_PROPS_CONTENT = eINSTANCE.getSwTextProps_SwDataDefPropsContent();
        public static final EAttribute SW_TEXT_PROPS__ARRAY_SIZE_SEMANTICS = eINSTANCE.getSwTextProps_ArraySizeSemantics();
        public static final EReference SW_TEXT_PROPS__SW_MAX_TEXT_SIZE = eINSTANCE.getSwTextProps_SwMaxTextSize();
        public static final EReference SW_TEXT_PROPS__BASE_TYPE = eINSTANCE.getSwTextProps_BaseType();
        public static final EAttribute SW_TEXT_PROPS__SW_FILL_CHARACTER = eINSTANCE.getSwTextProps_SwFillCharacter();
        public static final EClass SW_DATA_DEF_PROPS_CONTENT = eINSTANCE.getSwDataDefPropsContent();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__ANNOTATIONS = eINSTANCE.getSwDataDefPropsContent_Annotations();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__SW_ADDR_METHOD = eINSTANCE.getSwDataDefPropsContent_SwAddrMethod();
        public static final EAttribute SW_DATA_DEF_PROPS_CONTENT__SW_ALIGNMENT = eINSTANCE.getSwDataDefPropsContent_SwAlignment();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__BASE_TYPE = eINSTANCE.getSwDataDefPropsContent_BaseType();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__SW_BIT_REPRESENTATION = eINSTANCE.getSwDataDefPropsContent_SwBitRepresentation();
        public static final EAttribute SW_DATA_DEF_PROPS_CONTENT__SW_CALIBRATION_ACCESS = eINSTANCE.getSwDataDefPropsContent_SwCalibrationAccess();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__SW_VALUE_BLOCK_SIZE = eINSTANCE.getSwDataDefPropsContent_SwValueBlockSize();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__SW_CALPRM_AXIS_SET = eINSTANCE.getSwDataDefPropsContent_SwCalprmAxisSet();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__SW_TEXT_PROPS = eINSTANCE.getSwDataDefPropsContent_SwTextProps();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__SW_COMPARISON_VARIABLES = eINSTANCE.getSwDataDefPropsContent_SwComparisonVariables();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__COMPU_METHOD = eINSTANCE.getSwDataDefPropsContent_CompuMethod();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__DATA_CONSTR = eINSTANCE.getSwDataDefPropsContent_DataConstr();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__SW_DATA_DEPENDENCY = eINSTANCE.getSwDataDefPropsContent_SwDataDependency();
        public static final EAttribute SW_DATA_DEF_PROPS_CONTENT__DISPLAY_FORMAT = eINSTANCE.getSwDataDefPropsContent_DisplayFormat();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__IMPLEMENTATION_DATA_TYPE = eINSTANCE.getSwDataDefPropsContent_ImplementationDataType();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__SW_HOST_VARIABLE = eINSTANCE.getSwDataDefPropsContent_SwHostVariable();
        public static final EAttribute SW_DATA_DEF_PROPS_CONTENT__SW_IMPL_POLICY = eINSTANCE.getSwDataDefPropsContent_SwImplPolicy();
        public static final EAttribute SW_DATA_DEF_PROPS_CONTENT__ADDITIONAL_NATIVE_TYPE_QUALIFIER = eINSTANCE.getSwDataDefPropsContent_AdditionalNativeTypeQualifier();
        public static final EAttribute SW_DATA_DEF_PROPS_CONTENT__SW_INTENDED_RESOLUTION = eINSTANCE.getSwDataDefPropsContent_SwIntendedResolution();
        public static final EAttribute SW_DATA_DEF_PROPS_CONTENT__SW_INTERPOLATION_METHOD = eINSTANCE.getSwDataDefPropsContent_SwInterpolationMethod();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__INVALID_VALUE = eINSTANCE.getSwDataDefPropsContent_InvalidValue();
        public static final EAttribute SW_DATA_DEF_PROPS_CONTENT__MC_FUNCTION = eINSTANCE.getSwDataDefPropsContent_McFunction();
        public static final EAttribute SW_DATA_DEF_PROPS_CONTENT__SW_IS_VIRTUAL = eINSTANCE.getSwDataDefPropsContent_SwIsVirtual();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__SW_POINTER_TARGET_PROPS = eINSTANCE.getSwDataDefPropsContent_SwPointerTargetProps();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__SW_RECORD_LAYOUT = eINSTANCE.getSwDataDefPropsContent_SwRecordLayout();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__SW_REFRESH_TIMING = eINSTANCE.getSwDataDefPropsContent_SwRefreshTiming();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__UNIT = eINSTANCE.getSwDataDefPropsContent_Unit();
        public static final EReference SW_DATA_DEF_PROPS_CONTENT__VALUE_AXIS_DATA_TYPE = eINSTANCE.getSwDataDefPropsContent_ValueAxisDataType();
        public static final EClass SW_DATA_DEF_PROPS_CONDITIONAL = eINSTANCE.getSwDataDefPropsConditional();
        public static final EReference SW_DATA_DEF_PROPS_CONDITIONAL__SW_DATA_DEF_PROPS = eINSTANCE.getSwDataDefPropsConditional_SwDataDefProps();
        public static final EReference SW_DATA_DEF_PROPS_CONDITIONAL__VARIATION_POINT = eINSTANCE.getSwDataDefPropsConditional_VariationPoint();
        public static final EClass SW_DATA_DEF_PROPS = eINSTANCE.getSwDataDefProps();
        public static final EReference SW_DATA_DEF_PROPS__SW_DATA_DEF_PROPS_VARIANTS = eINSTANCE.getSwDataDefProps_SwDataDefPropsVariants();
        public static final EEnum SW_CALIBRATION_ACCESS_ENUM = eINSTANCE.getSwCalibrationAccessEnum();
        public static final EEnum SW_IMPL_POLICY_ENUM = eINSTANCE.getSwImplPolicyEnum();
        public static final EEnum SW_VARIABLE_ACCESS_IMPL_POLICY_ENUM = eINSTANCE.getSwVariableAccessImplPolicyEnum();
    }
}

