/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.system.swmapping;

import autosar21.system.swmapping.SwmappingFactory;
import autosar21.system.swmapping.impl.SwmappingPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SwmappingPackage
extends EPackage {
    public static final String eNAME = "swmapping";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/s/sw";
    public static final String eNS_PREFIX = "";
    public static final SwmappingPackage eINSTANCE = SwmappingPackageImpl.init();
    public static final int AGGREGATED_STACK_USAGE = 0;
    public static final int AGGREGATED_STACK_USAGE__GCHECKSUM = 0;
    public static final int AGGREGATED_STACK_USAGE__GTIMESTAMP = 1;
    public static final int AGGREGATED_STACK_USAGE__CHECKSUM = 2;
    public static final int AGGREGATED_STACK_USAGE__TIMESTAMP = 3;
    public static final int AGGREGATED_STACK_USAGE__RESOURCE_ESTIMATION_DETAILS = 4;
    public static final int AGGREGATED_STACK_USAGE_FEATURE_COUNT = 5;
    public static final int RESOURCE_ESTIMATION_DETAILS = 2;
    public static final int RESOURCE_ESTIMATION_DETAILS__GCHECKSUM = 0;
    public static final int RESOURCE_ESTIMATION_DETAILS__GTIMESTAMP = 1;
    public static final int RESOURCE_ESTIMATION_DETAILS__CHECKSUM = 2;
    public static final int RESOURCE_ESTIMATION_DETAILS__TIMESTAMP = 3;
    public static final int RESOURCE_ESTIMATION_DETAILS__HEAP_USAGES = 4;
    public static final int RESOURCE_ESTIMATION_DETAILS__STACK_USAGES = 5;
    public static final int RESOURCE_ESTIMATION_DETAILS_FEATURE_COUNT = 6;
    public static final int BSW_RESOURCE_ESTIMATION = 1;
    public static final int BSW_RESOURCE_ESTIMATION__GCHECKSUM = 0;
    public static final int BSW_RESOURCE_ESTIMATION__GTIMESTAMP = 1;
    public static final int BSW_RESOURCE_ESTIMATION__CHECKSUM = 2;
    public static final int BSW_RESOURCE_ESTIMATION__TIMESTAMP = 3;
    public static final int BSW_RESOURCE_ESTIMATION__HEAP_USAGES = 4;
    public static final int BSW_RESOURCE_ESTIMATION__STACK_USAGES = 5;
    public static final int BSW_RESOURCE_ESTIMATION__ECU_RESOURCE_ESTIMATION = 6;
    public static final int BSW_RESOURCE_ESTIMATION_FEATURE_COUNT = 7;
    public static final int MAPPING_CONSTRAINT = 4;
    public static final int MAPPING_CONSTRAINT__GCHECKSUM = 0;
    public static final int MAPPING_CONSTRAINT__GTIMESTAMP = 1;
    public static final int MAPPING_CONSTRAINT__CHECKSUM = 2;
    public static final int MAPPING_CONSTRAINT__TIMESTAMP = 3;
    public static final int MAPPING_CONSTRAINT__SYSTEM_MAPPING = 4;
    public static final int MAPPING_CONSTRAINT_FEATURE_COUNT = 5;
    public static final int COMPONENT_CLUSTER = 3;
    public static final int COMPONENT_CLUSTER__GCHECKSUM = 0;
    public static final int COMPONENT_CLUSTER__GTIMESTAMP = 1;
    public static final int COMPONENT_CLUSTER__CHECKSUM = 2;
    public static final int COMPONENT_CLUSTER__TIMESTAMP = 3;
    public static final int COMPONENT_CLUSTER__SYSTEM_MAPPING = 4;
    public static final int COMPONENT_CLUSTER__CLUSTERED_COMPONENTS = 5;
    public static final int COMPONENT_CLUSTER_FEATURE_COUNT = 6;
    public static final int COMPONENT_SEPARATION = 5;
    public static final int COMPONENT_SEPARATION__GCHECKSUM = 0;
    public static final int COMPONENT_SEPARATION__GTIMESTAMP = 1;
    public static final int COMPONENT_SEPARATION__CHECKSUM = 2;
    public static final int COMPONENT_SEPARATION__TIMESTAMP = 3;
    public static final int COMPONENT_SEPARATION__SYSTEM_MAPPING = 4;
    public static final int COMPONENT_SEPARATION__SEPARATED_COMPONENTS = 5;
    public static final int COMPONENT_SEPARATION_FEATURE_COUNT = 6;
    public static final int ECU_RESOURCE_ESTIMATION = 6;
    public static final int ECU_RESOURCE_ESTIMATION__GCHECKSUM = 0;
    public static final int ECU_RESOURCE_ESTIMATION__GTIMESTAMP = 1;
    public static final int ECU_RESOURCE_ESTIMATION__CHECKSUM = 2;
    public static final int ECU_RESOURCE_ESTIMATION__TIMESTAMP = 3;
    public static final int ECU_RESOURCE_ESTIMATION__SYSTEM_MAPPING = 4;
    public static final int ECU_RESOURCE_ESTIMATION__BSW_RESOURCE_ESTIMATION = 5;
    public static final int ECU_RESOURCE_ESTIMATION__ECU_INSTANCE = 6;
    public static final int ECU_RESOURCE_ESTIMATION__RTE_RESSOURCE_ESTIMATION = 7;
    public static final int ECU_RESOURCE_ESTIMATION__SW_COMP_TO_ECU_MAPPINGS = 8;
    public static final int ECU_RESOURCE_ESTIMATION_FEATURE_COUNT = 9;
    public static final int RTE_RESSOURCE_ESTIMATION = 7;
    public static final int RTE_RESSOURCE_ESTIMATION__GCHECKSUM = 0;
    public static final int RTE_RESSOURCE_ESTIMATION__GTIMESTAMP = 1;
    public static final int RTE_RESSOURCE_ESTIMATION__CHECKSUM = 2;
    public static final int RTE_RESSOURCE_ESTIMATION__TIMESTAMP = 3;
    public static final int RTE_RESSOURCE_ESTIMATION__HEAP_USAGES = 4;
    public static final int RTE_RESSOURCE_ESTIMATION__STACK_USAGES = 5;
    public static final int RTE_RESSOURCE_ESTIMATION__ECU_RESOURCE_ESTIMATION = 6;
    public static final int RTE_RESSOURCE_ESTIMATION_FEATURE_COUNT = 7;
    public static final int FREE_TEXT_MAPPING_CONSTRAINT = 8;
    public static final int FREE_TEXT_MAPPING_CONSTRAINT__GCHECKSUM = 0;
    public static final int FREE_TEXT_MAPPING_CONSTRAINT__GTIMESTAMP = 1;
    public static final int FREE_TEXT_MAPPING_CONSTRAINT__CHECKSUM = 2;
    public static final int FREE_TEXT_MAPPING_CONSTRAINT__TIMESTAMP = 3;
    public static final int FREE_TEXT_MAPPING_CONSTRAINT__SYSTEM_MAPPING = 4;
    public static final int FREE_TEXT_MAPPING_CONSTRAINT__CONSTRAINT_EXPRESSION = 5;
    public static final int FREE_TEXT_MAPPING_CONSTRAINT_FEATURE_COUNT = 6;
    public static final int SW_COMP_TO_IMPL_MAPPING = 9;
    public static final int SW_COMP_TO_IMPL_MAPPING__GCHECKSUM = 0;
    public static final int SW_COMP_TO_IMPL_MAPPING__GTIMESTAMP = 1;
    public static final int SW_COMP_TO_IMPL_MAPPING__CHECKSUM = 2;
    public static final int SW_COMP_TO_IMPL_MAPPING__TIMESTAMP = 3;
    public static final int SW_COMP_TO_IMPL_MAPPING__GSHORT_NAME = 4;
    public static final int SW_COMP_TO_IMPL_MAPPING__GUUID = 5;
    public static final int SW_COMP_TO_IMPL_MAPPING__GCATEGORY = 6;
    public static final int SW_COMP_TO_IMPL_MAPPING__GDESC = 7;
    public static final int SW_COMP_TO_IMPL_MAPPING__SHORT_NAME = 8;
    public static final int SW_COMP_TO_IMPL_MAPPING__LONG_NAME = 9;
    public static final int SW_COMP_TO_IMPL_MAPPING__DESC = 10;
    public static final int SW_COMP_TO_IMPL_MAPPING__CATEGORY = 11;
    public static final int SW_COMP_TO_IMPL_MAPPING__ADMIN_DATA = 12;
    public static final int SW_COMP_TO_IMPL_MAPPING__UUID = 13;
    public static final int SW_COMP_TO_IMPL_MAPPING__ALL_EXTENSIONS = 14;
    public static final int SW_COMP_TO_IMPL_MAPPING__CONTAINED_EXTENSIONS = 15;
    public static final int SW_COMP_TO_IMPL_MAPPING__SYSTEM_MAPPING = 16;
    public static final int SW_COMP_TO_IMPL_MAPPING__COMPONENT_IMPLEMENTATION = 17;
    public static final int SW_COMP_TO_IMPL_MAPPING__COMPONENTS = 18;
    public static final int SW_COMP_TO_IMPL_MAPPING_FEATURE_COUNT = 19;
    public static final int SW_COMP_TO_ECU_MAPPING = 10;
    public static final int SW_COMP_TO_ECU_MAPPING__GCHECKSUM = 0;
    public static final int SW_COMP_TO_ECU_MAPPING__GTIMESTAMP = 1;
    public static final int SW_COMP_TO_ECU_MAPPING__CHECKSUM = 2;
    public static final int SW_COMP_TO_ECU_MAPPING__TIMESTAMP = 3;
    public static final int SW_COMP_TO_ECU_MAPPING__GSHORT_NAME = 4;
    public static final int SW_COMP_TO_ECU_MAPPING__GUUID = 5;
    public static final int SW_COMP_TO_ECU_MAPPING__GCATEGORY = 6;
    public static final int SW_COMP_TO_ECU_MAPPING__GDESC = 7;
    public static final int SW_COMP_TO_ECU_MAPPING__SHORT_NAME = 8;
    public static final int SW_COMP_TO_ECU_MAPPING__LONG_NAME = 9;
    public static final int SW_COMP_TO_ECU_MAPPING__DESC = 10;
    public static final int SW_COMP_TO_ECU_MAPPING__CATEGORY = 11;
    public static final int SW_COMP_TO_ECU_MAPPING__ADMIN_DATA = 12;
    public static final int SW_COMP_TO_ECU_MAPPING__UUID = 13;
    public static final int SW_COMP_TO_ECU_MAPPING__ALL_EXTENSIONS = 14;
    public static final int SW_COMP_TO_ECU_MAPPING__CONTAINED_EXTENSIONS = 15;
    public static final int SW_COMP_TO_ECU_MAPPING__SYSTEM_MAPPING = 16;
    public static final int SW_COMP_TO_ECU_MAPPING__COMPONENTS = 17;
    public static final int SW_COMP_TO_ECU_MAPPING__ECU_INSTANCE = 18;
    public static final int SW_COMP_TO_ECU_MAPPING_FEATURE_COUNT = 19;

    public EClass getAggregatedStackUsage();

    public EReference getAggregatedStackUsage_ResourceEstimationDetails();

    public EClass getBSWResourceEstimation();

    public EReference getBSWResourceEstimation_EcuResourceEstimation();

    public EClass getResourceEstimationDetails();

    public EReference getResourceEstimationDetails_HeapUsages();

    public EReference getResourceEstimationDetails_StackUsages();

    public EClass getComponentCluster();

    public EReference getComponentCluster_ClusteredComponents();

    public EClass getMappingConstraint();

    public EReference getMappingConstraint_SystemMapping();

    public EClass getComponentSeparation();

    public EReference getComponentSeparation_SeparatedComponents();

    public EClass getEcuResourceEstimation();

    public EReference getEcuResourceEstimation_SystemMapping();

    public EReference getEcuResourceEstimation_BswResourceEstimation();

    public EReference getEcuResourceEstimation_EcuInstance();

    public EReference getEcuResourceEstimation_RteRessourceEstimation();

    public EReference getEcuResourceEstimation_SwCompToEcuMappings();

    public EClass getRTERessourceEstimation();

    public EReference getRTERessourceEstimation_EcuResourceEstimation();

    public EClass getFreeTextMappingConstraint();

    public EAttribute getFreeTextMappingConstraint_ConstraintExpression();

    public EClass getSwCompToImplMapping();

    public EReference getSwCompToImplMapping_SystemMapping();

    public EReference getSwCompToImplMapping_ComponentImplementation();

    public EReference getSwCompToImplMapping_Components();

    public EClass getSwCompToEcuMapping();

    public EReference getSwCompToEcuMapping_SystemMapping();

    public EReference getSwCompToEcuMapping_Components();

    public EReference getSwCompToEcuMapping_EcuInstance();

    public SwmappingFactory getSwmappingFactory();

    public static interface Literals {
        public static final EClass AGGREGATED_STACK_USAGE = eINSTANCE.getAggregatedStackUsage();
        public static final EReference AGGREGATED_STACK_USAGE__RESOURCE_ESTIMATION_DETAILS = eINSTANCE.getAggregatedStackUsage_ResourceEstimationDetails();
        public static final EClass BSW_RESOURCE_ESTIMATION = eINSTANCE.getBSWResourceEstimation();
        public static final EReference BSW_RESOURCE_ESTIMATION__ECU_RESOURCE_ESTIMATION = eINSTANCE.getBSWResourceEstimation_EcuResourceEstimation();
        public static final EClass RESOURCE_ESTIMATION_DETAILS = eINSTANCE.getResourceEstimationDetails();
        public static final EReference RESOURCE_ESTIMATION_DETAILS__HEAP_USAGES = eINSTANCE.getResourceEstimationDetails_HeapUsages();
        public static final EReference RESOURCE_ESTIMATION_DETAILS__STACK_USAGES = eINSTANCE.getResourceEstimationDetails_StackUsages();
        public static final EClass COMPONENT_CLUSTER = eINSTANCE.getComponentCluster();
        public static final EReference COMPONENT_CLUSTER__CLUSTERED_COMPONENTS = eINSTANCE.getComponentCluster_ClusteredComponents();
        public static final EClass MAPPING_CONSTRAINT = eINSTANCE.getMappingConstraint();
        public static final EReference MAPPING_CONSTRAINT__SYSTEM_MAPPING = eINSTANCE.getMappingConstraint_SystemMapping();
        public static final EClass COMPONENT_SEPARATION = eINSTANCE.getComponentSeparation();
        public static final EReference COMPONENT_SEPARATION__SEPARATED_COMPONENTS = eINSTANCE.getComponentSeparation_SeparatedComponents();
        public static final EClass ECU_RESOURCE_ESTIMATION = eINSTANCE.getEcuResourceEstimation();
        public static final EReference ECU_RESOURCE_ESTIMATION__SYSTEM_MAPPING = eINSTANCE.getEcuResourceEstimation_SystemMapping();
        public static final EReference ECU_RESOURCE_ESTIMATION__BSW_RESOURCE_ESTIMATION = eINSTANCE.getEcuResourceEstimation_BswResourceEstimation();
        public static final EReference ECU_RESOURCE_ESTIMATION__ECU_INSTANCE = eINSTANCE.getEcuResourceEstimation_EcuInstance();
        public static final EReference ECU_RESOURCE_ESTIMATION__RTE_RESSOURCE_ESTIMATION = eINSTANCE.getEcuResourceEstimation_RteRessourceEstimation();
        public static final EReference ECU_RESOURCE_ESTIMATION__SW_COMP_TO_ECU_MAPPINGS = eINSTANCE.getEcuResourceEstimation_SwCompToEcuMappings();
        public static final EClass RTE_RESSOURCE_ESTIMATION = eINSTANCE.getRTERessourceEstimation();
        public static final EReference RTE_RESSOURCE_ESTIMATION__ECU_RESOURCE_ESTIMATION = eINSTANCE.getRTERessourceEstimation_EcuResourceEstimation();
        public static final EClass FREE_TEXT_MAPPING_CONSTRAINT = eINSTANCE.getFreeTextMappingConstraint();
        public static final EAttribute FREE_TEXT_MAPPING_CONSTRAINT__CONSTRAINT_EXPRESSION = eINSTANCE.getFreeTextMappingConstraint_ConstraintExpression();
        public static final EClass SW_COMP_TO_IMPL_MAPPING = eINSTANCE.getSwCompToImplMapping();
        public static final EReference SW_COMP_TO_IMPL_MAPPING__SYSTEM_MAPPING = eINSTANCE.getSwCompToImplMapping_SystemMapping();
        public static final EReference SW_COMP_TO_IMPL_MAPPING__COMPONENT_IMPLEMENTATION = eINSTANCE.getSwCompToImplMapping_ComponentImplementation();
        public static final EReference SW_COMP_TO_IMPL_MAPPING__COMPONENTS = eINSTANCE.getSwCompToImplMapping_Components();
        public static final EClass SW_COMP_TO_ECU_MAPPING = eINSTANCE.getSwCompToEcuMapping();
        public static final EReference SW_COMP_TO_ECU_MAPPING__SYSTEM_MAPPING = eINSTANCE.getSwCompToEcuMapping_SystemMapping();
        public static final EReference SW_COMP_TO_ECU_MAPPING__COMPONENTS = eINSTANCE.getSwCompToEcuMapping_Components();
        public static final EReference SW_COMP_TO_ECU_MAPPING__ECU_INSTANCE = eINSTANCE.getSwCompToEcuMapping_EcuInstance();
    }
}

