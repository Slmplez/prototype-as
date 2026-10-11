/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.system.fibex.fibexcore.coretopology;

import autosar40.system.fibex.fibexcore.coretopology.CoretopologyFactory;
import autosar40.system.fibex.fibexcore.coretopology.impl.CoretopologyPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CoretopologyPackage
extends EPackage {
    public static final String eNAME = "coretopology";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/fcore/ct";
    public static final String eNS_PREFIX = "";
    public static final CoretopologyPackage eINSTANCE = CoretopologyPackageImpl.init();
    public static final int COMM_CONNECTOR_PORT = 0;
    public static final int COMM_CONNECTOR_PORT__GCHECKSUM = 0;
    public static final int COMM_CONNECTOR_PORT__GTIMESTAMP = 1;
    public static final int COMM_CONNECTOR_PORT__CHECKSUM = 2;
    public static final int COMM_CONNECTOR_PORT__TIMESTAMP = 3;
    public static final int COMM_CONNECTOR_PORT__GSHORT_NAME = 4;
    public static final int COMM_CONNECTOR_PORT__SHORT_NAME = 5;
    public static final int COMM_CONNECTOR_PORT__LONG_NAME = 6;
    public static final int COMM_CONNECTOR_PORT__GUUID = 7;
    public static final int COMM_CONNECTOR_PORT__GCATEGORY = 8;
    public static final int COMM_CONNECTOR_PORT__GDESC = 9;
    public static final int COMM_CONNECTOR_PORT__DESC = 10;
    public static final int COMM_CONNECTOR_PORT__CATEGORY = 11;
    public static final int COMM_CONNECTOR_PORT__ADMIN_DATA = 12;
    public static final int COMM_CONNECTOR_PORT__INTRODUCTION = 13;
    public static final int COMM_CONNECTOR_PORT__ANNOTATIONS = 14;
    public static final int COMM_CONNECTOR_PORT__UUID = 15;
    public static final int COMM_CONNECTOR_PORT__ALL_EXTENSIONS = 16;
    public static final int COMM_CONNECTOR_PORT__CONTAINED_EXTENSIONS = 17;
    public static final int COMM_CONNECTOR_PORT__COMMUNICATION_CONNECTOR = 18;
    public static final int COMM_CONNECTOR_PORT__COMMUNICATION_DIRECTION = 19;
    public static final int COMM_CONNECTOR_PORT__VARIATION_POINT = 20;
    public static final int COMM_CONNECTOR_PORT_FEATURE_COUNT = 21;
    public static final int COMMUNICATION_CONNECTOR = 1;
    public static final int COMMUNICATION_CONNECTOR__GCHECKSUM = 0;
    public static final int COMMUNICATION_CONNECTOR__GTIMESTAMP = 1;
    public static final int COMMUNICATION_CONNECTOR__CHECKSUM = 2;
    public static final int COMMUNICATION_CONNECTOR__TIMESTAMP = 3;
    public static final int COMMUNICATION_CONNECTOR__GSHORT_NAME = 4;
    public static final int COMMUNICATION_CONNECTOR__SHORT_NAME = 5;
    public static final int COMMUNICATION_CONNECTOR__LONG_NAME = 6;
    public static final int COMMUNICATION_CONNECTOR__GUUID = 7;
    public static final int COMMUNICATION_CONNECTOR__GCATEGORY = 8;
    public static final int COMMUNICATION_CONNECTOR__GDESC = 9;
    public static final int COMMUNICATION_CONNECTOR__DESC = 10;
    public static final int COMMUNICATION_CONNECTOR__CATEGORY = 11;
    public static final int COMMUNICATION_CONNECTOR__ADMIN_DATA = 12;
    public static final int COMMUNICATION_CONNECTOR__INTRODUCTION = 13;
    public static final int COMMUNICATION_CONNECTOR__ANNOTATIONS = 14;
    public static final int COMMUNICATION_CONNECTOR__UUID = 15;
    public static final int COMMUNICATION_CONNECTOR__ALL_EXTENSIONS = 16;
    public static final int COMMUNICATION_CONNECTOR__CONTAINED_EXTENSIONS = 17;
    public static final int COMMUNICATION_CONNECTOR__ECU_INSTANCE = 18;
    public static final int COMMUNICATION_CONNECTOR__COMM_CONTROLLER = 19;
    public static final int COMMUNICATION_CONNECTOR__ECU_COMM_PORT_INSTANCES = 20;
    public static final int COMMUNICATION_CONNECTOR__PNC_GATEWAY_TYPE = 21;
    public static final int COMMUNICATION_CONNECTOR_FEATURE_COUNT = 22;
    public static final int COMMUNICATION_CONTROLLER = 2;
    public static final int COMMUNICATION_CONTROLLER__GCHECKSUM = 0;
    public static final int COMMUNICATION_CONTROLLER__GTIMESTAMP = 1;
    public static final int COMMUNICATION_CONTROLLER__CHECKSUM = 2;
    public static final int COMMUNICATION_CONTROLLER__TIMESTAMP = 3;
    public static final int COMMUNICATION_CONTROLLER__GSHORT_NAME = 4;
    public static final int COMMUNICATION_CONTROLLER__SHORT_NAME = 5;
    public static final int COMMUNICATION_CONTROLLER__LONG_NAME = 6;
    public static final int COMMUNICATION_CONTROLLER__GUUID = 7;
    public static final int COMMUNICATION_CONTROLLER__GCATEGORY = 8;
    public static final int COMMUNICATION_CONTROLLER__GDESC = 9;
    public static final int COMMUNICATION_CONTROLLER__DESC = 10;
    public static final int COMMUNICATION_CONTROLLER__CATEGORY = 11;
    public static final int COMMUNICATION_CONTROLLER__ADMIN_DATA = 12;
    public static final int COMMUNICATION_CONTROLLER__INTRODUCTION = 13;
    public static final int COMMUNICATION_CONTROLLER__ANNOTATIONS = 14;
    public static final int COMMUNICATION_CONTROLLER__UUID = 15;
    public static final int COMMUNICATION_CONTROLLER__ALL_EXTENSIONS = 16;
    public static final int COMMUNICATION_CONTROLLER__CONTAINED_EXTENSIONS = 17;
    public static final int COMMUNICATION_CONTROLLER__ECU_INSTANCE = 18;
    public static final int COMMUNICATION_CONTROLLER_FEATURE_COUNT = 19;
    public static final int PHYSICAL_CHANNEL = 3;
    public static final int PHYSICAL_CHANNEL__GCHECKSUM = 0;
    public static final int PHYSICAL_CHANNEL__GTIMESTAMP = 1;
    public static final int PHYSICAL_CHANNEL__CHECKSUM = 2;
    public static final int PHYSICAL_CHANNEL__TIMESTAMP = 3;
    public static final int PHYSICAL_CHANNEL__GSHORT_NAME = 4;
    public static final int PHYSICAL_CHANNEL__SHORT_NAME = 5;
    public static final int PHYSICAL_CHANNEL__LONG_NAME = 6;
    public static final int PHYSICAL_CHANNEL__GUUID = 7;
    public static final int PHYSICAL_CHANNEL__GCATEGORY = 8;
    public static final int PHYSICAL_CHANNEL__GDESC = 9;
    public static final int PHYSICAL_CHANNEL__DESC = 10;
    public static final int PHYSICAL_CHANNEL__CATEGORY = 11;
    public static final int PHYSICAL_CHANNEL__ADMIN_DATA = 12;
    public static final int PHYSICAL_CHANNEL__INTRODUCTION = 13;
    public static final int PHYSICAL_CHANNEL__ANNOTATIONS = 14;
    public static final int PHYSICAL_CHANNEL__UUID = 15;
    public static final int PHYSICAL_CHANNEL__ALL_EXTENSIONS = 16;
    public static final int PHYSICAL_CHANNEL__CONTAINED_EXTENSIONS = 17;
    public static final int PHYSICAL_CHANNEL__COMMUNICATION_CLUSTER_CONTENT = 18;
    public static final int PHYSICAL_CHANNEL__COMM_CONNECTORS = 19;
    public static final int PHYSICAL_CHANNEL__FRAME_TRIGGERINGS = 20;
    public static final int PHYSICAL_CHANNEL__ISIGNAL_TRIGGERINGS = 21;
    public static final int PHYSICAL_CHANNEL__PDU_TRIGGERINGS = 22;
    public static final int PHYSICAL_CHANNEL__VARIATION_POINT = 23;
    public static final int PHYSICAL_CHANNEL_FEATURE_COUNT = 24;
    public static final int COMMUNICATION_CONNECTOR_REF_CONDITIONAL = 4;
    public static final int COMMUNICATION_CONNECTOR_REF_CONDITIONAL__GCHECKSUM = 0;
    public static final int COMMUNICATION_CONNECTOR_REF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int COMMUNICATION_CONNECTOR_REF_CONDITIONAL__CHECKSUM = 2;
    public static final int COMMUNICATION_CONNECTOR_REF_CONDITIONAL__TIMESTAMP = 3;
    public static final int COMMUNICATION_CONNECTOR_REF_CONDITIONAL__PHYSICAL_CHANNEL = 4;
    public static final int COMMUNICATION_CONNECTOR_REF_CONDITIONAL__COMMUNICATION_CONNECTOR = 5;
    public static final int COMMUNICATION_CONNECTOR_REF_CONDITIONAL__VARIATION_POINT = 6;
    public static final int COMMUNICATION_CONNECTOR_REF_CONDITIONAL_FEATURE_COUNT = 7;
    public static final int COMMUNICATION_CLUSTER_CONTENT = 5;
    public static final int COMMUNICATION_CLUSTER_CONTENT__GCHECKSUM = 0;
    public static final int COMMUNICATION_CLUSTER_CONTENT__GTIMESTAMP = 1;
    public static final int COMMUNICATION_CLUSTER_CONTENT__CHECKSUM = 2;
    public static final int COMMUNICATION_CLUSTER_CONTENT__TIMESTAMP = 3;
    public static final int COMMUNICATION_CLUSTER_CONTENT__PHYSICAL_CHANNELS = 4;
    public static final int COMMUNICATION_CLUSTER_CONTENT__PROTOCOL_NAME = 5;
    public static final int COMMUNICATION_CLUSTER_CONTENT__PROTOCOL_VERSION = 6;
    public static final int COMMUNICATION_CLUSTER_CONTENT__SPEED = 7;
    public static final int COMMUNICATION_CLUSTER_CONTENT_FEATURE_COUNT = 8;
    public static final int COMMUNICATION_CONTROLLER_CONTENT = 6;
    public static final int COMMUNICATION_CONTROLLER_CONTENT__GCHECKSUM = 0;
    public static final int COMMUNICATION_CONTROLLER_CONTENT__GTIMESTAMP = 1;
    public static final int COMMUNICATION_CONTROLLER_CONTENT__CHECKSUM = 2;
    public static final int COMMUNICATION_CONTROLLER_CONTENT__TIMESTAMP = 3;
    public static final int COMMUNICATION_CONTROLLER_CONTENT_FEATURE_COUNT = 4;
    public static final int COMMUNICATION_CLUSTER = 7;
    public static final int COMMUNICATION_CLUSTER__GCHECKSUM = 0;
    public static final int COMMUNICATION_CLUSTER__GTIMESTAMP = 1;
    public static final int COMMUNICATION_CLUSTER__CHECKSUM = 2;
    public static final int COMMUNICATION_CLUSTER__TIMESTAMP = 3;
    public static final int COMMUNICATION_CLUSTER__GSHORT_NAME = 4;
    public static final int COMMUNICATION_CLUSTER__SHORT_NAME = 5;
    public static final int COMMUNICATION_CLUSTER__LONG_NAME = 6;
    public static final int COMMUNICATION_CLUSTER__GUUID = 7;
    public static final int COMMUNICATION_CLUSTER__GCATEGORY = 8;
    public static final int COMMUNICATION_CLUSTER__GDESC = 9;
    public static final int COMMUNICATION_CLUSTER__DESC = 10;
    public static final int COMMUNICATION_CLUSTER__CATEGORY = 11;
    public static final int COMMUNICATION_CLUSTER__ADMIN_DATA = 12;
    public static final int COMMUNICATION_CLUSTER__INTRODUCTION = 13;
    public static final int COMMUNICATION_CLUSTER__ANNOTATIONS = 14;
    public static final int COMMUNICATION_CLUSTER__UUID = 15;
    public static final int COMMUNICATION_CLUSTER__ALL_EXTENSIONS = 16;
    public static final int COMMUNICATION_CLUSTER__CONTAINED_EXTENSIONS = 17;
    public static final int COMMUNICATION_CLUSTER__GAR_PACKAGE = 18;
    public static final int COMMUNICATION_CLUSTER__AR_PACKAGE = 19;
    public static final int COMMUNICATION_CLUSTER__VARIATION_POINT = 20;
    public static final int COMMUNICATION_CLUSTER_FEATURE_COUNT = 21;
    public static final int COMMUNICATION_CYCLE = 8;
    public static final int COMMUNICATION_CYCLE__GCHECKSUM = 0;
    public static final int COMMUNICATION_CYCLE__GTIMESTAMP = 1;
    public static final int COMMUNICATION_CYCLE__CHECKSUM = 2;
    public static final int COMMUNICATION_CYCLE__TIMESTAMP = 3;
    public static final int COMMUNICATION_CYCLE_FEATURE_COUNT = 4;
    public static final int CYCLE_COUNTER = 9;
    public static final int CYCLE_COUNTER__GCHECKSUM = 0;
    public static final int CYCLE_COUNTER__GTIMESTAMP = 1;
    public static final int CYCLE_COUNTER__CHECKSUM = 2;
    public static final int CYCLE_COUNTER__TIMESTAMP = 3;
    public static final int CYCLE_COUNTER__CYCLE_COUNTER = 4;
    public static final int CYCLE_COUNTER_FEATURE_COUNT = 5;
    public static final int CYCLE_REPETITION = 10;
    public static final int CYCLE_REPETITION__GCHECKSUM = 0;
    public static final int CYCLE_REPETITION__GTIMESTAMP = 1;
    public static final int CYCLE_REPETITION__CHECKSUM = 2;
    public static final int CYCLE_REPETITION__TIMESTAMP = 3;
    public static final int CYCLE_REPETITION__BASE_CYCLE = 4;
    public static final int CYCLE_REPETITION__CYCLE_REPETITION = 5;
    public static final int CYCLE_REPETITION_FEATURE_COUNT = 6;
    public static final int ECU_INSTANCE = 11;
    public static final int ECU_INSTANCE__GCHECKSUM = 0;
    public static final int ECU_INSTANCE__GTIMESTAMP = 1;
    public static final int ECU_INSTANCE__CHECKSUM = 2;
    public static final int ECU_INSTANCE__TIMESTAMP = 3;
    public static final int ECU_INSTANCE__GSHORT_NAME = 4;
    public static final int ECU_INSTANCE__SHORT_NAME = 5;
    public static final int ECU_INSTANCE__LONG_NAME = 6;
    public static final int ECU_INSTANCE__GUUID = 7;
    public static final int ECU_INSTANCE__GCATEGORY = 8;
    public static final int ECU_INSTANCE__GDESC = 9;
    public static final int ECU_INSTANCE__DESC = 10;
    public static final int ECU_INSTANCE__CATEGORY = 11;
    public static final int ECU_INSTANCE__ADMIN_DATA = 12;
    public static final int ECU_INSTANCE__INTRODUCTION = 13;
    public static final int ECU_INSTANCE__ANNOTATIONS = 14;
    public static final int ECU_INSTANCE__UUID = 15;
    public static final int ECU_INSTANCE__ALL_EXTENSIONS = 16;
    public static final int ECU_INSTANCE__CONTAINED_EXTENSIONS = 17;
    public static final int ECU_INSTANCE__GAR_PACKAGE = 18;
    public static final int ECU_INSTANCE__AR_PACKAGE = 19;
    public static final int ECU_INSTANCE__VARIATION_POINT = 20;
    public static final int ECU_INSTANCE__ASSOCIATED_COM_IPDU_GROUPS = 21;
    public static final int ECU_INSTANCE__ASSOCIATED_PDUR_IPDU_GROUPS = 22;
    public static final int ECU_INSTANCE__CAN_TP_ADDRESS = 23;
    public static final int ECU_INSTANCE__COM_CONFIGURATION_GW_TIME_BASE = 24;
    public static final int ECU_INSTANCE__COM_CONFIGURATION_RX_TIME_BASE = 25;
    public static final int ECU_INSTANCE__COM_CONFIGURATION_TX_TIME_BASE = 26;
    public static final int ECU_INSTANCE__COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION = 27;
    public static final int ECU_INSTANCE__COMM_CONTROLLERS = 28;
    public static final int ECU_INSTANCE__CONNECTORS = 29;
    public static final int ECU_INSTANCE__DIAGNOSTIC_ADDRESS = 30;
    public static final int ECU_INSTANCE__PARTITIONS = 31;
    public static final int ECU_INSTANCE__SLEEP_MODE_SUPPORTED = 32;
    public static final int ECU_INSTANCE__TP_ADDRESS = 33;
    public static final int ECU_INSTANCE__WAKE_UP_OVER_BUS_SUPPORTED = 34;
    public static final int ECU_INSTANCE_FEATURE_COUNT = 35;
    public static final int PNC_GATEWAY_TYPE_ENUM = 12;
    public static final int CYCLE_REPETITION_TYPE = 13;

    public EClass getCommConnectorPort();

    public EReference getCommConnectorPort_CommunicationConnector();

    public EAttribute getCommConnectorPort_CommunicationDirection();

    public EReference getCommConnectorPort_VariationPoint();

    public EClass getCommunicationConnector();

    public EReference getCommunicationConnector_EcuInstance();

    public EReference getCommunicationConnector_CommController();

    public EReference getCommunicationConnector_EcuCommPortInstances();

    public EAttribute getCommunicationConnector_PncGatewayType();

    public EClass getCommunicationController();

    public EReference getCommunicationController_EcuInstance();

    public EClass getPhysicalChannel();

    public EReference getPhysicalChannel_CommunicationClusterContent();

    public EReference getPhysicalChannel_CommConnectors();

    public EReference getPhysicalChannel_FrameTriggerings();

    public EReference getPhysicalChannel_ISignalTriggerings();

    public EReference getPhysicalChannel_PduTriggerings();

    public EReference getPhysicalChannel_VariationPoint();

    public EClass getCommunicationConnectorRefConditional();

    public EReference getCommunicationConnectorRefConditional_PhysicalChannel();

    public EReference getCommunicationConnectorRefConditional_CommunicationConnector();

    public EReference getCommunicationConnectorRefConditional_VariationPoint();

    public EClass getCommunicationClusterContent();

    public EReference getCommunicationClusterContent_PhysicalChannels();

    public EAttribute getCommunicationClusterContent_ProtocolName();

    public EAttribute getCommunicationClusterContent_ProtocolVersion();

    public EAttribute getCommunicationClusterContent_Speed();

    public EClass getCommunicationControllerContent();

    public EClass getCommunicationCluster();

    public EClass getCommunicationCycle();

    public EClass getCycleCounter();

    public EAttribute getCycleCounter_CycleCounter();

    public EClass getCycleRepetition();

    public EAttribute getCycleRepetition_BaseCycle();

    public EAttribute getCycleRepetition_CycleRepetition();

    public EClass getEcuInstance();

    public EReference getEcuInstance_AssociatedComIPduGroups();

    public EReference getEcuInstance_AssociatedPdurIPduGroups();

    public EReference getEcuInstance_CanTpAddress();

    public EAttribute getEcuInstance_ComConfigurationGwTimeBase();

    public EAttribute getEcuInstance_ComConfigurationRxTimeBase();

    public EAttribute getEcuInstance_ComConfigurationTxTimeBase();

    public EAttribute getEcuInstance_ComEnableMDTForCyclicTransmission();

    public EReference getEcuInstance_CommControllers();

    public EReference getEcuInstance_Connectors();

    public EAttribute getEcuInstance_DiagnosticAddress();

    public EReference getEcuInstance_Partitions();

    public EAttribute getEcuInstance_SleepModeSupported();

    public EReference getEcuInstance_TpAddress();

    public EAttribute getEcuInstance_WakeUpOverBusSupported();

    public EEnum getPncGatewayTypeEnum();

    public EEnum getCycleRepetitionType();

    public CoretopologyFactory getCoretopologyFactory();

    public static interface Literals {
        public static final EClass COMM_CONNECTOR_PORT = eINSTANCE.getCommConnectorPort();
        public static final EReference COMM_CONNECTOR_PORT__COMMUNICATION_CONNECTOR = eINSTANCE.getCommConnectorPort_CommunicationConnector();
        public static final EAttribute COMM_CONNECTOR_PORT__COMMUNICATION_DIRECTION = eINSTANCE.getCommConnectorPort_CommunicationDirection();
        public static final EReference COMM_CONNECTOR_PORT__VARIATION_POINT = eINSTANCE.getCommConnectorPort_VariationPoint();
        public static final EClass COMMUNICATION_CONNECTOR = eINSTANCE.getCommunicationConnector();
        public static final EReference COMMUNICATION_CONNECTOR__ECU_INSTANCE = eINSTANCE.getCommunicationConnector_EcuInstance();
        public static final EReference COMMUNICATION_CONNECTOR__COMM_CONTROLLER = eINSTANCE.getCommunicationConnector_CommController();
        public static final EReference COMMUNICATION_CONNECTOR__ECU_COMM_PORT_INSTANCES = eINSTANCE.getCommunicationConnector_EcuCommPortInstances();
        public static final EAttribute COMMUNICATION_CONNECTOR__PNC_GATEWAY_TYPE = eINSTANCE.getCommunicationConnector_PncGatewayType();
        public static final EClass COMMUNICATION_CONTROLLER = eINSTANCE.getCommunicationController();
        public static final EReference COMMUNICATION_CONTROLLER__ECU_INSTANCE = eINSTANCE.getCommunicationController_EcuInstance();
        public static final EClass PHYSICAL_CHANNEL = eINSTANCE.getPhysicalChannel();
        public static final EReference PHYSICAL_CHANNEL__COMMUNICATION_CLUSTER_CONTENT = eINSTANCE.getPhysicalChannel_CommunicationClusterContent();
        public static final EReference PHYSICAL_CHANNEL__COMM_CONNECTORS = eINSTANCE.getPhysicalChannel_CommConnectors();
        public static final EReference PHYSICAL_CHANNEL__FRAME_TRIGGERINGS = eINSTANCE.getPhysicalChannel_FrameTriggerings();
        public static final EReference PHYSICAL_CHANNEL__ISIGNAL_TRIGGERINGS = eINSTANCE.getPhysicalChannel_ISignalTriggerings();
        public static final EReference PHYSICAL_CHANNEL__PDU_TRIGGERINGS = eINSTANCE.getPhysicalChannel_PduTriggerings();
        public static final EReference PHYSICAL_CHANNEL__VARIATION_POINT = eINSTANCE.getPhysicalChannel_VariationPoint();
        public static final EClass COMMUNICATION_CONNECTOR_REF_CONDITIONAL = eINSTANCE.getCommunicationConnectorRefConditional();
        public static final EReference COMMUNICATION_CONNECTOR_REF_CONDITIONAL__PHYSICAL_CHANNEL = eINSTANCE.getCommunicationConnectorRefConditional_PhysicalChannel();
        public static final EReference COMMUNICATION_CONNECTOR_REF_CONDITIONAL__COMMUNICATION_CONNECTOR = eINSTANCE.getCommunicationConnectorRefConditional_CommunicationConnector();
        public static final EReference COMMUNICATION_CONNECTOR_REF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getCommunicationConnectorRefConditional_VariationPoint();
        public static final EClass COMMUNICATION_CLUSTER_CONTENT = eINSTANCE.getCommunicationClusterContent();
        public static final EReference COMMUNICATION_CLUSTER_CONTENT__PHYSICAL_CHANNELS = eINSTANCE.getCommunicationClusterContent_PhysicalChannels();
        public static final EAttribute COMMUNICATION_CLUSTER_CONTENT__PROTOCOL_NAME = eINSTANCE.getCommunicationClusterContent_ProtocolName();
        public static final EAttribute COMMUNICATION_CLUSTER_CONTENT__PROTOCOL_VERSION = eINSTANCE.getCommunicationClusterContent_ProtocolVersion();
        public static final EAttribute COMMUNICATION_CLUSTER_CONTENT__SPEED = eINSTANCE.getCommunicationClusterContent_Speed();
        public static final EClass COMMUNICATION_CONTROLLER_CONTENT = eINSTANCE.getCommunicationControllerContent();
        public static final EClass COMMUNICATION_CLUSTER = eINSTANCE.getCommunicationCluster();
        public static final EClass COMMUNICATION_CYCLE = eINSTANCE.getCommunicationCycle();
        public static final EClass CYCLE_COUNTER = eINSTANCE.getCycleCounter();
        public static final EAttribute CYCLE_COUNTER__CYCLE_COUNTER = eINSTANCE.getCycleCounter_CycleCounter();
        public static final EClass CYCLE_REPETITION = eINSTANCE.getCycleRepetition();
        public static final EAttribute CYCLE_REPETITION__BASE_CYCLE = eINSTANCE.getCycleRepetition_BaseCycle();
        public static final EAttribute CYCLE_REPETITION__CYCLE_REPETITION = eINSTANCE.getCycleRepetition_CycleRepetition();
        public static final EClass ECU_INSTANCE = eINSTANCE.getEcuInstance();
        public static final EReference ECU_INSTANCE__ASSOCIATED_COM_IPDU_GROUPS = eINSTANCE.getEcuInstance_AssociatedComIPduGroups();
        public static final EReference ECU_INSTANCE__ASSOCIATED_PDUR_IPDU_GROUPS = eINSTANCE.getEcuInstance_AssociatedPdurIPduGroups();
        public static final EReference ECU_INSTANCE__CAN_TP_ADDRESS = eINSTANCE.getEcuInstance_CanTpAddress();
        public static final EAttribute ECU_INSTANCE__COM_CONFIGURATION_GW_TIME_BASE = eINSTANCE.getEcuInstance_ComConfigurationGwTimeBase();
        public static final EAttribute ECU_INSTANCE__COM_CONFIGURATION_RX_TIME_BASE = eINSTANCE.getEcuInstance_ComConfigurationRxTimeBase();
        public static final EAttribute ECU_INSTANCE__COM_CONFIGURATION_TX_TIME_BASE = eINSTANCE.getEcuInstance_ComConfigurationTxTimeBase();
        public static final EAttribute ECU_INSTANCE__COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION = eINSTANCE.getEcuInstance_ComEnableMDTForCyclicTransmission();
        public static final EReference ECU_INSTANCE__COMM_CONTROLLERS = eINSTANCE.getEcuInstance_CommControllers();
        public static final EReference ECU_INSTANCE__CONNECTORS = eINSTANCE.getEcuInstance_Connectors();
        public static final EAttribute ECU_INSTANCE__DIAGNOSTIC_ADDRESS = eINSTANCE.getEcuInstance_DiagnosticAddress();
        public static final EReference ECU_INSTANCE__PARTITIONS = eINSTANCE.getEcuInstance_Partitions();
        public static final EAttribute ECU_INSTANCE__SLEEP_MODE_SUPPORTED = eINSTANCE.getEcuInstance_SleepModeSupported();
        public static final EReference ECU_INSTANCE__TP_ADDRESS = eINSTANCE.getEcuInstance_TpAddress();
        public static final EAttribute ECU_INSTANCE__WAKE_UP_OVER_BUS_SUPPORTED = eINSTANCE.getEcuInstance_WakeUpOverBusSupported();
        public static final EEnum PNC_GATEWAY_TYPE_ENUM = eINSTANCE.getPncGatewayTypeEnum();
        public static final EEnum CYCLE_REPETITION_TYPE = eINSTANCE.getCycleRepetitionType();
    }
}

