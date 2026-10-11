/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.ecucdescription;

import autosar21.ecucdescription.EcucdescriptionFactory;
import autosar21.ecucdescription.impl.EcucdescriptionPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface EcucdescriptionPackage
extends EPackage {
    public static final String eNAME = "ecucdescription";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/ecucd";
    public static final String eNS_PREFIX = "";
    public static final EcucdescriptionPackage eINSTANCE = EcucdescriptionPackageImpl.init();
    public static final int PARAMETER_VALUE = 1;
    public static final int PARAMETER_VALUE__GCHECKSUM = 0;
    public static final int PARAMETER_VALUE__GTIMESTAMP = 1;
    public static final int PARAMETER_VALUE__CHECKSUM = 2;
    public static final int PARAMETER_VALUE__TIMESTAMP = 3;
    public static final int PARAMETER_VALUE__CONTAINER = 4;
    public static final int PARAMETER_VALUE__DEFINITION = 5;
    public static final int PARAMETER_VALUE_FEATURE_COUNT = 6;
    public static final int BOOLEAN_VALUE = 0;
    public static final int BOOLEAN_VALUE__GCHECKSUM = 0;
    public static final int BOOLEAN_VALUE__GTIMESTAMP = 1;
    public static final int BOOLEAN_VALUE__CHECKSUM = 2;
    public static final int BOOLEAN_VALUE__TIMESTAMP = 3;
    public static final int BOOLEAN_VALUE__CONTAINER = 4;
    public static final int BOOLEAN_VALUE__DEFINITION = 5;
    public static final int BOOLEAN_VALUE__GVALUE = 6;
    public static final int BOOLEAN_VALUE__VALUE = 7;
    public static final int BOOLEAN_VALUE_FEATURE_COUNT = 8;
    public static final int CONFIG_REFERENCE_VALUE = 2;
    public static final int CONFIG_REFERENCE_VALUE__GCHECKSUM = 0;
    public static final int CONFIG_REFERENCE_VALUE__GTIMESTAMP = 1;
    public static final int CONFIG_REFERENCE_VALUE__CHECKSUM = 2;
    public static final int CONFIG_REFERENCE_VALUE__TIMESTAMP = 3;
    public static final int CONFIG_REFERENCE_VALUE__CONTAINER = 4;
    public static final int CONFIG_REFERENCE_VALUE__DEFINITION = 5;
    public static final int CONFIG_REFERENCE_VALUE_FEATURE_COUNT = 6;
    public static final int CONTAINER = 3;
    public static final int CONTAINER__GCHECKSUM = 0;
    public static final int CONTAINER__GTIMESTAMP = 1;
    public static final int CONTAINER__CHECKSUM = 2;
    public static final int CONTAINER__TIMESTAMP = 3;
    public static final int CONTAINER__GSHORT_NAME = 4;
    public static final int CONTAINER__GUUID = 5;
    public static final int CONTAINER__GCATEGORY = 6;
    public static final int CONTAINER__GDESC = 7;
    public static final int CONTAINER__SHORT_NAME = 8;
    public static final int CONTAINER__LONG_NAME = 9;
    public static final int CONTAINER__DESC = 10;
    public static final int CONTAINER__CATEGORY = 11;
    public static final int CONTAINER__ADMIN_DATA = 12;
    public static final int CONTAINER__UUID = 13;
    public static final int CONTAINER__ALL_EXTENSIONS = 14;
    public static final int CONTAINER__CONTAINED_EXTENSIONS = 15;
    public static final int CONTAINER__DEFINITION = 16;
    public static final int CONTAINER__PARAMETER_VALUES = 17;
    public static final int CONTAINER__REFERENCE_VALUES = 18;
    public static final int CONTAINER__SUB_CONTAINERS = 19;
    public static final int CONTAINER_FEATURE_COUNT = 20;
    public static final int ECUC_ELEMENT = 4;
    public static final int ECUC_ELEMENT__GCHECKSUM = 0;
    public static final int ECUC_ELEMENT__GTIMESTAMP = 1;
    public static final int ECUC_ELEMENT__CHECKSUM = 2;
    public static final int ECUC_ELEMENT__TIMESTAMP = 3;
    public static final int ECUC_ELEMENT__GSHORT_NAME = 4;
    public static final int ECUC_ELEMENT__GUUID = 5;
    public static final int ECUC_ELEMENT__GCATEGORY = 6;
    public static final int ECUC_ELEMENT__GDESC = 7;
    public static final int ECUC_ELEMENT__SHORT_NAME = 8;
    public static final int ECUC_ELEMENT__LONG_NAME = 9;
    public static final int ECUC_ELEMENT__DESC = 10;
    public static final int ECUC_ELEMENT__CATEGORY = 11;
    public static final int ECUC_ELEMENT__ADMIN_DATA = 12;
    public static final int ECUC_ELEMENT__UUID = 13;
    public static final int ECUC_ELEMENT__ALL_EXTENSIONS = 14;
    public static final int ECUC_ELEMENT__CONTAINED_EXTENSIONS = 15;
    public static final int ECUC_ELEMENT__GAR_PACKAGE = 16;
    public static final int ECUC_ELEMENT__AR_PACKAGE = 17;
    public static final int ECUC_ELEMENT_FEATURE_COUNT = 18;
    public static final int ECU_CONFIGURATION = 5;
    public static final int ECU_CONFIGURATION__GCHECKSUM = 0;
    public static final int ECU_CONFIGURATION__GTIMESTAMP = 1;
    public static final int ECU_CONFIGURATION__CHECKSUM = 2;
    public static final int ECU_CONFIGURATION__TIMESTAMP = 3;
    public static final int ECU_CONFIGURATION__GSHORT_NAME = 4;
    public static final int ECU_CONFIGURATION__GUUID = 5;
    public static final int ECU_CONFIGURATION__GCATEGORY = 6;
    public static final int ECU_CONFIGURATION__GDESC = 7;
    public static final int ECU_CONFIGURATION__SHORT_NAME = 8;
    public static final int ECU_CONFIGURATION__LONG_NAME = 9;
    public static final int ECU_CONFIGURATION__DESC = 10;
    public static final int ECU_CONFIGURATION__CATEGORY = 11;
    public static final int ECU_CONFIGURATION__ADMIN_DATA = 12;
    public static final int ECU_CONFIGURATION__UUID = 13;
    public static final int ECU_CONFIGURATION__ALL_EXTENSIONS = 14;
    public static final int ECU_CONFIGURATION__CONTAINED_EXTENSIONS = 15;
    public static final int ECU_CONFIGURATION__GAR_PACKAGE = 16;
    public static final int ECU_CONFIGURATION__AR_PACKAGE = 17;
    public static final int ECU_CONFIGURATION__ECU_EXTRACT = 18;
    public static final int ECU_CONFIGURATION__ECU_SW_COMPOSITION = 19;
    public static final int ECU_CONFIGURATION__MODULES = 20;
    public static final int ECU_CONFIGURATION_FEATURE_COUNT = 21;
    public static final int MODULE_CONFIGURATION = 6;
    public static final int MODULE_CONFIGURATION__GCHECKSUM = 0;
    public static final int MODULE_CONFIGURATION__GTIMESTAMP = 1;
    public static final int MODULE_CONFIGURATION__CHECKSUM = 2;
    public static final int MODULE_CONFIGURATION__TIMESTAMP = 3;
    public static final int MODULE_CONFIGURATION__GSHORT_NAME = 4;
    public static final int MODULE_CONFIGURATION__GUUID = 5;
    public static final int MODULE_CONFIGURATION__GCATEGORY = 6;
    public static final int MODULE_CONFIGURATION__GDESC = 7;
    public static final int MODULE_CONFIGURATION__SHORT_NAME = 8;
    public static final int MODULE_CONFIGURATION__LONG_NAME = 9;
    public static final int MODULE_CONFIGURATION__DESC = 10;
    public static final int MODULE_CONFIGURATION__CATEGORY = 11;
    public static final int MODULE_CONFIGURATION__ADMIN_DATA = 12;
    public static final int MODULE_CONFIGURATION__UUID = 13;
    public static final int MODULE_CONFIGURATION__ALL_EXTENSIONS = 14;
    public static final int MODULE_CONFIGURATION__CONTAINED_EXTENSIONS = 15;
    public static final int MODULE_CONFIGURATION__GAR_PACKAGE = 16;
    public static final int MODULE_CONFIGURATION__AR_PACKAGE = 17;
    public static final int MODULE_CONFIGURATION__DEFINITION = 18;
    public static final int MODULE_CONFIGURATION__MODULE_DESCRIPTION = 19;
    public static final int MODULE_CONFIGURATION__CONTAINERS = 20;
    public static final int MODULE_CONFIGURATION_FEATURE_COUNT = 21;
    public static final int ENUMERATION_VALUE = 7;
    public static final int ENUMERATION_VALUE__GCHECKSUM = 0;
    public static final int ENUMERATION_VALUE__GTIMESTAMP = 1;
    public static final int ENUMERATION_VALUE__CHECKSUM = 2;
    public static final int ENUMERATION_VALUE__TIMESTAMP = 3;
    public static final int ENUMERATION_VALUE__CONTAINER = 4;
    public static final int ENUMERATION_VALUE__DEFINITION = 5;
    public static final int ENUMERATION_VALUE__GVALUE = 6;
    public static final int ENUMERATION_VALUE__VALUE = 7;
    public static final int ENUMERATION_VALUE_FEATURE_COUNT = 8;
    public static final int FLOAT_VALUE = 8;
    public static final int FLOAT_VALUE__GCHECKSUM = 0;
    public static final int FLOAT_VALUE__GTIMESTAMP = 1;
    public static final int FLOAT_VALUE__CHECKSUM = 2;
    public static final int FLOAT_VALUE__TIMESTAMP = 3;
    public static final int FLOAT_VALUE__CONTAINER = 4;
    public static final int FLOAT_VALUE__DEFINITION = 5;
    public static final int FLOAT_VALUE__GVALUE = 6;
    public static final int FLOAT_VALUE__VALUE = 7;
    public static final int FLOAT_VALUE_FEATURE_COUNT = 8;
    public static final int STRING_VALUE = 11;
    public static final int STRING_VALUE__GCHECKSUM = 0;
    public static final int STRING_VALUE__GTIMESTAMP = 1;
    public static final int STRING_VALUE__CHECKSUM = 2;
    public static final int STRING_VALUE__TIMESTAMP = 3;
    public static final int STRING_VALUE__CONTAINER = 4;
    public static final int STRING_VALUE__DEFINITION = 5;
    public static final int STRING_VALUE__GVALUE = 6;
    public static final int STRING_VALUE__VALUE = 7;
    public static final int STRING_VALUE_FEATURE_COUNT = 8;
    public static final int LINKER_SYMBOL_VALUE = 10;
    public static final int LINKER_SYMBOL_VALUE__GCHECKSUM = 0;
    public static final int LINKER_SYMBOL_VALUE__GTIMESTAMP = 1;
    public static final int LINKER_SYMBOL_VALUE__CHECKSUM = 2;
    public static final int LINKER_SYMBOL_VALUE__TIMESTAMP = 3;
    public static final int LINKER_SYMBOL_VALUE__CONTAINER = 4;
    public static final int LINKER_SYMBOL_VALUE__DEFINITION = 5;
    public static final int LINKER_SYMBOL_VALUE__GVALUE = 6;
    public static final int LINKER_SYMBOL_VALUE__VALUE = 7;
    public static final int LINKER_SYMBOL_VALUE_FEATURE_COUNT = 8;
    public static final int FUNCTION_NAME_VALUE = 9;
    public static final int FUNCTION_NAME_VALUE__GCHECKSUM = 0;
    public static final int FUNCTION_NAME_VALUE__GTIMESTAMP = 1;
    public static final int FUNCTION_NAME_VALUE__CHECKSUM = 2;
    public static final int FUNCTION_NAME_VALUE__TIMESTAMP = 3;
    public static final int FUNCTION_NAME_VALUE__CONTAINER = 4;
    public static final int FUNCTION_NAME_VALUE__DEFINITION = 5;
    public static final int FUNCTION_NAME_VALUE__GVALUE = 6;
    public static final int FUNCTION_NAME_VALUE__VALUE = 7;
    public static final int FUNCTION_NAME_VALUE_FEATURE_COUNT = 8;
    public static final int INSTANCE_REFERENCE_VALUE = 12;
    public static final int INSTANCE_REFERENCE_VALUE__GCHECKSUM = 0;
    public static final int INSTANCE_REFERENCE_VALUE__GTIMESTAMP = 1;
    public static final int INSTANCE_REFERENCE_VALUE__CHECKSUM = 2;
    public static final int INSTANCE_REFERENCE_VALUE__TIMESTAMP = 3;
    public static final int INSTANCE_REFERENCE_VALUE__CONTAINER = 4;
    public static final int INSTANCE_REFERENCE_VALUE__DEFINITION = 5;
    public static final int INSTANCE_REFERENCE_VALUE__VALUE = 6;
    public static final int INSTANCE_REFERENCE_VALUE_FEATURE_COUNT = 7;
    public static final int INTEGER_VALUE = 13;
    public static final int INTEGER_VALUE__GCHECKSUM = 0;
    public static final int INTEGER_VALUE__GTIMESTAMP = 1;
    public static final int INTEGER_VALUE__CHECKSUM = 2;
    public static final int INTEGER_VALUE__TIMESTAMP = 3;
    public static final int INTEGER_VALUE__CONTAINER = 4;
    public static final int INTEGER_VALUE__DEFINITION = 5;
    public static final int INTEGER_VALUE__GVALUE = 6;
    public static final int INTEGER_VALUE__VALUE = 7;
    public static final int INTEGER_VALUE_FEATURE_COUNT = 8;
    public static final int REFERENCE_VALUE = 14;
    public static final int REFERENCE_VALUE__GCHECKSUM = 0;
    public static final int REFERENCE_VALUE__GTIMESTAMP = 1;
    public static final int REFERENCE_VALUE__CHECKSUM = 2;
    public static final int REFERENCE_VALUE__TIMESTAMP = 3;
    public static final int REFERENCE_VALUE__CONTAINER = 4;
    public static final int REFERENCE_VALUE__DEFINITION = 5;
    public static final int REFERENCE_VALUE__VALUE = 6;
    public static final int REFERENCE_VALUE_FEATURE_COUNT = 7;

    public EClass getBooleanValue();

    public EAttribute getBooleanValue_Value();

    public EClass getParameterValue();

    public EReference getParameterValue_Container();

    public EReference getParameterValue_Definition();

    public EClass getConfigReferenceValue();

    public EReference getConfigReferenceValue_Container();

    public EReference getConfigReferenceValue_Definition();

    public EClass getContainer();

    public EReference getContainer_Definition();

    public EReference getContainer_ParameterValues();

    public EReference getContainer_ReferenceValues();

    public EReference getContainer_SubContainers();

    public EClass getEcucElement();

    public EClass getEcuConfiguration();

    public EReference getEcuConfiguration_EcuExtract();

    public EReference getEcuConfiguration_EcuSwComposition();

    public EReference getEcuConfiguration_Modules();

    public EClass getModuleConfiguration();

    public EReference getModuleConfiguration_Definition();

    public EReference getModuleConfiguration_ModuleDescription();

    public EReference getModuleConfiguration_Containers();

    public EClass getEnumerationValue();

    public EAttribute getEnumerationValue_Value();

    public EClass getFloatValue();

    public EAttribute getFloatValue_Value();

    public EClass getFunctionNameValue();

    public EClass getLinkerSymbolValue();

    public EClass getStringValue();

    public EAttribute getStringValue_Value();

    public EClass getInstanceReferenceValue();

    public EReference getInstanceReferenceValue_Value();

    public EClass getIntegerValue();

    public EAttribute getIntegerValue_Value();

    public EClass getReferenceValue();

    public EReference getReferenceValue_Value();

    public EcucdescriptionFactory getEcucdescriptionFactory();

    public static interface Literals {
        public static final EClass BOOLEAN_VALUE = eINSTANCE.getBooleanValue();
        public static final EAttribute BOOLEAN_VALUE__VALUE = eINSTANCE.getBooleanValue_Value();
        public static final EClass PARAMETER_VALUE = eINSTANCE.getParameterValue();
        public static final EReference PARAMETER_VALUE__CONTAINER = eINSTANCE.getParameterValue_Container();
        public static final EReference PARAMETER_VALUE__DEFINITION = eINSTANCE.getParameterValue_Definition();
        public static final EClass CONFIG_REFERENCE_VALUE = eINSTANCE.getConfigReferenceValue();
        public static final EReference CONFIG_REFERENCE_VALUE__CONTAINER = eINSTANCE.getConfigReferenceValue_Container();
        public static final EReference CONFIG_REFERENCE_VALUE__DEFINITION = eINSTANCE.getConfigReferenceValue_Definition();
        public static final EClass CONTAINER = eINSTANCE.getContainer();
        public static final EReference CONTAINER__DEFINITION = eINSTANCE.getContainer_Definition();
        public static final EReference CONTAINER__PARAMETER_VALUES = eINSTANCE.getContainer_ParameterValues();
        public static final EReference CONTAINER__REFERENCE_VALUES = eINSTANCE.getContainer_ReferenceValues();
        public static final EReference CONTAINER__SUB_CONTAINERS = eINSTANCE.getContainer_SubContainers();
        public static final EClass ECUC_ELEMENT = eINSTANCE.getEcucElement();
        public static final EClass ECU_CONFIGURATION = eINSTANCE.getEcuConfiguration();
        public static final EReference ECU_CONFIGURATION__ECU_EXTRACT = eINSTANCE.getEcuConfiguration_EcuExtract();
        public static final EReference ECU_CONFIGURATION__ECU_SW_COMPOSITION = eINSTANCE.getEcuConfiguration_EcuSwComposition();
        public static final EReference ECU_CONFIGURATION__MODULES = eINSTANCE.getEcuConfiguration_Modules();
        public static final EClass MODULE_CONFIGURATION = eINSTANCE.getModuleConfiguration();
        public static final EReference MODULE_CONFIGURATION__DEFINITION = eINSTANCE.getModuleConfiguration_Definition();
        public static final EReference MODULE_CONFIGURATION__MODULE_DESCRIPTION = eINSTANCE.getModuleConfiguration_ModuleDescription();
        public static final EReference MODULE_CONFIGURATION__CONTAINERS = eINSTANCE.getModuleConfiguration_Containers();
        public static final EClass ENUMERATION_VALUE = eINSTANCE.getEnumerationValue();
        public static final EAttribute ENUMERATION_VALUE__VALUE = eINSTANCE.getEnumerationValue_Value();
        public static final EClass FLOAT_VALUE = eINSTANCE.getFloatValue();
        public static final EAttribute FLOAT_VALUE__VALUE = eINSTANCE.getFloatValue_Value();
        public static final EClass FUNCTION_NAME_VALUE = eINSTANCE.getFunctionNameValue();
        public static final EClass LINKER_SYMBOL_VALUE = eINSTANCE.getLinkerSymbolValue();
        public static final EClass STRING_VALUE = eINSTANCE.getStringValue();
        public static final EAttribute STRING_VALUE__VALUE = eINSTANCE.getStringValue_Value();
        public static final EClass INSTANCE_REFERENCE_VALUE = eINSTANCE.getInstanceReferenceValue();
        public static final EReference INSTANCE_REFERENCE_VALUE__VALUE = eINSTANCE.getInstanceReferenceValue_Value();
        public static final EClass INTEGER_VALUE = eINSTANCE.getIntegerValue();
        public static final EAttribute INTEGER_VALUE__VALUE = eINSTANCE.getIntegerValue_Value();
        public static final EClass REFERENCE_VALUE = eINSTANCE.getReferenceValue();
        public static final EReference REFERENCE_VALUE__VALUE = eINSTANCE.getReferenceValue_Value();
    }
}

