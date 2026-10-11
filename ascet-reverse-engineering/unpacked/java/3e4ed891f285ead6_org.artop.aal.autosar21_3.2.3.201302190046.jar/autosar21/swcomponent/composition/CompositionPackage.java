/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.composition;

import autosar21.swcomponent.composition.CompositionFactory;
import autosar21.swcomponent.composition.impl.CompositionPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CompositionPackage
extends EPackage {
    public static final String eNAME = "composition";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/composition";
    public static final String eNS_PREFIX = "";
    public static final CompositionPackage eINSTANCE = CompositionPackageImpl.init();
    public static final int CONNECTOR_PROTOTYPE = 1;
    public static final int CONNECTOR_PROTOTYPE__GCHECKSUM = 0;
    public static final int CONNECTOR_PROTOTYPE__GTIMESTAMP = 1;
    public static final int CONNECTOR_PROTOTYPE__CHECKSUM = 2;
    public static final int CONNECTOR_PROTOTYPE__TIMESTAMP = 3;
    public static final int CONNECTOR_PROTOTYPE__GSHORT_NAME = 4;
    public static final int CONNECTOR_PROTOTYPE__GUUID = 5;
    public static final int CONNECTOR_PROTOTYPE__GCATEGORY = 6;
    public static final int CONNECTOR_PROTOTYPE__GDESC = 7;
    public static final int CONNECTOR_PROTOTYPE__SHORT_NAME = 8;
    public static final int CONNECTOR_PROTOTYPE__LONG_NAME = 9;
    public static final int CONNECTOR_PROTOTYPE__DESC = 10;
    public static final int CONNECTOR_PROTOTYPE__CATEGORY = 11;
    public static final int CONNECTOR_PROTOTYPE__ADMIN_DATA = 12;
    public static final int CONNECTOR_PROTOTYPE__UUID = 13;
    public static final int CONNECTOR_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int CONNECTOR_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int CONNECTOR_PROTOTYPE__COMPOSITION_TYPE = 16;
    public static final int CONNECTOR_PROTOTYPE__MEASURABLES = 17;
    public static final int CONNECTOR_PROTOTYPE_FEATURE_COUNT = 18;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE = 0;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__GCHECKSUM = 0;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__GTIMESTAMP = 1;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__CHECKSUM = 2;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__TIMESTAMP = 3;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__GSHORT_NAME = 4;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__GUUID = 5;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__GCATEGORY = 6;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__GDESC = 7;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__SHORT_NAME = 8;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__LONG_NAME = 9;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__DESC = 10;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__CATEGORY = 11;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__ADMIN_DATA = 12;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__UUID = 13;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__COMPOSITION_TYPE = 16;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__MEASURABLES = 17;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__GREQUESTER = 18;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__GPROVIDER = 19;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__CONNECTOR_COM_SPECS = 20;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__PROVIDER = 21;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE__REQUESTER = 22;
    public static final int ASSEMBLY_CONNECTOR_PROTOTYPE_FEATURE_COUNT = 23;
    public static final int COMPOSITION_TYPE = 2;
    public static final int COMPOSITION_TYPE__GCHECKSUM = 0;
    public static final int COMPOSITION_TYPE__GTIMESTAMP = 1;
    public static final int COMPOSITION_TYPE__CHECKSUM = 2;
    public static final int COMPOSITION_TYPE__TIMESTAMP = 3;
    public static final int COMPOSITION_TYPE__GSHORT_NAME = 4;
    public static final int COMPOSITION_TYPE__GUUID = 5;
    public static final int COMPOSITION_TYPE__GCATEGORY = 6;
    public static final int COMPOSITION_TYPE__GDESC = 7;
    public static final int COMPOSITION_TYPE__SHORT_NAME = 8;
    public static final int COMPOSITION_TYPE__LONG_NAME = 9;
    public static final int COMPOSITION_TYPE__DESC = 10;
    public static final int COMPOSITION_TYPE__CATEGORY = 11;
    public static final int COMPOSITION_TYPE__ADMIN_DATA = 12;
    public static final int COMPOSITION_TYPE__UUID = 13;
    public static final int COMPOSITION_TYPE__ALL_EXTENSIONS = 14;
    public static final int COMPOSITION_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int COMPOSITION_TYPE__GAR_PACKAGE = 16;
    public static final int COMPOSITION_TYPE__AR_PACKAGE = 17;
    public static final int COMPOSITION_TYPE__GPORTS = 18;
    public static final int COMPOSITION_TYPE__PORTS = 19;
    public static final int COMPOSITION_TYPE__GCOMPONENTS = 20;
    public static final int COMPOSITION_TYPE__COMPONENTS = 21;
    public static final int COMPOSITION_TYPE__CONNECTORS = 22;
    public static final int COMPOSITION_TYPE_FEATURE_COUNT = 23;
    public static final int SERVICE_CONNECTOR_PROTOTYPE = 3;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__GCHECKSUM = 0;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__GTIMESTAMP = 1;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__CHECKSUM = 2;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__TIMESTAMP = 3;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__GSHORT_NAME = 4;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__GUUID = 5;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__GCATEGORY = 6;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__GDESC = 7;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__SHORT_NAME = 8;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__LONG_NAME = 9;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__DESC = 10;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__CATEGORY = 11;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__ADMIN_DATA = 12;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__UUID = 13;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__COMPOSITION_TYPE = 16;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__MEASURABLES = 17;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__ECU_SW_COMPOSITION = 18;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__APPLICATION_PORT = 19;
    public static final int SERVICE_CONNECTOR_PROTOTYPE__SERVICE_PORT = 20;
    public static final int SERVICE_CONNECTOR_PROTOTYPE_FEATURE_COUNT = 21;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE = 4;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__GCHECKSUM = 0;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__GTIMESTAMP = 1;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__CHECKSUM = 2;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__TIMESTAMP = 3;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__GSHORT_NAME = 4;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__GUUID = 5;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__GCATEGORY = 6;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__GDESC = 7;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__SHORT_NAME = 8;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__LONG_NAME = 9;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__DESC = 10;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__CATEGORY = 11;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__ADMIN_DATA = 12;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__UUID = 13;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__COMPOSITION_TYPE = 16;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__MEASURABLES = 17;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__INNER_PORT = 18;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE__OUTER_PORT = 19;
    public static final int DELEGATION_CONNECTOR_PROTOTYPE_FEATURE_COUNT = 20;
    public static final int COMPONENT_PROTOTYPE = 5;
    public static final int COMPONENT_PROTOTYPE__GCHECKSUM = 0;
    public static final int COMPONENT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int COMPONENT_PROTOTYPE__CHECKSUM = 2;
    public static final int COMPONENT_PROTOTYPE__TIMESTAMP = 3;
    public static final int COMPONENT_PROTOTYPE__GSHORT_NAME = 4;
    public static final int COMPONENT_PROTOTYPE__GUUID = 5;
    public static final int COMPONENT_PROTOTYPE__GCATEGORY = 6;
    public static final int COMPONENT_PROTOTYPE__GDESC = 7;
    public static final int COMPONENT_PROTOTYPE__SHORT_NAME = 8;
    public static final int COMPONENT_PROTOTYPE__LONG_NAME = 9;
    public static final int COMPONENT_PROTOTYPE__DESC = 10;
    public static final int COMPONENT_PROTOTYPE__CATEGORY = 11;
    public static final int COMPONENT_PROTOTYPE__ADMIN_DATA = 12;
    public static final int COMPONENT_PROTOTYPE__UUID = 13;
    public static final int COMPONENT_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int COMPONENT_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int COMPONENT_PROTOTYPE__GTYPE = 16;
    public static final int COMPONENT_PROTOTYPE__COMPOSITION_TYPE = 17;
    public static final int COMPONENT_PROTOTYPE__TYPE = 18;
    public static final int COMPONENT_PROTOTYPE_FEATURE_COUNT = 19;

    public EClass getAssemblyConnectorPrototype();

    public EReference getAssemblyConnectorPrototype_ConnectorComSpecs();

    public EReference getAssemblyConnectorPrototype_Provider();

    public EReference getAssemblyConnectorPrototype_Requester();

    public EClass getConnectorPrototype();

    public EReference getConnectorPrototype_CompositionType();

    public EReference getConnectorPrototype_Measurables();

    public EClass getCompositionType();

    public EReference getCompositionType_Components();

    public EReference getCompositionType_Connectors();

    public EClass getServiceConnectorPrototype();

    public EReference getServiceConnectorPrototype_EcuSwComposition();

    public EReference getServiceConnectorPrototype_ApplicationPort();

    public EReference getServiceConnectorPrototype_ServicePort();

    public EClass getDelegationConnectorPrototype();

    public EReference getDelegationConnectorPrototype_InnerPort();

    public EReference getDelegationConnectorPrototype_OuterPort();

    public EClass getComponentPrototype();

    public EReference getComponentPrototype_CompositionType();

    public EReference getComponentPrototype_Type();

    public CompositionFactory getCompositionFactory();

    public static interface Literals {
        public static final EClass ASSEMBLY_CONNECTOR_PROTOTYPE = eINSTANCE.getAssemblyConnectorPrototype();
        public static final EReference ASSEMBLY_CONNECTOR_PROTOTYPE__CONNECTOR_COM_SPECS = eINSTANCE.getAssemblyConnectorPrototype_ConnectorComSpecs();
        public static final EReference ASSEMBLY_CONNECTOR_PROTOTYPE__PROVIDER = eINSTANCE.getAssemblyConnectorPrototype_Provider();
        public static final EReference ASSEMBLY_CONNECTOR_PROTOTYPE__REQUESTER = eINSTANCE.getAssemblyConnectorPrototype_Requester();
        public static final EClass CONNECTOR_PROTOTYPE = eINSTANCE.getConnectorPrototype();
        public static final EReference CONNECTOR_PROTOTYPE__COMPOSITION_TYPE = eINSTANCE.getConnectorPrototype_CompositionType();
        public static final EReference CONNECTOR_PROTOTYPE__MEASURABLES = eINSTANCE.getConnectorPrototype_Measurables();
        public static final EClass COMPOSITION_TYPE = eINSTANCE.getCompositionType();
        public static final EReference COMPOSITION_TYPE__COMPONENTS = eINSTANCE.getCompositionType_Components();
        public static final EReference COMPOSITION_TYPE__CONNECTORS = eINSTANCE.getCompositionType_Connectors();
        public static final EClass SERVICE_CONNECTOR_PROTOTYPE = eINSTANCE.getServiceConnectorPrototype();
        public static final EReference SERVICE_CONNECTOR_PROTOTYPE__ECU_SW_COMPOSITION = eINSTANCE.getServiceConnectorPrototype_EcuSwComposition();
        public static final EReference SERVICE_CONNECTOR_PROTOTYPE__APPLICATION_PORT = eINSTANCE.getServiceConnectorPrototype_ApplicationPort();
        public static final EReference SERVICE_CONNECTOR_PROTOTYPE__SERVICE_PORT = eINSTANCE.getServiceConnectorPrototype_ServicePort();
        public static final EClass DELEGATION_CONNECTOR_PROTOTYPE = eINSTANCE.getDelegationConnectorPrototype();
        public static final EReference DELEGATION_CONNECTOR_PROTOTYPE__INNER_PORT = eINSTANCE.getDelegationConnectorPrototype_InnerPort();
        public static final EReference DELEGATION_CONNECTOR_PROTOTYPE__OUTER_PORT = eINSTANCE.getDelegationConnectorPrototype_OuterPort();
        public static final EClass COMPONENT_PROTOTYPE = eINSTANCE.getComponentPrototype();
        public static final EReference COMPONENT_PROTOTYPE__COMPOSITION_TYPE = eINSTANCE.getComponentPrototype_CompositionType();
        public static final EReference COMPONENT_PROTOTYPE__TYPE = eINSTANCE.getComponentPrototype_Type();
    }
}

