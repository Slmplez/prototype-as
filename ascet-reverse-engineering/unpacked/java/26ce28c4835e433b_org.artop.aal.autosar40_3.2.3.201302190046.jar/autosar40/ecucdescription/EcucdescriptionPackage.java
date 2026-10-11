/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.ecucdescription;

import autosar40.ecucdescription.EcucdescriptionFactory;
import autosar40.ecucdescription.impl.EcucdescriptionPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface EcucdescriptionPackage
extends EPackage {
    public static final String eNAME = "ecucdescription";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/ecucd";
    public static final String eNS_PREFIX = "";
    public static final EcucdescriptionPackage eINSTANCE = EcucdescriptionPackageImpl.init();
    public static final int ECUC_INDEXABLE_VALUE = 1;
    public static final int ECUC_INDEXABLE_VALUE__GCHECKSUM = 0;
    public static final int ECUC_INDEXABLE_VALUE__GTIMESTAMP = 1;
    public static final int ECUC_INDEXABLE_VALUE__CHECKSUM = 2;
    public static final int ECUC_INDEXABLE_VALUE__TIMESTAMP = 3;
    public static final int ECUC_INDEXABLE_VALUE__INDEX = 4;
    public static final int ECUC_INDEXABLE_VALUE_FEATURE_COUNT = 5;
    public static final int ECUC_ABSTRACT_REFERENCE_VALUE = 0;
    public static final int ECUC_ABSTRACT_REFERENCE_VALUE__GCHECKSUM = 0;
    public static final int ECUC_ABSTRACT_REFERENCE_VALUE__GTIMESTAMP = 1;
    public static final int ECUC_ABSTRACT_REFERENCE_VALUE__CHECKSUM = 2;
    public static final int ECUC_ABSTRACT_REFERENCE_VALUE__TIMESTAMP = 3;
    public static final int ECUC_ABSTRACT_REFERENCE_VALUE__INDEX = 4;
    public static final int ECUC_ABSTRACT_REFERENCE_VALUE__ECUC_CONTAINER_VALUE = 5;
    public static final int ECUC_ABSTRACT_REFERENCE_VALUE__DEFINITION = 6;
    public static final int ECUC_ABSTRACT_REFERENCE_VALUE__ANNOTATIONS = 7;
    public static final int ECUC_ABSTRACT_REFERENCE_VALUE__VARIATION_POINT = 8;
    public static final int ECUC_ABSTRACT_REFERENCE_VALUE_FEATURE_COUNT = 9;
    public static final int ECUC_PARAMETER_VALUE = 3;
    public static final int ECUC_PARAMETER_VALUE__GCHECKSUM = 0;
    public static final int ECUC_PARAMETER_VALUE__GTIMESTAMP = 1;
    public static final int ECUC_PARAMETER_VALUE__CHECKSUM = 2;
    public static final int ECUC_PARAMETER_VALUE__TIMESTAMP = 3;
    public static final int ECUC_PARAMETER_VALUE__INDEX = 4;
    public static final int ECUC_PARAMETER_VALUE__ECUC_CONTAINER_VALUE = 5;
    public static final int ECUC_PARAMETER_VALUE__DEFINITION = 6;
    public static final int ECUC_PARAMETER_VALUE__ANNOTATIONS = 7;
    public static final int ECUC_PARAMETER_VALUE__IS_AUTO_VALUE = 8;
    public static final int ECUC_PARAMETER_VALUE__VARIATION_POINT = 9;
    public static final int ECUC_PARAMETER_VALUE_FEATURE_COUNT = 10;
    public static final int ECUC_ADD_INFO_PARAM_VALUE = 2;
    public static final int ECUC_ADD_INFO_PARAM_VALUE__GCHECKSUM = 0;
    public static final int ECUC_ADD_INFO_PARAM_VALUE__GTIMESTAMP = 1;
    public static final int ECUC_ADD_INFO_PARAM_VALUE__CHECKSUM = 2;
    public static final int ECUC_ADD_INFO_PARAM_VALUE__TIMESTAMP = 3;
    public static final int ECUC_ADD_INFO_PARAM_VALUE__INDEX = 4;
    public static final int ECUC_ADD_INFO_PARAM_VALUE__ECUC_CONTAINER_VALUE = 5;
    public static final int ECUC_ADD_INFO_PARAM_VALUE__DEFINITION = 6;
    public static final int ECUC_ADD_INFO_PARAM_VALUE__ANNOTATIONS = 7;
    public static final int ECUC_ADD_INFO_PARAM_VALUE__IS_AUTO_VALUE = 8;
    public static final int ECUC_ADD_INFO_PARAM_VALUE__VARIATION_POINT = 9;
    public static final int ECUC_ADD_INFO_PARAM_VALUE__VALUE = 10;
    public static final int ECUC_ADD_INFO_PARAM_VALUE_FEATURE_COUNT = 11;
    public static final int ECUC_CONTAINER_VALUE = 4;
    public static final int ECUC_CONTAINER_VALUE__GCHECKSUM = 0;
    public static final int ECUC_CONTAINER_VALUE__GTIMESTAMP = 1;
    public static final int ECUC_CONTAINER_VALUE__CHECKSUM = 2;
    public static final int ECUC_CONTAINER_VALUE__TIMESTAMP = 3;
    public static final int ECUC_CONTAINER_VALUE__GSHORT_NAME = 4;
    public static final int ECUC_CONTAINER_VALUE__SHORT_NAME = 5;
    public static final int ECUC_CONTAINER_VALUE__LONG_NAME = 6;
    public static final int ECUC_CONTAINER_VALUE__GUUID = 7;
    public static final int ECUC_CONTAINER_VALUE__GCATEGORY = 8;
    public static final int ECUC_CONTAINER_VALUE__GDESC = 9;
    public static final int ECUC_CONTAINER_VALUE__DESC = 10;
    public static final int ECUC_CONTAINER_VALUE__CATEGORY = 11;
    public static final int ECUC_CONTAINER_VALUE__ADMIN_DATA = 12;
    public static final int ECUC_CONTAINER_VALUE__INTRODUCTION = 13;
    public static final int ECUC_CONTAINER_VALUE__ANNOTATIONS = 14;
    public static final int ECUC_CONTAINER_VALUE__UUID = 15;
    public static final int ECUC_CONTAINER_VALUE__ALL_EXTENSIONS = 16;
    public static final int ECUC_CONTAINER_VALUE__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_CONTAINER_VALUE__DEFINITION = 18;
    public static final int ECUC_CONTAINER_VALUE__PARAMETER_VALUES = 19;
    public static final int ECUC_CONTAINER_VALUE__REFERENCE_VALUES = 20;
    public static final int ECUC_CONTAINER_VALUE__SUB_CONTAINERS = 21;
    public static final int ECUC_CONTAINER_VALUE__VARIATION_POINT = 22;
    public static final int ECUC_CONTAINER_VALUE_FEATURE_COUNT = 23;
    public static final int ECUC_INSTANCE_REFERENCE_VALUE = 5;
    public static final int ECUC_INSTANCE_REFERENCE_VALUE__GCHECKSUM = 0;
    public static final int ECUC_INSTANCE_REFERENCE_VALUE__GTIMESTAMP = 1;
    public static final int ECUC_INSTANCE_REFERENCE_VALUE__CHECKSUM = 2;
    public static final int ECUC_INSTANCE_REFERENCE_VALUE__TIMESTAMP = 3;
    public static final int ECUC_INSTANCE_REFERENCE_VALUE__INDEX = 4;
    public static final int ECUC_INSTANCE_REFERENCE_VALUE__ECUC_CONTAINER_VALUE = 5;
    public static final int ECUC_INSTANCE_REFERENCE_VALUE__DEFINITION = 6;
    public static final int ECUC_INSTANCE_REFERENCE_VALUE__ANNOTATIONS = 7;
    public static final int ECUC_INSTANCE_REFERENCE_VALUE__VARIATION_POINT = 8;
    public static final int ECUC_INSTANCE_REFERENCE_VALUE__VALUE = 9;
    public static final int ECUC_INSTANCE_REFERENCE_VALUE_FEATURE_COUNT = 10;
    public static final int ECUC_NUMERICAL_PARAM_VALUE = 6;
    public static final int ECUC_NUMERICAL_PARAM_VALUE__GCHECKSUM = 0;
    public static final int ECUC_NUMERICAL_PARAM_VALUE__GTIMESTAMP = 1;
    public static final int ECUC_NUMERICAL_PARAM_VALUE__CHECKSUM = 2;
    public static final int ECUC_NUMERICAL_PARAM_VALUE__TIMESTAMP = 3;
    public static final int ECUC_NUMERICAL_PARAM_VALUE__INDEX = 4;
    public static final int ECUC_NUMERICAL_PARAM_VALUE__ECUC_CONTAINER_VALUE = 5;
    public static final int ECUC_NUMERICAL_PARAM_VALUE__DEFINITION = 6;
    public static final int ECUC_NUMERICAL_PARAM_VALUE__ANNOTATIONS = 7;
    public static final int ECUC_NUMERICAL_PARAM_VALUE__IS_AUTO_VALUE = 8;
    public static final int ECUC_NUMERICAL_PARAM_VALUE__VARIATION_POINT = 9;
    public static final int ECUC_NUMERICAL_PARAM_VALUE__VALUE = 10;
    public static final int ECUC_NUMERICAL_PARAM_VALUE_FEATURE_COUNT = 11;
    public static final int ECUC_REFERENCE_VALUE = 7;
    public static final int ECUC_REFERENCE_VALUE__GCHECKSUM = 0;
    public static final int ECUC_REFERENCE_VALUE__GTIMESTAMP = 1;
    public static final int ECUC_REFERENCE_VALUE__CHECKSUM = 2;
    public static final int ECUC_REFERENCE_VALUE__TIMESTAMP = 3;
    public static final int ECUC_REFERENCE_VALUE__INDEX = 4;
    public static final int ECUC_REFERENCE_VALUE__ECUC_CONTAINER_VALUE = 5;
    public static final int ECUC_REFERENCE_VALUE__DEFINITION = 6;
    public static final int ECUC_REFERENCE_VALUE__ANNOTATIONS = 7;
    public static final int ECUC_REFERENCE_VALUE__VARIATION_POINT = 8;
    public static final int ECUC_REFERENCE_VALUE__VALUE = 9;
    public static final int ECUC_REFERENCE_VALUE_FEATURE_COUNT = 10;
    public static final int ECUC_TEXTUAL_PARAM_VALUE = 8;
    public static final int ECUC_TEXTUAL_PARAM_VALUE__GCHECKSUM = 0;
    public static final int ECUC_TEXTUAL_PARAM_VALUE__GTIMESTAMP = 1;
    public static final int ECUC_TEXTUAL_PARAM_VALUE__CHECKSUM = 2;
    public static final int ECUC_TEXTUAL_PARAM_VALUE__TIMESTAMP = 3;
    public static final int ECUC_TEXTUAL_PARAM_VALUE__INDEX = 4;
    public static final int ECUC_TEXTUAL_PARAM_VALUE__ECUC_CONTAINER_VALUE = 5;
    public static final int ECUC_TEXTUAL_PARAM_VALUE__DEFINITION = 6;
    public static final int ECUC_TEXTUAL_PARAM_VALUE__ANNOTATIONS = 7;
    public static final int ECUC_TEXTUAL_PARAM_VALUE__IS_AUTO_VALUE = 8;
    public static final int ECUC_TEXTUAL_PARAM_VALUE__VARIATION_POINT = 9;
    public static final int ECUC_TEXTUAL_PARAM_VALUE__VALUE = 10;
    public static final int ECUC_TEXTUAL_PARAM_VALUE_FEATURE_COUNT = 11;
    public static final int ECUC_VALUE_COLLECTION = 9;
    public static final int ECUC_VALUE_COLLECTION__GCHECKSUM = 0;
    public static final int ECUC_VALUE_COLLECTION__GTIMESTAMP = 1;
    public static final int ECUC_VALUE_COLLECTION__CHECKSUM = 2;
    public static final int ECUC_VALUE_COLLECTION__TIMESTAMP = 3;
    public static final int ECUC_VALUE_COLLECTION__GSHORT_NAME = 4;
    public static final int ECUC_VALUE_COLLECTION__SHORT_NAME = 5;
    public static final int ECUC_VALUE_COLLECTION__LONG_NAME = 6;
    public static final int ECUC_VALUE_COLLECTION__GUUID = 7;
    public static final int ECUC_VALUE_COLLECTION__GCATEGORY = 8;
    public static final int ECUC_VALUE_COLLECTION__GDESC = 9;
    public static final int ECUC_VALUE_COLLECTION__DESC = 10;
    public static final int ECUC_VALUE_COLLECTION__CATEGORY = 11;
    public static final int ECUC_VALUE_COLLECTION__ADMIN_DATA = 12;
    public static final int ECUC_VALUE_COLLECTION__INTRODUCTION = 13;
    public static final int ECUC_VALUE_COLLECTION__ANNOTATIONS = 14;
    public static final int ECUC_VALUE_COLLECTION__UUID = 15;
    public static final int ECUC_VALUE_COLLECTION__ALL_EXTENSIONS = 16;
    public static final int ECUC_VALUE_COLLECTION__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_VALUE_COLLECTION__GAR_PACKAGE = 18;
    public static final int ECUC_VALUE_COLLECTION__AR_PACKAGE = 19;
    public static final int ECUC_VALUE_COLLECTION__VARIATION_POINT = 20;
    public static final int ECUC_VALUE_COLLECTION__ECU_EXTRACT = 21;
    public static final int ECUC_VALUE_COLLECTION__ECUC_VALUES = 22;
    public static final int ECUC_VALUE_COLLECTION_FEATURE_COUNT = 23;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL = 10;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL__GCHECKSUM = 0;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL__CHECKSUM = 2;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL__TIMESTAMP = 3;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL__ECUC_VALUE_COLLECTION = 4;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL__ECUC_MODULE_CONFIGURATION_VALUES = 5;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL__VARIATION_POINT = 6;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL_FEATURE_COUNT = 7;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES = 11;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__GCHECKSUM = 0;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__GTIMESTAMP = 1;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__CHECKSUM = 2;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__TIMESTAMP = 3;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__GSHORT_NAME = 4;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__SHORT_NAME = 5;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__LONG_NAME = 6;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__GUUID = 7;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__GCATEGORY = 8;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__GDESC = 9;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__DESC = 10;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__CATEGORY = 11;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__ADMIN_DATA = 12;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__INTRODUCTION = 13;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__ANNOTATIONS = 14;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__UUID = 15;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__ALL_EXTENSIONS = 16;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__CONTAINED_EXTENSIONS = 17;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__GAR_PACKAGE = 18;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__AR_PACKAGE = 19;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__VARIATION_POINT = 20;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__DEFINITION = 21;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__ECUC_DEF_EDITION = 22;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__IMPLEMENTATION_CONFIG_VARIANT = 23;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__MODULE_DESCRIPTION = 24;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES__CONTAINERS = 25;
    public static final int ECUC_MODULE_CONFIGURATION_VALUES_FEATURE_COUNT = 26;

    public EClass getEcucAbstractReferenceValue();

    public EReference getEcucAbstractReferenceValue_EcucContainerValue();

    public EReference getEcucAbstractReferenceValue_Definition();

    public EReference getEcucAbstractReferenceValue_Annotations();

    public EReference getEcucAbstractReferenceValue_VariationPoint();

    public EClass getEcucIndexableValue();

    public EAttribute getEcucIndexableValue_Index();

    public EClass getEcucAddInfoParamValue();

    public EReference getEcucAddInfoParamValue_Value();

    public EClass getEcucParameterValue();

    public EReference getEcucParameterValue_EcucContainerValue();

    public EReference getEcucParameterValue_Definition();

    public EReference getEcucParameterValue_Annotations();

    public EAttribute getEcucParameterValue_IsAutoValue();

    public EReference getEcucParameterValue_VariationPoint();

    public EClass getEcucContainerValue();

    public EReference getEcucContainerValue_Definition();

    public EReference getEcucContainerValue_ParameterValues();

    public EReference getEcucContainerValue_ReferenceValues();

    public EReference getEcucContainerValue_SubContainers();

    public EReference getEcucContainerValue_VariationPoint();

    public EClass getEcucInstanceReferenceValue();

    public EReference getEcucInstanceReferenceValue_Value();

    public EClass getEcucNumericalParamValue();

    public EReference getEcucNumericalParamValue_Value();

    public EClass getEcucReferenceValue();

    public EReference getEcucReferenceValue_Value();

    public EClass getEcucTextualParamValue();

    public EAttribute getEcucTextualParamValue_Value();

    public EClass getEcucValueCollection();

    public EReference getEcucValueCollection_EcuExtract();

    public EReference getEcucValueCollection_EcucValues();

    public EClass getEcucModuleConfigurationValuesRefConditional();

    public EReference getEcucModuleConfigurationValuesRefConditional_EcucValueCollection();

    public EReference getEcucModuleConfigurationValuesRefConditional_EcucModuleConfigurationValues();

    public EReference getEcucModuleConfigurationValuesRefConditional_VariationPoint();

    public EClass getEcucModuleConfigurationValues();

    public EReference getEcucModuleConfigurationValues_Definition();

    public EAttribute getEcucModuleConfigurationValues_EcucDefEdition();

    public EAttribute getEcucModuleConfigurationValues_ImplementationConfigVariant();

    public EReference getEcucModuleConfigurationValues_ModuleDescription();

    public EReference getEcucModuleConfigurationValues_Containers();

    public EcucdescriptionFactory getEcucdescriptionFactory();

    public static interface Literals {
        public static final EClass ECUC_ABSTRACT_REFERENCE_VALUE = eINSTANCE.getEcucAbstractReferenceValue();
        public static final EReference ECUC_ABSTRACT_REFERENCE_VALUE__ECUC_CONTAINER_VALUE = eINSTANCE.getEcucAbstractReferenceValue_EcucContainerValue();
        public static final EReference ECUC_ABSTRACT_REFERENCE_VALUE__DEFINITION = eINSTANCE.getEcucAbstractReferenceValue_Definition();
        public static final EReference ECUC_ABSTRACT_REFERENCE_VALUE__ANNOTATIONS = eINSTANCE.getEcucAbstractReferenceValue_Annotations();
        public static final EReference ECUC_ABSTRACT_REFERENCE_VALUE__VARIATION_POINT = eINSTANCE.getEcucAbstractReferenceValue_VariationPoint();
        public static final EClass ECUC_INDEXABLE_VALUE = eINSTANCE.getEcucIndexableValue();
        public static final EAttribute ECUC_INDEXABLE_VALUE__INDEX = eINSTANCE.getEcucIndexableValue_Index();
        public static final EClass ECUC_ADD_INFO_PARAM_VALUE = eINSTANCE.getEcucAddInfoParamValue();
        public static final EReference ECUC_ADD_INFO_PARAM_VALUE__VALUE = eINSTANCE.getEcucAddInfoParamValue_Value();
        public static final EClass ECUC_PARAMETER_VALUE = eINSTANCE.getEcucParameterValue();
        public static final EReference ECUC_PARAMETER_VALUE__ECUC_CONTAINER_VALUE = eINSTANCE.getEcucParameterValue_EcucContainerValue();
        public static final EReference ECUC_PARAMETER_VALUE__DEFINITION = eINSTANCE.getEcucParameterValue_Definition();
        public static final EReference ECUC_PARAMETER_VALUE__ANNOTATIONS = eINSTANCE.getEcucParameterValue_Annotations();
        public static final EAttribute ECUC_PARAMETER_VALUE__IS_AUTO_VALUE = eINSTANCE.getEcucParameterValue_IsAutoValue();
        public static final EReference ECUC_PARAMETER_VALUE__VARIATION_POINT = eINSTANCE.getEcucParameterValue_VariationPoint();
        public static final EClass ECUC_CONTAINER_VALUE = eINSTANCE.getEcucContainerValue();
        public static final EReference ECUC_CONTAINER_VALUE__DEFINITION = eINSTANCE.getEcucContainerValue_Definition();
        public static final EReference ECUC_CONTAINER_VALUE__PARAMETER_VALUES = eINSTANCE.getEcucContainerValue_ParameterValues();
        public static final EReference ECUC_CONTAINER_VALUE__REFERENCE_VALUES = eINSTANCE.getEcucContainerValue_ReferenceValues();
        public static final EReference ECUC_CONTAINER_VALUE__SUB_CONTAINERS = eINSTANCE.getEcucContainerValue_SubContainers();
        public static final EReference ECUC_CONTAINER_VALUE__VARIATION_POINT = eINSTANCE.getEcucContainerValue_VariationPoint();
        public static final EClass ECUC_INSTANCE_REFERENCE_VALUE = eINSTANCE.getEcucInstanceReferenceValue();
        public static final EReference ECUC_INSTANCE_REFERENCE_VALUE__VALUE = eINSTANCE.getEcucInstanceReferenceValue_Value();
        public static final EClass ECUC_NUMERICAL_PARAM_VALUE = eINSTANCE.getEcucNumericalParamValue();
        public static final EReference ECUC_NUMERICAL_PARAM_VALUE__VALUE = eINSTANCE.getEcucNumericalParamValue_Value();
        public static final EClass ECUC_REFERENCE_VALUE = eINSTANCE.getEcucReferenceValue();
        public static final EReference ECUC_REFERENCE_VALUE__VALUE = eINSTANCE.getEcucReferenceValue_Value();
        public static final EClass ECUC_TEXTUAL_PARAM_VALUE = eINSTANCE.getEcucTextualParamValue();
        public static final EAttribute ECUC_TEXTUAL_PARAM_VALUE__VALUE = eINSTANCE.getEcucTextualParamValue_Value();
        public static final EClass ECUC_VALUE_COLLECTION = eINSTANCE.getEcucValueCollection();
        public static final EReference ECUC_VALUE_COLLECTION__ECU_EXTRACT = eINSTANCE.getEcucValueCollection_EcuExtract();
        public static final EReference ECUC_VALUE_COLLECTION__ECUC_VALUES = eINSTANCE.getEcucValueCollection_EcucValues();
        public static final EClass ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL = eINSTANCE.getEcucModuleConfigurationValuesRefConditional();
        public static final EReference ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL__ECUC_VALUE_COLLECTION = eINSTANCE.getEcucModuleConfigurationValuesRefConditional_EcucValueCollection();
        public static final EReference ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL__ECUC_MODULE_CONFIGURATION_VALUES = eINSTANCE.getEcucModuleConfigurationValuesRefConditional_EcucModuleConfigurationValues();
        public static final EReference ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getEcucModuleConfigurationValuesRefConditional_VariationPoint();
        public static final EClass ECUC_MODULE_CONFIGURATION_VALUES = eINSTANCE.getEcucModuleConfigurationValues();
        public static final EReference ECUC_MODULE_CONFIGURATION_VALUES__DEFINITION = eINSTANCE.getEcucModuleConfigurationValues_Definition();
        public static final EAttribute ECUC_MODULE_CONFIGURATION_VALUES__ECUC_DEF_EDITION = eINSTANCE.getEcucModuleConfigurationValues_EcucDefEdition();
        public static final EAttribute ECUC_MODULE_CONFIGURATION_VALUES__IMPLEMENTATION_CONFIG_VARIANT = eINSTANCE.getEcucModuleConfigurationValues_ImplementationConfigVariant();
        public static final EReference ECUC_MODULE_CONFIGURATION_VALUES__MODULE_DESCRIPTION = eINSTANCE.getEcucModuleConfigurationValues_ModuleDescription();
        public static final EReference ECUC_MODULE_CONFIGURATION_VALUES__CONTAINERS = eINSTANCE.getEcucModuleConfigurationValues_Containers();
    }
}

