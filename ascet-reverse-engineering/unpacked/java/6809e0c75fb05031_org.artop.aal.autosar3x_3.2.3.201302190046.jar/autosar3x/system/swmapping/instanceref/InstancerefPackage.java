/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.system.swmapping.instanceref;

import autosar3x.system.swmapping.instanceref.InstancerefFactory;
import autosar3x.system.swmapping.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/sw/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT = 0;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__GCHECKSUM = 0;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__GTIMESTAMP = 1;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__CHECKSUM = 2;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__TIMESTAMP = 3;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__COMPONENT_SEPARATION = 4;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__SOFTWARE_COMPOSITION = 5;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__COMPONENT_PROTOTYPES = 6;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT__SEPARATED_COMPONENT = 7;
    public static final int COMPONENT_SEPARATION_SEPARATED_COMPONENT_FEATURE_COUNT = 8;
    public static final int PNC_MAPPING_VFC = 1;
    public static final int PNC_MAPPING_VFC__GCHECKSUM = 0;
    public static final int PNC_MAPPING_VFC__GTIMESTAMP = 1;
    public static final int PNC_MAPPING_VFC__CHECKSUM = 2;
    public static final int PNC_MAPPING_VFC__TIMESTAMP = 3;
    public static final int PNC_MAPPING_VFC__PNC_MAPPING = 4;
    public static final int PNC_MAPPING_VFC__SOFTWARE_COMPOSITION = 5;
    public static final int PNC_MAPPING_VFC__COMPONENT_PROTOTYPES = 6;
    public static final int PNC_MAPPING_VFC__VFC = 7;
    public static final int PNC_MAPPING_VFC_FEATURE_COUNT = 8;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT = 2;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__GCHECKSUM = 0;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__GTIMESTAMP = 1;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__CHECKSUM = 2;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__TIMESTAMP = 3;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__SWC_TO_ECU_MAPPING = 4;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__SOFTWARE_COMPOSITION = 5;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__COMPONENT_PROTOTYPES = 6;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT__TARGET_COMPONENT_PROTOTYPE = 7;
    public static final int SW_COMP_TO_ECU_MAPPING_COMPONENT_FEATURE_COUNT = 8;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT = 3;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__GCHECKSUM = 0;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__GTIMESTAMP = 1;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__CHECKSUM = 2;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__TIMESTAMP = 3;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__SWC_TO_IMPL_MAPPING = 4;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__SOFTWARE_COMPOSITION = 5;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__COMPONENT_PROTOTYPES = 6;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT__TARGET_COMPONENT_PROTOTYPE = 7;
    public static final int SW_COMP_TO_IMPL_MAPPING_COMPONENT_FEATURE_COUNT = 8;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT = 4;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT__GCHECKSUM = 0;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT__GTIMESTAMP = 1;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT__CHECKSUM = 2;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT__TIMESTAMP = 3;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT__SWC_TO_ECU_MAPPING_CONSTRAINT = 4;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT__SOFTWARE_COMPOSITION = 5;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT__COMPONENT_PROTOTYPES = 6;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT__TARGET_COMPONENT_PROTOTYPE = 7;
    public static final int SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT_FEATURE_COUNT = 8;
    public static final int COMPONENT_CLUSTERING_CLUSTERED_COMPONENT = 5;
    public static final int COMPONENT_CLUSTERING_CLUSTERED_COMPONENT__GCHECKSUM = 0;
    public static final int COMPONENT_CLUSTERING_CLUSTERED_COMPONENT__GTIMESTAMP = 1;
    public static final int COMPONENT_CLUSTERING_CLUSTERED_COMPONENT__CHECKSUM = 2;
    public static final int COMPONENT_CLUSTERING_CLUSTERED_COMPONENT__TIMESTAMP = 3;
    public static final int COMPONENT_CLUSTERING_CLUSTERED_COMPONENT__COMPONENT_CLUSTERING = 4;
    public static final int COMPONENT_CLUSTERING_CLUSTERED_COMPONENT__SOFTWARE_COMPOSITION = 5;
    public static final int COMPONENT_CLUSTERING_CLUSTERED_COMPONENT__COMPONENT_PROTOTYPES = 6;
    public static final int COMPONENT_CLUSTERING_CLUSTERED_COMPONENT__CLUSTERED_COMPONENT = 7;
    public static final int COMPONENT_CLUSTERING_CLUSTERED_COMPONENT_FEATURE_COUNT = 8;

    public EClass getComponentSeparationSeparatedComponent();

    public EReference getComponentSeparationSeparatedComponent_ComponentSeparation();

    public EReference getComponentSeparationSeparatedComponent_SoftwareComposition();

    public EReference getComponentSeparationSeparatedComponent_ComponentPrototypes();

    public EReference getComponentSeparationSeparatedComponent_SeparatedComponent();

    public EClass getPncMappingVfc();

    public EReference getPncMappingVfc_PncMapping();

    public EReference getPncMappingVfc_SoftwareComposition();

    public EReference getPncMappingVfc_ComponentPrototypes();

    public EReference getPncMappingVfc_Vfc();

    public EClass getSwCompToEcuMappingComponent();

    public EReference getSwCompToEcuMappingComponent_SwcToEcuMapping();

    public EReference getSwCompToEcuMappingComponent_SoftwareComposition();

    public EReference getSwCompToEcuMappingComponent_ComponentPrototypes();

    public EReference getSwCompToEcuMappingComponent_TargetComponentPrototype();

    public EClass getSwCompToImplMappingComponent();

    public EReference getSwCompToImplMappingComponent_SwcToImplMapping();

    public EReference getSwCompToImplMappingComponent_SoftwareComposition();

    public EReference getSwCompToImplMappingComponent_ComponentPrototypes();

    public EReference getSwCompToImplMappingComponent_TargetComponentPrototype();

    public EClass getSwcToEcuMappingConstraintComponent();

    public EReference getSwcToEcuMappingConstraintComponent_SwcToEcuMappingConstraint();

    public EReference getSwcToEcuMappingConstraintComponent_SoftwareComposition();

    public EReference getSwcToEcuMappingConstraintComponent_ComponentPrototypes();

    public EReference getSwcToEcuMappingConstraintComponent_TargetComponentPrototype();

    public EClass getComponentClusteringClusteredComponent();

    public EReference getComponentClusteringClusteredComponent_ComponentClustering();

    public EReference getComponentClusteringClusteredComponent_SoftwareComposition();

    public EReference getComponentClusteringClusteredComponent_ComponentPrototypes();

    public EReference getComponentClusteringClusteredComponent_ClusteredComponent();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass COMPONENT_SEPARATION_SEPARATED_COMPONENT = eINSTANCE.getComponentSeparationSeparatedComponent();
        public static final EReference COMPONENT_SEPARATION_SEPARATED_COMPONENT__COMPONENT_SEPARATION = eINSTANCE.getComponentSeparationSeparatedComponent_ComponentSeparation();
        public static final EReference COMPONENT_SEPARATION_SEPARATED_COMPONENT__SOFTWARE_COMPOSITION = eINSTANCE.getComponentSeparationSeparatedComponent_SoftwareComposition();
        public static final EReference COMPONENT_SEPARATION_SEPARATED_COMPONENT__COMPONENT_PROTOTYPES = eINSTANCE.getComponentSeparationSeparatedComponent_ComponentPrototypes();
        public static final EReference COMPONENT_SEPARATION_SEPARATED_COMPONENT__SEPARATED_COMPONENT = eINSTANCE.getComponentSeparationSeparatedComponent_SeparatedComponent();
        public static final EClass PNC_MAPPING_VFC = eINSTANCE.getPncMappingVfc();
        public static final EReference PNC_MAPPING_VFC__PNC_MAPPING = eINSTANCE.getPncMappingVfc_PncMapping();
        public static final EReference PNC_MAPPING_VFC__SOFTWARE_COMPOSITION = eINSTANCE.getPncMappingVfc_SoftwareComposition();
        public static final EReference PNC_MAPPING_VFC__COMPONENT_PROTOTYPES = eINSTANCE.getPncMappingVfc_ComponentPrototypes();
        public static final EReference PNC_MAPPING_VFC__VFC = eINSTANCE.getPncMappingVfc_Vfc();
        public static final EClass SW_COMP_TO_ECU_MAPPING_COMPONENT = eINSTANCE.getSwCompToEcuMappingComponent();
        public static final EReference SW_COMP_TO_ECU_MAPPING_COMPONENT__SWC_TO_ECU_MAPPING = eINSTANCE.getSwCompToEcuMappingComponent_SwcToEcuMapping();
        public static final EReference SW_COMP_TO_ECU_MAPPING_COMPONENT__SOFTWARE_COMPOSITION = eINSTANCE.getSwCompToEcuMappingComponent_SoftwareComposition();
        public static final EReference SW_COMP_TO_ECU_MAPPING_COMPONENT__COMPONENT_PROTOTYPES = eINSTANCE.getSwCompToEcuMappingComponent_ComponentPrototypes();
        public static final EReference SW_COMP_TO_ECU_MAPPING_COMPONENT__TARGET_COMPONENT_PROTOTYPE = eINSTANCE.getSwCompToEcuMappingComponent_TargetComponentPrototype();
        public static final EClass SW_COMP_TO_IMPL_MAPPING_COMPONENT = eINSTANCE.getSwCompToImplMappingComponent();
        public static final EReference SW_COMP_TO_IMPL_MAPPING_COMPONENT__SWC_TO_IMPL_MAPPING = eINSTANCE.getSwCompToImplMappingComponent_SwcToImplMapping();
        public static final EReference SW_COMP_TO_IMPL_MAPPING_COMPONENT__SOFTWARE_COMPOSITION = eINSTANCE.getSwCompToImplMappingComponent_SoftwareComposition();
        public static final EReference SW_COMP_TO_IMPL_MAPPING_COMPONENT__COMPONENT_PROTOTYPES = eINSTANCE.getSwCompToImplMappingComponent_ComponentPrototypes();
        public static final EReference SW_COMP_TO_IMPL_MAPPING_COMPONENT__TARGET_COMPONENT_PROTOTYPE = eINSTANCE.getSwCompToImplMappingComponent_TargetComponentPrototype();
        public static final EClass SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT = eINSTANCE.getSwcToEcuMappingConstraintComponent();
        public static final EReference SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT__SWC_TO_ECU_MAPPING_CONSTRAINT = eINSTANCE.getSwcToEcuMappingConstraintComponent_SwcToEcuMappingConstraint();
        public static final EReference SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT__SOFTWARE_COMPOSITION = eINSTANCE.getSwcToEcuMappingConstraintComponent_SoftwareComposition();
        public static final EReference SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT__COMPONENT_PROTOTYPES = eINSTANCE.getSwcToEcuMappingConstraintComponent_ComponentPrototypes();
        public static final EReference SWC_TO_ECU_MAPPING_CONSTRAINT_COMPONENT__TARGET_COMPONENT_PROTOTYPE = eINSTANCE.getSwcToEcuMappingConstraintComponent_TargetComponentPrototype();
        public static final EClass COMPONENT_CLUSTERING_CLUSTERED_COMPONENT = eINSTANCE.getComponentClusteringClusteredComponent();
        public static final EReference COMPONENT_CLUSTERING_CLUSTERED_COMPONENT__COMPONENT_CLUSTERING = eINSTANCE.getComponentClusteringClusteredComponent_ComponentClustering();
        public static final EReference COMPONENT_CLUSTERING_CLUSTERED_COMPONENT__SOFTWARE_COMPOSITION = eINSTANCE.getComponentClusteringClusteredComponent_SoftwareComposition();
        public static final EReference COMPONENT_CLUSTERING_CLUSTERED_COMPONENT__COMPONENT_PROTOTYPES = eINSTANCE.getComponentClusteringClusteredComponent_ComponentPrototypes();
        public static final EReference COMPONENT_CLUSTERING_CLUSTERED_COMPONENT__CLUSTERED_COMPONENT = eINSTANCE.getComponentClusteringClusteredComponent_ClusteredComponent();
    }
}

