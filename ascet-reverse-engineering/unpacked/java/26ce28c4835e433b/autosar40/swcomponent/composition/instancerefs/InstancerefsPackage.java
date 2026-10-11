/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.composition.instancerefs;

import autosar40.swcomponent.composition.instancerefs.InstancerefsFactory;
import autosar40.swcomponent.composition.instancerefs.impl.InstancerefsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefsPackage
extends EPackage {
    public static final String eNAME = "instancerefs";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/composition/ir";
    public static final String eNS_PREFIX = "";
    public static final InstancerefsPackage eINSTANCE = InstancerefsPackageImpl.init();
    public static final int COMPONENT_IN_COMPOSITION_INSTANCE_REF = 0;
    public static final int COMPONENT_IN_COMPOSITION_INSTANCE_REF__GCHECKSUM = 0;
    public static final int COMPONENT_IN_COMPOSITION_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int COMPONENT_IN_COMPOSITION_INSTANCE_REF__CHECKSUM = 2;
    public static final int COMPONENT_IN_COMPOSITION_INSTANCE_REF__TIMESTAMP = 3;
    public static final int COMPONENT_IN_COMPOSITION_INSTANCE_REF__BASE = 4;
    public static final int COMPONENT_IN_COMPOSITION_INSTANCE_REF__CONTEXT_COMPONENTS = 5;
    public static final int COMPONENT_IN_COMPOSITION_INSTANCE_REF__TARGET_COMPONENT = 6;
    public static final int COMPONENT_IN_COMPOSITION_INSTANCE_REF_FEATURE_COUNT = 7;
    public static final int PORT_IN_COMPOSITION_TYPE_INSTANCE_REF = 1;
    public static final int PORT_IN_COMPOSITION_TYPE_INSTANCE_REF__GCHECKSUM = 0;
    public static final int PORT_IN_COMPOSITION_TYPE_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int PORT_IN_COMPOSITION_TYPE_INSTANCE_REF__CHECKSUM = 2;
    public static final int PORT_IN_COMPOSITION_TYPE_INSTANCE_REF__TIMESTAMP = 3;
    public static final int PORT_IN_COMPOSITION_TYPE_INSTANCE_REF__DELEGATION_SW_CONNECTOR = 4;
    public static final int PORT_IN_COMPOSITION_TYPE_INSTANCE_REF_FEATURE_COUNT = 5;
    public static final int RPORT_IN_COMPOSITION_INSTANCE_REF = 2;
    public static final int RPORT_IN_COMPOSITION_INSTANCE_REF__GCHECKSUM = 0;
    public static final int RPORT_IN_COMPOSITION_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int RPORT_IN_COMPOSITION_INSTANCE_REF__CHECKSUM = 2;
    public static final int RPORT_IN_COMPOSITION_INSTANCE_REF__TIMESTAMP = 3;
    public static final int RPORT_IN_COMPOSITION_INSTANCE_REF__DELEGATION_SW_CONNECTOR = 4;
    public static final int RPORT_IN_COMPOSITION_INSTANCE_REF__GTARGET_RPORT = 5;
    public static final int RPORT_IN_COMPOSITION_INSTANCE_REF__GCONTEXT_COMPONENT = 6;
    public static final int RPORT_IN_COMPOSITION_INSTANCE_REF__ASSEMBLY_SW_CONNECTOR = 7;
    public static final int RPORT_IN_COMPOSITION_INSTANCE_REF__CONTEXT_COMPONENT = 8;
    public static final int RPORT_IN_COMPOSITION_INSTANCE_REF__TARGET_RPORT = 9;
    public static final int RPORT_IN_COMPOSITION_INSTANCE_REF__BASE = 10;
    public static final int RPORT_IN_COMPOSITION_INSTANCE_REF_FEATURE_COUNT = 11;
    public static final int PPORT_IN_COMPOSITION_INSTANCE_REF = 3;
    public static final int PPORT_IN_COMPOSITION_INSTANCE_REF__GCHECKSUM = 0;
    public static final int PPORT_IN_COMPOSITION_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int PPORT_IN_COMPOSITION_INSTANCE_REF__CHECKSUM = 2;
    public static final int PPORT_IN_COMPOSITION_INSTANCE_REF__TIMESTAMP = 3;
    public static final int PPORT_IN_COMPOSITION_INSTANCE_REF__DELEGATION_SW_CONNECTOR = 4;
    public static final int PPORT_IN_COMPOSITION_INSTANCE_REF__GTARGET_PPORT = 5;
    public static final int PPORT_IN_COMPOSITION_INSTANCE_REF__GCONTEXT_COMPONENT = 6;
    public static final int PPORT_IN_COMPOSITION_INSTANCE_REF__ASSEMBLY_SW_CONNECTOR = 7;
    public static final int PPORT_IN_COMPOSITION_INSTANCE_REF__CONTEXT_COMPONENT = 8;
    public static final int PPORT_IN_COMPOSITION_INSTANCE_REF__TARGET_PPORT = 9;
    public static final int PPORT_IN_COMPOSITION_INSTANCE_REF__BASE = 10;
    public static final int PPORT_IN_COMPOSITION_INSTANCE_REF_FEATURE_COUNT = 11;

    public EClass getComponentInCompositionInstanceRef();

    public EReference getComponentInCompositionInstanceRef_Base();

    public EReference getComponentInCompositionInstanceRef_ContextComponents();

    public EReference getComponentInCompositionInstanceRef_TargetComponent();

    public EClass getPortInCompositionTypeInstanceRef();

    public EReference getPortInCompositionTypeInstanceRef_DelegationSwConnector();

    public EClass getRPortInCompositionInstanceRef();

    public EReference getRPortInCompositionInstanceRef_AssemblySwConnector();

    public EReference getRPortInCompositionInstanceRef_ContextComponent();

    public EReference getRPortInCompositionInstanceRef_TargetRPort();

    public EReference getRPortInCompositionInstanceRef_Base();

    public EClass getPPortInCompositionInstanceRef();

    public EReference getPPortInCompositionInstanceRef_AssemblySwConnector();

    public EReference getPPortInCompositionInstanceRef_ContextComponent();

    public EReference getPPortInCompositionInstanceRef_TargetPPort();

    public EReference getPPortInCompositionInstanceRef_Base();

    public InstancerefsFactory getInstancerefsFactory();

    public static interface Literals {
        public static final EClass COMPONENT_IN_COMPOSITION_INSTANCE_REF = eINSTANCE.getComponentInCompositionInstanceRef();
        public static final EReference COMPONENT_IN_COMPOSITION_INSTANCE_REF__BASE = eINSTANCE.getComponentInCompositionInstanceRef_Base();
        public static final EReference COMPONENT_IN_COMPOSITION_INSTANCE_REF__CONTEXT_COMPONENTS = eINSTANCE.getComponentInCompositionInstanceRef_ContextComponents();
        public static final EReference COMPONENT_IN_COMPOSITION_INSTANCE_REF__TARGET_COMPONENT = eINSTANCE.getComponentInCompositionInstanceRef_TargetComponent();
        public static final EClass PORT_IN_COMPOSITION_TYPE_INSTANCE_REF = eINSTANCE.getPortInCompositionTypeInstanceRef();
        public static final EReference PORT_IN_COMPOSITION_TYPE_INSTANCE_REF__DELEGATION_SW_CONNECTOR = eINSTANCE.getPortInCompositionTypeInstanceRef_DelegationSwConnector();
        public static final EClass RPORT_IN_COMPOSITION_INSTANCE_REF = eINSTANCE.getRPortInCompositionInstanceRef();
        public static final EReference RPORT_IN_COMPOSITION_INSTANCE_REF__ASSEMBLY_SW_CONNECTOR = eINSTANCE.getRPortInCompositionInstanceRef_AssemblySwConnector();
        public static final EReference RPORT_IN_COMPOSITION_INSTANCE_REF__CONTEXT_COMPONENT = eINSTANCE.getRPortInCompositionInstanceRef_ContextComponent();
        public static final EReference RPORT_IN_COMPOSITION_INSTANCE_REF__TARGET_RPORT = eINSTANCE.getRPortInCompositionInstanceRef_TargetRPort();
        public static final EReference RPORT_IN_COMPOSITION_INSTANCE_REF__BASE = eINSTANCE.getRPortInCompositionInstanceRef_Base();
        public static final EClass PPORT_IN_COMPOSITION_INSTANCE_REF = eINSTANCE.getPPortInCompositionInstanceRef();
        public static final EReference PPORT_IN_COMPOSITION_INSTANCE_REF__ASSEMBLY_SW_CONNECTOR = eINSTANCE.getPPortInCompositionInstanceRef_AssemblySwConnector();
        public static final EReference PPORT_IN_COMPOSITION_INSTANCE_REF__CONTEXT_COMPONENT = eINSTANCE.getPPortInCompositionInstanceRef_ContextComponent();
        public static final EReference PPORT_IN_COMPOSITION_INSTANCE_REF__TARGET_PPORT = eINSTANCE.getPPortInCompositionInstanceRef_TargetPPort();
        public static final EReference PPORT_IN_COMPOSITION_INSTANCE_REF__BASE = eINSTANCE.getPPortInCompositionInstanceRef_Base();
    }
}

