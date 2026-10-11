/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.ecuresource;

import autosar3x.ecuresource.EcuresourceFactory;
import autosar3x.ecuresource.impl.EcuresourcePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface EcuresourcePackage
extends EPackage {
    public static final String eNAME = "ecuresource";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/ecur";
    public static final String eNS_PREFIX = "";
    public static final EcuresourcePackage eINSTANCE = EcuresourcePackageImpl.init();
    public static final int HW_CONNECTION = 1;
    public static final int HW_CONNECTION__GCHECKSUM = 0;
    public static final int HW_CONNECTION__GTIMESTAMP = 1;
    public static final int HW_CONNECTION__CHECKSUM = 2;
    public static final int HW_CONNECTION__TIMESTAMP = 3;
    public static final int HW_CONNECTION__GSHORT_NAME = 4;
    public static final int HW_CONNECTION__GUUID = 5;
    public static final int HW_CONNECTION__GCATEGORY = 6;
    public static final int HW_CONNECTION__GDESC = 7;
    public static final int HW_CONNECTION__SHORT_NAME = 8;
    public static final int HW_CONNECTION__LONG_NAME = 9;
    public static final int HW_CONNECTION__DESC = 10;
    public static final int HW_CONNECTION__CATEGORY = 11;
    public static final int HW_CONNECTION__ADMIN_DATA = 12;
    public static final int HW_CONNECTION__INTRODUCTION = 13;
    public static final int HW_CONNECTION__UUID = 14;
    public static final int HW_CONNECTION__ALL_EXTENSIONS = 15;
    public static final int HW_CONNECTION__CONTAINED_EXTENSIONS = 16;
    public static final int HW_CONNECTION__HW_ELEMENT_CONTAINER = 17;
    public static final int HW_CONNECTION__CONNECTED_PINS = 18;
    public static final int HW_CONNECTION_FEATURE_COUNT = 19;
    public static final int ASSEMBLY_HW_CONNECTION = 0;
    public static final int ASSEMBLY_HW_CONNECTION__GCHECKSUM = 0;
    public static final int ASSEMBLY_HW_CONNECTION__GTIMESTAMP = 1;
    public static final int ASSEMBLY_HW_CONNECTION__CHECKSUM = 2;
    public static final int ASSEMBLY_HW_CONNECTION__TIMESTAMP = 3;
    public static final int ASSEMBLY_HW_CONNECTION__GSHORT_NAME = 4;
    public static final int ASSEMBLY_HW_CONNECTION__GUUID = 5;
    public static final int ASSEMBLY_HW_CONNECTION__GCATEGORY = 6;
    public static final int ASSEMBLY_HW_CONNECTION__GDESC = 7;
    public static final int ASSEMBLY_HW_CONNECTION__SHORT_NAME = 8;
    public static final int ASSEMBLY_HW_CONNECTION__LONG_NAME = 9;
    public static final int ASSEMBLY_HW_CONNECTION__DESC = 10;
    public static final int ASSEMBLY_HW_CONNECTION__CATEGORY = 11;
    public static final int ASSEMBLY_HW_CONNECTION__ADMIN_DATA = 12;
    public static final int ASSEMBLY_HW_CONNECTION__INTRODUCTION = 13;
    public static final int ASSEMBLY_HW_CONNECTION__UUID = 14;
    public static final int ASSEMBLY_HW_CONNECTION__ALL_EXTENSIONS = 15;
    public static final int ASSEMBLY_HW_CONNECTION__CONTAINED_EXTENSIONS = 16;
    public static final int ASSEMBLY_HW_CONNECTION__HW_ELEMENT_CONTAINER = 17;
    public static final int ASSEMBLY_HW_CONNECTION__CONNECTED_PINS = 18;
    public static final int ASSEMBLY_HW_CONNECTION__HW_PORTS = 19;
    public static final int ASSEMBLY_HW_CONNECTION_FEATURE_COUNT = 20;
    public static final int PIN_HW_CONNECTION = 2;
    public static final int PIN_HW_CONNECTION__GCHECKSUM = 0;
    public static final int PIN_HW_CONNECTION__GTIMESTAMP = 1;
    public static final int PIN_HW_CONNECTION__CHECKSUM = 2;
    public static final int PIN_HW_CONNECTION__TIMESTAMP = 3;
    public static final int PIN_HW_CONNECTION__HW_CONNECTION = 4;
    public static final int PIN_HW_CONNECTION__CONNECTED_PINS = 5;
    public static final int PIN_HW_CONNECTION_FEATURE_COUNT = 6;
    public static final int HW_PIN = 3;
    public static final int HW_PIN__GCHECKSUM = 0;
    public static final int HW_PIN__GTIMESTAMP = 1;
    public static final int HW_PIN__CHECKSUM = 2;
    public static final int HW_PIN__TIMESTAMP = 3;
    public static final int HW_PIN__GSHORT_NAME = 4;
    public static final int HW_PIN__GUUID = 5;
    public static final int HW_PIN__GCATEGORY = 6;
    public static final int HW_PIN__GDESC = 7;
    public static final int HW_PIN__SHORT_NAME = 8;
    public static final int HW_PIN__LONG_NAME = 9;
    public static final int HW_PIN__DESC = 10;
    public static final int HW_PIN__CATEGORY = 11;
    public static final int HW_PIN__ADMIN_DATA = 12;
    public static final int HW_PIN__INTRODUCTION = 13;
    public static final int HW_PIN__UUID = 14;
    public static final int HW_PIN__ALL_EXTENSIONS = 15;
    public static final int HW_PIN__CONTAINED_EXTENSIONS = 16;
    public static final int HW_PIN__HW_PORT = 17;
    public static final int HW_PIN_FEATURE_COUNT = 18;
    public static final int HW_PORT = 4;
    public static final int HW_PORT__GCHECKSUM = 0;
    public static final int HW_PORT__GTIMESTAMP = 1;
    public static final int HW_PORT__CHECKSUM = 2;
    public static final int HW_PORT__TIMESTAMP = 3;
    public static final int HW_PORT__GSHORT_NAME = 4;
    public static final int HW_PORT__GUUID = 5;
    public static final int HW_PORT__GCATEGORY = 6;
    public static final int HW_PORT__GDESC = 7;
    public static final int HW_PORT__SHORT_NAME = 8;
    public static final int HW_PORT__LONG_NAME = 9;
    public static final int HW_PORT__DESC = 10;
    public static final int HW_PORT__CATEGORY = 11;
    public static final int HW_PORT__ADMIN_DATA = 12;
    public static final int HW_PORT__INTRODUCTION = 13;
    public static final int HW_PORT__UUID = 14;
    public static final int HW_PORT__ALL_EXTENSIONS = 15;
    public static final int HW_PORT__CONTAINED_EXTENSIONS = 16;
    public static final int HW_PORT__HW_ELEMENT = 17;
    public static final int HW_PORT__DIRECTION = 18;
    public static final int HW_PORT__PINS = 19;
    public static final int HW_PORT_FEATURE_COUNT = 20;
    public static final int DELEGATION_HW_CONNECTION = 5;
    public static final int DELEGATION_HW_CONNECTION__GCHECKSUM = 0;
    public static final int DELEGATION_HW_CONNECTION__GTIMESTAMP = 1;
    public static final int DELEGATION_HW_CONNECTION__CHECKSUM = 2;
    public static final int DELEGATION_HW_CONNECTION__TIMESTAMP = 3;
    public static final int DELEGATION_HW_CONNECTION__GSHORT_NAME = 4;
    public static final int DELEGATION_HW_CONNECTION__GUUID = 5;
    public static final int DELEGATION_HW_CONNECTION__GCATEGORY = 6;
    public static final int DELEGATION_HW_CONNECTION__GDESC = 7;
    public static final int DELEGATION_HW_CONNECTION__SHORT_NAME = 8;
    public static final int DELEGATION_HW_CONNECTION__LONG_NAME = 9;
    public static final int DELEGATION_HW_CONNECTION__DESC = 10;
    public static final int DELEGATION_HW_CONNECTION__CATEGORY = 11;
    public static final int DELEGATION_HW_CONNECTION__ADMIN_DATA = 12;
    public static final int DELEGATION_HW_CONNECTION__INTRODUCTION = 13;
    public static final int DELEGATION_HW_CONNECTION__UUID = 14;
    public static final int DELEGATION_HW_CONNECTION__ALL_EXTENSIONS = 15;
    public static final int DELEGATION_HW_CONNECTION__CONTAINED_EXTENSIONS = 16;
    public static final int DELEGATION_HW_CONNECTION__HW_ELEMENT_CONTAINER = 17;
    public static final int DELEGATION_HW_CONNECTION__CONNECTED_PINS = 18;
    public static final int DELEGATION_HW_CONNECTION__INNER_PORT = 19;
    public static final int DELEGATION_HW_CONNECTION__OUTER_PORT = 20;
    public static final int DELEGATION_HW_CONNECTION_FEATURE_COUNT = 21;
    public static final int HW_ELEMENT = 10;
    public static final int HW_ELEMENT__GCHECKSUM = 0;
    public static final int HW_ELEMENT__GTIMESTAMP = 1;
    public static final int HW_ELEMENT__CHECKSUM = 2;
    public static final int HW_ELEMENT__TIMESTAMP = 3;
    public static final int HW_ELEMENT__GSHORT_NAME = 4;
    public static final int HW_ELEMENT__GUUID = 5;
    public static final int HW_ELEMENT__GCATEGORY = 6;
    public static final int HW_ELEMENT__GDESC = 7;
    public static final int HW_ELEMENT__SHORT_NAME = 8;
    public static final int HW_ELEMENT__LONG_NAME = 9;
    public static final int HW_ELEMENT__DESC = 10;
    public static final int HW_ELEMENT__CATEGORY = 11;
    public static final int HW_ELEMENT__ADMIN_DATA = 12;
    public static final int HW_ELEMENT__INTRODUCTION = 13;
    public static final int HW_ELEMENT__UUID = 14;
    public static final int HW_ELEMENT__ALL_EXTENSIONS = 15;
    public static final int HW_ELEMENT__CONTAINED_EXTENSIONS = 16;
    public static final int HW_ELEMENT__GAR_PACKAGE = 17;
    public static final int HW_ELEMENT__AR_PACKAGE = 18;
    public static final int HW_ELEMENT__HW_ELEMENT_CONTAINER = 19;
    public static final int HW_ELEMENT__HW_ELEMENT_TEMPERATURE = 20;
    public static final int HW_ELEMENT__PORTS = 21;
    public static final int HW_ELEMENT__SIGNAL_TRANSFORMATIONS = 22;
    public static final int HW_ELEMENT__STANDBY_CURRENT = 23;
    public static final int HW_ELEMENT__SUPPORTS_SAFETY = 24;
    public static final int HW_ELEMENT__SUPPORTS_SECURITY = 25;
    public static final int HW_ELEMENT_FEATURE_COUNT = 26;
    public static final int HW_ELEMENT_CONTAINER = 7;
    public static final int HW_ELEMENT_CONTAINER__GCHECKSUM = 0;
    public static final int HW_ELEMENT_CONTAINER__GTIMESTAMP = 1;
    public static final int HW_ELEMENT_CONTAINER__CHECKSUM = 2;
    public static final int HW_ELEMENT_CONTAINER__TIMESTAMP = 3;
    public static final int HW_ELEMENT_CONTAINER__GSHORT_NAME = 4;
    public static final int HW_ELEMENT_CONTAINER__GUUID = 5;
    public static final int HW_ELEMENT_CONTAINER__GCATEGORY = 6;
    public static final int HW_ELEMENT_CONTAINER__GDESC = 7;
    public static final int HW_ELEMENT_CONTAINER__SHORT_NAME = 8;
    public static final int HW_ELEMENT_CONTAINER__LONG_NAME = 9;
    public static final int HW_ELEMENT_CONTAINER__DESC = 10;
    public static final int HW_ELEMENT_CONTAINER__CATEGORY = 11;
    public static final int HW_ELEMENT_CONTAINER__ADMIN_DATA = 12;
    public static final int HW_ELEMENT_CONTAINER__INTRODUCTION = 13;
    public static final int HW_ELEMENT_CONTAINER__UUID = 14;
    public static final int HW_ELEMENT_CONTAINER__ALL_EXTENSIONS = 15;
    public static final int HW_ELEMENT_CONTAINER__CONTAINED_EXTENSIONS = 16;
    public static final int HW_ELEMENT_CONTAINER__GAR_PACKAGE = 17;
    public static final int HW_ELEMENT_CONTAINER__AR_PACKAGE = 18;
    public static final int HW_ELEMENT_CONTAINER__HW_ELEMENT_CONTAINER = 19;
    public static final int HW_ELEMENT_CONTAINER__HW_ELEMENT_TEMPERATURE = 20;
    public static final int HW_ELEMENT_CONTAINER__PORTS = 21;
    public static final int HW_ELEMENT_CONTAINER__SIGNAL_TRANSFORMATIONS = 22;
    public static final int HW_ELEMENT_CONTAINER__STANDBY_CURRENT = 23;
    public static final int HW_ELEMENT_CONTAINER__SUPPORTS_SAFETY = 24;
    public static final int HW_ELEMENT_CONTAINER__SUPPORTS_SECURITY = 25;
    public static final int HW_ELEMENT_CONTAINER__CONNECTIONS = 26;
    public static final int HW_ELEMENT_CONTAINER__CONTAINED_ELEMENTS = 27;
    public static final int HW_ELEMENT_CONTAINER_FEATURE_COUNT = 28;
    public static final int ECU = 6;
    public static final int ECU__GCHECKSUM = 0;
    public static final int ECU__GTIMESTAMP = 1;
    public static final int ECU__CHECKSUM = 2;
    public static final int ECU__TIMESTAMP = 3;
    public static final int ECU__GSHORT_NAME = 4;
    public static final int ECU__GUUID = 5;
    public static final int ECU__GCATEGORY = 6;
    public static final int ECU__GDESC = 7;
    public static final int ECU__SHORT_NAME = 8;
    public static final int ECU__LONG_NAME = 9;
    public static final int ECU__DESC = 10;
    public static final int ECU__CATEGORY = 11;
    public static final int ECU__ADMIN_DATA = 12;
    public static final int ECU__INTRODUCTION = 13;
    public static final int ECU__UUID = 14;
    public static final int ECU__ALL_EXTENSIONS = 15;
    public static final int ECU__CONTAINED_EXTENSIONS = 16;
    public static final int ECU__GAR_PACKAGE = 17;
    public static final int ECU__AR_PACKAGE = 18;
    public static final int ECU__HW_ELEMENT_CONTAINER = 19;
    public static final int ECU__HW_ELEMENT_TEMPERATURE = 20;
    public static final int ECU__PORTS = 21;
    public static final int ECU__SIGNAL_TRANSFORMATIONS = 22;
    public static final int ECU__STANDBY_CURRENT = 23;
    public static final int ECU__SUPPORTS_SAFETY = 24;
    public static final int ECU__SUPPORTS_SECURITY = 25;
    public static final int ECU__CONNECTIONS = 26;
    public static final int ECU__CONTAINED_ELEMENTS = 27;
    public static final int ECU__ECU_ABSTRACTION = 28;
    public static final int ECU_FEATURE_COUNT = 29;
    public static final int HW_CONTAINER = 8;
    public static final int HW_CONTAINER__GCHECKSUM = 0;
    public static final int HW_CONTAINER__GTIMESTAMP = 1;
    public static final int HW_CONTAINER__CHECKSUM = 2;
    public static final int HW_CONTAINER__TIMESTAMP = 3;
    public static final int HW_CONTAINER__GSHORT_NAME = 4;
    public static final int HW_CONTAINER__GUUID = 5;
    public static final int HW_CONTAINER__GCATEGORY = 6;
    public static final int HW_CONTAINER__GDESC = 7;
    public static final int HW_CONTAINER__SHORT_NAME = 8;
    public static final int HW_CONTAINER__LONG_NAME = 9;
    public static final int HW_CONTAINER__DESC = 10;
    public static final int HW_CONTAINER__CATEGORY = 11;
    public static final int HW_CONTAINER__ADMIN_DATA = 12;
    public static final int HW_CONTAINER__INTRODUCTION = 13;
    public static final int HW_CONTAINER__UUID = 14;
    public static final int HW_CONTAINER__ALL_EXTENSIONS = 15;
    public static final int HW_CONTAINER__CONTAINED_EXTENSIONS = 16;
    public static final int HW_CONTAINER__GAR_PACKAGE = 17;
    public static final int HW_CONTAINER__AR_PACKAGE = 18;
    public static final int HW_CONTAINER__HW_ELEMENT_CONTAINER = 19;
    public static final int HW_CONTAINER__HW_ELEMENT_TEMPERATURE = 20;
    public static final int HW_CONTAINER__PORTS = 21;
    public static final int HW_CONTAINER__SIGNAL_TRANSFORMATIONS = 22;
    public static final int HW_CONTAINER__STANDBY_CURRENT = 23;
    public static final int HW_CONTAINER__SUPPORTS_SAFETY = 24;
    public static final int HW_CONTAINER__SUPPORTS_SECURITY = 25;
    public static final int HW_CONTAINER__CONNECTIONS = 26;
    public static final int HW_CONTAINER__CONTAINED_ELEMENTS = 27;
    public static final int HW_CONTAINER_FEATURE_COUNT = 28;
    public static final int SIGNAL_TRANSFORMATION = 9;
    public static final int SIGNAL_TRANSFORMATION__GCHECKSUM = 0;
    public static final int SIGNAL_TRANSFORMATION__GTIMESTAMP = 1;
    public static final int SIGNAL_TRANSFORMATION__CHECKSUM = 2;
    public static final int SIGNAL_TRANSFORMATION__TIMESTAMP = 3;
    public static final int SIGNAL_TRANSFORMATION__HW_ELEMENT = 4;
    public static final int SIGNAL_TRANSFORMATION__INPUT_HW_PORTS = 5;
    public static final int SIGNAL_TRANSFORMATION__OUTPUT_HW_PORTS = 6;
    public static final int SIGNAL_TRANSFORMATION_FEATURE_COUNT = 7;

    public EClass getAssemblyHWConnection();

    public EReference getAssemblyHWConnection_HwPorts();

    public EClass getHWConnection();

    public EReference getHWConnection_HWElementContainer();

    public EReference getHWConnection_ConnectedPins();

    public EClass getPinHWConnection();

    public EReference getPinHWConnection_HWConnection();

    public EReference getPinHWConnection_ConnectedPins();

    public EClass getHWPin();

    public EReference getHWPin_HWPort();

    public EClass getHWPort();

    public EReference getHWPort_HWElement();

    public EAttribute getHWPort_Direction();

    public EReference getHWPort_Pins();

    public EClass getDelegationHWConnection();

    public EReference getDelegationHWConnection_InnerPort();

    public EReference getDelegationHWConnection_OuterPort();

    public EClass getECU();

    public EReference getECU_EcuAbstraction();

    public EClass getHWElementContainer();

    public EReference getHWElementContainer_Connections();

    public EReference getHWElementContainer_ContainedElements();

    public EClass getHWContainer();

    public EClass getSignalTransformation();

    public EReference getSignalTransformation_HWElement();

    public EReference getSignalTransformation_InputHwPorts();

    public EReference getSignalTransformation_OutputHwPorts();

    public EClass getHWElement();

    public EReference getHWElement_HWElementContainer();

    public EReference getHWElement_HwElementTemperature();

    public EReference getHWElement_Ports();

    public EReference getHWElement_SignalTransformations();

    public EAttribute getHWElement_StandbyCurrent();

    public EReference getHWElement_SupportsSafety();

    public EReference getHWElement_SupportsSecurity();

    public EcuresourceFactory getEcuresourceFactory();

    public static interface Literals {
        public static final EClass ASSEMBLY_HW_CONNECTION = eINSTANCE.getAssemblyHWConnection();
        public static final EReference ASSEMBLY_HW_CONNECTION__HW_PORTS = eINSTANCE.getAssemblyHWConnection_HwPorts();
        public static final EClass HW_CONNECTION = eINSTANCE.getHWConnection();
        public static final EReference HW_CONNECTION__HW_ELEMENT_CONTAINER = eINSTANCE.getHWConnection_HWElementContainer();
        public static final EReference HW_CONNECTION__CONNECTED_PINS = eINSTANCE.getHWConnection_ConnectedPins();
        public static final EClass PIN_HW_CONNECTION = eINSTANCE.getPinHWConnection();
        public static final EReference PIN_HW_CONNECTION__HW_CONNECTION = eINSTANCE.getPinHWConnection_HWConnection();
        public static final EReference PIN_HW_CONNECTION__CONNECTED_PINS = eINSTANCE.getPinHWConnection_ConnectedPins();
        public static final EClass HW_PIN = eINSTANCE.getHWPin();
        public static final EReference HW_PIN__HW_PORT = eINSTANCE.getHWPin_HWPort();
        public static final EClass HW_PORT = eINSTANCE.getHWPort();
        public static final EReference HW_PORT__HW_ELEMENT = eINSTANCE.getHWPort_HWElement();
        public static final EAttribute HW_PORT__DIRECTION = eINSTANCE.getHWPort_Direction();
        public static final EReference HW_PORT__PINS = eINSTANCE.getHWPort_Pins();
        public static final EClass DELEGATION_HW_CONNECTION = eINSTANCE.getDelegationHWConnection();
        public static final EReference DELEGATION_HW_CONNECTION__INNER_PORT = eINSTANCE.getDelegationHWConnection_InnerPort();
        public static final EReference DELEGATION_HW_CONNECTION__OUTER_PORT = eINSTANCE.getDelegationHWConnection_OuterPort();
        public static final EClass ECU = eINSTANCE.getECU();
        public static final EReference ECU__ECU_ABSTRACTION = eINSTANCE.getECU_EcuAbstraction();
        public static final EClass HW_ELEMENT_CONTAINER = eINSTANCE.getHWElementContainer();
        public static final EReference HW_ELEMENT_CONTAINER__CONNECTIONS = eINSTANCE.getHWElementContainer_Connections();
        public static final EReference HW_ELEMENT_CONTAINER__CONTAINED_ELEMENTS = eINSTANCE.getHWElementContainer_ContainedElements();
        public static final EClass HW_CONTAINER = eINSTANCE.getHWContainer();
        public static final EClass SIGNAL_TRANSFORMATION = eINSTANCE.getSignalTransformation();
        public static final EReference SIGNAL_TRANSFORMATION__HW_ELEMENT = eINSTANCE.getSignalTransformation_HWElement();
        public static final EReference SIGNAL_TRANSFORMATION__INPUT_HW_PORTS = eINSTANCE.getSignalTransformation_InputHwPorts();
        public static final EReference SIGNAL_TRANSFORMATION__OUTPUT_HW_PORTS = eINSTANCE.getSignalTransformation_OutputHwPorts();
        public static final EClass HW_ELEMENT = eINSTANCE.getHWElement();
        public static final EReference HW_ELEMENT__HW_ELEMENT_CONTAINER = eINSTANCE.getHWElement_HWElementContainer();
        public static final EReference HW_ELEMENT__HW_ELEMENT_TEMPERATURE = eINSTANCE.getHWElement_HwElementTemperature();
        public static final EReference HW_ELEMENT__PORTS = eINSTANCE.getHWElement_Ports();
        public static final EReference HW_ELEMENT__SIGNAL_TRANSFORMATIONS = eINSTANCE.getHWElement_SignalTransformations();
        public static final EAttribute HW_ELEMENT__STANDBY_CURRENT = eINSTANCE.getHWElement_StandbyCurrent();
        public static final EReference HW_ELEMENT__SUPPORTS_SAFETY = eINSTANCE.getHWElement_SupportsSafety();
        public static final EReference HW_ELEMENT__SUPPORTS_SECURITY = eINSTANCE.getHWElement_SupportsSecurity();
    }
}

