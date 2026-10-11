/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.system.ecuresourcemapping;

import autosar40.system.ecuresourcemapping.EcuresourcemappingFactory;
import autosar40.system.ecuresourcemapping.impl.EcuresourcemappingPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface EcuresourcemappingPackage
extends EPackage {
    public static final String eNAME = "ecuresourcemapping";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/ecurm";
    public static final String eNS_PREFIX = "";
    public static final EcuresourcemappingPackage eINSTANCE = EcuresourcemappingPackageImpl.init();
    public static final int COMMUNICATION_CONTROLLER_MAPPING = 0;
    public static final int COMMUNICATION_CONTROLLER_MAPPING__GCHECKSUM = 0;
    public static final int COMMUNICATION_CONTROLLER_MAPPING__GTIMESTAMP = 1;
    public static final int COMMUNICATION_CONTROLLER_MAPPING__CHECKSUM = 2;
    public static final int COMMUNICATION_CONTROLLER_MAPPING__TIMESTAMP = 3;
    public static final int COMMUNICATION_CONTROLLER_MAPPING__ECU_MAPPING = 4;
    public static final int COMMUNICATION_CONTROLLER_MAPPING__COMMUNICATION_CONTROLLER = 5;
    public static final int COMMUNICATION_CONTROLLER_MAPPING__HW_COMMUNICATION_CONTROLLER = 6;
    public static final int COMMUNICATION_CONTROLLER_MAPPING_FEATURE_COUNT = 7;
    public static final int HW_PORT_MAPPING = 1;
    public static final int HW_PORT_MAPPING__GCHECKSUM = 0;
    public static final int HW_PORT_MAPPING__GTIMESTAMP = 1;
    public static final int HW_PORT_MAPPING__CHECKSUM = 2;
    public static final int HW_PORT_MAPPING__TIMESTAMP = 3;
    public static final int HW_PORT_MAPPING__ECU_MAPPING = 4;
    public static final int HW_PORT_MAPPING__COMMUNICATION_CONNECTOR = 5;
    public static final int HW_PORT_MAPPING__HW_COMMUNICATION_PORT = 6;
    public static final int HW_PORT_MAPPING_FEATURE_COUNT = 7;
    public static final int ECU_MAPPING = 2;
    public static final int ECU_MAPPING__GCHECKSUM = 0;
    public static final int ECU_MAPPING__GTIMESTAMP = 1;
    public static final int ECU_MAPPING__CHECKSUM = 2;
    public static final int ECU_MAPPING__TIMESTAMP = 3;
    public static final int ECU_MAPPING__GSHORT_NAME = 4;
    public static final int ECU_MAPPING__SHORT_NAME = 5;
    public static final int ECU_MAPPING__LONG_NAME = 6;
    public static final int ECU_MAPPING__GUUID = 7;
    public static final int ECU_MAPPING__GCATEGORY = 8;
    public static final int ECU_MAPPING__GDESC = 9;
    public static final int ECU_MAPPING__DESC = 10;
    public static final int ECU_MAPPING__CATEGORY = 11;
    public static final int ECU_MAPPING__ADMIN_DATA = 12;
    public static final int ECU_MAPPING__INTRODUCTION = 13;
    public static final int ECU_MAPPING__ANNOTATIONS = 14;
    public static final int ECU_MAPPING__UUID = 15;
    public static final int ECU_MAPPING__ALL_EXTENSIONS = 16;
    public static final int ECU_MAPPING__CONTAINED_EXTENSIONS = 17;
    public static final int ECU_MAPPING__SYSTEM_MAPPING = 18;
    public static final int ECU_MAPPING__COMM_CONTROLLER_MAPPINGS = 19;
    public static final int ECU_MAPPING__ECU_INSTANCE = 20;
    public static final int ECU_MAPPING__ECU = 21;
    public static final int ECU_MAPPING__HW_PORT_MAPPINGS = 22;
    public static final int ECU_MAPPING__VARIATION_POINT = 23;
    public static final int ECU_MAPPING_FEATURE_COUNT = 24;

    public EClass getCommunicationControllerMapping();

    public EReference getCommunicationControllerMapping_ECUMapping();

    public EReference getCommunicationControllerMapping_CommunicationController();

    public EReference getCommunicationControllerMapping_HwCommunicationController();

    public EClass getHwPortMapping();

    public EReference getHwPortMapping_ECUMapping();

    public EReference getHwPortMapping_CommunicationConnector();

    public EReference getHwPortMapping_HwCommunicationPort();

    public EClass getECUMapping();

    public EReference getECUMapping_SystemMapping();

    public EReference getECUMapping_CommControllerMappings();

    public EReference getECUMapping_EcuInstance();

    public EReference getECUMapping_Ecu();

    public EReference getECUMapping_HwPortMappings();

    public EReference getECUMapping_VariationPoint();

    public EcuresourcemappingFactory getEcuresourcemappingFactory();

    public static interface Literals {
        public static final EClass COMMUNICATION_CONTROLLER_MAPPING = eINSTANCE.getCommunicationControllerMapping();
        public static final EReference COMMUNICATION_CONTROLLER_MAPPING__ECU_MAPPING = eINSTANCE.getCommunicationControllerMapping_ECUMapping();
        public static final EReference COMMUNICATION_CONTROLLER_MAPPING__COMMUNICATION_CONTROLLER = eINSTANCE.getCommunicationControllerMapping_CommunicationController();
        public static final EReference COMMUNICATION_CONTROLLER_MAPPING__HW_COMMUNICATION_CONTROLLER = eINSTANCE.getCommunicationControllerMapping_HwCommunicationController();
        public static final EClass HW_PORT_MAPPING = eINSTANCE.getHwPortMapping();
        public static final EReference HW_PORT_MAPPING__ECU_MAPPING = eINSTANCE.getHwPortMapping_ECUMapping();
        public static final EReference HW_PORT_MAPPING__COMMUNICATION_CONNECTOR = eINSTANCE.getHwPortMapping_CommunicationConnector();
        public static final EReference HW_PORT_MAPPING__HW_COMMUNICATION_PORT = eINSTANCE.getHwPortMapping_HwCommunicationPort();
        public static final EClass ECU_MAPPING = eINSTANCE.getECUMapping();
        public static final EReference ECU_MAPPING__SYSTEM_MAPPING = eINSTANCE.getECUMapping_SystemMapping();
        public static final EReference ECU_MAPPING__COMM_CONTROLLER_MAPPINGS = eINSTANCE.getECUMapping_CommControllerMappings();
        public static final EReference ECU_MAPPING__ECU_INSTANCE = eINSTANCE.getECUMapping_EcuInstance();
        public static final EReference ECU_MAPPING__ECU = eINSTANCE.getECUMapping_Ecu();
        public static final EReference ECU_MAPPING__HW_PORT_MAPPINGS = eINSTANCE.getECUMapping_HwPortMappings();
        public static final EReference ECU_MAPPING__VARIATION_POINT = eINSTANCE.getECUMapping_VariationPoint();
    }
}

