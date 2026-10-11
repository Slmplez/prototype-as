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
package autosar3x.system.swmapping;

import autosar3x.system.swmapping.SwmappingFactory;
import autosar3x.system.swmapping.impl.SwmappingPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SwmappingPackage
extends EPackage {
    public static final String eNAME = "swmapping";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/sw";
    public static final String eNS_PREFIX = "";
    public static final SwmappingPackage eINSTANCE = SwmappingPackageImpl.init();
    public static final int MAPPING_CONSTRAINT = 1;
    public static final int MAPPING_CONSTRAINT__GCHECKSUM = 0;
    public static final int MAPPING_CONSTRAINT__GTIMESTAMP = 1;
    public static final int MAPPING_CONSTRAINT__CHECKSUM = 2;
    public static final int MAPPING_CONSTRAINT__TIMESTAMP = 3;
    public static final int MAPPING_CONSTRAINT__SYSTEM_MAPPING = 4;
    public static final int MAPPING_CONSTRAINT_FEATURE_COUNT = 5;
    public static final int COMPONENT_CLUSTERING = 0;
    public static final int COMPONENT_CLUSTERING__GCHECKSUM = 0;
    public static final int COMPONENT_CLUSTERING__GTIMESTAMP = 1;
    public static final int COMPONENT_CLUSTERING__CHECKSUM = 2;
    public static final int COMPONENT_CLUSTERING__TIMESTAMP = 3;
    public static final int COMPONENT_CLUSTERING__SYSTEM_MAPPING = 4;
    public static final int COMPONENT_CLUSTERING__CLUSTERED_COMPONENTS = 5;
    public static final int COMPONENT_CLUSTERING_FEATURE_COUNT = 6;
    public static final int COMPONENT_SEPARATION = 2;
    public static final int COMPONENT_SEPARATION__GCHECKSUM = 0;
    public static final int COMPONENT_SEPARATION__GTIMESTAMP = 1;
    public static final int COMPONENT_SEPARATION__CHECKSUM = 2;
    public static final int COMPONENT_SEPARATION__TIMESTAMP = 3;
    public static final int COMPONENT_SEPARATION__SYSTEM_MAPPING = 4;
    public static final int COMPONENT_SEPARATION__SEPARATED_COMPONENTS = 5;
    public static final int COMPONENT_SEPARATION_FEATURE_COUNT = 6;
    public static final int ECU_RESOURCE_ESTIMATION = 3;
    public static final int ECU_RESOURCE_ESTIMATION__GCHECKSUM = 0;
    public static final int ECU_RESOURCE_ESTIMATION__GTIMESTAMP = 1;
    public static final int ECU_RESOURCE_ESTIMATION__CHECKSUM = 2;
    public static final int ECU_RESOURCE_ESTIMATION__TIMESTAMP = 3;
    public static final int ECU_RESOURCE_ESTIMATION__SYSTEM_MAPPING = 4;
    public static final int ECU_RESOURCE_ESTIMATION__BSW_RESOURCE_ESTIMATION = 5;
    public static final int ECU_RESOURCE_ESTIMATION__ECU_INSTANCE = 6;
    public static final int ECU_RESOURCE_ESTIMATION__RTE_RESOURCE_ESTIMATION = 7;
    public static final int ECU_RESOURCE_ESTIMATION__SW_COMP_TO_ECU_MAPPINGS = 8;
    public static final int ECU_RESOURCE_ESTIMATION_FEATURE_COUNT = 9;
    public static final int SWC_TO_ECU_MAPPING = 4;
    public static final int SWC_TO_ECU_MAPPING__GCHECKSUM = 0;
    public static final int SWC_TO_ECU_MAPPING__GTIMESTAMP = 1;
    public static final int SWC_TO_ECU_MAPPING__CHECKSUM = 2;
    public static final int SWC_TO_ECU_MAPPING__TIMESTAMP = 3;
    public static final int SWC_TO_ECU_MAPPING__GSHORT_NAME = 4;
    public static final int SWC_TO_ECU_MAPPING__GUUID = 5;
    public static final int SWC_TO_ECU_MAPPING__GCATEGORY = 6;
    public static final int SWC_TO_ECU_MAPPING__GDESC = 7;
    public static final int SWC_TO_ECU_MAPPING__SHORT_NAME = 8;
    public static final int SWC_TO_ECU_MAPPING__LONG_NAME = 9;
    public static final int SWC_TO_ECU_MAPPING__DESC = 10;
    public static final int SWC_TO_ECU_MAPPING__CATEGORY = 11;
    public static final int SWC_TO_ECU_MAPPING__ADMIN_DATA = 12;
    public static final int SWC_TO_ECU_MAPPING__INTRODUCTION = 13;
    public static final int SWC_TO_ECU_MAPPING__UUID = 14;
    public static final int SWC_TO_ECU_MAPPING__ALL_EXTENSIONS = 15;
    public static final int SWC_TO_ECU_MAPPING__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_TO_ECU_MAPPING__SYSTEM_MAPPING = 17;
    public static final int SWC_TO_ECU_MAPPING__COMPONENTS = 18;
    public static final int SWC_TO_ECU_MAPPING__ECU_INSTANCE = 19;
    public static final int SWC_TO_ECU_MAPPING_FEATURE_COUNT = 20;
    public static final int PNC_MAPPING = 5;
    public static final int PNC_MAPPING__GCHECKSUM = 0;
    public static final int PNC_MAPPING__GTIMESTAMP = 1;
    public static final int PNC_MAPPING__CHECKSUM = 2;
    public static final int PNC_MAPPING__TIMESTAMP = 3;
    public static final int PNC_MAPPING__GSHORT_NAME = 4;
    public static final int PNC_MAPPING__GUUID = 5;
    public static final int PNC_MAPPING__GCATEGORY = 6;
    public static final int PNC_MAPPING__GDESC = 7;
    public static final int PNC_MAPPING__SHORT_NAME = 8;
    public static final int PNC_MAPPING__LONG_NAME = 9;
    public static final int PNC_MAPPING__DESC = 10;
    public static final int PNC_MAPPING__CATEGORY = 11;
    public static final int PNC_MAPPING__ADMIN_DATA = 12;
    public static final int PNC_MAPPING__INTRODUCTION = 13;
    public static final int PNC_MAPPING__UUID = 14;
    public static final int PNC_MAPPING__ALL_EXTENSIONS = 15;
    public static final int PNC_MAPPING__CONTAINED_EXTENSIONS = 16;
    public static final int PNC_MAPPING__SYSTEM_MAPPING = 17;
    public static final int PNC_MAPPING__PNC_GROUPS = 18;
    public static final int PNC_MAPPING__PNC_IDENTIFIER = 19;
    public static final int PNC_MAPPING__VFCS = 20;
    public static final int PNC_MAPPING__WAKEUP_FRAMES = 21;
    public static final int PNC_MAPPING_FEATURE_COUNT = 22;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT = 6;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__GCHECKSUM = 0;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__GTIMESTAMP = 1;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__CHECKSUM = 2;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__TIMESTAMP = 3;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__SYSTEM_MAPPING = 4;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__COMPONENTS = 5;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__ECU_INSTANCES = 6;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__SWC_TO_ECU_MAPPING_CONSTRAINT_TYPE = 7;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT_FEATURE_COUNT = 8;
    public static final int SWC_TO_IMPL_MAPPING = 7;
    public static final int SWC_TO_IMPL_MAPPING__GCHECKSUM = 0;
    public static final int SWC_TO_IMPL_MAPPING__GTIMESTAMP = 1;
    public static final int SWC_TO_IMPL_MAPPING__CHECKSUM = 2;
    public static final int SWC_TO_IMPL_MAPPING__TIMESTAMP = 3;
    public static final int SWC_TO_IMPL_MAPPING__GSHORT_NAME = 4;
    public static final int SWC_TO_IMPL_MAPPING__GUUID = 5;
    public static final int SWC_TO_IMPL_MAPPING__GCATEGORY = 6;
    public static final int SWC_TO_IMPL_MAPPING__GDESC = 7;
    public static final int SWC_TO_IMPL_MAPPING__SHORT_NAME = 8;
    public static final int SWC_TO_IMPL_MAPPING__LONG_NAME = 9;
    public static final int SWC_TO_IMPL_MAPPING__DESC = 10;
    public static final int SWC_TO_IMPL_MAPPING__CATEGORY = 11;
    public static final int SWC_TO_IMPL_MAPPING__ADMIN_DATA = 12;
    public static final int SWC_TO_IMPL_MAPPING__INTRODUCTION = 13;
    public static final int SWC_TO_IMPL_MAPPING__UUID = 14;
    public static final int SWC_TO_IMPL_MAPPING__ALL_EXTENSIONS = 15;
    public static final int SWC_TO_IMPL_MAPPING__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_TO_IMPL_MAPPING__SYSTEM_MAPPING = 17;
    public static final int SWC_TO_IMPL_MAPPING__COMPONENT_IMPLEMENTATION = 18;
    public static final int SWC_TO_IMPL_MAPPING__COMPONENTS = 19;
    public static final int SWC_TO_IMPL_MAPPING_FEATURE_COUNT = 20;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT_TYPE = 8;

    public EClass getComponentClustering();

    public EReference getComponentClustering_ClusteredComponents();

    public EClass getMappingConstraint();

    public EReference getMappingConstraint_SystemMapping();

    public EClass getComponentSeparation();

    public EReference getComponentSeparation_SeparatedComponents();

    public EClass getEcuResourceEstimation();

    public EReference getEcuResourceEstimation_SystemMapping();

    public EReference getEcuResourceEstimation_BswResourceEstimation();

    public EReference getEcuResourceEstimation_EcuInstance();

    public EReference getEcuResourceEstimation_RteResourceEstimation();

    public EReference getEcuResourceEstimation_SwCompToEcuMappings();

    public EClass getSwcToEcuMapping();

    public EReference getSwcToEcuMapping_SystemMapping();

    public EReference getSwcToEcuMapping_Components();

    public EReference getSwcToEcuMapping_EcuInstance();

    public EClass getPncMapping();

    public EReference getPncMapping_SystemMapping();

    public EReference getPncMapping_PncGroups();

    public EAttribute getPncMapping_PncIdentifier();

    public EReference getPncMapping_Vfcs();

    public EReference getPncMapping_WakeupFrames();

    public EClass getSwcToEcuMappingConstraint();

    public EReference getSwcToEcuMappingConstraint_Components();

    public EReference getSwcToEcuMappingConstraint_EcuInstances();

    public EAttribute getSwcToEcuMappingConstraint_SwcToEcuMappingConstraintType();

    public EClass getSwcToImplMapping();

    public EReference getSwcToImplMapping_SystemMapping();

    public EReference getSwcToImplMapping_ComponentImplementation();

    public EReference getSwcToImplMapping_Components();

    public EEnum getSwcToEcuMappingConstraintType();

    public SwmappingFactory getSwmappingFactory();

    public static interface Literals {
        public static final EClass COMPONENT_CLUSTERING = eINSTANCE.getComponentClustering();
        public static final EReference COMPONENT_CLUSTERING__CLUSTERED_COMPONENTS = eINSTANCE.getComponentClustering_ClusteredComponents();
        public static final EClass MAPPING_CONSTRAINT = eINSTANCE.getMappingConstraint();
        public static final EReference MAPPING_CONSTRAINT__SYSTEM_MAPPING = eINSTANCE.getMappingConstraint_SystemMapping();
        public static final EClass COMPONENT_SEPARATION = eINSTANCE.getComponentSeparation();
        public static final EReference COMPONENT_SEPARATION__SEPARATED_COMPONENTS = eINSTANCE.getComponentSeparation_SeparatedComponents();
        public static final EClass ECU_RESOURCE_ESTIMATION = eINSTANCE.getEcuResourceEstimation();
        public static final EReference ECU_RESOURCE_ESTIMATION__SYSTEM_MAPPING = eINSTANCE.getEcuResourceEstimation_SystemMapping();
        public static final EReference ECU_RESOURCE_ESTIMATION__BSW_RESOURCE_ESTIMATION = eINSTANCE.getEcuResourceEstimation_BswResourceEstimation();
        public static final EReference ECU_RESOURCE_ESTIMATION__ECU_INSTANCE = eINSTANCE.getEcuResourceEstimation_EcuInstance();
        public static final EReference ECU_RESOURCE_ESTIMATION__RTE_RESOURCE_ESTIMATION = eINSTANCE.getEcuResourceEstimation_RteResourceEstimation();
        public static final EReference ECU_RESOURCE_ESTIMATION__SW_COMP_TO_ECU_MAPPINGS = eINSTANCE.getEcuResourceEstimation_SwCompToEcuMappings();
        public static final EClass SWC_TO_ECU_MAPPING = eINSTANCE.getSwcToEcuMapping();
        public static final EReference SWC_TO_ECU_MAPPING__SYSTEM_MAPPING = eINSTANCE.getSwcToEcuMapping_SystemMapping();
        public static final EReference SWC_TO_ECU_MAPPING__COMPONENTS = eINSTANCE.getSwcToEcuMapping_Components();
        public static final EReference SWC_TO_ECU_MAPPING__ECU_INSTANCE = eINSTANCE.getSwcToEcuMapping_EcuInstance();
        public static final EClass PNC_MAPPING = eINSTANCE.getPncMapping();
        public static final EReference PNC_MAPPING__SYSTEM_MAPPING = eINSTANCE.getPncMapping_SystemMapping();
        public static final EReference PNC_MAPPING__PNC_GROUPS = eINSTANCE.getPncMapping_PncGroups();
        public static final EAttribute PNC_MAPPING__PNC_IDENTIFIER = eINSTANCE.getPncMapping_PncIdentifier();
        public static final EReference PNC_MAPPING__VFCS = eINSTANCE.getPncMapping_Vfcs();
        public static final EReference PNC_MAPPING__WAKEUP_FRAMES = eINSTANCE.getPncMapping_WakeupFrames();
        public static final EClass SWC_TO_ECU_MAPPING_CONSTRAINT = eINSTANCE.getSwcToEcuMappingConstraint();
        public static final EReference SWC_TO_ECU_MAPPING_CONSTRAINT__COMPONENTS = eINSTANCE.getSwcToEcuMappingConstraint_Components();
        public static final EReference SWC_TO_ECU_MAPPING_CONSTRAINT__ECU_INSTANCES = eINSTANCE.getSwcToEcuMappingConstraint_EcuInstances();
        public static final EAttribute SWC_TO_ECU_MAPPING_CONSTRAINT__SWC_TO_ECU_MAPPING_CONSTRAINT_TYPE = eINSTANCE.getSwcToEcuMappingConstraint_SwcToEcuMappingConstraintType();
        public static final EClass SWC_TO_IMPL_MAPPING = eINSTANCE.getSwcToImplMapping();
        public static final EReference SWC_TO_IMPL_MAPPING__SYSTEM_MAPPING = eINSTANCE.getSwcToImplMapping_SystemMapping();
        public static final EReference SWC_TO_IMPL_MAPPING__COMPONENT_IMPLEMENTATION = eINSTANCE.getSwcToImplMapping_ComponentImplementation();
        public static final EReference SWC_TO_IMPL_MAPPING__COMPONENTS = eINSTANCE.getSwcToImplMapping_Components();
        public static final EEnum SWC_TO_ECU_MAPPING_CONSTRAINT_TYPE = eINSTANCE.getSwcToEcuMappingConstraintType();
    }
}

