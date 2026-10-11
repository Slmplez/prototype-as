/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.system;

import autosar21.system.SystemFactory;
import autosar21.system.impl.SystemPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SystemPackage
extends EPackage {
    public static final String eNAME = "system";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/s";
    public static final String eNS_PREFIX = "";
    public static final SystemPackage eINSTANCE = SystemPackageImpl.init();
    public static final int SYSTEM_TOPOLOGY_INSTANCE = 0;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__GCHECKSUM = 0;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__GTIMESTAMP = 1;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__CHECKSUM = 2;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__TIMESTAMP = 3;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__GSHORT_NAME = 4;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__GUUID = 5;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__GCATEGORY = 6;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__GDESC = 7;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__SHORT_NAME = 8;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__LONG_NAME = 9;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__DESC = 10;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__CATEGORY = 11;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__ADMIN_DATA = 12;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__UUID = 13;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__ALL_EXTENSIONS = 14;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__CONTAINED_EXTENSIONS = 15;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__SYSTEM = 16;
    public static final int SYSTEM_TOPOLOGY_INSTANCE__TOPOLOGY = 17;
    public static final int SYSTEM_TOPOLOGY_INSTANCE_FEATURE_COUNT = 18;
    public static final int COMMUNICATION_MATRIX_INSTANCE = 1;
    public static final int COMMUNICATION_MATRIX_INSTANCE__GCHECKSUM = 0;
    public static final int COMMUNICATION_MATRIX_INSTANCE__GTIMESTAMP = 1;
    public static final int COMMUNICATION_MATRIX_INSTANCE__CHECKSUM = 2;
    public static final int COMMUNICATION_MATRIX_INSTANCE__TIMESTAMP = 3;
    public static final int COMMUNICATION_MATRIX_INSTANCE__GSHORT_NAME = 4;
    public static final int COMMUNICATION_MATRIX_INSTANCE__GUUID = 5;
    public static final int COMMUNICATION_MATRIX_INSTANCE__GCATEGORY = 6;
    public static final int COMMUNICATION_MATRIX_INSTANCE__GDESC = 7;
    public static final int COMMUNICATION_MATRIX_INSTANCE__SHORT_NAME = 8;
    public static final int COMMUNICATION_MATRIX_INSTANCE__LONG_NAME = 9;
    public static final int COMMUNICATION_MATRIX_INSTANCE__DESC = 10;
    public static final int COMMUNICATION_MATRIX_INSTANCE__CATEGORY = 11;
    public static final int COMMUNICATION_MATRIX_INSTANCE__ADMIN_DATA = 12;
    public static final int COMMUNICATION_MATRIX_INSTANCE__UUID = 13;
    public static final int COMMUNICATION_MATRIX_INSTANCE__ALL_EXTENSIONS = 14;
    public static final int COMMUNICATION_MATRIX_INSTANCE__CONTAINED_EXTENSIONS = 15;
    public static final int COMMUNICATION_MATRIX_INSTANCE__SYSTEM_COMMUNICATION = 16;
    public static final int COMMUNICATION_MATRIX_INSTANCE__COMMUNICATION_MATRIX_TYPE = 17;
    public static final int COMMUNICATION_MATRIX_INSTANCE_FEATURE_COUNT = 18;
    public static final int GATEWAY_INSTANCE = 2;
    public static final int GATEWAY_INSTANCE__GCHECKSUM = 0;
    public static final int GATEWAY_INSTANCE__GTIMESTAMP = 1;
    public static final int GATEWAY_INSTANCE__CHECKSUM = 2;
    public static final int GATEWAY_INSTANCE__TIMESTAMP = 3;
    public static final int GATEWAY_INSTANCE__GSHORT_NAME = 4;
    public static final int GATEWAY_INSTANCE__GUUID = 5;
    public static final int GATEWAY_INSTANCE__GCATEGORY = 6;
    public static final int GATEWAY_INSTANCE__GDESC = 7;
    public static final int GATEWAY_INSTANCE__SHORT_NAME = 8;
    public static final int GATEWAY_INSTANCE__LONG_NAME = 9;
    public static final int GATEWAY_INSTANCE__DESC = 10;
    public static final int GATEWAY_INSTANCE__CATEGORY = 11;
    public static final int GATEWAY_INSTANCE__ADMIN_DATA = 12;
    public static final int GATEWAY_INSTANCE__UUID = 13;
    public static final int GATEWAY_INSTANCE__ALL_EXTENSIONS = 14;
    public static final int GATEWAY_INSTANCE__CONTAINED_EXTENSIONS = 15;
    public static final int GATEWAY_INSTANCE__SYSTEM_COMMUNICATION = 16;
    public static final int GATEWAY_INSTANCE__GATEWAY = 17;
    public static final int GATEWAY_INSTANCE_FEATURE_COUNT = 18;
    public static final int SYSTEM = 3;
    public static final int SYSTEM__GCHECKSUM = 0;
    public static final int SYSTEM__GTIMESTAMP = 1;
    public static final int SYSTEM__CHECKSUM = 2;
    public static final int SYSTEM__TIMESTAMP = 3;
    public static final int SYSTEM__GSHORT_NAME = 4;
    public static final int SYSTEM__GUUID = 5;
    public static final int SYSTEM__GCATEGORY = 6;
    public static final int SYSTEM__GDESC = 7;
    public static final int SYSTEM__SHORT_NAME = 8;
    public static final int SYSTEM__LONG_NAME = 9;
    public static final int SYSTEM__DESC = 10;
    public static final int SYSTEM__CATEGORY = 11;
    public static final int SYSTEM__ADMIN_DATA = 12;
    public static final int SYSTEM__UUID = 13;
    public static final int SYSTEM__ALL_EXTENSIONS = 14;
    public static final int SYSTEM__CONTAINED_EXTENSIONS = 15;
    public static final int SYSTEM__GAR_PACKAGE = 16;
    public static final int SYSTEM__AR_PACKAGE = 17;
    public static final int SYSTEM__COMMUNICATION = 18;
    public static final int SYSTEM__MAPPING = 19;
    public static final int SYSTEM__SOFTWARE_COMPOSITION = 20;
    public static final int SYSTEM__TOPOLOGY = 21;
    public static final int SYSTEM_FEATURE_COUNT = 22;
    public static final int SYSTEM_COMMUNICATION = 4;
    public static final int SYSTEM_COMMUNICATION__GCHECKSUM = 0;
    public static final int SYSTEM_COMMUNICATION__GTIMESTAMP = 1;
    public static final int SYSTEM_COMMUNICATION__CHECKSUM = 2;
    public static final int SYSTEM_COMMUNICATION__TIMESTAMP = 3;
    public static final int SYSTEM_COMMUNICATION__SYSTEM = 4;
    public static final int SYSTEM_COMMUNICATION__COMMUNICATION_MATRIXS = 5;
    public static final int SYSTEM_COMMUNICATION__COMMUNICATION_PROTOCOLS = 6;
    public static final int SYSTEM_COMMUNICATION__GATEWAYS = 7;
    public static final int SYSTEM_COMMUNICATION_FEATURE_COUNT = 8;
    public static final int SYSTEM_MAPPING = 5;
    public static final int SYSTEM_MAPPING__GCHECKSUM = 0;
    public static final int SYSTEM_MAPPING__GTIMESTAMP = 1;
    public static final int SYSTEM_MAPPING__CHECKSUM = 2;
    public static final int SYSTEM_MAPPING__TIMESTAMP = 3;
    public static final int SYSTEM_MAPPING__GSHORT_NAME = 4;
    public static final int SYSTEM_MAPPING__GUUID = 5;
    public static final int SYSTEM_MAPPING__GCATEGORY = 6;
    public static final int SYSTEM_MAPPING__GDESC = 7;
    public static final int SYSTEM_MAPPING__SHORT_NAME = 8;
    public static final int SYSTEM_MAPPING__LONG_NAME = 9;
    public static final int SYSTEM_MAPPING__DESC = 10;
    public static final int SYSTEM_MAPPING__CATEGORY = 11;
    public static final int SYSTEM_MAPPING__ADMIN_DATA = 12;
    public static final int SYSTEM_MAPPING__UUID = 13;
    public static final int SYSTEM_MAPPING__ALL_EXTENSIONS = 14;
    public static final int SYSTEM_MAPPING__CONTAINED_EXTENSIONS = 15;
    public static final int SYSTEM_MAPPING__SYSTEM = 16;
    public static final int SYSTEM_MAPPING__DATA_MAPPINGS = 17;
    public static final int SYSTEM_MAPPING__MAPPING_CONSTRAINTS = 18;
    public static final int SYSTEM_MAPPING__RESOURCE_ESTIMATIONS = 19;
    public static final int SYSTEM_MAPPING__SIGNAL_PATH_CONSTRAINTS = 20;
    public static final int SYSTEM_MAPPING__SW_IMPL_MAPPINGS = 21;
    public static final int SYSTEM_MAPPING__SW_MAPPINGS = 22;
    public static final int SYSTEM_MAPPING_FEATURE_COUNT = 23;
    public static final int SOFTWARE_COMPOSITION = 6;
    public static final int SOFTWARE_COMPOSITION__GCHECKSUM = 0;
    public static final int SOFTWARE_COMPOSITION__GTIMESTAMP = 1;
    public static final int SOFTWARE_COMPOSITION__CHECKSUM = 2;
    public static final int SOFTWARE_COMPOSITION__TIMESTAMP = 3;
    public static final int SOFTWARE_COMPOSITION__GSHORT_NAME = 4;
    public static final int SOFTWARE_COMPOSITION__GUUID = 5;
    public static final int SOFTWARE_COMPOSITION__GCATEGORY = 6;
    public static final int SOFTWARE_COMPOSITION__GDESC = 7;
    public static final int SOFTWARE_COMPOSITION__SHORT_NAME = 8;
    public static final int SOFTWARE_COMPOSITION__LONG_NAME = 9;
    public static final int SOFTWARE_COMPOSITION__DESC = 10;
    public static final int SOFTWARE_COMPOSITION__CATEGORY = 11;
    public static final int SOFTWARE_COMPOSITION__ADMIN_DATA = 12;
    public static final int SOFTWARE_COMPOSITION__UUID = 13;
    public static final int SOFTWARE_COMPOSITION__ALL_EXTENSIONS = 14;
    public static final int SOFTWARE_COMPOSITION__CONTAINED_EXTENSIONS = 15;
    public static final int SOFTWARE_COMPOSITION__SYSTEM = 16;
    public static final int SOFTWARE_COMPOSITION__SOFTWARE_COMPOSITION = 17;
    public static final int SOFTWARE_COMPOSITION_FEATURE_COUNT = 18;

    public EClass getSystemTopologyInstance();

    public EReference getSystemTopologyInstance_System();

    public EReference getSystemTopologyInstance_Topology();

    public EClass getCommunicationMatrixInstance();

    public EReference getCommunicationMatrixInstance_SystemCommunication();

    public EReference getCommunicationMatrixInstance_CommunicationMatrixType();

    public EClass getGatewayInstance();

    public EReference getGatewayInstance_SystemCommunication();

    public EReference getGatewayInstance_Gateway();

    public EClass getSystem();

    public EReference getSystem_Communication();

    public EReference getSystem_Mapping();

    public EReference getSystem_SoftwareComposition();

    public EReference getSystem_Topology();

    public EClass getSystemCommunication();

    public EReference getSystemCommunication_System();

    public EReference getSystemCommunication_CommunicationMatrixs();

    public EReference getSystemCommunication_CommunicationProtocols();

    public EReference getSystemCommunication_Gateways();

    public EClass getSystemMapping();

    public EReference getSystemMapping_System();

    public EReference getSystemMapping_DataMappings();

    public EReference getSystemMapping_MappingConstraints();

    public EReference getSystemMapping_ResourceEstimations();

    public EReference getSystemMapping_SignalPathConstraints();

    public EReference getSystemMapping_SwImplMappings();

    public EReference getSystemMapping_SwMappings();

    public EClass getSoftwareComposition();

    public EReference getSoftwareComposition_System();

    public EReference getSoftwareComposition_SoftwareComposition();

    public SystemFactory getSystemFactory();

    public static interface Literals {
        public static final EClass SYSTEM_TOPOLOGY_INSTANCE = eINSTANCE.getSystemTopologyInstance();
        public static final EReference SYSTEM_TOPOLOGY_INSTANCE__SYSTEM = eINSTANCE.getSystemTopologyInstance_System();
        public static final EReference SYSTEM_TOPOLOGY_INSTANCE__TOPOLOGY = eINSTANCE.getSystemTopologyInstance_Topology();
        public static final EClass COMMUNICATION_MATRIX_INSTANCE = eINSTANCE.getCommunicationMatrixInstance();
        public static final EReference COMMUNICATION_MATRIX_INSTANCE__SYSTEM_COMMUNICATION = eINSTANCE.getCommunicationMatrixInstance_SystemCommunication();
        public static final EReference COMMUNICATION_MATRIX_INSTANCE__COMMUNICATION_MATRIX_TYPE = eINSTANCE.getCommunicationMatrixInstance_CommunicationMatrixType();
        public static final EClass GATEWAY_INSTANCE = eINSTANCE.getGatewayInstance();
        public static final EReference GATEWAY_INSTANCE__SYSTEM_COMMUNICATION = eINSTANCE.getGatewayInstance_SystemCommunication();
        public static final EReference GATEWAY_INSTANCE__GATEWAY = eINSTANCE.getGatewayInstance_Gateway();
        public static final EClass SYSTEM = eINSTANCE.getSystem();
        public static final EReference SYSTEM__COMMUNICATION = eINSTANCE.getSystem_Communication();
        public static final EReference SYSTEM__MAPPING = eINSTANCE.getSystem_Mapping();
        public static final EReference SYSTEM__SOFTWARE_COMPOSITION = eINSTANCE.getSystem_SoftwareComposition();
        public static final EReference SYSTEM__TOPOLOGY = eINSTANCE.getSystem_Topology();
        public static final EClass SYSTEM_COMMUNICATION = eINSTANCE.getSystemCommunication();
        public static final EReference SYSTEM_COMMUNICATION__SYSTEM = eINSTANCE.getSystemCommunication_System();
        public static final EReference SYSTEM_COMMUNICATION__COMMUNICATION_MATRIXS = eINSTANCE.getSystemCommunication_CommunicationMatrixs();
        public static final EReference SYSTEM_COMMUNICATION__COMMUNICATION_PROTOCOLS = eINSTANCE.getSystemCommunication_CommunicationProtocols();
        public static final EReference SYSTEM_COMMUNICATION__GATEWAYS = eINSTANCE.getSystemCommunication_Gateways();
        public static final EClass SYSTEM_MAPPING = eINSTANCE.getSystemMapping();
        public static final EReference SYSTEM_MAPPING__SYSTEM = eINSTANCE.getSystemMapping_System();
        public static final EReference SYSTEM_MAPPING__DATA_MAPPINGS = eINSTANCE.getSystemMapping_DataMappings();
        public static final EReference SYSTEM_MAPPING__MAPPING_CONSTRAINTS = eINSTANCE.getSystemMapping_MappingConstraints();
        public static final EReference SYSTEM_MAPPING__RESOURCE_ESTIMATIONS = eINSTANCE.getSystemMapping_ResourceEstimations();
        public static final EReference SYSTEM_MAPPING__SIGNAL_PATH_CONSTRAINTS = eINSTANCE.getSystemMapping_SignalPathConstraints();
        public static final EReference SYSTEM_MAPPING__SW_IMPL_MAPPINGS = eINSTANCE.getSystemMapping_SwImplMappings();
        public static final EReference SYSTEM_MAPPING__SW_MAPPINGS = eINSTANCE.getSystemMapping_SwMappings();
        public static final EClass SOFTWARE_COMPOSITION = eINSTANCE.getSoftwareComposition();
        public static final EReference SOFTWARE_COMPOSITION__SYSTEM = eINSTANCE.getSoftwareComposition_System();
        public static final EReference SOFTWARE_COMPOSITION__SOFTWARE_COMPOSITION = eINSTANCE.getSoftwareComposition_SoftwareComposition();
    }
}

