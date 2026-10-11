/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.composition;

import autosar40.swcomponent.composition.CompositionFactory;
import autosar40.swcomponent.composition.impl.CompositionPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CompositionPackage
extends EPackage {
    public static final String eNAME = "composition";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/composition";
    public static final String eNS_PREFIX = "";
    public static final CompositionPackage eINSTANCE = CompositionPackageImpl.init();
    public static final int SW_CONNECTOR = 1;
    public static final int SW_CONNECTOR__GCHECKSUM = 0;
    public static final int SW_CONNECTOR__GTIMESTAMP = 1;
    public static final int SW_CONNECTOR__CHECKSUM = 2;
    public static final int SW_CONNECTOR__TIMESTAMP = 3;
    public static final int SW_CONNECTOR__GSHORT_NAME = 4;
    public static final int SW_CONNECTOR__SHORT_NAME = 5;
    public static final int SW_CONNECTOR__LONG_NAME = 6;
    public static final int SW_CONNECTOR__GUUID = 7;
    public static final int SW_CONNECTOR__GCATEGORY = 8;
    public static final int SW_CONNECTOR__GDESC = 9;
    public static final int SW_CONNECTOR__DESC = 10;
    public static final int SW_CONNECTOR__CATEGORY = 11;
    public static final int SW_CONNECTOR__ADMIN_DATA = 12;
    public static final int SW_CONNECTOR__INTRODUCTION = 13;
    public static final int SW_CONNECTOR__ANNOTATIONS = 14;
    public static final int SW_CONNECTOR__UUID = 15;
    public static final int SW_CONNECTOR__ALL_EXTENSIONS = 16;
    public static final int SW_CONNECTOR__CONTAINED_EXTENSIONS = 17;
    public static final int SW_CONNECTOR__ATP_CLASSIFIER = 18;
    public static final int SW_CONNECTOR__COMPOSITION_SW_COMPONENT_TYPE = 19;
    public static final int SW_CONNECTOR__MAPPING = 20;
    public static final int SW_CONNECTOR__VARIATION_POINT = 21;
    public static final int SW_CONNECTOR_FEATURE_COUNT = 22;
    public static final int ASSEMBLY_SW_CONNECTOR = 0;
    public static final int ASSEMBLY_SW_CONNECTOR__GCHECKSUM = 0;
    public static final int ASSEMBLY_SW_CONNECTOR__GTIMESTAMP = 1;
    public static final int ASSEMBLY_SW_CONNECTOR__CHECKSUM = 2;
    public static final int ASSEMBLY_SW_CONNECTOR__TIMESTAMP = 3;
    public static final int ASSEMBLY_SW_CONNECTOR__GSHORT_NAME = 4;
    public static final int ASSEMBLY_SW_CONNECTOR__SHORT_NAME = 5;
    public static final int ASSEMBLY_SW_CONNECTOR__LONG_NAME = 6;
    public static final int ASSEMBLY_SW_CONNECTOR__GUUID = 7;
    public static final int ASSEMBLY_SW_CONNECTOR__GCATEGORY = 8;
    public static final int ASSEMBLY_SW_CONNECTOR__GDESC = 9;
    public static final int ASSEMBLY_SW_CONNECTOR__DESC = 10;
    public static final int ASSEMBLY_SW_CONNECTOR__CATEGORY = 11;
    public static final int ASSEMBLY_SW_CONNECTOR__ADMIN_DATA = 12;
    public static final int ASSEMBLY_SW_CONNECTOR__INTRODUCTION = 13;
    public static final int ASSEMBLY_SW_CONNECTOR__ANNOTATIONS = 14;
    public static final int ASSEMBLY_SW_CONNECTOR__UUID = 15;
    public static final int ASSEMBLY_SW_CONNECTOR__ALL_EXTENSIONS = 16;
    public static final int ASSEMBLY_SW_CONNECTOR__CONTAINED_EXTENSIONS = 17;
    public static final int ASSEMBLY_SW_CONNECTOR__ATP_CLASSIFIER = 18;
    public static final int ASSEMBLY_SW_CONNECTOR__COMPOSITION_SW_COMPONENT_TYPE = 19;
    public static final int ASSEMBLY_SW_CONNECTOR__MAPPING = 20;
    public static final int ASSEMBLY_SW_CONNECTOR__VARIATION_POINT = 21;
    public static final int ASSEMBLY_SW_CONNECTOR__GREQUESTER = 22;
    public static final int ASSEMBLY_SW_CONNECTOR__GPROVIDER = 23;
    public static final int ASSEMBLY_SW_CONNECTOR__PROVIDER = 24;
    public static final int ASSEMBLY_SW_CONNECTOR__REQUESTER = 25;
    public static final int ASSEMBLY_SW_CONNECTOR_FEATURE_COUNT = 26;
    public static final int SW_COMPONENT_PROTOTYPE = 2;
    public static final int SW_COMPONENT_PROTOTYPE__GCHECKSUM = 0;
    public static final int SW_COMPONENT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int SW_COMPONENT_PROTOTYPE__CHECKSUM = 2;
    public static final int SW_COMPONENT_PROTOTYPE__TIMESTAMP = 3;
    public static final int SW_COMPONENT_PROTOTYPE__GSHORT_NAME = 4;
    public static final int SW_COMPONENT_PROTOTYPE__SHORT_NAME = 5;
    public static final int SW_COMPONENT_PROTOTYPE__LONG_NAME = 6;
    public static final int SW_COMPONENT_PROTOTYPE__GUUID = 7;
    public static final int SW_COMPONENT_PROTOTYPE__GCATEGORY = 8;
    public static final int SW_COMPONENT_PROTOTYPE__GDESC = 9;
    public static final int SW_COMPONENT_PROTOTYPE__DESC = 10;
    public static final int SW_COMPONENT_PROTOTYPE__CATEGORY = 11;
    public static final int SW_COMPONENT_PROTOTYPE__ADMIN_DATA = 12;
    public static final int SW_COMPONENT_PROTOTYPE__INTRODUCTION = 13;
    public static final int SW_COMPONENT_PROTOTYPE__ANNOTATIONS = 14;
    public static final int SW_COMPONENT_PROTOTYPE__UUID = 15;
    public static final int SW_COMPONENT_PROTOTYPE__ALL_EXTENSIONS = 16;
    public static final int SW_COMPONENT_PROTOTYPE__CONTAINED_EXTENSIONS = 17;
    public static final int SW_COMPONENT_PROTOTYPE__ATP_CLASSIFIER = 18;
    public static final int SW_COMPONENT_PROTOTYPE__GTYPE = 19;
    public static final int SW_COMPONENT_PROTOTYPE__COMPOSITION_SW_COMPONENT_TYPE = 20;
    public static final int SW_COMPONENT_PROTOTYPE__TYPE = 21;
    public static final int SW_COMPONENT_PROTOTYPE__VARIATION_POINT = 22;
    public static final int SW_COMPONENT_PROTOTYPE_FEATURE_COUNT = 23;
    public static final int DELEGATION_SW_CONNECTOR = 3;
    public static final int DELEGATION_SW_CONNECTOR__GCHECKSUM = 0;
    public static final int DELEGATION_SW_CONNECTOR__GTIMESTAMP = 1;
    public static final int DELEGATION_SW_CONNECTOR__CHECKSUM = 2;
    public static final int DELEGATION_SW_CONNECTOR__TIMESTAMP = 3;
    public static final int DELEGATION_SW_CONNECTOR__GSHORT_NAME = 4;
    public static final int DELEGATION_SW_CONNECTOR__SHORT_NAME = 5;
    public static final int DELEGATION_SW_CONNECTOR__LONG_NAME = 6;
    public static final int DELEGATION_SW_CONNECTOR__GUUID = 7;
    public static final int DELEGATION_SW_CONNECTOR__GCATEGORY = 8;
    public static final int DELEGATION_SW_CONNECTOR__GDESC = 9;
    public static final int DELEGATION_SW_CONNECTOR__DESC = 10;
    public static final int DELEGATION_SW_CONNECTOR__CATEGORY = 11;
    public static final int DELEGATION_SW_CONNECTOR__ADMIN_DATA = 12;
    public static final int DELEGATION_SW_CONNECTOR__INTRODUCTION = 13;
    public static final int DELEGATION_SW_CONNECTOR__ANNOTATIONS = 14;
    public static final int DELEGATION_SW_CONNECTOR__UUID = 15;
    public static final int DELEGATION_SW_CONNECTOR__ALL_EXTENSIONS = 16;
    public static final int DELEGATION_SW_CONNECTOR__CONTAINED_EXTENSIONS = 17;
    public static final int DELEGATION_SW_CONNECTOR__ATP_CLASSIFIER = 18;
    public static final int DELEGATION_SW_CONNECTOR__COMPOSITION_SW_COMPONENT_TYPE = 19;
    public static final int DELEGATION_SW_CONNECTOR__MAPPING = 20;
    public static final int DELEGATION_SW_CONNECTOR__VARIATION_POINT = 21;
    public static final int DELEGATION_SW_CONNECTOR__INNER_PORT = 22;
    public static final int DELEGATION_SW_CONNECTOR__OUTER_PORT = 23;
    public static final int DELEGATION_SW_CONNECTOR_FEATURE_COUNT = 24;
    public static final int COMPOSITION_SW_COMPONENT_TYPE = 4;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__SHORT_NAME = 5;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__LONG_NAME = 6;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__GUUID = 7;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__GCATEGORY = 8;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__GDESC = 9;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__DESC = 10;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__CATEGORY = 11;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__ANNOTATIONS = 14;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__UUID = 15;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__ALL_EXTENSIONS = 16;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__GAR_PACKAGE = 18;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__AR_PACKAGE = 19;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__VARIATION_POINT = 20;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__SHORT_NAME_PATTERN = 21;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__GPORTS = 22;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__SW_COMPONENT_DOCUMENTATIONS = 23;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__PORTS = 24;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__PORT_GROUPS = 25;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__GCOMPONENTS = 26;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__COMPONENTS = 27;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__CONNECTORS = 28;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__CONSTANT_VALUE_MAPPINGS = 29;
    public static final int COMPOSITION_SW_COMPONENT_TYPE__DATA_TYPE_MAPPINGS = 30;
    public static final int COMPOSITION_SW_COMPONENT_TYPE_FEATURE_COUNT = 31;

    public EClass getAssemblySwConnector();

    public EReference getAssemblySwConnector_Provider();

    public EReference getAssemblySwConnector_Requester();

    public EClass getSwConnector();

    public EReference getSwConnector_CompositionSwComponentType();

    public EReference getSwConnector_Mapping();

    public EReference getSwConnector_VariationPoint();

    public EClass getSwComponentPrototype();

    public EReference getSwComponentPrototype_CompositionSwComponentType();

    public EReference getSwComponentPrototype_Type();

    public EReference getSwComponentPrototype_VariationPoint();

    public EClass getDelegationSwConnector();

    public EReference getDelegationSwConnector_InnerPort();

    public EReference getDelegationSwConnector_OuterPort();

    public EClass getCompositionSwComponentType();

    public EReference getCompositionSwComponentType_Components();

    public EReference getCompositionSwComponentType_Connectors();

    public EReference getCompositionSwComponentType_ConstantValueMappings();

    public EReference getCompositionSwComponentType_DataTypeMappings();

    public CompositionFactory getCompositionFactory();

    public static interface Literals {
        public static final EClass ASSEMBLY_SW_CONNECTOR = eINSTANCE.getAssemblySwConnector();
        public static final EReference ASSEMBLY_SW_CONNECTOR__PROVIDER = eINSTANCE.getAssemblySwConnector_Provider();
        public static final EReference ASSEMBLY_SW_CONNECTOR__REQUESTER = eINSTANCE.getAssemblySwConnector_Requester();
        public static final EClass SW_CONNECTOR = eINSTANCE.getSwConnector();
        public static final EReference SW_CONNECTOR__COMPOSITION_SW_COMPONENT_TYPE = eINSTANCE.getSwConnector_CompositionSwComponentType();
        public static final EReference SW_CONNECTOR__MAPPING = eINSTANCE.getSwConnector_Mapping();
        public static final EReference SW_CONNECTOR__VARIATION_POINT = eINSTANCE.getSwConnector_VariationPoint();
        public static final EClass SW_COMPONENT_PROTOTYPE = eINSTANCE.getSwComponentPrototype();
        public static final EReference SW_COMPONENT_PROTOTYPE__COMPOSITION_SW_COMPONENT_TYPE = eINSTANCE.getSwComponentPrototype_CompositionSwComponentType();
        public static final EReference SW_COMPONENT_PROTOTYPE__TYPE = eINSTANCE.getSwComponentPrototype_Type();
        public static final EReference SW_COMPONENT_PROTOTYPE__VARIATION_POINT = eINSTANCE.getSwComponentPrototype_VariationPoint();
        public static final EClass DELEGATION_SW_CONNECTOR = eINSTANCE.getDelegationSwConnector();
        public static final EReference DELEGATION_SW_CONNECTOR__INNER_PORT = eINSTANCE.getDelegationSwConnector_InnerPort();
        public static final EReference DELEGATION_SW_CONNECTOR__OUTER_PORT = eINSTANCE.getDelegationSwConnector_OuterPort();
        public static final EClass COMPOSITION_SW_COMPONENT_TYPE = eINSTANCE.getCompositionSwComponentType();
        public static final EReference COMPOSITION_SW_COMPONENT_TYPE__COMPONENTS = eINSTANCE.getCompositionSwComponentType_Components();
        public static final EReference COMPOSITION_SW_COMPONENT_TYPE__CONNECTORS = eINSTANCE.getCompositionSwComponentType_Connectors();
        public static final EReference COMPOSITION_SW_COMPONENT_TYPE__CONSTANT_VALUE_MAPPINGS = eINSTANCE.getCompositionSwComponentType_ConstantValueMappings();
        public static final EReference COMPOSITION_SW_COMPONENT_TYPE__DATA_TYPE_MAPPINGS = eINSTANCE.getCompositionSwComponentType_DataTypeMappings();
    }
}

