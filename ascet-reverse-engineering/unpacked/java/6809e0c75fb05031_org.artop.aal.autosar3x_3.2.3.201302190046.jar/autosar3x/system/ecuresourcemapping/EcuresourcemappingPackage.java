/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.system.ecuresourcemapping;

import autosar3x.system.ecuresourcemapping.EcuresourcemappingFactory;
import autosar3x.system.ecuresourcemapping.impl.EcuresourcemappingPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface EcuresourcemappingPackage
extends EPackage {
    public static final String eNAME = "ecuresourcemapping";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/ecurm";
    public static final String eNS_PREFIX = "";
    public static final EcuresourcemappingPackage eINSTANCE = EcuresourcemappingPackageImpl.init();
    public static final int COMMUNICATION_CONTROLLER_MAPPING = 0;
    public static final int COMMUNICATION_CONTROLLER_MAPPING__GCHECKSUM = 0;
    public static final int COMMUNICATION_CONTROLLER_MAPPING__GTIMESTAMP = 1;
    public static final int COMMUNICATION_CONTROLLER_MAPPING__CHECKSUM = 2;
    public static final int COMMUNICATION_CONTROLLER_MAPPING__TIMESTAMP = 3;
    public static final int COMMUNICATION_CONTROLLER_MAPPING__ECU_MAPPING = 4;
    public static final int COMMUNICATION_CONTROLLER_MAPPING__COMMUNICATION_CONTROLLER = 5;
    public static final int COMMUNICATION_CONTROLLER_MAPPING__COMMUNICATION_PERIPHERAL = 6;
    public static final int COMMUNICATION_CONTROLLER_MAPPING_FEATURE_COUNT = 7;
    public static final int HW_PORT_MAPPING = 1;
    public static final int HW_PORT_MAPPING__GCHECKSUM = 0;
    public static final int HW_PORT_MAPPING__GTIMESTAMP = 1;
    public static final int HW_PORT_MAPPING__CHECKSUM = 2;
    public static final int HW_PORT_MAPPING__TIMESTAMP = 3;
    public static final int HW_PORT_MAPPING__ECU_MAPPING = 4;
    public static final int HW_PORT_MAPPING__COMMUNICATION_CONNECTOR = 5;
    public static final int HW_PORT_MAPPING__ECU_COMMUNICATION_PORT = 6;
    public static final int HW_PORT_MAPPING_FEATURE_COUNT = 7;
    public static final int ECU_MAPPING = 2;
    public static final int ECU_MAPPING__GCHECKSUM = 0;
    public static final int ECU_MAPPING__GTIMESTAMP = 1;
    public static final int ECU_MAPPING__CHECKSUM = 2;
    public static final int ECU_MAPPING__TIMESTAMP = 3;
    public static final int ECU_MAPPING__GSHORT_NAME = 4;
    public static final int ECU_MAPPING__GUUID = 5;
    public static final int ECU_MAPPING__GCATEGORY = 6;
    public static final int ECU_MAPPING__GDESC = 7;
    public static final int ECU_MAPPING__SHORT_NAME = 8;
    public static final int ECU_MAPPING__LONG_NAME = 9;
    public static final int ECU_MAPPING__DESC = 10;
    public static final int ECU_MAPPING__CATEGORY = 11;
    public static final int ECU_MAPPING__ADMIN_DATA = 12;
    public static final int ECU_MAPPING__INTRODUCTION = 13;
    public static final int ECU_MAPPING__UUID = 14;
    public static final int ECU_MAPPING__ALL_EXTENSIONS = 15;
    public static final int ECU_MAPPING__CONTAINED_EXTENSIONS = 16;
    public static final int ECU_MAPPING__SYSTEM_MAPPING = 17;
    public static final int ECU_MAPPING__COMM_CONTROLLER_MAPPINGS = 18;
    public static final int ECU_MAPPING__ECU_INSTANCE = 19;
    public static final int ECU_MAPPING__ECU = 20;
    public static final int ECU_MAPPING__PORT_MAPPINGS = 21;
    public static final int ECU_MAPPING_FEATURE_COUNT = 22;

    public EClass getCommunicationControllerMapping();

    public EReference getCommunicationControllerMapping_ECUMapping();

    public EReference getCommunicationControllerMapping_CommunicationController();

    public EReference getCommunicationControllerMapping_CommunicationPeripheral();

    public EClass getHWPortMapping();

    public EReference getHWPortMapping_ECUMapping();

    public EReference getHWPortMapping_CommunicationConnector();

    public EReference getHWPortMapping_EcuCommunicationPort();

    public EClass getECUMapping();

    public EReference getECUMapping_SystemMapping();

    public EReference getECUMapping_CommControllerMappings();

    public EReference getECUMapping_EcuInstance();

    public EReference getECUMapping_Ecu();

    public EReference getECUMapping_PortMappings();

    public EcuresourcemappingFactory getEcuresourcemappingFactory();

    public static interface Literals {
        public static final EClass COMMUNICATION_CONTROLLER_MAPPING = eINSTANCE.getCommunicationControllerMapping();
        public static final EReference COMMUNICATION_CONTROLLER_MAPPING__ECU_MAPPING = eINSTANCE.getCommunicationControllerMapping_ECUMapping();
        public static final EReference COMMUNICATION_CONTROLLER_MAPPING__COMMUNICATION_CONTROLLER = eINSTANCE.getCommunicationControllerMapping_CommunicationController();
        public static final EReference COMMUNICATION_CONTROLLER_MAPPING__COMMUNICATION_PERIPHERAL = eINSTANCE.getCommunicationControllerMapping_CommunicationPeripheral();
        public static final EClass HW_PORT_MAPPING = eINSTANCE.getHWPortMapping();
        public static final EReference HW_PORT_MAPPING__ECU_MAPPING = eINSTANCE.getHWPortMapping_ECUMapping();
        public static final EReference HW_PORT_MAPPING__COMMUNICATION_CONNECTOR = eINSTANCE.getHWPortMapping_CommunicationConnector();
        public static final EReference HW_PORT_MAPPING__ECU_COMMUNICATION_PORT = eINSTANCE.getHWPortMapping_EcuCommunicationPort();
        public static final EClass ECU_MAPPING = eINSTANCE.getECUMapping();
        public static final EReference ECU_MAPPING__SYSTEM_MAPPING = eINSTANCE.getECUMapping_SystemMapping();
        public static final EReference ECU_MAPPING__COMM_CONTROLLER_MAPPINGS = eINSTANCE.getECUMapping_CommControllerMappings();
        public static final EReference ECU_MAPPING__ECU_INSTANCE = eINSTANCE.getECUMapping_EcuInstance();
        public static final EReference ECU_MAPPING__ECU = eINSTANCE.getECUMapping_Ecu();
        public static final EReference ECU_MAPPING__PORT_MAPPINGS = eINSTANCE.getECUMapping_PortMappings();
    }
}

