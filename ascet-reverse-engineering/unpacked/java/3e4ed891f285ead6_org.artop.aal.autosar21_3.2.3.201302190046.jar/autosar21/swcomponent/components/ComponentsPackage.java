/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.components;

import autosar21.swcomponent.components.ComponentsFactory;
import autosar21.swcomponent.components.impl.ComponentsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ComponentsPackage
extends EPackage {
    public static final String eNAME = "components";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/components";
    public static final String eNS_PREFIX = "";
    public static final ComponentsPackage eINSTANCE = ComponentsPackageImpl.init();
    public static final int PORT_PROTOTYPE = 1;
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
    public static final int PORT_PROTOTYPE__UUID = 13;
    public static final int PORT_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int PORT_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int PORT_PROTOTYPE__COMPONENT_TYPE = 16;
    public static final int PORT_PROTOTYPE__ANNOTATIONS = 17;
    public static final int PORT_PROTOTYPE_FEATURE_COUNT = 18;
    public static final int PPORT_PROTOTYPE = 0;
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
    public static final int PPORT_PROTOTYPE__UUID = 13;
    public static final int PPORT_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int PPORT_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int PPORT_PROTOTYPE__COMPONENT_TYPE = 16;
    public static final int PPORT_PROTOTYPE__ANNOTATIONS = 17;
    public static final int PPORT_PROTOTYPE__GPROVIDED_INTERFACE = 18;
    public static final int PPORT_PROTOTYPE__PROVIDED_COM_SPECS = 19;
    public static final int PPORT_PROTOTYPE__PROVIDED_INTERFACE = 20;
    public static final int PPORT_PROTOTYPE_FEATURE_COUNT = 21;
    public static final int RPORT_PROTOTYPE = 2;
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
    public static final int RPORT_PROTOTYPE__UUID = 13;
    public static final int RPORT_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int RPORT_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int RPORT_PROTOTYPE__COMPONENT_TYPE = 16;
    public static final int RPORT_PROTOTYPE__ANNOTATIONS = 17;
    public static final int RPORT_PROTOTYPE__GREQUIRED_INTERFACE = 18;
    public static final int RPORT_PROTOTYPE__REQUIRED_COM_SPECS = 19;
    public static final int RPORT_PROTOTYPE__REQUIRED_INTERFACE = 20;
    public static final int RPORT_PROTOTYPE_FEATURE_COUNT = 21;
    public static final int COMPONENT_TYPE = 7;
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
    public static final int COMPONENT_TYPE__UUID = 13;
    public static final int COMPONENT_TYPE__ALL_EXTENSIONS = 14;
    public static final int COMPONENT_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int COMPONENT_TYPE__GAR_PACKAGE = 16;
    public static final int COMPONENT_TYPE__AR_PACKAGE = 17;
    public static final int COMPONENT_TYPE__GPORTS = 18;
    public static final int COMPONENT_TYPE__PORTS = 19;
    public static final int COMPONENT_TYPE_FEATURE_COUNT = 20;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE = 3;
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
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__UUID = 13;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__ALL_EXTENSIONS = 14;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__GAR_PACKAGE = 16;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__AR_PACKAGE = 17;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__GPORTS = 18;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__PORTS = 19;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE__MEASURABLES = 20;
    public static final int ATOMIC_SOFTWARE_COMPONENT_TYPE_FEATURE_COUNT = 21;
    public static final int SERVICE_COMPONENT_TYPE = 4;
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
    public static final int SERVICE_COMPONENT_TYPE__UUID = 13;
    public static final int SERVICE_COMPONENT_TYPE__ALL_EXTENSIONS = 14;
    public static final int SERVICE_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int SERVICE_COMPONENT_TYPE__GAR_PACKAGE = 16;
    public static final int SERVICE_COMPONENT_TYPE__AR_PACKAGE = 17;
    public static final int SERVICE_COMPONENT_TYPE__GPORTS = 18;
    public static final int SERVICE_COMPONENT_TYPE__PORTS = 19;
    public static final int SERVICE_COMPONENT_TYPE__MEASURABLES = 20;
    public static final int SERVICE_COMPONENT_TYPE_FEATURE_COUNT = 21;
    public static final int CALPRM_COMPONENT_TYPE = 5;
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
    public static final int CALPRM_COMPONENT_TYPE__UUID = 13;
    public static final int CALPRM_COMPONENT_TYPE__ALL_EXTENSIONS = 14;
    public static final int CALPRM_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int CALPRM_COMPONENT_TYPE__GAR_PACKAGE = 16;
    public static final int CALPRM_COMPONENT_TYPE__AR_PACKAGE = 17;
    public static final int CALPRM_COMPONENT_TYPE__GPORTS = 18;
    public static final int CALPRM_COMPONENT_TYPE__PORTS = 19;
    public static final int CALPRM_COMPONENT_TYPE_FEATURE_COUNT = 20;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE = 6;
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
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__UUID = 13;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__ALL_EXTENSIONS = 14;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__GAR_PACKAGE = 16;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__AR_PACKAGE = 17;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__GPORTS = 18;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__PORTS = 19;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__MEASURABLES = 20;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__SENSOR_ACTUATOR = 21;
    public static final int SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE_FEATURE_COUNT = 22;

    public EClass getPPortPrototype();

    public EReference getPPortPrototype_ProvidedComSpecs();

    public EReference getPPortPrototype_ProvidedInterface();

    public EClass getPortPrototype();

    public EReference getPortPrototype_ComponentType();

    public EReference getPortPrototype_Annotations();

    public EClass getRPortPrototype();

    public EReference getRPortPrototype_RequiredComSpecs();

    public EReference getRPortPrototype_RequiredInterface();

    public EClass getAtomicSoftwareComponentType();

    public EReference getAtomicSoftwareComponentType_Measurables();

    public EClass getServiceComponentType();

    public EClass getCalprmComponentType();

    public EClass getSensorActuatorSoftwareComponentType();

    public EReference getSensorActuatorSoftwareComponentType_SensorActuator();

    public EClass getComponentType();

    public EReference getComponentType_Ports();

    public ComponentsFactory getComponentsFactory();

    public static interface Literals {
        public static final EClass PPORT_PROTOTYPE = eINSTANCE.getPPortPrototype();
        public static final EReference PPORT_PROTOTYPE__PROVIDED_COM_SPECS = eINSTANCE.getPPortPrototype_ProvidedComSpecs();
        public static final EReference PPORT_PROTOTYPE__PROVIDED_INTERFACE = eINSTANCE.getPPortPrototype_ProvidedInterface();
        public static final EClass PORT_PROTOTYPE = eINSTANCE.getPortPrototype();
        public static final EReference PORT_PROTOTYPE__COMPONENT_TYPE = eINSTANCE.getPortPrototype_ComponentType();
        public static final EReference PORT_PROTOTYPE__ANNOTATIONS = eINSTANCE.getPortPrototype_Annotations();
        public static final EClass RPORT_PROTOTYPE = eINSTANCE.getRPortPrototype();
        public static final EReference RPORT_PROTOTYPE__REQUIRED_COM_SPECS = eINSTANCE.getRPortPrototype_RequiredComSpecs();
        public static final EReference RPORT_PROTOTYPE__REQUIRED_INTERFACE = eINSTANCE.getRPortPrototype_RequiredInterface();
        public static final EClass ATOMIC_SOFTWARE_COMPONENT_TYPE = eINSTANCE.getAtomicSoftwareComponentType();
        public static final EReference ATOMIC_SOFTWARE_COMPONENT_TYPE__MEASURABLES = eINSTANCE.getAtomicSoftwareComponentType_Measurables();
        public static final EClass SERVICE_COMPONENT_TYPE = eINSTANCE.getServiceComponentType();
        public static final EClass CALPRM_COMPONENT_TYPE = eINSTANCE.getCalprmComponentType();
        public static final EClass SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE = eINSTANCE.getSensorActuatorSoftwareComponentType();
        public static final EReference SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE__SENSOR_ACTUATOR = eINSTANCE.getSensorActuatorSoftwareComponentType_SensorActuator();
        public static final EClass COMPONENT_TYPE = eINSTANCE.getComponentType();
        public static final EReference COMPONENT_TYPE__PORTS = eINSTANCE.getComponentType_Ports();
    }
}

