/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.system.swmapping.instanceref;

import autosar21.system.swmapping.instanceref.InstancerefFactory;
import autosar21.system.swmapping.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/s/sw/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int COMPONENT_CLUSTER_CLUSTERED_COMPONENT = 0;
    public static final int COMPONENT_CLUSTER_CLUSTERED_COMPONENT__GCHECKSUM = 0;
    public static final int COMPONENT_CLUSTER_CLUSTERED_COMPONENT__GTIMESTAMP = 1;
    public static final int COMPONENT_CLUSTER_CLUSTERED_COMPONENT__CHECKSUM = 2;
    public static final int COMPONENT_CLUSTER_CLUSTERED_COMPONENT__TIMESTAMP = 3;
    public static final int COMPONENT_CLUSTER_CLUSTERED_COMPONENT__COMPONENT_CLUSTER = 4;
    public static final int COMPONENT_CLUSTER_CLUSTERED_COMPONENT__SOFTWARE_COMPOSITION = 5;
    public static final int COMPONENT_CLUSTER_CLUSTERED_COMPONENT__COMPONENT_PROTOTYPES = 6;
    public static final int COMPONENT_CLUSTER_CLUSTERED_COMPONENT__CLUSTERED_COMPONENT = 7;
    public static final int COMPONENT_CLUSTER_CLUSTERED_COMPONENT_FEATURE_COUNT = 8;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT = 1;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__GCHECKSUM = 0;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__GTIMESTAMP = 1;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__CHECKSUM = 2;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__TIMESTAMP = 3;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__COMPONENT_SEPARATION = 4;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__SOFTWARE_COMPOSITION = 5;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__COMPONENT_PROTOTYPES = 6;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__SEPARATED_COMPONENT = 7;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT_FEATURE_COUNT = 8;
    public static final int ECU_RESOURCE_ESTIMATION_ECU_INSTANCE = 2;
    public static final int ECU_RESOURCE_ESTIMATION_ECU_INSTANCE__GCHECKSUM = 0;
    public static final int ECU_RESOURCE_ESTIMATION_ECU_INSTANCE__GTIMESTAMP = 1;
    public static final int ECU_RESOURCE_ESTIMATION_ECU_INSTANCE__CHECKSUM = 2;
    public static final int ECU_RESOURCE_ESTIMATION_ECU_INSTANCE__TIMESTAMP = 3;
    public static final int ECU_RESOURCE_ESTIMATION_ECU_INSTANCE__ECU_RESOURCE_ESTIMATION = 4;
    public static final int ECU_RESOURCE_ESTIMATION_ECU_INSTANCE__SYSTEM_TOPOLOGY_INSTANCE = 5;
    public static final int ECU_RESOURCE_ESTIMATION_ECU_INSTANCE__ECU_INSTANCE = 6;
    public static final int ECU_RESOURCE_ESTIMATION_ECU_INSTANCE_FEATURE_COUNT = 7;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT = 3;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__GCHECKSUM = 0;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__GTIMESTAMP = 1;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__CHECKSUM = 2;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__TIMESTAMP = 3;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__SW_COMP_TO_ECU_MAPPING = 4;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__SOFTWARE_COMPOSITION = 5;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__COMPONENT_PROTOTYPES = 6;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__TARGET_COMPONENT_PROTOTYPE = 7;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT_FEATURE_COUNT = 8;
    public static final int SW_COMP_TO_ECU_MAPPING_ECU_INSTANCE = 4;
    public static final int SW_COMP_TO_ECU_MAPPING_ECU_INSTANCE__GCHECKSUM = 0;
    public static final int SW_COMP_TO_ECU_MAPPING_ECU_INSTANCE__GTIMESTAMP = 1;
    public static final int SW_COMP_TO_ECU_MAPPING_ECU_INSTANCE__CHECKSUM = 2;
    public static final int SW_COMP_TO_ECU_MAPPING_ECU_INSTANCE__TIMESTAMP = 3;
    public static final int SW_COMP_TO_ECU_MAPPING_ECU_INSTANCE__SW_COMP_TO_ECU_MAPPING = 4;
    public static final int SW_COMP_TO_ECU_MAPPING_ECU_INSTANCE__SYSTEM_TOPOLOGY_INSTANCE = 5;
    public static final int SW_COMP_TO_ECU_MAPPING_ECU_INSTANCE__ECU_INSTANCE = 6;
    public static final int SW_COMP_TO_ECU_MAPPING_ECU_INSTANCE_FEATURE_COUNT = 7;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT = 5;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__GCHECKSUM = 0;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__GTIMESTAMP = 1;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__CHECKSUM = 2;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__TIMESTAMP = 3;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__SW_COMP_TO_IMPL_MAPPING = 4;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__SOFTWARE_COMPOSITION = 5;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__COMPONENT_PROTOTYPES = 6;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__TARGET_COMPONENT_PROTOTYPE = 7;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT_FEATURE_COUNT = 8;

    public EClass getComponentClusterClusteredComponent();

    public EReference getComponentClusterClusteredComponent_ComponentCluster();

    public EReference getComponentClusterClusteredComponent_SoftwareComposition();

    public EReference getComponentClusterClusteredComponent_ComponentPrototypes();

    public EReference getComponentClusterClusteredComponent_ClusteredComponent();

    public EClass getComponentSeparationSeparatedComponent();

    public EReference getComponentSeparationSeparatedComponent_ComponentSeparation();

    public EReference getComponentSeparationSeparatedComponent_SoftwareComposition();

    public EReference getComponentSeparationSeparatedComponent_ComponentPrototypes();

    public EReference getComponentSeparationSeparatedComponent_SeparatedComponent();

    public EClass getEcuResourceEstimationEcuInstance();

    public EReference getEcuResourceEstimationEcuInstance_EcuResourceEstimation();

    public EReference getEcuResourceEstimationEcuInstance_SystemTopologyInstance();

    public EReference getEcuResourceEstimationEcuInstance_EcuInstance();

    public EClass getSwCompToEcuMappingComponent();

    public EReference getSwCompToEcuMappingComponent_SwCompToEcuMapping();

    public EReference getSwCompToEcuMappingComponent_SoftwareComposition();

    public EReference getSwCompToEcuMappingComponent_ComponentPrototypes();

    public EReference getSwCompToEcuMappingComponent_TargetComponentPrototype();

    public EClass getSwCompToEcuMappingEcuInstance();

    public EReference getSwCompToEcuMappingEcuInstance_SwCompToEcuMapping();

    public EReference getSwCompToEcuMappingEcuInstance_SystemTopologyInstance();

    public EReference getSwCompToEcuMappingEcuInstance_EcuInstance();

    public EClass getSwCompToImplMappingComponent();

    public EReference getSwCompToImplMappingComponent_SwCompToImplMapping();

    public EReference getSwCompToImplMappingComponent_SoftwareComposition();

    public EReference getSwCompToImplMappingComponent_ComponentPrototypes();

    public EReference getSwCompToImplMappingComponent_TargetComponentPrototype();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass COMPONENT_CLUSTER_CLUSTERED_COMPONENT = eINSTANCE.getComponentClusterClusteredComponent();
        public static final EReference COMPONENT_CLUSTER_CLUSTERED_COMPONENT__COMPONENT_CLUSTER = eINSTANCE.getComponentClusterClusteredComponent_ComponentCluster();
        public static final EReference COMPONENT_CLUSTER_CLUSTERED_COMPONENT__SOFTWARE_COMPOSITION = eINSTANCE.getComponentClusterClusteredComponent_SoftwareComposition();
        public static final EReference COMPONENT_CLUSTER_CLUSTERED_COMPONENT__COMPONENT_PROTOTYPES = eINSTANCE.getComponentClusterClusteredComponent_ComponentPrototypes();
        public static final EReference COMPONENT_CLUSTER_CLUSTERED_COMPONENT__CLUSTERED_COMPONENT = eINSTANCE.getComponentClusterClusteredComponent_ClusteredComponent();
        public static final EClass COMPONENT_SEPARATION_SEPARATED_COMPONENT = eINSTANCE.getComponentSeparationSeparatedComponent();
        public static final EReference COMPONENT_SEPARATION_SEPARATED_COMPONENT__COMPONENT_SEPARATION = eINSTANCE.getComponentSeparationSeparatedComponent_ComponentSeparation();
        public static final EReference COMPONENT_SEPARATION_SEPARATED_COMPONENT__SOFTWARE_COMPOSITION = eINSTANCE.getComponentSeparationSeparatedComponent_SoftwareComposition();
        public static final EReference COMPONENT_SEPARATION_SEPARATED_COMPONENT__COMPONENT_PROTOTYPES = eINSTANCE.getComponentSeparationSeparatedComponent_ComponentPrototypes();
        public static final EReference COMPONENT_SEPARATION_SEPARATED_COMPONENT__SEPARATED_COMPONENT = eINSTANCE.getComponentSeparationSeparatedComponent_SeparatedComponent();
        public static final EClass ECU_RESOURCE_ESTIMATION_ECU_INSTANCE = eINSTANCE.getEcuResourceEstimationEcuInstance();
        public static final EReference ECU_RESOURCE_ESTIMATION_ECU_INSTANCE__ECU_RESOURCE_ESTIMATION = eINSTANCE.getEcuResourceEstimationEcuInstance_EcuResourceEstimation();
        public static final EReference ECU_RESOURCE_ESTIMATION_ECU_INSTANCE__SYSTEM_TOPOLOGY_INSTANCE = eINSTANCE.getEcuResourceEstimationEcuInstance_SystemTopologyInstance();
        public static final EReference ECU_RESOURCE_ESTIMATION_ECU_INSTANCE__ECU_INSTANCE = eINSTANCE.getEcuResourceEstimationEcuInstance_EcuInstance();
        public static final EClass SW_COMP_TO_ECU_MAPPING_COMPONENT = eINSTANCE.getSwCompToEcuMappingComponent();
        public static final EReference SW_COMP_TO_ECU_MAPPING_COMPONENT__SW_COMP_TO_ECU_MAPPING = eINSTANCE.getSwCompToEcuMappingComponent_SwCompToEcuMapping();
        public static final EReference SW_COMP_TO_ECU_MAPPING_COMPONENT__SOFTWARE_COMPOSITION = eINSTANCE.getSwCompToEcuMappingComponent_SoftwareComposition();
        public static final EReference SW_COMP_TO_ECU_MAPPING_COMPONENT__COMPONENT_PROTOTYPES = eINSTANCE.getSwCompToEcuMappingComponent_ComponentPrototypes();
        public static final EReference SW_COMP_TO_ECU_MAPPING_COMPONENT__TARGET_COMPONENT_PROTOTYPE = eINSTANCE.getSwCompToEcuMappingComponent_TargetComponentPrototype();
        public static final EClass SW_COMP_TO_ECU_MAPPING_ECU_INSTANCE = eINSTANCE.getSwCompToEcuMappingEcuInstance();
        public static final EReference SW_COMP_TO_ECU_MAPPING_ECU_INSTANCE__SW_COMP_TO_ECU_MAPPING = eINSTANCE.getSwCompToEcuMappingEcuInstance_SwCompToEcuMapping();
        public static final EReference SW_COMP_TO_ECU_MAPPING_ECU_INSTANCE__SYSTEM_TOPOLOGY_INSTANCE = eINSTANCE.getSwCompToEcuMappingEcuInstance_SystemTopologyInstance();
        public static final EReference SW_COMP_TO_ECU_MAPPING_ECU_INSTANCE__ECU_INSTANCE = eINSTANCE.getSwCompToEcuMappingEcuInstance_EcuInstance();
        public static final EClass SW_COMP_TO_IMPL_MAPPING_COMPONENT = eINSTANCE.getSwCompToImplMappingComponent();
        public static final EReference SW_COMP_TO_IMPL_MAPPING_COMPONENT__SW_COMP_TO_IMPL_MAPPING = eINSTANCE.getSwCompToImplMappingComponent_SwCompToImplMapping();
        public static final EReference SW_COMP_TO_IMPL_MAPPING_COMPONENT__SOFTWARE_COMPOSITION = eINSTANCE.getSwCompToImplMappingComponent_SoftwareComposition();
        public static final EReference SW_COMP_TO_IMPL_MAPPING_COMPONENT__COMPONENT_PROTOTYPES = eINSTANCE.getSwCompToImplMappingComponent_ComponentPrototypes();
        public static final EReference SW_COMP_TO_IMPL_MAPPING_COMPONENT__TARGET_COMPONENT_PROTOTYPE = eINSTANCE.getSwCompToImplMappingComponent_TargetComponentPrototype();
    }
}

