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
package autosar40.system.swmapping;

import autosar40.system.swmapping.SwmappingFactory;
import autosar40.system.swmapping.impl.SwmappingPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SwmappingPackage
extends EPackage {
    public static final String eNAME = "swmapping";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/sw";
    public static final String eNS_PREFIX = "";
    public static final SwmappingPackage eINSTANCE = SwmappingPackageImpl.init();
    public static final int MAPPING_CONSTRAINT = 1;
    public static final int MAPPING_CONSTRAINT__GCHECKSUM = 0;
    public static final int MAPPING_CONSTRAINT__GTIMESTAMP = 1;
    public static final int MAPPING_CONSTRAINT__CHECKSUM = 2;
    public static final int MAPPING_CONSTRAINT__TIMESTAMP = 3;
    public static final int MAPPING_CONSTRAINT__SYSTEM_MAPPING = 4;
    public static final int MAPPING_CONSTRAINT__INTRODUCTION = 5;
    public static final int MAPPING_CONSTRAINT__VARIATION_POINT = 6;
    public static final int MAPPING_CONSTRAINT_FEATURE_COUNT = 7;
    public static final int COMPONENT_CLUSTERING = 0;
    public static final int COMPONENT_CLUSTERING__GCHECKSUM = 0;
    public static final int COMPONENT_CLUSTERING__GTIMESTAMP = 1;
    public static final int COMPONENT_CLUSTERING__CHECKSUM = 2;
    public static final int COMPONENT_CLUSTERING__TIMESTAMP = 3;
    public static final int COMPONENT_CLUSTERING__SYSTEM_MAPPING = 4;
    public static final int COMPONENT_CLUSTERING__INTRODUCTION = 5;
    public static final int COMPONENT_CLUSTERING__VARIATION_POINT = 6;
    public static final int COMPONENT_CLUSTERING__CLUSTERED_COMPONENTS = 7;
    public static final int COMPONENT_CLUSTERING_FEATURE_COUNT = 8;
    public static final int COMPONENT_SEPARATION = 2;
    public static final int COMPONENT_SEPARATION__GCHECKSUM = 0;
    public static final int COMPONENT_SEPARATION__GTIMESTAMP = 1;
    public static final int COMPONENT_SEPARATION__CHECKSUM = 2;
    public static final int COMPONENT_SEPARATION__TIMESTAMP = 3;
    public static final int COMPONENT_SEPARATION__SYSTEM_MAPPING = 4;
    public static final int COMPONENT_SEPARATION__INTRODUCTION = 5;
    public static final int COMPONENT_SEPARATION__VARIATION_POINT = 6;
    public static final int COMPONENT_SEPARATION__SEPARATED_COMPONENTS = 7;
    public static final int COMPONENT_SEPARATION_FEATURE_COUNT = 8;
    public static final int ECU_PARTITION = 3;
    public static final int ECU_PARTITION__GCHECKSUM = 0;
    public static final int ECU_PARTITION__GTIMESTAMP = 1;
    public static final int ECU_PARTITION__CHECKSUM = 2;
    public static final int ECU_PARTITION__TIMESTAMP = 3;
    public static final int ECU_PARTITION__GSHORT_NAME = 4;
    public static final int ECU_PARTITION__SHORT_NAME = 5;
    public static final int ECU_PARTITION__LONG_NAME = 6;
    public static final int ECU_PARTITION__GUUID = 7;
    public static final int ECU_PARTITION__GCATEGORY = 8;
    public static final int ECU_PARTITION__GDESC = 9;
    public static final int ECU_PARTITION__DESC = 10;
    public static final int ECU_PARTITION__CATEGORY = 11;
    public static final int ECU_PARTITION__ADMIN_DATA = 12;
    public static final int ECU_PARTITION__INTRODUCTION = 13;
    public static final int ECU_PARTITION__ANNOTATIONS = 14;
    public static final int ECU_PARTITION__UUID = 15;
    public static final int ECU_PARTITION__ALL_EXTENSIONS = 16;
    public static final int ECU_PARTITION__CONTAINED_EXTENSIONS = 17;
    public static final int ECU_PARTITION__ECU_INSTANCE = 18;
    public static final int ECU_PARTITION__EXEC_IN_USER_MODE = 19;
    public static final int ECU_PARTITION_FEATURE_COUNT = 20;
    public static final int SWC_TO_ECU_MAPPING = 4;
    public static final int SWC_TO_ECU_MAPPING__GCHECKSUM = 0;
    public static final int SWC_TO_ECU_MAPPING__GTIMESTAMP = 1;
    public static final int SWC_TO_ECU_MAPPING__CHECKSUM = 2;
    public static final int SWC_TO_ECU_MAPPING__TIMESTAMP = 3;
    public static final int SWC_TO_ECU_MAPPING__GSHORT_NAME = 4;
    public static final int SWC_TO_ECU_MAPPING__SHORT_NAME = 5;
    public static final int SWC_TO_ECU_MAPPING__LONG_NAME = 6;
    public static final int SWC_TO_ECU_MAPPING__GUUID = 7;
    public static final int SWC_TO_ECU_MAPPING__GCATEGORY = 8;
    public static final int SWC_TO_ECU_MAPPING__GDESC = 9;
    public static final int SWC_TO_ECU_MAPPING__DESC = 10;
    public static final int SWC_TO_ECU_MAPPING__CATEGORY = 11;
    public static final int SWC_TO_ECU_MAPPING__ADMIN_DATA = 12;
    public static final int SWC_TO_ECU_MAPPING__INTRODUCTION = 13;
    public static final int SWC_TO_ECU_MAPPING__ANNOTATIONS = 14;
    public static final int SWC_TO_ECU_MAPPING__UUID = 15;
    public static final int SWC_TO_ECU_MAPPING__ALL_EXTENSIONS = 16;
    public static final int SWC_TO_ECU_MAPPING__CONTAINED_EXTENSIONS = 17;
    public static final int SWC_TO_ECU_MAPPING__SYSTEM_MAPPING = 18;
    public static final int SWC_TO_ECU_MAPPING__COMPONENTS = 19;
    public static final int SWC_TO_ECU_MAPPING__CONTROLLED_HW_ELEMENT = 20;
    public static final int SWC_TO_ECU_MAPPING__ECU_INSTANCE = 21;
    public static final int SWC_TO_ECU_MAPPING__PARTITION = 22;
    public static final int SWC_TO_ECU_MAPPING__PROCESSING_UNIT = 23;
    public static final int SWC_TO_ECU_MAPPING__VARIATION_POINT = 24;
    public static final int SWC_TO_ECU_MAPPING_FEATURE_COUNT = 25;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT = 5;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__GCHECKSUM = 0;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__GTIMESTAMP = 1;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__CHECKSUM = 2;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__TIMESTAMP = 3;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__SYSTEM_MAPPING = 4;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__INTRODUCTION = 5;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__VARIATION_POINT = 6;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__COMPONENT = 7;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__ECU_INSTANCES = 8;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT__SWC_TO_ECU_MAPPING_CONSTRAINT_TYPE = 9;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT_FEATURE_COUNT = 10;
    public static final int SWC_TO_IMPL_MAPPING = 6;
    public static final int SWC_TO_IMPL_MAPPING__GCHECKSUM = 0;
    public static final int SWC_TO_IMPL_MAPPING__GTIMESTAMP = 1;
    public static final int SWC_TO_IMPL_MAPPING__CHECKSUM = 2;
    public static final int SWC_TO_IMPL_MAPPING__TIMESTAMP = 3;
    public static final int SWC_TO_IMPL_MAPPING__GSHORT_NAME = 4;
    public static final int SWC_TO_IMPL_MAPPING__SHORT_NAME = 5;
    public static final int SWC_TO_IMPL_MAPPING__LONG_NAME = 6;
    public static final int SWC_TO_IMPL_MAPPING__GUUID = 7;
    public static final int SWC_TO_IMPL_MAPPING__GCATEGORY = 8;
    public static final int SWC_TO_IMPL_MAPPING__GDESC = 9;
    public static final int SWC_TO_IMPL_MAPPING__DESC = 10;
    public static final int SWC_TO_IMPL_MAPPING__CATEGORY = 11;
    public static final int SWC_TO_IMPL_MAPPING__ADMIN_DATA = 12;
    public static final int SWC_TO_IMPL_MAPPING__INTRODUCTION = 13;
    public static final int SWC_TO_IMPL_MAPPING__ANNOTATIONS = 14;
    public static final int SWC_TO_IMPL_MAPPING__UUID = 15;
    public static final int SWC_TO_IMPL_MAPPING__ALL_EXTENSIONS = 16;
    public static final int SWC_TO_IMPL_MAPPING__CONTAINED_EXTENSIONS = 17;
    public static final int SWC_TO_IMPL_MAPPING__SYSTEM_MAPPING = 18;
    public static final int SWC_TO_IMPL_MAPPING__COMPONENT_IMPLEMENTATION = 19;
    public static final int SWC_TO_IMPL_MAPPING__COMPONENTS = 20;
    public static final int SWC_TO_IMPL_MAPPING__VARIATION_POINT = 21;
    public static final int SWC_TO_IMPL_MAPPING_FEATURE_COUNT = 22;
    public static final int ECU_RESOURCE_ESTIMATION = 7;
    public static final int ECU_RESOURCE_ESTIMATION__GCHECKSUM = 0;
    public static final int ECU_RESOURCE_ESTIMATION__GTIMESTAMP = 1;
    public static final int ECU_RESOURCE_ESTIMATION__CHECKSUM = 2;
    public static final int ECU_RESOURCE_ESTIMATION__TIMESTAMP = 3;
    public static final int ECU_RESOURCE_ESTIMATION__SYSTEM_MAPPING = 4;
    public static final int ECU_RESOURCE_ESTIMATION__INTRODUCTION = 5;
    public static final int ECU_RESOURCE_ESTIMATION__BSW_RESOURCE_ESTIMATION = 6;
    public static final int ECU_RESOURCE_ESTIMATION__ECU_INSTANCE = 7;
    public static final int ECU_RESOURCE_ESTIMATION__RTE_RESOURCE_ESTIMATION = 8;
    public static final int ECU_RESOURCE_ESTIMATION__SW_COMP_TO_ECU_MAPPINGS = 9;
    public static final int ECU_RESOURCE_ESTIMATION__VARIATION_POINT = 10;
    public static final int ECU_RESOURCE_ESTIMATION_FEATURE_COUNT = 11;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT_TYPE = 8;

    public EClass getComponentClustering();

    public EReference getComponentClustering_ClusteredComponents();

    public EClass getMappingConstraint();

    public EReference getMappingConstraint_SystemMapping();

    public EReference getMappingConstraint_Introduction();

    public EReference getMappingConstraint_VariationPoint();

    public EClass getComponentSeparation();

    public EReference getComponentSeparation_SeparatedComponents();

    public EClass getEcuPartition();

    public EReference getEcuPartition_EcuInstance();

    public EAttribute getEcuPartition_ExecInUserMode();

    public EClass getSwcToEcuMapping();

    public EReference getSwcToEcuMapping_SystemMapping();

    public EReference getSwcToEcuMapping_Components();

    public EReference getSwcToEcuMapping_ControlledHwElement();

    public EReference getSwcToEcuMapping_EcuInstance();

    public EReference getSwcToEcuMapping_Partition();

    public EReference getSwcToEcuMapping_ProcessingUnit();

    public EReference getSwcToEcuMapping_VariationPoint();

    public EClass getSwcToEcuMappingConstraint();

    public EReference getSwcToEcuMappingConstraint_Component();

    public EReference getSwcToEcuMappingConstraint_EcuInstances();

    public EAttribute getSwcToEcuMappingConstraint_SwcToEcuMappingConstraintType();

    public EClass getSwcToImplMapping();

    public EReference getSwcToImplMapping_SystemMapping();

    public EReference getSwcToImplMapping_ComponentImplementation();

    public EReference getSwcToImplMapping_Components();

    public EReference getSwcToImplMapping_VariationPoint();

    public EClass getEcuResourceEstimation();

    public EReference getEcuResourceEstimation_SystemMapping();

    public EReference getEcuResourceEstimation_Introduction();

    public EReference getEcuResourceEstimation_BswResourceEstimation();

    public EReference getEcuResourceEstimation_EcuInstance();

    public EReference getEcuResourceEstimation_RteResourceEstimation();

    public EReference getEcuResourceEstimation_SwCompToEcuMappings();

    public EReference getEcuResourceEstimation_VariationPoint();

    public EEnum getSwcToEcuMappingConstraintType();

    public SwmappingFactory getSwmappingFactory();

    public static interface Literals {
        public static final EClass COMPONENT_CLUSTERING = eINSTANCE.getComponentClustering();
        public static final EReference COMPONENT_CLUSTERING__CLUSTERED_COMPONENTS = eINSTANCE.getComponentClustering_ClusteredComponents();
        public static final EClass MAPPING_CONSTRAINT = eINSTANCE.getMappingConstraint();
        public static final EReference MAPPING_CONSTRAINT__SYSTEM_MAPPING = eINSTANCE.getMappingConstraint_SystemMapping();
        public static final EReference MAPPING_CONSTRAINT__INTRODUCTION = eINSTANCE.getMappingConstraint_Introduction();
        public static final EReference MAPPING_CONSTRAINT__VARIATION_POINT = eINSTANCE.getMappingConstraint_VariationPoint();
        public static final EClass COMPONENT_SEPARATION = eINSTANCE.getComponentSeparation();
        public static final EReference COMPONENT_SEPARATION__SEPARATED_COMPONENTS = eINSTANCE.getComponentSeparation_SeparatedComponents();
        public static final EClass ECU_PARTITION = eINSTANCE.getEcuPartition();
        public static final EReference ECU_PARTITION__ECU_INSTANCE = eINSTANCE.getEcuPartition_EcuInstance();
        public static final EAttribute ECU_PARTITION__EXEC_IN_USER_MODE = eINSTANCE.getEcuPartition_ExecInUserMode();
        public static final EClass SWC_TO_ECU_MAPPING = eINSTANCE.getSwcToEcuMapping();
        public static final EReference SWC_TO_ECU_MAPPING__SYSTEM_MAPPING = eINSTANCE.getSwcToEcuMapping_SystemMapping();
        public static final EReference SWC_TO_ECU_MAPPING__COMPONENTS = eINSTANCE.getSwcToEcuMapping_Components();
        public static final EReference SWC_TO_ECU_MAPPING__CONTROLLED_HW_ELEMENT = eINSTANCE.getSwcToEcuMapping_ControlledHwElement();
        public static final EReference SWC_TO_ECU_MAPPING__ECU_INSTANCE = eINSTANCE.getSwcToEcuMapping_EcuInstance();
        public static final EReference SWC_TO_ECU_MAPPING__PARTITION = eINSTANCE.getSwcToEcuMapping_Partition();
        public static final EReference SWC_TO_ECU_MAPPING__PROCESSING_UNIT = eINSTANCE.getSwcToEcuMapping_ProcessingUnit();
        public static final EReference SWC_TO_ECU_MAPPING__VARIATION_POINT = eINSTANCE.getSwcToEcuMapping_VariationPoint();
        public static final EClass SWC_TO_ECU_MAPPING_CONSTRAINT = eINSTANCE.getSwcToEcuMappingConstraint();
        public static final EReference SWC_TO_ECU_MAPPING_CONSTRAINT__COMPONENT = eINSTANCE.getSwcToEcuMappingConstraint_Component();
        public static final EReference SWC_TO_ECU_MAPPING_CONSTRAINT__ECU_INSTANCES = eINSTANCE.getSwcToEcuMappingConstraint_EcuInstances();
        public static final EAttribute SWC_TO_ECU_MAPPING_CONSTRAINT__SWC_TO_ECU_MAPPING_CONSTRAINT_TYPE = eINSTANCE.getSwcToEcuMappingConstraint_SwcToEcuMappingConstraintType();
        public static final EClass SWC_TO_IMPL_MAPPING = eINSTANCE.getSwcToImplMapping();
        public static final EReference SWC_TO_IMPL_MAPPING__SYSTEM_MAPPING = eINSTANCE.getSwcToImplMapping_SystemMapping();
        public static final EReference SWC_TO_IMPL_MAPPING__COMPONENT_IMPLEMENTATION = eINSTANCE.getSwcToImplMapping_ComponentImplementation();
        public static final EReference SWC_TO_IMPL_MAPPING__COMPONENTS = eINSTANCE.getSwcToImplMapping_Components();
        public static final EReference SWC_TO_IMPL_MAPPING__VARIATION_POINT = eINSTANCE.getSwcToImplMapping_VariationPoint();
        public static final EClass ECU_RESOURCE_ESTIMATION = eINSTANCE.getEcuResourceEstimation();
        public static final EReference ECU_RESOURCE_ESTIMATION__SYSTEM_MAPPING = eINSTANCE.getEcuResourceEstimation_SystemMapping();
        public static final EReference ECU_RESOURCE_ESTIMATION__INTRODUCTION = eINSTANCE.getEcuResourceEstimation_Introduction();
        public static final EReference ECU_RESOURCE_ESTIMATION__BSW_RESOURCE_ESTIMATION = eINSTANCE.getEcuResourceEstimation_BswResourceEstimation();
        public static final EReference ECU_RESOURCE_ESTIMATION__ECU_INSTANCE = eINSTANCE.getEcuResourceEstimation_EcuInstance();
        public static final EReference ECU_RESOURCE_ESTIMATION__RTE_RESOURCE_ESTIMATION = eINSTANCE.getEcuResourceEstimation_RteResourceEstimation();
        public static final EReference ECU_RESOURCE_ESTIMATION__SW_COMP_TO_ECU_MAPPINGS = eINSTANCE.getEcuResourceEstimation_SwCompToEcuMappings();
        public static final EReference ECU_RESOURCE_ESTIMATION__VARIATION_POINT = eINSTANCE.getEcuResourceEstimation_VariationPoint();
        public static final EEnum SWC_TO_ECU_MAPPING_CONSTRAINT_TYPE = eINSTANCE.getSwcToEcuMappingConstraintType();
    }
}

