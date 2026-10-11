/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.composition.instanceref;

import autosar21.swcomponent.composition.instanceref.InstancerefFactory;
import autosar21.swcomponent.composition.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/composition/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER = 0;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER__GCHECKSUM = 0;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER__GTIMESTAMP = 1;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER__CHECKSUM = 2;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER__TIMESTAMP = 3;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER__GTARGET_PPORT = 4;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER__GCONTEXT_COMPONENT = 5;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER__ASSEMBLY_CONNECTOR_PROTOTYPE = 6;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER__COMPONENT_PROTOTYPE = 7;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER__PPORT_PROTOTYPE = 8;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER_FEATURE_COUNT = 9;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER = 1;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER__GCHECKSUM = 0;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER__GTIMESTAMP = 1;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER__CHECKSUM = 2;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER__TIMESTAMP = 3;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER__GTARGET_RPORT = 4;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER__GCONTEXT_COMPONENT = 5;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER__ASSEMBLY_CONNECTOR_PROTOTYPE = 6;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER__COMPONENT_PROTOTYPE = 7;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER__RPORT_PROTOTYPE = 8;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER_FEATURE_COUNT = 9;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE_INNER_PORT = 2;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE_INNER_PORT__GCHECKSUM = 0;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE_INNER_PORT__GTIMESTAMP = 1;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE_INNER_PORT__CHECKSUM = 2;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE_INNER_PORT__TIMESTAMP = 3;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE_INNER_PORT__DELEGATION_CONNECTOR_PROTOTYPE = 4;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE_INNER_PORT__COMPONENT_PROTOTYPE = 5;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE_INNER_PORT__PORT_PROTOTYPE = 6;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE_INNER_PORT_FEATURE_COUNT = 7;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT = 3;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT__GCHECKSUM = 0;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT__GTIMESTAMP = 1;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT__CHECKSUM = 2;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT__TIMESTAMP = 3;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT__SERVICE_CONNECTOR_PROTOTYPE = 4;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT__SOFTWARE_COMPOSITION = 5;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT__COMPONENT_PROTOTYPES = 6;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT__PORT_PROTOTYPE = 7;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT_FEATURE_COUNT = 8;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_SERVICE_PORT = 4;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_SERVICE_PORT__GCHECKSUM = 0;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_SERVICE_PORT__GTIMESTAMP = 1;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_SERVICE_PORT__CHECKSUM = 2;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_SERVICE_PORT__TIMESTAMP = 3;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_SERVICE_PORT__SERVICE_CONNECTOR_PROTOTYPE = 4;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_SERVICE_PORT__SERVICE_COMPONENT_PROTOTYPE = 5;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_SERVICE_PORT__PORT_PROTOTYPE = 6;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_SERVICE_PORT_FEATURE_COUNT = 7;

    public EClass getAssemblyConnectorPrototypeProvider();

    public EReference getAssemblyConnectorPrototypeProvider_AssemblyConnectorPrototype();

    public EReference getAssemblyConnectorPrototypeProvider_ComponentPrototype();

    public EReference getAssemblyConnectorPrototypeProvider_PPortPrototype();

    public EClass getAssemblyConnectorPrototypeRequester();

    public EReference getAssemblyConnectorPrototypeRequester_AssemblyConnectorPrototype();

    public EReference getAssemblyConnectorPrototypeRequester_ComponentPrototype();

    public EReference getAssemblyConnectorPrototypeRequester_RPortPrototype();

    public EClass getDelegationConnectorPrototypeInnerPort();

    public EReference getDelegationConnectorPrototypeInnerPort_DelegationConnectorPrototype();

    public EReference getDelegationConnectorPrototypeInnerPort_ComponentPrototype();

    public EReference getDelegationConnectorPrototypeInnerPort_PortPrototype();

    public EClass getServiceConnectorPrototypeApplicationPort();

    public EReference getServiceConnectorPrototypeApplicationPort_ServiceConnectorPrototype();

    public EReference getServiceConnectorPrototypeApplicationPort_SoftwareComposition();

    public EReference getServiceConnectorPrototypeApplicationPort_ComponentPrototypes();

    public EReference getServiceConnectorPrototypeApplicationPort_PortPrototype();

    public EClass getServiceConnectorPrototypeServicePort();

    public EReference getServiceConnectorPrototypeServicePort_ServiceConnectorPrototype();

    public EReference getServiceConnectorPrototypeServicePort_ServiceComponentPrototype();

    public EReference getServiceConnectorPrototypeServicePort_PortPrototype();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER = eINSTANCE.getAssemblyConnectorPrototypeProvider();
        public static final EReference ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER__ASSEMBLY_CONNECTOR_PROTOTYPE = eINSTANCE.getAssemblyConnectorPrototypeProvider_AssemblyConnectorPrototype();
        public static final EReference ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER__COMPONENT_PROTOTYPE = eINSTANCE.getAssemblyConnectorPrototypeProvider_ComponentPrototype();
        public static final EReference ASSEMBLY_CONNECTOR_PROTOTYPE_PROVIDER__PPORT_PROTOTYPE = eINSTANCE.getAssemblyConnectorPrototypeProvider_PPortPrototype();
        public static final EClass ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER = eINSTANCE.getAssemblyConnectorPrototypeRequester();
        public static final EReference ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER__ASSEMBLY_CONNECTOR_PROTOTYPE = eINSTANCE.getAssemblyConnectorPrototypeRequester_AssemblyConnectorPrototype();
        public static final EReference ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER__COMPONENT_PROTOTYPE = eINSTANCE.getAssemblyConnectorPrototypeRequester_ComponentPrototype();
        public static final EReference ASSEMBLY_CONNECTOR_PROTOTYPE_REQUESTER__RPORT_PROTOTYPE = eINSTANCE.getAssemblyConnectorPrototypeRequester_RPortPrototype();
        public static final EClass DELEGATION_CONNECTOR_PROTOTYPE_INNER_PORT = eINSTANCE.getDelegationConnectorPrototypeInnerPort();
        public static final EReference DELEGATION_CONNECTOR_PROTOTYPE_INNER_PORT__DELEGATION_CONNECTOR_PROTOTYPE = eINSTANCE.getDelegationConnectorPrototypeInnerPort_DelegationConnectorPrototype();
        public static final EReference DELEGATION_CONNECTOR_PROTOTYPE_INNER_PORT__COMPONENT_PROTOTYPE = eINSTANCE.getDelegationConnectorPrototypeInnerPort_ComponentPrototype();
        public static final EReference DELEGATION_CONNECTOR_PROTOTYPE_INNER_PORT__PORT_PROTOTYPE = eINSTANCE.getDelegationConnectorPrototypeInnerPort_PortPrototype();
        public static final EClass SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT = eINSTANCE.getServiceConnectorPrototypeApplicationPort();
        public static final EReference SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT__SERVICE_CONNECTOR_PROTOTYPE = eINSTANCE.getServiceConnectorPrototypeApplicationPort_ServiceConnectorPrototype();
        public static final EReference SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT__SOFTWARE_COMPOSITION = eINSTANCE.getServiceConnectorPrototypeApplicationPort_SoftwareComposition();
        public static final EReference SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT__COMPONENT_PROTOTYPES = eINSTANCE.getServiceConnectorPrototypeApplicationPort_ComponentPrototypes();
        public static final EReference SERVICE_CONNECTOR_PROTOTYPE_APPLICATION_PORT__PORT_PROTOTYPE = eINSTANCE.getServiceConnectorPrototypeApplicationPort_PortPrototype();
        public static final EClass SERVICE_CONNECTOR_PROTOTYPE_SERVICE_PORT = eINSTANCE.getServiceConnectorPrototypeServicePort();
        public static final EReference SERVICE_CONNECTOR_PROTOTYPE_SERVICE_PORT__SERVICE_CONNECTOR_PROTOTYPE = eINSTANCE.getServiceConnectorPrototypeServicePort_ServiceConnectorPrototype();
        public static final EReference SERVICE_CONNECTOR_PROTOTYPE_SERVICE_PORT__SERVICE_COMPONENT_PROTOTYPE = eINSTANCE.getServiceConnectorPrototypeServicePort_ServiceComponentPrototype();
        public static final EReference SERVICE_CONNECTOR_PROTOTYPE_SERVICE_PORT__PORT_PROTOTYPE = eINSTANCE.getServiceConnectorPrototypeServicePort_PortPrototype();
    }
}

