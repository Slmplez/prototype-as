/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.components;

import autosar3x.swcomponent.components.ComponentsFactory;
import autosar3x.swcomponent.components.impl.ComponentsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ComponentsPackage
extends EPackage {
    public static final String eNAME = "components";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/components";
    public static final String eNS_PREFIX = "";
    public static final ComponentsPackage eINSTANCE = ComponentsPackageImpl.init();
    public static final int COMPONENT_TYPE = 2;
    public static final int COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int COMPONENT_TYPE__CHECKSUM = 2;
    public static final int COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int COMPONENT_TYPE__GUUID = 5;
    public static final int COMPONENT_TYPE__GCATEGORY = 6;
    public static final int COMPONENT_TYPE__GDESC = 7;
    public static final int COMPONENT_TYPE__SHORT_NAME = 8;
    public static final int COMPONENT_TYPE__LONG_NAME = 9;
    public static final int COMPONENT_TYPE__DESC = 10;
    public static final int COMPONENT_TYPE__CATEGORY = 11;
    public static final int COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int COMPONENT_TYPE__UUID = 14;
    public static final int COMPONENT_TYPE__ALL_EXTENSIONS = 15;
    public static final int COMPONENT_TYPE__CONTAINED_EXTENSIONS = 16;
    public static final int COMPONENT_TYPE__GAR_PACKAGE = 17;
    public static final int COMPONENT_TYPE__AR_PACKAGE = 18;
    public static final int COMPONENT_TYPE__GPORTS = 19;
    public static final int COMPONENT_TYPE__PORTS = 20;
    public static final int COMPONENT_TYPE__PORT_GROUPS = 21;
    public static final int COMPONENT_TYPE_FEATURE_COUNT = 22;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE = 1;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__GUUID = 5;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__GCATEGORY = 6;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__GDESC = 7;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__SHORT_NAME = 8;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__LONG_NAME = 9;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__DESC = 10;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__CATEGORY = 11;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__UUID = 14;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__ALL_EXTENSIONS = 15;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 16;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__GAR_PACKAGE = 17;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__AR_PACKAGE = 18;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__GPORTS = 19;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__PORTS = 20;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__PORT_GROUPS = 21;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE_FEATURE_COUNT = 22;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE = 0;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__GUUID = 5;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__GCATEGORY = 6;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__GDESC = 7;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__SHORT_NAME = 8;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__LONG_NAME = 9;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__DESC = 10;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__CATEGORY = 11;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__UUID = 14;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__ALL_EXTENSIONS = 15;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 16;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__GAR_PACKAGE = 17;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__AR_PACKAGE = 18;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__GPORTS = 19;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__PORTS = 20;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE__PORT_GROUPS = 21;
    public static final int APPLICATION_SOFTWARE_COMPONENT_TYPE_FEATURE_COUNT = 22;
    public static final int PORT_PROTOTYPE = 3;
    public static final int PORT_PROTOTYPE__GCHECKSUM = 0;
    public static final int PORT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int PORT_PROTOTYPE__CHECKSUM = 2;
    public static final int PORT_PROTOTYPE__TIMESTAMP = 3;
    public static final int PORT_PROTOTYPE__GSHORT_NAME = 4;
    public static final int PORT_PROTOTYPE__GUUID = 5;
    public static final int PORT_PROTOTYPE__GCATEGORY = 6;
    public static final int PORT_PROTOTYPE__GDESC = 7;
    public static final int PORT_PROTOTYPE__SHORT_NAME = 8;
    public static final int PORT_PROTOTYPE__LONG_NAME = 9;
    public static final int PORT_PROTOTYPE__DESC = 10;
    public static final int PORT_PROTOTYPE__CATEGORY = 11;
    public static final int PORT_PROTOTYPE__ADMIN_DATA = 12;
    public static final int PORT_PROTOTYPE__INTRODUCTION = 13;
    public static final int PORT_PROTOTYPE__UUID = 14;
    public static final int PORT_PROTOTYPE__ALL_EXTENSIONS = 15;
    public static final int PORT_PROTOTYPE__CONTAINED_EXTENSIONS = 16;
    public static final int PORT_PROTOTYPE__COMPONENT_TYPE = 17;
    public static final int PORT_PROTOTYPE__CALIBRATION_PORT_ANNOTATIONS = 18;
    public static final int PORT_PROTOTYPE__DELEGATED_PORT_ANNOTATION = 19;
    public static final int PORT_PROTOTYPE__IO_HW_ABSTRACTION_SERVER_ANNOTATIONS = 20;
    public static final int PORT_PROTOTYPE__SENDER_RECEIVER_ANNOTATIONS = 21;
    public static final int PORT_PROTOTYPE_FEATURE_COUNT = 22;
    public static final int RPORT_PROTOTYPE = 4;
    public static final int RPORT_PROTOTYPE__GCHECKSUM = 0;
    public static final int RPORT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int RPORT_PROTOTYPE__CHECKSUM = 2;
    public static final int RPORT_PROTOTYPE__TIMESTAMP = 3;
    public static final int RPORT_PROTOTYPE__GSHORT_NAME = 4;
    public static final int RPORT_PROTOTYPE__GUUID = 5;
    public static final int RPORT_PROTOTYPE__GCATEGORY = 6;
    public static final int RPORT_PROTOTYPE__GDESC = 7;
    public static final int RPORT_PROTOTYPE__SHORT_NAME = 8;
    public static final int RPORT_PROTOTYPE__LONG_NAME = 9;
    public static final int RPORT_PROTOTYPE__DESC = 10;
    public static final int RPORT_PROTOTYPE__CATEGORY = 11;
    public static final int RPORT_PROTOTYPE__ADMIN_DATA = 12;
    public static final int RPORT_PROTOTYPE__INTRODUCTION = 13;
    public static final int RPORT_PROTOTYPE__UUID = 14;
    public static final int RPORT_PROTOTYPE__ALL_EXTENSIONS = 15;
    public static final int RPORT_PROTOTYPE__CONTAINED_EXTENSIONS = 16;
    public static final int RPORT_PROTOTYPE__COMPONENT_TYPE = 17;
    public static final int RPORT_PROTOTYPE__CALIBRATION_PORT_ANNOTATIONS = 18;
    public static final int RPORT_PROTOTYPE__DELEGATED_PORT_ANNOTATION = 19;
    public static final int RPORT_PROTOTYPE__IO_HW_ABSTRACTION_SERVER_ANNOTATIONS = 20;
    public static final int RPORT_PROTOTYPE__SENDER_RECEIVER_ANNOTATIONS = 21;
    public static final int RPORT_PROTOTYPE__GREQUIRED_INTERFACE = 22;
    public static final int RPORT_PROTOTYPE__REQUIRED_COM_SPECS = 23;
    public static final int RPORT_PROTOTYPE__REQUIRED_INTERFACE = 24;
    public static final int RPORT_PROTOTYPE_FEATURE_COUNT = 25;
    public static final int SERVICE_COMPONENT_TYPE = 5;
    public static final int SERVICE_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int SERVICE_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int SERVICE_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int SERVICE_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int SERVICE_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int SERVICE_COMPONENT_TYPE__GUUID = 5;
    public static final int SERVICE_COMPONENT_TYPE__GCATEGORY = 6;
    public static final int SERVICE_COMPONENT_TYPE__GDESC = 7;
    public static final int SERVICE_COMPONENT_TYPE__SHORT_NAME = 8;
    public static final int SERVICE_COMPONENT_TYPE__LONG_NAME = 9;
    public static final int SERVICE_COMPONENT_TYPE__DESC = 10;
    public static final int SERVICE_COMPONENT_TYPE__CATEGORY = 11;
    public static final int SERVICE_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int SERVICE_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int SERVICE_COMPONENT_TYPE__UUID = 14;
    public static final int SERVICE_COMPONENT_TYPE__ALL_EXTENSIONS = 15;
    public static final int SERVICE_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 16;
    public static final int SERVICE_COMPONENT_TYPE__GAR_PACKAGE = 17;
    public static final int SERVICE_COMPONENT_TYPE__AR_PACKAGE = 18;
    public static final int SERVICE_COMPONENT_TYPE__GPORTS = 19;
    public static final int SERVICE_COMPONENT_TYPE__PORTS = 20;
    public static final int SERVICE_COMPONENT_TYPE__PORT_GROUPS = 21;
    public static final int SERVICE_COMPONENT_TYPE__BSW_MODULE_DESCRIPTIONS = 22;
    public static final int SERVICE_COMPONENT_TYPE_FEATURE_COUNT = 23;
    public static final int PORT_GROUP = 6;
    public static final int PORT_GROUP__GCHECKSUM = 0;
    public static final int PORT_GROUP__GTIMESTAMP = 1;
    public static final int PORT_GROUP__CHECKSUM = 2;
    public static final int PORT_GROUP__TIMESTAMP = 3;
    public static final int PORT_GROUP__GSHORT_NAME = 4;
    public static final int PORT_GROUP__GUUID = 5;
    public static final int PORT_GROUP__GCATEGORY = 6;
    public static final int PORT_GROUP__GDESC = 7;
    public static final int PORT_GROUP__SHORT_NAME = 8;
    public static final int PORT_GROUP__LONG_NAME = 9;
    public static final int PORT_GROUP__DESC = 10;
    public static final int PORT_GROUP__CATEGORY = 11;
    public static final int PORT_GROUP__ADMIN_DATA = 12;
    public static final int PORT_GROUP__INTRODUCTION = 13;
    public static final int PORT_GROUP__UUID = 14;
    public static final int PORT_GROUP__ALL_EXTENSIONS = 15;
    public static final int PORT_GROUP__CONTAINED_EXTENSIONS = 16;
    public static final int PORT_GROUP__COMPONENT_TYPE = 17;
    public static final int PORT_GROUP__INNER_GROUPS = 18;
    public static final int PORT_GROUP__OUTER_PORTS = 19;
    public static final int PORT_GROUP_FEATURE_COUNT = 20;
    public static final int CALPRM_COMPONENT_TYPE = 7;
    public static final int CALPRM_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int CALPRM_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int CALPRM_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int CALPRM_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int CALPRM_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int CALPRM_COMPONENT_TYPE__GUUID = 5;
    public static final int CALPRM_COMPONENT_TYPE__GCATEGORY = 6;
    public static final int CALPRM_COMPONENT_TYPE__GDESC = 7;
    public static final int CALPRM_COMPONENT_TYPE__SHORT_NAME = 8;
    public static final int CALPRM_COMPONENT_TYPE__LONG_NAME = 9;
    public static final int CALPRM_COMPONENT_TYPE__DESC = 10;
    public static final int CALPRM_COMPONENT_TYPE__CATEGORY = 11;
    public static final int CALPRM_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int CALPRM_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int CALPRM_COMPONENT_TYPE__UUID = 14;
    public static final int CALPRM_COMPONENT_TYPE__ALL_EXTENSIONS = 15;
    public static final int CALPRM_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 16;
    public static final int CALPRM_COMPONENT_TYPE__GAR_PACKAGE = 17;
    public static final int CALPRM_COMPONENT_TYPE__AR_PACKAGE = 18;
    public static final int CALPRM_COMPONENT_TYPE__GPORTS = 19;
    public static final int CALPRM_COMPONENT_TYPE__PORTS = 20;
    public static final int CALPRM_COMPONENT_TYPE__PORT_GROUPS = 21;
    public static final int CALPRM_COMPONENT_TYPE_FEATURE_COUNT = 22;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE = 8;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__GUUID = 5;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__GCATEGORY = 6;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__GDESC = 7;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__SHORT_NAME = 8;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__LONG_NAME = 9;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__DESC = 10;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__CATEGORY = 11;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__UUID = 14;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__ALL_EXTENSIONS = 15;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 16;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__GAR_PACKAGE = 17;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__AR_PACKAGE = 18;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__GPORTS = 19;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__PORTS = 20;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__PORT_GROUPS = 21;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__BSW_MODULE_DESCRIPTIONS = 22;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__HARDWARE_ELEMENTS = 23;
    public static final int COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE_FEATURE_COUNT = 24;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE = 9;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__GUUID = 5;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__GCATEGORY = 6;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__GDESC = 7;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__SHORT_NAME = 8;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__LONG_NAME = 9;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__DESC = 10;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__CATEGORY = 11;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__UUID = 14;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__ALL_EXTENSIONS = 15;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 16;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__GAR_PACKAGE = 17;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__AR_PACKAGE = 18;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__GPORTS = 19;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__PORTS = 20;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__PORT_GROUPS = 21;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__BSW_MODULE_DESCRIPTIONS = 22;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE__HARDWARE_ELEMENTS = 23;
    public static final int ECU_ABSTRACTION_COMPONENT_TYPE_FEATURE_COUNT = 24;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE = 10;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__CHECKSUM = 2;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__TIMESTAMP = 3;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__GSHORT_NAME = 4;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__GUUID = 5;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__GCATEGORY = 6;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__GDESC = 7;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__SHORT_NAME = 8;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__LONG_NAME = 9;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__DESC = 10;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__CATEGORY = 11;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__ADMIN_DATA = 12;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__INTRODUCTION = 13;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__UUID = 14;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__ALL_EXTENSIONS = 15;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 16;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__GAR_PACKAGE = 17;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__AR_PACKAGE = 18;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__GPORTS = 19;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__PORTS = 20;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__PORT_GROUPS = 21;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__SENSOR_ACTUATOR = 22;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE_FEATURE_COUNT = 23;
    public static final int PPORT_PROTOTYPE = 11;
    public static final int PPORT_PROTOTYPE__GCHECKSUM = 0;
    public static final int PPORT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int PPORT_PROTOTYPE__CHECKSUM = 2;
    public static final int PPORT_PROTOTYPE__TIMESTAMP = 3;
    public static final int PPORT_PROTOTYPE__GSHORT_NAME = 4;
    public static final int PPORT_PROTOTYPE__GUUID = 5;
    public static final int PPORT_PROTOTYPE__GCATEGORY = 6;
    public static final int PPORT_PROTOTYPE__GDESC = 7;
    public static final int PPORT_PROTOTYPE__SHORT_NAME = 8;
    public static final int PPORT_PROTOTYPE__LONG_NAME = 9;
    public static final int PPORT_PROTOTYPE__DESC = 10;
    public static final int PPORT_PROTOTYPE__CATEGORY = 11;
    public static final int PPORT_PROTOTYPE__ADMIN_DATA = 12;
    public static final int PPORT_PROTOTYPE__INTRODUCTION = 13;
    public static final int PPORT_PROTOTYPE__UUID = 14;
    public static final int PPORT_PROTOTYPE__ALL_EXTENSIONS = 15;
    public static final int PPORT_PROTOTYPE__CONTAINED_EXTENSIONS = 16;
    public static final int PPORT_PROTOTYPE__COMPONENT_TYPE = 17;
    public static final int PPORT_PROTOTYPE__CALIBRATION_PORT_ANNOTATIONS = 18;
    public static final int PPORT_PROTOTYPE__DELEGATED_PORT_ANNOTATION = 19;
    public static final int PPORT_PROTOTYPE__IO_HW_ABSTRACTION_SERVER_ANNOTATIONS = 20;
    public static final int PPORT_PROTOTYPE__SENDER_RECEIVER_ANNOTATIONS = 21;
    public static final int PPORT_PROTOTYPE__GPROVIDED_INTERFACE = 22;
    public static final int PPORT_PROTOTYPE__PROVIDED_COM_SPECS = 23;
    public static final int PPORT_PROTOTYPE__PROVIDED_INTERFACE = 24;
    public static final int PPORT_PROTOTYPE_FEATURE_COUNT = 25;

    public EClass getApplicationSoftwareComponentType();

    public EClass getAtomicSoftwareComponentType();

    public EClass getComponentType();

    public EReference getComponentType_Ports();

    public EReference getComponentType_PortGroups();

    public EClass getPortPrototype();

    public EReference getPortPrototype_ComponentType();

    public EReference getPortPrototype_CalibrationPortAnnotations();

    public EReference getPortPrototype_DelegatedPortAnnotation();

    public EReference getPortPrototype_IoHwAbstractionServerAnnotations();

    public EReference getPortPrototype_SenderReceiverAnnotations();

    public EClass getRPortPrototype();

    public EReference getRPortPrototype_RequiredComSpecs();

    public EReference getRPortPrototype_RequiredInterface();

    public EClass getServiceComponentType();

    public EReference getServiceComponentType_BswModuleDescriptions();

    public EClass getPortGroup();

    public EReference getPortGroup_ComponentType();

    public EReference getPortGroup_InnerGroups();

    public EReference getPortGroup_OuterPorts();

    public EClass getCalprmComponentType();

    public EClass getComplexDeviceDriverComponentType();

    public EReference getComplexDeviceDriverComponentType_BswModuleDescriptions();

    public EReference getComplexDeviceDriverComponentType_HardwareElements();

    public EClass getEcuAbstractionComponentType();

    public EReference getEcuAbstractionComponentType_BswModuleDescriptions();

    public EReference getEcuAbstractionComponentType_HardwareElements();

    public EClass getSensorActuatorSoftwareComponentType();

    public EReference getSensorActuatorSoftwareComponentType_SensorActuator();

    public EClass getPPortPrototype();

    public EReference getPPortPrototype_ProvidedComSpecs();

    public EReference getPPortPrototype_ProvidedInterface();

    public ComponentsFactory getComponentsFactory();

    public static interface Literals {
        public static final EClass APPLICATION_SOFTWARE_COMPONENT_TYPE = eINSTANCE.getApplicationSoftwareComponentType();
        public static final EClass ATOMIC_SOFTWARE_COMPONENT_TYPE = eINSTANCE.getAtomicSoftwareComponentType();
        public static final EClass COMPONENT_TYPE = eINSTANCE.getComponentType();
        public static final EReference COMPONENT_TYPE__PORTS = eINSTANCE.getComponentType_Ports();
        public static final EReference COMPONENT_TYPE__PORT_GROUPS = eINSTANCE.getComponentType_PortGroups();
        public static final EClass PORT_PROTOTYPE = eINSTANCE.getPortPrototype();
        public static final EReference PORT_PROTOTYPE__COMPONENT_TYPE = eINSTANCE.getPortPrototype_ComponentType();
        public static final EReference PORT_PROTOTYPE__CALIBRATION_PORT_ANNOTATIONS = eINSTANCE.getPortPrototype_CalibrationPortAnnotations();
        public static final EReference PORT_PROTOTYPE__DELEGATED_PORT_ANNOTATION = eINSTANCE.getPortPrototype_DelegatedPortAnnotation();
        public static final EReference PORT_PROTOTYPE__IO_HW_ABSTRACTION_SERVER_ANNOTATIONS = eINSTANCE.getPortPrototype_IoHwAbstractionServerAnnotations();
        public static final EReference PORT_PROTOTYPE__SENDER_RECEIVER_ANNOTATIONS = eINSTANCE.getPortPrototype_SenderReceiverAnnotations();
        public static final EClass RPORT_PROTOTYPE = eINSTANCE.getRPortPrototype();
        public static final EReference RPORT_PROTOTYPE__REQUIRED_COM_SPECS = eINSTANCE.getRPortPrototype_RequiredComSpecs();
        public static final EReference RPORT_PROTOTYPE__REQUIRED_INTERFACE = eINSTANCE.getRPortPrototype_RequiredInterface();
        public static final EClass SERVICE_COMPONENT_TYPE = eINSTANCE.getServiceComponentType();
        public static final EReference SERVICE_COMPONENT_TYPE__BSW_MODULE_DESCRIPTIONS = eINSTANCE.getServiceComponentType_BswModuleDescriptions();
        public static final EClass PORT_GROUP = eINSTANCE.getPortGroup();
        public static final EReference PORT_GROUP__COMPONENT_TYPE = eINSTANCE.getPortGroup_ComponentType();
        public static final EReference PORT_GROUP__INNER_GROUPS = eINSTANCE.getPortGroup_InnerGroups();
        public static final EReference PORT_GROUP__OUTER_PORTS = eINSTANCE.getPortGroup_OuterPorts();
        public static final EClass CALPRM_COMPONENT_TYPE = eINSTANCE.getCalprmComponentType();
        public static final EClass COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE = eINSTANCE.getComplexDeviceDriverComponentType();
        public static final EReference COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__BSW_MODULE_DESCRIPTIONS = eINSTANCE.getComplexDeviceDriverComponentType_BswModuleDescriptions();
        public static final EReference COMPLEX_DEVICE_DRIVER_COMPONENT_TYPE__HARDWARE_ELEMENTS = eINSTANCE.getComplexDeviceDriverComponentType_HardwareElements();
        public static final EClass ECU_ABSTRACTION_COMPONENT_TYPE = eINSTANCE.getEcuAbstractionComponentType();
        public static final EReference ECU_ABSTRACTION_COMPONENT_TYPE__BSW_MODULE_DESCRIPTIONS = eINSTANCE.getEcuAbstractionComponentType_BswModuleDescriptions();
        public static final EReference ECU_ABSTRACTION_COMPONENT_TYPE__HARDWARE_ELEMENTS = eINSTANCE.getEcuAbstractionComponentType_HardwareElements();
        public static final EClass SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE = eINSTANCE.getSensorActuatorSoftwareComponentType();
        public static final EReference SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__SENSOR_ACTUATOR = eINSTANCE.getSensorActuatorSoftwareComponentType_SensorActuator();
        public static final EClass PPORT_PROTOTYPE = eINSTANCE.getPPortPrototype();
        public static final EReference PPORT_PROTOTYPE__PROVIDED_COM_SPECS = eINSTANCE.getPPortPrototype_ProvidedComSpecs();
        public static final EReference PPORT_PROTOTYPE__PROVIDED_INTERFACE = eINSTANCE.getPPortPrototype_ProvidedInterface();
    }
}

