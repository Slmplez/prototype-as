/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.system;

import autosar3x.system.SystemFactory;
import autosar3x.system.impl.SystemPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SystemPackage
extends EPackage {
    public static final String eNAME = "system";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s";
    public static final String eNS_PREFIX = "";
    public static final SystemPackage eINSTANCE = SystemPackageImpl.init();
    public static final int SOFTWARE_COMPOSITION = 0;
    public static final int SOFTWARE_COMPOSITION__GCHECKSUM = 0;
    public static final int SOFTWARE_COMPOSITION__GTIMESTAMP = 1;
    public static final int SOFTWARE_COMPOSITION__CHECKSUM = 2;
    public static final int SOFTWARE_COMPOSITION__TIMESTAMP = 3;
    public static final int SOFTWARE_COMPOSITION__GSHORT_NAME = 4;
    public static final int SOFTWARE_COMPOSITION__GUUID = 5;
    public static final int SOFTWARE_COMPOSITION__GCATEGORY = 6;
    public static final int SOFTWARE_COMPOSITION__GDESC = 7;
    public static final int SOFTWARE_COMPOSITION__SHORT_NAME = 8;
    public static final int SOFTWARE_COMPOSITION__LONG_NAME = 9;
    public static final int SOFTWARE_COMPOSITION__DESC = 10;
    public static final int SOFTWARE_COMPOSITION__CATEGORY = 11;
    public static final int SOFTWARE_COMPOSITION__ADMIN_DATA = 12;
    public static final int SOFTWARE_COMPOSITION__INTRODUCTION = 13;
    public static final int SOFTWARE_COMPOSITION__UUID = 14;
    public static final int SOFTWARE_COMPOSITION__ALL_EXTENSIONS = 15;
    public static final int SOFTWARE_COMPOSITION__CONTAINED_EXTENSIONS = 16;
    public static final int SOFTWARE_COMPOSITION__SYSTEM = 17;
    public static final int SOFTWARE_COMPOSITION__SOFTWARE_COMPOSITION = 18;
    public static final int SOFTWARE_COMPOSITION_FEATURE_COUNT = 19;
    public static final int SYSTEM_MAPPING = 1;
    public static final int SYSTEM_MAPPING__GCHECKSUM = 0;
    public static final int SYSTEM_MAPPING__GTIMESTAMP = 1;
    public static final int SYSTEM_MAPPING__CHECKSUM = 2;
    public static final int SYSTEM_MAPPING__TIMESTAMP = 3;
    public static final int SYSTEM_MAPPING__GSHORT_NAME = 4;
    public static final int SYSTEM_MAPPING__GUUID = 5;
    public static final int SYSTEM_MAPPING__GCATEGORY = 6;
    public static final int SYSTEM_MAPPING__GDESC = 7;
    public static final int SYSTEM_MAPPING__SHORT_NAME = 8;
    public static final int SYSTEM_MAPPING__LONG_NAME = 9;
    public static final int SYSTEM_MAPPING__DESC = 10;
    public static final int SYSTEM_MAPPING__CATEGORY = 11;
    public static final int SYSTEM_MAPPING__ADMIN_DATA = 12;
    public static final int SYSTEM_MAPPING__INTRODUCTION = 13;
    public static final int SYSTEM_MAPPING__UUID = 14;
    public static final int SYSTEM_MAPPING__ALL_EXTENSIONS = 15;
    public static final int SYSTEM_MAPPING__CONTAINED_EXTENSIONS = 16;
    public static final int SYSTEM_MAPPING__SYSTEM = 17;
    public static final int SYSTEM_MAPPING__DATA_MAPPINGS = 18;
    public static final int SYSTEM_MAPPING__ECU_RESOURCE_MAPPINGS = 19;
    public static final int SYSTEM_MAPPING__MAPPING_CONSTRAINTS = 20;
    public static final int SYSTEM_MAPPING__PNC_MAPPINGS = 21;
    public static final int SYSTEM_MAPPING__RESOURCE_ESTIMATIONS = 22;
    public static final int SYSTEM_MAPPING__SIGNAL_PATH_CONSTRAINTS = 23;
    public static final int SYSTEM_MAPPING__SW_IMPL_MAPPINGS = 24;
    public static final int SYSTEM_MAPPING__SW_MAPPINGS = 25;
    public static final int SYSTEM_MAPPING_FEATURE_COUNT = 26;
    public static final int SYSTEM = 2;
    public static final int SYSTEM__GCHECKSUM = 0;
    public static final int SYSTEM__GTIMESTAMP = 1;
    public static final int SYSTEM__CHECKSUM = 2;
    public static final int SYSTEM__TIMESTAMP = 3;
    public static final int SYSTEM__GSHORT_NAME = 4;
    public static final int SYSTEM__GUUID = 5;
    public static final int SYSTEM__GCATEGORY = 6;
    public static final int SYSTEM__GDESC = 7;
    public static final int SYSTEM__SHORT_NAME = 8;
    public static final int SYSTEM__LONG_NAME = 9;
    public static final int SYSTEM__DESC = 10;
    public static final int SYSTEM__CATEGORY = 11;
    public static final int SYSTEM__ADMIN_DATA = 12;
    public static final int SYSTEM__INTRODUCTION = 13;
    public static final int SYSTEM__UUID = 14;
    public static final int SYSTEM__ALL_EXTENSIONS = 15;
    public static final int SYSTEM__CONTAINED_EXTENSIONS = 16;
    public static final int SYSTEM__GAR_PACKAGE = 17;
    public static final int SYSTEM__AR_PACKAGE = 18;
    public static final int SYSTEM__ECU_EXTRACT_VERSION = 19;
    public static final int SYSTEM__FIBEX_ELEMENTS = 20;
    public static final int SYSTEM__MAPPING = 21;
    public static final int SYSTEM__PNC_VECTOR_LENGTH = 22;
    public static final int SYSTEM__PNC_VECTOR_OFFSET = 23;
    public static final int SYSTEM__SOFTWARE_COMPOSITION = 24;
    public static final int SYSTEM__SYSTEM_VERSION = 25;
    public static final int SYSTEM_FEATURE_COUNT = 26;

    public EClass getSoftwareComposition();

    public EReference getSoftwareComposition_System();

    public EReference getSoftwareComposition_SoftwareComposition();

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

    public EClass getSystem();

    public EAttribute getSystem_EcuExtractVersion();

    public EReference getSystem_FibexElements();

    public EReference getSystem_Mapping();

    public EAttribute getSystem_PncVectorLength();

    public EAttribute getSystem_PncVectorOffset();

    public EReference getSystem_SoftwareComposition();

    public EAttribute getSystem_SystemVersion();

    public SystemFactory getSystemFactory();

    public static interface Literals {
        public static final EClass SOFTWARE_COMPOSITION = eINSTANCE.getSoftwareComposition();
        public static final EReference SOFTWARE_COMPOSITION__SYSTEM = eINSTANCE.getSoftwareComposition_System();
        public static final EReference SOFTWARE_COMPOSITION__SOFTWARE_COMPOSITION = eINSTANCE.getSoftwareComposition_SoftwareComposition();
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
        public static final EClass SYSTEM = eINSTANCE.getSystem();
        public static final EAttribute SYSTEM__ECU_EXTRACT_VERSION = eINSTANCE.getSystem_EcuExtractVersion();
        public static final EReference SYSTEM__FIBEX_ELEMENTS = eINSTANCE.getSystem_FibexElements();
        public static final EReference SYSTEM__MAPPING = eINSTANCE.getSystem_Mapping();
        public static final EAttribute SYSTEM__PNC_VECTOR_LENGTH = eINSTANCE.getSystem_PncVectorLength();
        public static final EAttribute SYSTEM__PNC_VECTOR_OFFSET = eINSTANCE.getSystem_PncVectorOffset();
        public static final EReference SYSTEM__SOFTWARE_COMPOSITION = eINSTANCE.getSystem_SoftwareComposition();
        public static final EAttribute SYSTEM__SYSTEM_VERSION = eINSTANCE.getSystem_SystemVersion();
    }
}

