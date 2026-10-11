/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.components;

import autosar40.swcomponent.components.ComponentsFactory;
import autosar40.swcomponent.components.impl.ComponentsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ComponentsPackage
extends EPackage {
    public static final String eNAME = "components";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/components";
    public static final String eNS_PREFIX = "";
    public static final ComponentsPackage eINSTANCE = ComponentsPackageImpl.init();
    public static final int SW_COMPONENT_TYPE = 2;
    public static final int SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int SW_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int SW_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int SW_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int SW_COMPONENT_TYPE__SHORT_NAME = 5;
    public static final int SW_COMPONENT_TYPE__LONG_NAME = 6;
    public static final int SW_COMPONENT_TYPE__GUUID = 7;
    public static final int SW_COMPONENT_TYPE__GCATEGORY = 8;
    public static final int SW_COMPONENT_TYPE__GDESC = 9;
    public static final int SW_COMPONENT_TYPE__DESC = 10;
    public static final int SW_COMPONENT_TYPE__CATEGORY = 11;
    public static final int SW_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int SW_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int SW_COMPONENT_TYPE__ANNOTATIONS = 14;
    public static final int SW_COMPONENT_TYPE__UUID = 15;
    public static final int SW_COMPONENT_TYPE__ALL_EXTENSIONS = 16;
    public static final int SW_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int SW_COMPONENT_TYPE__GAR_PACKAGE = 18;
    public static final int SW_COMPONENT_TYPE__AR_PACKAGE = 19;
    public static final int SW_COMPONENT_TYPE__VARIATION_POINT = 20;
    public static final int SW_COMPONENT_TYPE__SHORT_NAME_PATTERN = 21;
    public static final int SW_COMPONENT_TYPE__GPORTS = 22;
    public static final int SW_COMPONENT_TYPE__SW_COMPONENT_DOCUMENTATIONS = 23;
    public static final int SW_COMPONENT_TYPE__PORTS = 24;
    public static final int SW_COMPONENT_TYPE__PORT_GROUPS = 25;
    public static final int SW_COMPONENT_TYPE_FEATURE_COUNT = 26;
    public static final int ATOMIC_SW_COMPONENT_TYPE = 1;
    public static final int ATOMIC_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int ATOMIC_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int ATOMIC_SW_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int ATOMIC_SW_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int ATOMIC_SW_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int ATOMIC_SW_COMPONENT_TYPE__SHORT_NAME = 5;
    public static final int ATOMIC_SW_COMPONENT_TYPE__LONG_NAME = 6;
    public static final int ATOMIC_SW_COMPONENT_TYPE__GUUID = 7;
    public static final int ATOMIC_SW_COMPONENT_TYPE__GCATEGORY = 8;
    public static final int ATOMIC_SW_COMPONENT_TYPE__GDESC = 9;
    public static final int ATOMIC_SW_COMPONENT_TYPE__DESC = 10;
    public static final int ATOMIC_SW_COMPONENT_TYPE__CATEGORY = 11;
    public static final int ATOMIC_SW_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int ATOMIC_SW_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int ATOMIC_SW_COMPONENT_TYPE__ANNOTATIONS = 14;
    public static final int ATOMIC_SW_COMPONENT_TYPE__UUID = 15;
    public static final int ATOMIC_SW_COMPONENT_TYPE__ALL_EXTENSIONS = 16;
    public static final int ATOMIC_SW_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int ATOMIC_SW_COMPONENT_TYPE__GAR_PACKAGE = 18;
    public static final int ATOMIC_SW_COMPONENT_TYPE__AR_PACKAGE = 19;
    public static final int ATOMIC_SW_COMPONENT_TYPE__VARIATION_POINT = 20;
    public static final int ATOMIC_SW_COMPONENT_TYPE__SHORT_NAME_PATTERN = 21;
    public static final int ATOMIC_SW_COMPONENT_TYPE__GPORTS = 22;
    public static final int ATOMIC_SW_COMPONENT_TYPE__SW_COMPONENT_DOCUMENTATIONS = 23;
    public static final int ATOMIC_SW_COMPONENT_TYPE__PORTS = 24;
    public static final int ATOMIC_SW_COMPONENT_TYPE__PORT_GROUPS = 25;
    public static final int ATOMIC_SW_COMPONENT_TYPE__INTERNAL_BEHAVIORS = 26;
    public static final int ATOMIC_SW_COMPONENT_TYPE__SYMBOL_PROPS = 27;
    public static final int ATOMIC_SW_COMPONENT_TYPE_FEATURE_COUNT = 28;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE = 0;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__SHORT_NAME = 5;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__LONG_NAME = 6;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__GUUID = 7;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__GCATEGORY = 8;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__GDESC = 9;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__DESC = 10;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__CATEGORY = 11;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__ANNOTATIONS = 14;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__UUID = 15;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__ALL_EXTENSIONS = 16;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__GAR_PACKAGE = 18;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__AR_PACKAGE = 19;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__VARIATION_POINT = 20;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__SHORT_NAME_PATTERN = 21;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__GPORTS = 22;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__SW_COMPONENT_DOCUMENTATIONS = 23;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__PORTS = 24;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__PORT_GROUPS = 25;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__INTERNAL_BEHAVIORS = 26;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE__SYMBOL_PROPS = 27;
    public static final int SERVICE_PROXY_SW_COMPONENT_TYPE_FEATURE_COUNT = 28;
    public static final int PORT_GROUP = 3;
    public static final int PORT_GROUP__GCHECKSUM = 0;
    public static final int PORT_GROUP__GTIMESTAMP = 1;
    public static final int PORT_GROUP__CHECKSUM = 2;
    public static final int PORT_GROUP__TIMESTAMP = 3;
    public static final int PORT_GROUP__GSHORT_NAME = 4;
    public static final int PORT_GROUP__SHORT_NAME = 5;
    public static final int PORT_GROUP__LONG_NAME = 6;
    public static final int PORT_GROUP__GUUID = 7;
    public static final int PORT_GROUP__GCATEGORY = 8;
    public static final int PORT_GROUP__GDESC = 9;
    public static final int PORT_GROUP__DESC = 10;
    public static final int PORT_GROUP__CATEGORY = 11;
    public static final int PORT_GROUP__ADMIN_DATA = 12;
    public static final int PORT_GROUP__INTRODUCTION = 13;
    public static final int PORT_GROUP__ANNOTATIONS = 14;
    public static final int PORT_GROUP__UUID = 15;
    public static final int PORT_GROUP__ALL_EXTENSIONS = 16;
    public static final int PORT_GROUP__CONTAINED_EXTENSIONS = 17;
    public static final int PORT_GROUP__ATP_CLASSIFIER = 18;
    public static final int PORT_GROUP__SW_COMPONENT_TYPE = 19;
    public static final int PORT_GROUP__INNER_GROUPS = 20;
    public static final int PORT_GROUP__OUTER_PORTS = 21;
    public static final int PORT_GROUP__VARIATION_POINT = 22;
    public static final int PORT_GROUP_FEATURE_COUNT = 23;
    public static final int PORT_PROTOTYPE = 15;
    public static final int PORT_PROTOTYPE__GCHECKSUM = 0;
    public static final int PORT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int PORT_PROTOTYPE__CHECKSUM = 2;
    public static final int PORT_PROTOTYPE__TIMESTAMP = 3;
    public static final int PORT_PROTOTYPE__GSHORT_NAME = 4;
    public static final int PORT_PROTOTYPE__SHORT_NAME = 5;
    public static final int PORT_PROTOTYPE__LONG_NAME = 6;
    public static final int PORT_PROTOTYPE__GUUID = 7;
    public static final int PORT_PROTOTYPE__GCATEGORY = 8;
    public static final int PORT_PROTOTYPE__GDESC = 9;
    public static final int PORT_PROTOTYPE__DESC = 10;
    public static final int PORT_PROTOTYPE__CATEGORY = 11;
    public static final int PORT_PROTOTYPE__ADMIN_DATA = 12;
    public static final int PORT_PROTOTYPE__INTRODUCTION = 13;
    public static final int PORT_PROTOTYPE__ANNOTATIONS = 14;
    public static final int PORT_PROTOTYPE__UUID = 15;
    public static final int PORT_PROTOTYPE__ALL_EXTENSIONS = 16;
    public static final int PORT_PROTOTYPE__CONTAINED_EXTENSIONS = 17;
    public static final int PORT_PROTOTYPE__ATP_CLASSIFIER = 18;
    public static final int PORT_PROTOTYPE__SW_COMPONENT_TYPE = 19;
    public static final int PORT_PROTOTYPE__CLIENT_SERVER_ANNOTATIONS = 20;
    public static final int PORT_PROTOTYPE__DELEGATED_PORT_ANNOTATION = 21;
    public static final int PORT_PROTOTYPE__IO_HW_ABSTRACTION_SERVER_ANNOTATIONS = 22;
    public static final int PORT_PROTOTYPE__MODE_PORT_ANNOTATIONS = 23;
    public static final int PORT_PROTOTYPE__NV_DATA_PORT_ANNOTATIONS = 24;
    public static final int PORT_PROTOTYPE__PARAMETER_PORT_ANNOTATIONS = 25;
    public static final int PORT_PROTOTYPE__SENDER_RECEIVER_ANNOTATIONS = 26;
    public static final int PORT_PROTOTYPE__TRIGGER_PORT_ANNOTATIONS = 27;
    public static final int PORT_PROTOTYPE__VARIATION_POINT = 28;
    public static final int PORT_PROTOTYPE_FEATURE_COUNT = 29;
    public static final int PPORT_PROTOTYPE = 4;
    public static final int PPORT_PROTOTYPE__GCHECKSUM = 0;
    public static final int PPORT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int PPORT_PROTOTYPE__CHECKSUM = 2;
    public static final int PPORT_PROTOTYPE__TIMESTAMP = 3;
    public static final int PPORT_PROTOTYPE__GSHORT_NAME = 4;
    public static final int PPORT_PROTOTYPE__SHORT_NAME = 5;
    public static final int PPORT_PROTOTYPE__LONG_NAME = 6;
    public static final int PPORT_PROTOTYPE__GUUID = 7;
    public static final int PPORT_PROTOTYPE__GCATEGORY = 8;
    public static final int PPORT_PROTOTYPE__GDESC = 9;
    public static final int PPORT_PROTOTYPE__DESC = 10;
    public static final int PPORT_PROTOTYPE__CATEGORY = 11;
    public static final int PPORT_PROTOTYPE__ADMIN_DATA = 12;
    public static final int PPORT_PROTOTYPE__INTRODUCTION = 13;
    public static final int PPORT_PROTOTYPE__ANNOTATIONS = 14;
    public static final int PPORT_PROTOTYPE__UUID = 15;
    public static final int PPORT_PROTOTYPE__ALL_EXTENSIONS = 16;
    public static final int PPORT_PROTOTYPE__CONTAINED_EXTENSIONS = 17;
    public static final int PPORT_PROTOTYPE__ATP_CLASSIFIER = 18;
    public static final int PPORT_PROTOTYPE__SW_COMPONENT_TYPE = 19;
    public static final int PPORT_PROTOTYPE__CLIENT_SERVER_ANNOTATIONS = 20;
    public static final int PPORT_PROTOTYPE__DELEGATED_PORT_ANNOTATION = 21;
    public static final int PPORT_PROTOTYPE__IO_HW_ABSTRACTION_SERVER_ANNOTATIONS = 22;
    public static final int PPORT_PROTOTYPE__MODE_PORT_ANNOTATIONS = 23;
    public static final int PPORT_PROTOTYPE__NV_DATA_PORT_ANNOTATIONS = 24;
    public static final int PPORT_PROTOTYPE__PARAMETER_PORT_ANNOTATIONS = 25;
    public static final int PPORT_PROTOTYPE__SENDER_RECEIVER_ANNOTATIONS = 26;
    public static final int PPORT_PROTOTYPE__TRIGGER_PORT_ANNOTATIONS = 27;
    public static final int PPORT_PROTOTYPE__VARIATION_POINT = 28;
    public static final int PPORT_PROTOTYPE__GPROVIDED_INTERFACE = 29;
    public static final int PPORT_PROTOTYPE__PROVIDED_COM_SPECS = 30;
    public static final int PPORT_PROTOTYPE__PROVIDED_INTERFACE = 31;
    public static final int PPORT_PROTOTYPE_FEATURE_COUNT = 32;
    public static final int RPORT_PROTOTYPE = 5;
    public static final int RPORT_PROTOTYPE__GCHECKSUM = 0;
    public static final int RPORT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int RPORT_PROTOTYPE__CHECKSUM = 2;
    public static final int RPORT_PROTOTYPE__TIMESTAMP = 3;
    public static final int RPORT_PROTOTYPE__GSHORT_NAME = 4;
    public static final int RPORT_PROTOTYPE__SHORT_NAME = 5;
    public static final int RPORT_PROTOTYPE__LONG_NAME = 6;
    public static final int RPORT_PROTOTYPE__GUUID = 7;
    public static final int RPORT_PROTOTYPE__GCATEGORY = 8;
    public static final int RPORT_PROTOTYPE__GDESC = 9;
    public static final int RPORT_PROTOTYPE__DESC = 10;
    public static final int RPORT_PROTOTYPE__CATEGORY = 11;
    public static final int RPORT_PROTOTYPE__ADMIN_DATA = 12;
    public static final int RPORT_PROTOTYPE__INTRODUCTION = 13;
    public static final int RPORT_PROTOTYPE__ANNOTATIONS = 14;
    public static final int RPORT_PROTOTYPE__UUID = 15;
    public static final int RPORT_PROTOTYPE__ALL_EXTENSIONS = 16;
    public static final int RPORT_PROTOTYPE__CONTAINED_EXTENSIONS = 17;
    public static final int RPORT_PROTOTYPE__ATP_CLASSIFIER = 18;
    public static final int RPORT_PROTOTYPE__SW_COMPONENT_TYPE = 19;
    public static final int RPORT_PROTOTYPE__CLIENT_SERVER_ANNOTATIONS = 20;
    public static final int RPORT_PROTOTYPE__DELEGATED_PORT_ANNOTATION = 21;
    public static final int RPORT_PROTOTYPE__IO_HW_ABSTRACTION_SERVER_ANNOTATIONS = 22;
    public static final int RPORT_PROTOTYPE__MODE_PORT_ANNOTATIONS = 23;
    public static final int RPORT_PROTOTYPE__NV_DATA_PORT_ANNOTATIONS = 24;
    public static final int RPORT_PROTOTYPE__PARAMETER_PORT_ANNOTATIONS = 25;
    public static final int RPORT_PROTOTYPE__SENDER_RECEIVER_ANNOTATIONS = 26;
    public static final int RPORT_PROTOTYPE__TRIGGER_PORT_ANNOTATIONS = 27;
    public static final int RPORT_PROTOTYPE__VARIATION_POINT = 28;
    public static final int RPORT_PROTOTYPE__GREQUIRED_INTERFACE = 29;
    public static final int RPORT_PROTOTYPE__REQUIRED_COM_SPECS = 30;
    public static final int RPORT_PROTOTYPE__REQUIRED_INTERFACE = 31;
    public static final int RPORT_PROTOTYPE_FEATURE_COUNT = 32;
    public static final int PORT_PROTOTYPE_REF_CONDITIONAL = 6;
    public static final int PORT_PROTOTYPE_REF_CONDITIONAL__GCHECKSUM = 0;
    public static final int PORT_PROTOTYPE_REF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int PORT_PROTOTYPE_REF_CONDITIONAL__CHECKSUM = 2;
    public static final int PORT_PROTOTYPE_REF_CONDITIONAL__TIMESTAMP = 3;
    public static final int PORT_PROTOTYPE_REF_CONDITIONAL__PORT_GROUP = 4;
    public static final int PORT_PROTOTYPE_REF_CONDITIONAL__PORT_PROTOTYPE = 5;
    public static final int PORT_PROTOTYPE_REF_CONDITIONAL__VARIATION_POINT = 6;
    public static final int PORT_PROTOTYPE_REF_CONDITIONAL_FEATURE_COUNT = 7;
    public static final int SYMBOL_PROPS = 7;
    public static final int SYMBOL_PROPS__GCHECKSUM = 0;
    public static final int SYMBOL_PROPS__GTIMESTAMP = 1;
    public static final int SYMBOL_PROPS__CHECKSUM = 2;
    public static final int SYMBOL_PROPS__TIMESTAMP = 3;
    public static final int SYMBOL_PROPS__GSHORT_NAME = 4;
    public static final int SYMBOL_PROPS__SHORT_NAME = 5;
    public static final int SYMBOL_PROPS__SYMBOL = 6;
    public static final int SYMBOL_PROPS_FEATURE_COUNT = 7;
    public static final int APPLICATION_SW_COMPONENT_TYPE = 8;
    public static final int APPLICATION_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int APPLICATION_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int APPLICATION_SW_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int APPLICATION_SW_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int APPLICATION_SW_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int APPLICATION_SW_COMPONENT_TYPE__SHORT_NAME = 5;
    public static final int APPLICATION_SW_COMPONENT_TYPE__LONG_NAME = 6;
    public static final int APPLICATION_SW_COMPONENT_TYPE__GUUID = 7;
    public static final int APPLICATION_SW_COMPONENT_TYPE__GCATEGORY = 8;
    public static final int APPLICATION_SW_COMPONENT_TYPE__GDESC = 9;
    public static final int APPLICATION_SW_COMPONENT_TYPE__DESC = 10;
    public static final int APPLICATION_SW_COMPONENT_TYPE__CATEGORY = 11;
    public static final int APPLICATION_SW_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int APPLICATION_SW_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int APPLICATION_SW_COMPONENT_TYPE__ANNOTATIONS = 14;
    public static final int APPLICATION_SW_COMPONENT_TYPE__UUID = 15;
    public static final int APPLICATION_SW_COMPONENT_TYPE__ALL_EXTENSIONS = 16;
    public static final int APPLICATION_SW_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int APPLICATION_SW_COMPONENT_TYPE__GAR_PACKAGE = 18;
    public static final int APPLICATION_SW_COMPONENT_TYPE__AR_PACKAGE = 19;
    public static final int APPLICATION_SW_COMPONENT_TYPE__VARIATION_POINT = 20;
    public static final int APPLICATION_SW_COMPONENT_TYPE__SHORT_NAME_PATTERN = 21;
    public static final int APPLICATION_SW_COMPONENT_TYPE__GPORTS = 22;
    public static final int APPLICATION_SW_COMPONENT_TYPE__SW_COMPONENT_DOCUMENTATIONS = 23;
    public static final int APPLICATION_SW_COMPONENT_TYPE__PORTS = 24;
    public static final int APPLICATION_SW_COMPONENT_TYPE__PORT_GROUPS = 25;
    public static final int APPLICATION_SW_COMPONENT_TYPE__INTERNAL_BEHAVIORS = 26;
    public static final int APPLICATION_SW_COMPONENT_TYPE__SYMBOL_PROPS = 27;
    public static final int APPLICATION_SW_COMPONENT_TYPE_FEATURE_COUNT = 28;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE = 9;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__SHORT_NAME = 5;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__LONG_NAME = 6;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__GUUID = 7;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__GCATEGORY = 8;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__GDESC = 9;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__DESC = 10;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__CATEGORY = 11;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__ANNOTATIONS = 14;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__UUID = 15;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__ALL_EXTENSIONS = 16;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__GAR_PACKAGE = 18;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__AR_PACKAGE = 19;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__VARIATION_POINT = 20;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__SHORT_NAME_PATTERN = 21;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__GPORTS = 22;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__SW_COMPONENT_DOCUMENTATIONS = 23;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__PORTS = 24;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__PORT_GROUPS = 25;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__INTERNAL_BEHAVIORS = 26;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__SYMBOL_PROPS = 27;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__HARDWARE_ELEMENTS = 28;
    public static final int COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE_FEATURE_COUNT = 29;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE = 10;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__SHORT_NAME = 5;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__LONG_NAME = 6;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__GUUID = 7;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__GCATEGORY = 8;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__GDESC = 9;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__DESC = 10;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__CATEGORY = 11;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__ANNOTATIONS = 14;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__UUID = 15;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__ALL_EXTENSIONS = 16;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__GAR_PACKAGE = 18;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__AR_PACKAGE = 19;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__VARIATION_POINT = 20;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__SHORT_NAME_PATTERN = 21;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__GPORTS = 22;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__SW_COMPONENT_DOCUMENTATIONS = 23;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__PORTS = 24;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__PORT_GROUPS = 25;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__INTERNAL_BEHAVIORS = 26;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__SYMBOL_PROPS = 27;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE__HARDWARE_ELEMENTS = 28;
    public static final int ECU_ABSTRACTION_SW_COMPONENT_TYPE_FEATURE_COUNT = 29;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE = 11;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__SHORT_NAME = 5;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__LONG_NAME = 6;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__GUUID = 7;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__GCATEGORY = 8;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__GDESC = 9;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__DESC = 10;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__CATEGORY = 11;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__ANNOTATIONS = 14;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__UUID = 15;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__ALL_EXTENSIONS = 16;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__GAR_PACKAGE = 18;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__AR_PACKAGE = 19;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__VARIATION_POINT = 20;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__SHORT_NAME_PATTERN = 21;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__GPORTS = 22;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__SW_COMPONENT_DOCUMENTATIONS = 23;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__PORTS = 24;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__PORT_GROUPS = 25;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__INTERNAL_BEHAVIORS = 26;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__SYMBOL_PROPS = 27;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE__NV_BLOCK_DESCRIPTORS = 28;
    public static final int NV_BLOCK_SW_COMPONENT_TYPE_FEATURE_COUNT = 29;
    public static final int PARAMETER_SW_COMPONENT_TYPE = 12;
    public static final int PARAMETER_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int PARAMETER_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int PARAMETER_SW_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int PARAMETER_SW_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int PARAMETER_SW_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int PARAMETER_SW_COMPONENT_TYPE__SHORT_NAME = 5;
    public static final int PARAMETER_SW_COMPONENT_TYPE__LONG_NAME = 6;
    public static final int PARAMETER_SW_COMPONENT_TYPE__GUUID = 7;
    public static final int PARAMETER_SW_COMPONENT_TYPE__GCATEGORY = 8;
    public static final int PARAMETER_SW_COMPONENT_TYPE__GDESC = 9;
    public static final int PARAMETER_SW_COMPONENT_TYPE__DESC = 10;
    public static final int PARAMETER_SW_COMPONENT_TYPE__CATEGORY = 11;
    public static final int PARAMETER_SW_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int PARAMETER_SW_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int PARAMETER_SW_COMPONENT_TYPE__ANNOTATIONS = 14;
    public static final int PARAMETER_SW_COMPONENT_TYPE__UUID = 15;
    public static final int PARAMETER_SW_COMPONENT_TYPE__ALL_EXTENSIONS = 16;
    public static final int PARAMETER_SW_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int PARAMETER_SW_COMPONENT_TYPE__GAR_PACKAGE = 18;
    public static final int PARAMETER_SW_COMPONENT_TYPE__AR_PACKAGE = 19;
    public static final int PARAMETER_SW_COMPONENT_TYPE__VARIATION_POINT = 20;
    public static final int PARAMETER_SW_COMPONENT_TYPE__SHORT_NAME_PATTERN = 21;
    public static final int PARAMETER_SW_COMPONENT_TYPE__GPORTS = 22;
    public static final int PARAMETER_SW_COMPONENT_TYPE__SW_COMPONENT_DOCUMENTATIONS = 23;
    public static final int PARAMETER_SW_COMPONENT_TYPE__PORTS = 24;
    public static final int PARAMETER_SW_COMPONENT_TYPE__PORT_GROUPS = 25;
    public static final int PARAMETER_SW_COMPONENT_TYPE__CONSTANT_MAPPINGS = 26;
    public static final int PARAMETER_SW_COMPONENT_TYPE__DATA_TYPE_MAPPINGS = 27;
    public static final int PARAMETER_SW_COMPONENT_TYPE__INSTANTIATION_DATA_DEF_PROPS = 28;
    public static final int PARAMETER_SW_COMPONENT_TYPE_FEATURE_COUNT = 29;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE = 13;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__SHORT_NAME = 5;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__LONG_NAME = 6;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__GUUID = 7;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__GCATEGORY = 8;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__GDESC = 9;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__DESC = 10;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__CATEGORY = 11;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__ANNOTATIONS = 14;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__UUID = 15;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__ALL_EXTENSIONS = 16;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__GAR_PACKAGE = 18;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__AR_PACKAGE = 19;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__VARIATION_POINT = 20;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__SHORT_NAME_PATTERN = 21;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__GPORTS = 22;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__SW_COMPONENT_DOCUMENTATIONS = 23;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__PORTS = 24;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__PORT_GROUPS = 25;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__INTERNAL_BEHAVIORS = 26;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__SYMBOL_PROPS = 27;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE__SENSOR_ACTUATOR = 28;
    public static final int SENSOR_ACTUATOR_SW_COMPONENT_TYPE_FEATURE_COUNT = 29;
    public static final int SERVICE_SW_COMPONENT_TYPE = 14;
    public static final int SERVICE_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int SERVICE_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int SERVICE_SW_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int SERVICE_SW_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int SERVICE_SW_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int SERVICE_SW_COMPONENT_TYPE__SHORT_NAME = 5;
    public static final int SERVICE_SW_COMPONENT_TYPE__LONG_NAME = 6;
    public static final int SERVICE_SW_COMPONENT_TYPE__GUUID = 7;
    public static final int SERVICE_SW_COMPONENT_TYPE__GCATEGORY = 8;
    public static final int SERVICE_SW_COMPONENT_TYPE__GDESC = 9;
    public static final int SERVICE_SW_COMPONENT_TYPE__DESC = 10;
    public static final int SERVICE_SW_COMPONENT_TYPE__CATEGORY = 11;
    public static final int SERVICE_SW_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int SERVICE_SW_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int SERVICE_SW_COMPONENT_TYPE__ANNOTATIONS = 14;
    public static final int SERVICE_SW_COMPONENT_TYPE__UUID = 15;
    public static final int SERVICE_SW_COMPONENT_TYPE__ALL_EXTENSIONS = 16;
    public static final int SERVICE_SW_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int SERVICE_SW_COMPONENT_TYPE__GAR_PACKAGE = 18;
    public static final int SERVICE_SW_COMPONENT_TYPE__AR_PACKAGE = 19;
    public static final int SERVICE_SW_COMPONENT_TYPE__VARIATION_POINT = 20;
    public static final int SERVICE_SW_COMPONENT_TYPE__SHORT_NAME_PATTERN = 21;
    public static final int SERVICE_SW_COMPONENT_TYPE__GPORTS = 22;
    public static final int SERVICE_SW_COMPONENT_TYPE__SW_COMPONENT_DOCUMENTATIONS = 23;
    public static final int SERVICE_SW_COMPONENT_TYPE__PORTS = 24;
    public static final int SERVICE_SW_COMPONENT_TYPE__PORT_GROUPS = 25;
    public static final int SERVICE_SW_COMPONENT_TYPE__INTERNAL_BEHAVIORS = 26;
    public static final int SERVICE_SW_COMPONENT_TYPE__SYMBOL_PROPS = 27;
    public static final int SERVICE_SW_COMPONENT_TYPE_FEATURE_COUNT = 28;

    public EClass getServiceProxySwComponentType();

    public EClass getAtomicSwComponentType();

    public EReference getAtomicSwComponentType_InternalBehaviors();

    public EReference getAtomicSwComponentType_SymbolProps();

    public EClass getSwComponentType();

    public EReference getSwComponentType_SwComponentDocumentations();

    public EReference getSwComponentType_Ports();

    public EReference getSwComponentType_PortGroups();

    public EClass getPortGroup();

    public EReference getPortGroup_SwComponentType();

    public EReference getPortGroup_InnerGroups();

    public EReference getPortGroup_OuterPorts();

    public EReference getPortGroup_VariationPoint();

    public EClass getPPortPrototype();

    public EReference getPPortPrototype_ProvidedComSpecs();

    public EReference getPPortPrototype_ProvidedInterface();

    public EClass getRPortPrototype();

    public EReference getRPortPrototype_RequiredComSpecs();

    public EReference getRPortPrototype_RequiredInterface();

    public EClass getPortPrototypeRefConditional();

    public EReference getPortPrototypeRefConditional_PortGroup();

    public EReference getPortPrototypeRefConditional_PortPrototype();

    public EReference getPortPrototypeRefConditional_VariationPoint();

    public EClass getSymbolProps();

    public EClass getApplicationSwComponentType();

    public EClass getComplexDeviceDriverSwComponentType();

    public EReference getComplexDeviceDriverSwComponentType_HardwareElements();

    public EClass getEcuAbstractionSwComponentType();

    public EReference getEcuAbstractionSwComponentType_HardwareElements();

    public EClass getNvBlockSwComponentType();

    public EReference getNvBlockSwComponentType_NvBlockDescriptors();

    public EClass getParameterSwComponentType();

    public EReference getParameterSwComponentType_ConstantMappings();

    public EReference getParameterSwComponentType_DataTypeMappings();

    public EReference getParameterSwComponentType_InstantiationDataDefProps();

    public EClass getSensorActuatorSwComponentType();

    public EReference getSensorActuatorSwComponentType_SensorActuator();

    public EClass getServiceSwComponentType();

    public EClass getPortPrototype();

    public EReference getPortPrototype_SwComponentType();

    public EReference getPortPrototype_ClientServerAnnotations();

    public EReference getPortPrototype_DelegatedPortAnnotation();

    public EReference getPortPrototype_IoHwAbstractionServerAnnotations();

    public EReference getPortPrototype_ModePortAnnotations();

    public EReference getPortPrototype_NvDataPortAnnotations();

    public EReference getPortPrototype_ParameterPortAnnotations();

    public EReference getPortPrototype_SenderReceiverAnnotations();

    public EReference getPortPrototype_TriggerPortAnnotations();

    public EReference getPortPrototype_VariationPoint();

    public ComponentsFactory getComponentsFactory();

    public static interface Literals {
        public static final EClass SERVICE_PROXY_SW_COMPONENT_TYPE = eINSTANCE.getServiceProxySwComponentType();
        public static final EClass ATOMIC_SW_COMPONENT_TYPE = eINSTANCE.getAtomicSwComponentType();
        public static final EReference ATOMIC_SW_COMPONENT_TYPE__INTERNAL_BEHAVIORS = eINSTANCE.getAtomicSwComponentType_InternalBehaviors();
        public static final EReference ATOMIC_SW_COMPONENT_TYPE__SYMBOL_PROPS = eINSTANCE.getAtomicSwComponentType_SymbolProps();
        public static final EClass SW_COMPONENT_TYPE = eINSTANCE.getSwComponentType();
        public static final EReference SW_COMPONENT_TYPE__SW_COMPONENT_DOCUMENTATIONS = eINSTANCE.getSwComponentType_SwComponentDocumentations();
        public static final EReference SW_COMPONENT_TYPE__PORTS = eINSTANCE.getSwComponentType_Ports();
        public static final EReference SW_COMPONENT_TYPE__PORT_GROUPS = eINSTANCE.getSwComponentType_PortGroups();
        public static final EClass PORT_GROUP = eINSTANCE.getPortGroup();
        public static final EReference PORT_GROUP__SW_COMPONENT_TYPE = eINSTANCE.getPortGroup_SwComponentType();
        public static final EReference PORT_GROUP__INNER_GROUPS = eINSTANCE.getPortGroup_InnerGroups();
        public static final EReference PORT_GROUP__OUTER_PORTS = eINSTANCE.getPortGroup_OuterPorts();
        public static final EReference PORT_GROUP__VARIATION_POINT = eINSTANCE.getPortGroup_VariationPoint();
        public static final EClass PPORT_PROTOTYPE = eINSTANCE.getPPortPrototype();
        public static final EReference PPORT_PROTOTYPE__PROVIDED_COM_SPECS = eINSTANCE.getPPortPrototype_ProvidedComSpecs();
        public static final EReference PPORT_PROTOTYPE__PROVIDED_INTERFACE = eINSTANCE.getPPortPrototype_ProvidedInterface();
        public static final EClass RPORT_PROTOTYPE = eINSTANCE.getRPortPrototype();
        public static final EReference RPORT_PROTOTYPE__REQUIRED_COM_SPECS = eINSTANCE.getRPortPrototype_RequiredComSpecs();
        public static final EReference RPORT_PROTOTYPE__REQUIRED_INTERFACE = eINSTANCE.getRPortPrototype_RequiredInterface();
        public static final EClass PORT_PROTOTYPE_REF_CONDITIONAL = eINSTANCE.getPortPrototypeRefConditional();
        public static final EReference PORT_PROTOTYPE_REF_CONDITIONAL__PORT_GROUP = eINSTANCE.getPortPrototypeRefConditional_PortGroup();
        public static final EReference PORT_PROTOTYPE_REF_CONDITIONAL__PORT_PROTOTYPE = eINSTANCE.getPortPrototypeRefConditional_PortPrototype();
        public static final EReference PORT_PROTOTYPE_REF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getPortPrototypeRefConditional_VariationPoint();
        public static final EClass SYMBOL_PROPS = eINSTANCE.getSymbolProps();
        public static final EClass APPLICATION_SW_COMPONENT_TYPE = eINSTANCE.getApplicationSwComponentType();
        public static final EClass COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE = eINSTANCE.getComplexDeviceDriverSwComponentType();
        public static final EReference COMPLEX_DEVICE_DRIVER_SW_COMPONENT_TYPE__HARDWARE_ELEMENTS = eINSTANCE.getComplexDeviceDriverSwComponentType_HardwareElements();
        public static final EClass ECU_ABSTRACTION_SW_COMPONENT_TYPE = eINSTANCE.getEcuAbstractionSwComponentType();
        public static final EReference ECU_ABSTRACTION_SW_COMPONENT_TYPE__HARDWARE_ELEMENTS = eINSTANCE.getEcuAbstractionSwComponentType_HardwareElements();
        public static final EClass NV_BLOCK_SW_COMPONENT_TYPE = eINSTANCE.getNvBlockSwComponentType();
        public static final EReference NV_BLOCK_SW_COMPONENT_TYPE__NV_BLOCK_DESCRIPTORS = eINSTANCE.getNvBlockSwComponentType_NvBlockDescriptors();
        public static final EClass PARAMETER_SW_COMPONENT_TYPE = eINSTANCE.getParameterSwComponentType();
        public static final EReference PARAMETER_SW_COMPONENT_TYPE__CONSTANT_MAPPINGS = eINSTANCE.getParameterSwComponentType_ConstantMappings();
        public static final EReference PARAMETER_SW_COMPONENT_TYPE__DATA_TYPE_MAPPINGS = eINSTANCE.getParameterSwComponentType_DataTypeMappings();
        public static final EReference PARAMETER_SW_COMPONENT_TYPE__INSTANTIATION_DATA_DEF_PROPS = eINSTANCE.getParameterSwComponentType_InstantiationDataDefProps();
        public static final EClass SENSOR_ACTUATOR_SW_COMPONENT_TYPE = eINSTANCE.getSensorActuatorSwComponentType();
        public static final EReference SENSOR_ACTUATOR_SW_COMPONENT_TYPE__SENSOR_ACTUATOR = eINSTANCE.getSensorActuatorSwComponentType_SensorActuator();
        public static final EClass SERVICE_SW_COMPONENT_TYPE = eINSTANCE.getServiceSwComponentType();
        public static final EClass PORT_PROTOTYPE = eINSTANCE.getPortPrototype();
        public static final EReference PORT_PROTOTYPE__SW_COMPONENT_TYPE = eINSTANCE.getPortPrototype_SwComponentType();
        public static final EReference PORT_PROTOTYPE__CLIENT_SERVER_ANNOTATIONS = eINSTANCE.getPortPrototype_ClientServerAnnotations();
        public static final EReference PORT_PROTOTYPE__DELEGATED_PORT_ANNOTATION = eINSTANCE.getPortPrototype_DelegatedPortAnnotation();
        public static final EReference PORT_PROTOTYPE__IO_HW_ABSTRACTION_SERVER_ANNOTATIONS = eINSTANCE.getPortPrototype_IoHwAbstractionServerAnnotations();
        public static final EReference PORT_PROTOTYPE__MODE_PORT_ANNOTATIONS = eINSTANCE.getPortPrototype_ModePortAnnotations();
        public static final EReference PORT_PROTOTYPE__NV_DATA_PORT_ANNOTATIONS = eINSTANCE.getPortPrototype_NvDataPortAnnotations();
        public static final EReference PORT_PROTOTYPE__PARAMETER_PORT_ANNOTATIONS = eINSTANCE.getPortPrototype_ParameterPortAnnotations();
        public static final EReference PORT_PROTOTYPE__SENDER_RECEIVER_ANNOTATIONS = eINSTANCE.getPortPrototype_SenderReceiverAnnotations();
        public static final EReference PORT_PROTOTYPE__TRIGGER_PORT_ANNOTATIONS = eINSTANCE.getPortPrototype_TriggerPortAnnotations();
        public static final EReference PORT_PROTOTYPE__VARIATION_POINT = eINSTANCE.getPortPrototype_VariationPoint();
    }
}

