/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.system;

import autosar40.system.SystemFactory;
import autosar40.system.impl.SystemPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SystemPackage
extends EPackage {
    public static final String eNAME = "system";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system";
    public static final String eNS_PREFIX = "";
    public static final SystemPackage eINSTANCE = SystemPackageImpl.init();
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE = 0;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__GCHECKSUM = 0;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__GTIMESTAMP = 1;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__CHECKSUM = 2;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__TIMESTAMP = 3;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__GSHORT_NAME = 4;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__SHORT_NAME = 5;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__LONG_NAME = 6;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__GUUID = 7;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__GCATEGORY = 8;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__GDESC = 9;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__DESC = 10;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__CATEGORY = 11;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__ADMIN_DATA = 12;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__INTRODUCTION = 13;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__ANNOTATIONS = 14;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__UUID = 15;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__ALL_EXTENSIONS = 16;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__CONTAINED_EXTENSIONS = 17;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__ATP_CLASSIFIER = 18;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__SYSTEM = 19;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__CALIBRATION_PARAMETER_VALUE_SETS = 20;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__FLAT_MAP = 21;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__SOFTWARE_COMPOSITION = 22;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE__VARIATION_POINT = 23;
    public static final int ROOT_SW_COMPOSITION_PROTOTYPE_FEATURE_COUNT = 24;
    public static final int SYSTEM = 1;
    public static final int SYSTEM__GCHECKSUM = 0;
    public static final int SYSTEM__GTIMESTAMP = 1;
    public static final int SYSTEM__CHECKSUM = 2;
    public static final int SYSTEM__TIMESTAMP = 3;
    public static final int SYSTEM__GSHORT_NAME = 4;
    public static final int SYSTEM__SHORT_NAME = 5;
    public static final int SYSTEM__LONG_NAME = 6;
    public static final int SYSTEM__GUUID = 7;
    public static final int SYSTEM__GCATEGORY = 8;
    public static final int SYSTEM__GDESC = 9;
    public static final int SYSTEM__DESC = 10;
    public static final int SYSTEM__CATEGORY = 11;
    public static final int SYSTEM__ADMIN_DATA = 12;
    public static final int SYSTEM__INTRODUCTION = 13;
    public static final int SYSTEM__ANNOTATIONS = 14;
    public static final int SYSTEM__UUID = 15;
    public static final int SYSTEM__ALL_EXTENSIONS = 16;
    public static final int SYSTEM__CONTAINED_EXTENSIONS = 17;
    public static final int SYSTEM__GAR_PACKAGE = 18;
    public static final int SYSTEM__AR_PACKAGE = 19;
    public static final int SYSTEM__VARIATION_POINT = 20;
    public static final int SYSTEM__ATP_CLASSIFIER = 21;
    public static final int SYSTEM__SYSTEM_DOCUMENTATIONS = 22;
    public static final int SYSTEM__ECU_EXTRACT_VERSION = 23;
    public static final int SYSTEM__FIBEX_ELEMENTS = 24;
    public static final int SYSTEM__MAPPINGS = 25;
    public static final int SYSTEM__PNC_VECTOR_LENGTH = 26;
    public static final int SYSTEM__PNC_VECTOR_OFFSET = 27;
    public static final int SYSTEM__ROOT_SOFTWARE_COMPOSITIONS = 28;
    public static final int SYSTEM__SYSTEM_VERSION = 29;
    public static final int SYSTEM_FEATURE_COUNT = 30;
    public static final int SYSTEM_MAPPING = 2;
    public static final int SYSTEM_MAPPING__GCHECKSUM = 0;
    public static final int SYSTEM_MAPPING__GTIMESTAMP = 1;
    public static final int SYSTEM_MAPPING__CHECKSUM = 2;
    public static final int SYSTEM_MAPPING__TIMESTAMP = 3;
    public static final int SYSTEM_MAPPING__GSHORT_NAME = 4;
    public static final int SYSTEM_MAPPING__SHORT_NAME = 5;
    public static final int SYSTEM_MAPPING__LONG_NAME = 6;
    public static final int SYSTEM_MAPPING__GUUID = 7;
    public static final int SYSTEM_MAPPING__GCATEGORY = 8;
    public static final int SYSTEM_MAPPING__GDESC = 9;
    public static final int SYSTEM_MAPPING__DESC = 10;
    public static final int SYSTEM_MAPPING__CATEGORY = 11;
    public static final int SYSTEM_MAPPING__ADMIN_DATA = 12;
    public static final int SYSTEM_MAPPING__INTRODUCTION = 13;
    public static final int SYSTEM_MAPPING__ANNOTATIONS = 14;
    public static final int SYSTEM_MAPPING__UUID = 15;
    public static final int SYSTEM_MAPPING__ALL_EXTENSIONS = 16;
    public static final int SYSTEM_MAPPING__CONTAINED_EXTENSIONS = 17;
    public static final int SYSTEM_MAPPING__SYSTEM = 18;
    public static final int SYSTEM_MAPPING__DATA_MAPPINGS = 19;
    public static final int SYSTEM_MAPPING__ECU_RESOURCE_MAPPINGS = 20;
    public static final int SYSTEM_MAPPING__MAPPING_CONSTRAINTS = 21;
    public static final int SYSTEM_MAPPING__PNC_MAPPINGS = 22;
    public static final int SYSTEM_MAPPING__RESOURCE_ESTIMATIONS = 23;
    public static final int SYSTEM_MAPPING__SIGNAL_PATH_CONSTRAINTS = 24;
    public static final int SYSTEM_MAPPING__SW_IMPL_MAPPINGS = 25;
    public static final int SYSTEM_MAPPING__SW_MAPPINGS = 26;
    public static final int SYSTEM_MAPPING__VARIATION_POINT = 27;
    public static final int SYSTEM_MAPPING_FEATURE_COUNT = 28;

    public EClass getRootSwCompositionPrototype();

    public EReference getRootSwCompositionPrototype_System();

    public EReference getRootSwCompositionPrototype_CalibrationParameterValueSets();

    public EReference getRootSwCompositionPrototype_FlatMap();

    public EReference getRootSwCompositionPrototype_SoftwareComposition();

    public EReference getRootSwCompositionPrototype_VariationPoint();

    public EClass getSystem();

    public EReference getSystem_SystemDocumentations();

    public EAttribute getSystem_EcuExtractVersion();

    public EReference getSystem_FibexElements();

    public EReference getSystem_Mappings();

    public EAttribute getSystem_PncVectorLength();

    public EAttribute getSystem_PncVectorOffset();

    public EReference getSystem_RootSoftwareCompositions();

    public EAttribute getSystem_SystemVersion();

    public EClass getSystemMapping();

    public EReference getSystemMapping_System();

    public EReference getSystemMapping_DataMappings();

    public EReference getSystemMapping_EcuResourceMappings();

    public EReference getSystemMapping_MappingConstraints();

    public EReference getSystemMapping_PncMappings();

    public EReference getSystemMapping_ResourceEstimations();

    public EReference getSystemMapping_SignalPathConstraints();

    public EReference getSystemMapping_SwImplMappings();

    public EReference getSystemMapping_SwMappings();

    public EReference getSystemMapping_VariationPoint();

    public SystemFactory getSystemFactory();

    public static interface Literals {
        public static final EClass ROOT_SW_COMPOSITION_PROTOTYPE = eINSTANCE.getRootSwCompositionPrototype();
        public static final EReference ROOT_SW_COMPOSITION_PROTOTYPE__SYSTEM = eINSTANCE.getRootSwCompositionPrototype_System();
        public static final EReference ROOT_SW_COMPOSITION_PROTOTYPE__CALIBRATION_PARAMETER_VALUE_SETS = eINSTANCE.getRootSwCompositionPrototype_CalibrationParameterValueSets();
        public static final EReference ROOT_SW_COMPOSITION_PROTOTYPE__FLAT_MAP = eINSTANCE.getRootSwCompositionPrototype_FlatMap();
        public static final EReference ROOT_SW_COMPOSITION_PROTOTYPE__SOFTWARE_COMPOSITION = eINSTANCE.getRootSwCompositionPrototype_SoftwareComposition();
        public static final EReference ROOT_SW_COMPOSITION_PROTOTYPE__VARIATION_POINT = eINSTANCE.getRootSwCompositionPrototype_VariationPoint();
        public static final EClass SYSTEM = eINSTANCE.getSystem();
        public static final EReference SYSTEM__SYSTEM_DOCUMENTATIONS = eINSTANCE.getSystem_SystemDocumentations();
        public static final EAttribute SYSTEM__ECU_EXTRACT_VERSION = eINSTANCE.getSystem_EcuExtractVersion();
        public static final EReference SYSTEM__FIBEX_ELEMENTS = eINSTANCE.getSystem_FibexElements();
        public static final EReference SYSTEM__MAPPINGS = eINSTANCE.getSystem_Mappings();
        public static final EAttribute SYSTEM__PNC_VECTOR_LENGTH = eINSTANCE.getSystem_PncVectorLength();
        public static final EAttribute SYSTEM__PNC_VECTOR_OFFSET = eINSTANCE.getSystem_PncVectorOffset();
        public static final EReference SYSTEM__ROOT_SOFTWARE_COMPOSITIONS = eINSTANCE.getSystem_RootSoftwareCompositions();
        public static final EAttribute SYSTEM__SYSTEM_VERSION = eINSTANCE.getSystem_SystemVersion();
        public static final EClass SYSTEM_MAPPING = eINSTANCE.getSystemMapping();
        public static final EReference SYSTEM_MAPPING__SYSTEM = eINSTANCE.getSystemMapping_System();
        public static final EReference SYSTEM_MAPPING__DATA_MAPPINGS = eINSTANCE.getSystemMapping_DataMappings();
        public static final EReference SYSTEM_MAPPING__ECU_RESOURCE_MAPPINGS = eINSTANCE.getSystemMapping_EcuResourceMappings();
        public static final EReference SYSTEM_MAPPING__MAPPING_CONSTRAINTS = eINSTANCE.getSystemMapping_MappingConstraints();
        public static final EReference SYSTEM_MAPPING__PNC_MAPPINGS = eINSTANCE.getSystemMapping_PncMappings();
        public static final EReference SYSTEM_MAPPING__RESOURCE_ESTIMATIONS = eINSTANCE.getSystemMapping_ResourceEstimations();
        public static final EReference SYSTEM_MAPPING__SIGNAL_PATH_CONSTRAINTS = eINSTANCE.getSystemMapping_SignalPathConstraints();
        public static final EReference SYSTEM_MAPPING__SW_IMPL_MAPPINGS = eINSTANCE.getSystemMapping_SwImplMappings();
        public static final EReference SYSTEM_MAPPING__SW_MAPPINGS = eINSTANCE.getSystemMapping_SwMappings();
        public static final EReference SYSTEM_MAPPING__VARIATION_POINT = eINSTANCE.getSystemMapping_VariationPoint();
    }
}

