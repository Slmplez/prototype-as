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
package autosar3x.system.fibex.fibexcore.coretopology;

import autosar3x.system.fibex.fibexcore.coretopology.CoretopologyFactory;
import autosar3x.system.fibex.fibexcore.coretopology.impl.CoretopologyPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CoretopologyPackage
extends EPackage {
    public static final String eNAME = "coretopology";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/f/fcore/ct";
    public static final String eNS_PREFIX = "";
    public static final CoretopologyPackage eINSTANCE = CoretopologyPackageImpl.init();
    public static final int COMM_CONNECTOR_PORT = 0;
    public static final int COMM_CONNECTOR_PORT__GCHECKSUM = 0;
    public static final int COMM_CONNECTOR_PORT__GTIMESTAMP = 1;
    public static final int COMM_CONNECTOR_PORT__CHECKSUM = 2;
    public static final int COMM_CONNECTOR_PORT__TIMESTAMP = 3;
    public static final int COMM_CONNECTOR_PORT__GSHORT_NAME = 4;
    public static final int COMM_CONNECTOR_PORT__GUUID = 5;
    public static final int COMM_CONNECTOR_PORT__GCATEGORY = 6;
    public static final int COMM_CONNECTOR_PORT__GDESC = 7;
    public static final int COMM_CONNECTOR_PORT__SHORT_NAME = 8;
    public static final int COMM_CONNECTOR_PORT__LONG_NAME = 9;
    public static final int COMM_CONNECTOR_PORT__DESC = 10;
    public static final int COMM_CONNECTOR_PORT__CATEGORY = 11;
    public static final int COMM_CONNECTOR_PORT__ADMIN_DATA = 12;
    public static final int COMM_CONNECTOR_PORT__INTRODUCTION = 13;
    public static final int COMM_CONNECTOR_PORT__UUID = 14;
    public static final int COMM_CONNECTOR_PORT__ALL_EXTENSIONS = 15;
    public static final int COMM_CONNECTOR_PORT__CONTAINED_EXTENSIONS = 16;
    public static final int COMM_CONNECTOR_PORT__COMMUNICATION_CONNECTOR = 17;
    public static final int COMM_CONNECTOR_PORT__COMMUNICATION_DIRECTION = 18;
    public static final int COMM_CONNECTOR_PORT_FEATURE_COUNT = 19;
    public static final int COMMUNICATION_CLUSTER = 1;
    public static final int COMMUNICATION_CLUSTER__GCHECKSUM = 0;
    public static final int COMMUNICATION_CLUSTER__GTIMESTAMP = 1;
    public static final int COMMUNICATION_CLUSTER__CHECKSUM = 2;
    public static final int COMMUNICATION_CLUSTER__TIMESTAMP = 3;
    public static final int COMMUNICATION_CLUSTER__GSHORT_NAME = 4;
    public static final int COMMUNICATION_CLUSTER__GUUID = 5;
    public static final int COMMUNICATION_CLUSTER__GCATEGORY = 6;
    public static final int COMMUNICATION_CLUSTER__GDESC = 7;
    public static final int COMMUNICATION_CLUSTER__SHORT_NAME = 8;
    public static final int COMMUNICATION_CLUSTER__LONG_NAME = 9;
    public static final int COMMUNICATION_CLUSTER__DESC = 10;
    public static final int COMMUNICATION_CLUSTER__CATEGORY = 11;
    public static final int COMMUNICATION_CLUSTER__ADMIN_DATA = 12;
    public static final int COMMUNICATION_CLUSTER__INTRODUCTION = 13;
    public static final int COMMUNICATION_CLUSTER__UUID = 14;
    public static final int COMMUNICATION_CLUSTER__ALL_EXTENSIONS = 15;
    public static final int COMMUNICATION_CLUSTER__CONTAINED_EXTENSIONS = 16;
    public static final int COMMUNICATION_CLUSTER__GAR_PACKAGE = 17;
    public static final int COMMUNICATION_CLUSTER__AR_PACKAGE = 18;
    public static final int COMMUNICATION_CLUSTER__MAX_FRAME_LENGTH = 19;
    public static final int COMMUNICATION_CLUSTER__NM_NODE_DETECTION_ENABLED = 20;
    public static final int COMMUNICATION_CLUSTER__NM_NODE_ID_ENABLED = 21;
    public static final int COMMUNICATION_CLUSTER__NM_REPEAT_MESSAGE_SUPPORT = 22;
    public static final int COMMUNICATION_CLUSTER__PHYSICAL_CHANNELS = 23;
    public static final int COMMUNICATION_CLUSTER__PROTOCOL_NAME = 24;
    public static final int COMMUNICATION_CLUSTER__PROTOCOL_VERSION = 25;
    public static final int COMMUNICATION_CLUSTER__SPEED = 26;
    public static final int COMMUNICATION_CLUSTER_FEATURE_COUNT = 27;
    public static final int PHYSICAL_CHANNEL = 2;
    public static final int PHYSICAL_CHANNEL__GCHECKSUM = 0;
    public static final int PHYSICAL_CHANNEL__GTIMESTAMP = 1;
    public static final int PHYSICAL_CHANNEL__CHECKSUM = 2;
    public static final int PHYSICAL_CHANNEL__TIMESTAMP = 3;
    public static final int PHYSICAL_CHANNEL__GSHORT_NAME = 4;
    public static final int PHYSICAL_CHANNEL__GUUID = 5;
    public static final int PHYSICAL_CHANNEL__GCATEGORY = 6;
    public static final int PHYSICAL_CHANNEL__GDESC = 7;
    public static final int PHYSICAL_CHANNEL__SHORT_NAME = 8;
    public static final int PHYSICAL_CHANNEL__LONG_NAME = 9;
    public static final int PHYSICAL_CHANNEL__DESC = 10;
    public static final int PHYSICAL_CHANNEL__CATEGORY = 11;
    public static final int PHYSICAL_CHANNEL__ADMIN_DATA = 12;
    public static final int PHYSICAL_CHANNEL__INTRODUCTION = 13;
    public static final int PHYSICAL_CHANNEL__UUID = 14;
    public static final int PHYSICAL_CHANNEL__ALL_EXTENSIONS = 15;
    public static final int PHYSICAL_CHANNEL__CONTAINED_EXTENSIONS = 16;
    public static final int PHYSICAL_CHANNEL__COMMUNICATION_CLUSTER = 17;
    public static final int PHYSICAL_CHANNEL__FRAME_TRIGGERINGS = 18;
    public static final int PHYSICAL_CHANNEL__IPDU_TRIGGERINGS = 19;
    public static final int PHYSICAL_CHANNEL__ISIGNAL_TRIGGERINGS = 20;
    public static final int PHYSICAL_CHANNEL__TP_ADDRESS = 21;
    public static final int PHYSICAL_CHANNEL__TP_CHANNELS = 22;
    public static final int PHYSICAL_CHANNEL__TP_NODES = 23;
    public static final int PHYSICAL_CHANNEL_FEATURE_COUNT = 24;
    public static final int COMMUNICATION_CONNECTOR = 3;
    public static final int COMMUNICATION_CONNECTOR__GCHECKSUM = 0;
    public static final int COMMUNICATION_CONNECTOR__GTIMESTAMP = 1;
    public static final int COMMUNICATION_CONNECTOR__CHECKSUM = 2;
    public static final int COMMUNICATION_CONNECTOR__TIMESTAMP = 3;
    public static final int COMMUNICATION_CONNECTOR__GSHORT_NAME = 4;
    public static final int COMMUNICATION_CONNECTOR__GUUID = 5;
    public static final int COMMUNICATION_CONNECTOR__GCATEGORY = 6;
    public static final int COMMUNICATION_CONNECTOR__GDESC = 7;
    public static final int COMMUNICATION_CONNECTOR__SHORT_NAME = 8;
    public static final int COMMUNICATION_CONNECTOR__LONG_NAME = 9;
    public static final int COMMUNICATION_CONNECTOR__DESC = 10;
    public static final int COMMUNICATION_CONNECTOR__CATEGORY = 11;
    public static final int COMMUNICATION_CONNECTOR__ADMIN_DATA = 12;
    public static final int COMMUNICATION_CONNECTOR__INTRODUCTION = 13;
    public static final int COMMUNICATION_CONNECTOR__UUID = 14;
    public static final int COMMUNICATION_CONNECTOR__ALL_EXTENSIONS = 15;
    public static final int COMMUNICATION_CONNECTOR__CONTAINED_EXTENSIONS = 16;
    public static final int COMMUNICATION_CONNECTOR__ECU_INSTANCE = 17;
    public static final int COMMUNICATION_CONNECTOR__CHANNEL = 18;
    public static final int COMMUNICATION_CONNECTOR__COMM_CONTROLLER = 19;
    public static final int COMMUNICATION_CONNECTOR__ECU_COMM_PORT_INSTANCES = 20;
    public static final int COMMUNICATION_CONNECTOR__NM_ADDRESS = 21;
    public static final int COMMUNICATION_CONNECTOR__PNC_GATEWAY_TYPE = 22;
    public static final int COMMUNICATION_CONNECTOR_FEATURE_COUNT = 23;
    public static final int COMMUNICATION_CONTROLLER = 4;
    public static final int COMMUNICATION_CONTROLLER__GCHECKSUM = 0;
    public static final int COMMUNICATION_CONTROLLER__GTIMESTAMP = 1;
    public static final int COMMUNICATION_CONTROLLER__CHECKSUM = 2;
    public static final int COMMUNICATION_CONTROLLER__TIMESTAMP = 3;
    public static final int COMMUNICATION_CONTROLLER__GSHORT_NAME = 4;
    public static final int COMMUNICATION_CONTROLLER__GUUID = 5;
    public static final int COMMUNICATION_CONTROLLER__GCATEGORY = 6;
    public static final int COMMUNICATION_CONTROLLER__GDESC = 7;
    public static final int COMMUNICATION_CONTROLLER__SHORT_NAME = 8;
    public static final int COMMUNICATION_CONTROLLER__LONG_NAME = 9;
    public static final int COMMUNICATION_CONTROLLER__DESC = 10;
    public static final int COMMUNICATION_CONTROLLER__CATEGORY = 11;
    public static final int COMMUNICATION_CONTROLLER__ADMIN_DATA = 12;
    public static final int COMMUNICATION_CONTROLLER__INTRODUCTION = 13;
    public static final int COMMUNICATION_CONTROLLER__UUID = 14;
    public static final int COMMUNICATION_CONTROLLER__ALL_EXTENSIONS = 15;
    public static final int COMMUNICATION_CONTROLLER__CONTAINED_EXTENSIONS = 16;
    public static final int COMMUNICATION_CONTROLLER__ECU_INSTANCE = 17;
    public static final int COMMUNICATION_CONTROLLER__WAKE_UP_BY_CONTROLLER_SUPPORTED = 18;
    public static final int COMMUNICATION_CONTROLLER_FEATURE_COUNT = 19;
    public static final int ECU_INSTANCE = 5;
    public static final int ECU_INSTANCE__GCHECKSUM = 0;
    public static final int ECU_INSTANCE__GTIMESTAMP = 1;
    public static final int ECU_INSTANCE__CHECKSUM = 2;
    public static final int ECU_INSTANCE__TIMESTAMP = 3;
    public static final int ECU_INSTANCE__GSHORT_NAME = 4;
    public static final int ECU_INSTANCE__GUUID = 5;
    public static final int ECU_INSTANCE__GCATEGORY = 6;
    public static final int ECU_INSTANCE__GDESC = 7;
    public static final int ECU_INSTANCE__SHORT_NAME = 8;
    public static final int ECU_INSTANCE__LONG_NAME = 9;
    public static final int ECU_INSTANCE__DESC = 10;
    public static final int ECU_INSTANCE__CATEGORY = 11;
    public static final int ECU_INSTANCE__ADMIN_DATA = 12;
    public static final int ECU_INSTANCE__INTRODUCTION = 13;
    public static final int ECU_INSTANCE__UUID = 14;
    public static final int ECU_INSTANCE__ALL_EXTENSIONS = 15;
    public static final int ECU_INSTANCE__CONTAINED_EXTENSIONS = 16;
    public static final int ECU_INSTANCE__GAR_PACKAGE = 17;
    public static final int ECU_INSTANCE__AR_PACKAGE = 18;
    public static final int ECU_INSTANCE__ASSOCIATED_IPDU_GROUPS = 19;
    public static final int ECU_INSTANCE__ASSOCIATED_PDUR_IPDU_GROUPS = 20;
    public static final int ECU_INSTANCE__COM_CONFIGURATION_ID = 21;
    public static final int ECU_INSTANCE__COM_PROCESSING_PERIOD = 22;
    public static final int ECU_INSTANCE__COM_PROCESSING_PERIOD_GW = 23;
    public static final int ECU_INSTANCE__COM_PROCESSING_PERIOD_RX = 24;
    public static final int ECU_INSTANCE__COMM_CONTROLLERS = 25;
    public static final int ECU_INSTANCE__CONNECTORS = 26;
    public static final int ECU_INSTANCE__DIAGNOSTIC_ADDRESS = 27;
    public static final int ECU_INSTANCE__PDU_RCONFIGURATION_ID = 28;
    public static final int ECU_INSTANCE__RESPONSE_ADDRESS = 29;
    public static final int ECU_INSTANCE__SLEEP_MODE_SUPPORTED = 30;
    public static final int ECU_INSTANCE__WAKE_UP_OVER_BUS_SUPPORTED = 31;
    public static final int ECU_INSTANCE_FEATURE_COUNT = 32;
    public static final int PNC_GATEWAY_TYPE_ENUM = 6;

    public EClass getCommConnectorPort();

    public EReference getCommConnectorPort_CommunicationConnector();

    public EAttribute getCommConnectorPort_CommunicationDirection();

    public EClass getCommunicationCluster();

    public EAttribute getCommunicationCluster_MaxFrameLength();

    public EAttribute getCommunicationCluster_NmNodeDetectionEnabled();

    public EAttribute getCommunicationCluster_NmNodeIdEnabled();

    public EAttribute getCommunicationCluster_NmRepeatMessageSupport();

    public EReference getCommunicationCluster_PhysicalChannels();

    public EAttribute getCommunicationCluster_ProtocolName();

    public EAttribute getCommunicationCluster_ProtocolVersion();

    public EAttribute getCommunicationCluster_Speed();

    public EClass getPhysicalChannel();

    public EReference getPhysicalChannel_CommunicationCluster();

    public EReference getPhysicalChannel_FrameTriggerings();

    public EReference getPhysicalChannel_IPduTriggerings();

    public EReference getPhysicalChannel_ISignalTriggerings();

    public EReference getPhysicalChannel_TpAddress();

    public EReference getPhysicalChannel_TpChannels();

    public EReference getPhysicalChannel_TpNodes();

    public EClass getCommunicationConnector();

    public EReference getCommunicationConnector_EcuInstance();

    public EReference getCommunicationConnector_Channel();

    public EReference getCommunicationConnector_CommController();

    public EReference getCommunicationConnector_EcuCommPortInstances();

    public EAttribute getCommunicationConnector_NmAddress();

    public EAttribute getCommunicationConnector_PncGatewayType();

    public EClass getCommunicationController();

    public EReference getCommunicationController_EcuInstance();

    public EAttribute getCommunicationController_WakeUpByControllerSupported();

    public EClass getEcuInstance();

    public EReference getEcuInstance_AssociatedIPduGroups();

    public EReference getEcuInstance_AssociatedPdurIPduGroups();

    public EAttribute getEcuInstance_ComConfigurationId();

    public EAttribute getEcuInstance_ComProcessingPeriod();

    public EAttribute getEcuInstance_ComProcessingPeriodGw();

    public EAttribute getEcuInstance_ComProcessingPeriodRx();

    public EReference getEcuInstance_CommControllers();

    public EReference getEcuInstance_Connectors();

    public EAttribute getEcuInstance_DiagnosticAddress();

    public EAttribute getEcuInstance_PduRConfigurationId();

    public EAttribute getEcuInstance_ResponseAddress();

    public EAttribute getEcuInstance_SleepModeSupported();

    public EAttribute getEcuInstance_WakeUpOverBusSupported();

    public EEnum getPncGatewayTypeEnum();

    public CoretopologyFactory getCoretopologyFactory();

    public static interface Literals {
        public static final EClass COMM_CONNECTOR_PORT = eINSTANCE.getCommConnectorPort();
        public static final EReference COMM_CONNECTOR_PORT__COMMUNICATION_CONNECTOR = eINSTANCE.getCommConnectorPort_CommunicationConnector();
        public static final EAttribute COMM_CONNECTOR_PORT__COMMUNICATION_DIRECTION = eINSTANCE.getCommConnectorPort_CommunicationDirection();
        public static final EClass COMMUNICATION_CLUSTER = eINSTANCE.getCommunicationCluster();
        public static final EAttribute COMMUNICATION_CLUSTER__MAX_FRAME_LENGTH = eINSTANCE.getCommunicationCluster_MaxFrameLength();
        public static final EAttribute COMMUNICATION_CLUSTER__NM_NODE_DETECTION_ENABLED = eINSTANCE.getCommunicationCluster_NmNodeDetectionEnabled();
        public static final EAttribute COMMUNICATION_CLUSTER__NM_NODE_ID_ENABLED = eINSTANCE.getCommunicationCluster_NmNodeIdEnabled();
        public static final EAttribute COMMUNICATION_CLUSTER__NM_REPEAT_MESSAGE_SUPPORT = eINSTANCE.getCommunicationCluster_NmRepeatMessageSupport();
        public static final EReference COMMUNICATION_CLUSTER__PHYSICAL_CHANNELS = eINSTANCE.getCommunicationCluster_PhysicalChannels();
        public static final EAttribute COMMUNICATION_CLUSTER__PROTOCOL_NAME = eINSTANCE.getCommunicationCluster_ProtocolName();
        public static final EAttribute COMMUNICATION_CLUSTER__PROTOCOL_VERSION = eINSTANCE.getCommunicationCluster_ProtocolVersion();
        public static final EAttribute COMMUNICATION_CLUSTER__SPEED = eINSTANCE.getCommunicationCluster_Speed();
        public static final EClass PHYSICAL_CHANNEL = eINSTANCE.getPhysicalChannel();
        public static final EReference PHYSICAL_CHANNEL__COMMUNICATION_CLUSTER = eINSTANCE.getPhysicalChannel_CommunicationCluster();
        public static final EReference PHYSICAL_CHANNEL__FRAME_TRIGGERINGS = eINSTANCE.getPhysicalChannel_FrameTriggerings();
        public static final EReference PHYSICAL_CHANNEL__IPDU_TRIGGERINGS = eINSTANCE.getPhysicalChannel_IPduTriggerings();
        public static final EReference PHYSICAL_CHANNEL__ISIGNAL_TRIGGERINGS = eINSTANCE.getPhysicalChannel_ISignalTriggerings();
        public static final EReference PHYSICAL_CHANNEL__TP_ADDRESS = eINSTANCE.getPhysicalChannel_TpAddress();
        public static final EReference PHYSICAL_CHANNEL__TP_CHANNELS = eINSTANCE.getPhysicalChannel_TpChannels();
        public static final EReference PHYSICAL_CHANNEL__TP_NODES = eINSTANCE.getPhysicalChannel_TpNodes();
        public static final EClass COMMUNICATION_CONNECTOR = eINSTANCE.getCommunicationConnector();
        public static final EReference COMMUNICATION_CONNECTOR__ECU_INSTANCE = eINSTANCE.getCommunicationConnector_EcuInstance();
        public static final EReference COMMUNICATION_CONNECTOR__CHANNEL = eINSTANCE.getCommunicationConnector_Channel();
        public static final EReference COMMUNICATION_CONNECTOR__COMM_CONTROLLER = eINSTANCE.getCommunicationConnector_CommController();
        public static final EReference COMMUNICATION_CONNECTOR__ECU_COMM_PORT_INSTANCES = eINSTANCE.getCommunicationConnector_EcuCommPortInstances();
        public static final EAttribute COMMUNICATION_CONNECTOR__NM_ADDRESS = eINSTANCE.getCommunicationConnector_NmAddress();
        public static final EAttribute COMMUNICATION_CONNECTOR__PNC_GATEWAY_TYPE = eINSTANCE.getCommunicationConnector_PncGatewayType();
        public static final EClass COMMUNICATION_CONTROLLER = eINSTANCE.getCommunicationController();
        public static final EReference COMMUNICATION_CONTROLLER__ECU_INSTANCE = eINSTANCE.getCommunicationController_EcuInstance();
        public static final EAttribute COMMUNICATION_CONTROLLER__WAKE_UP_BY_CONTROLLER_SUPPORTED = eINSTANCE.getCommunicationController_WakeUpByControllerSupported();
        public static final EClass ECU_INSTANCE = eINSTANCE.getEcuInstance();
        public static final EReference ECU_INSTANCE__ASSOCIATED_IPDU_GROUPS = eINSTANCE.getEcuInstance_AssociatedIPduGroups();
        public static final EReference ECU_INSTANCE__ASSOCIATED_PDUR_IPDU_GROUPS = eINSTANCE.getEcuInstance_AssociatedPdurIPduGroups();
        public static final EAttribute ECU_INSTANCE__COM_CONFIGURATION_ID = eINSTANCE.getEcuInstance_ComConfigurationId();
        public static final EAttribute ECU_INSTANCE__COM_PROCESSING_PERIOD = eINSTANCE.getEcuInstance_ComProcessingPeriod();
        public static final EAttribute ECU_INSTANCE__COM_PROCESSING_PERIOD_GW = eINSTANCE.getEcuInstance_ComProcessingPeriodGw();
        public static final EAttribute ECU_INSTANCE__COM_PROCESSING_PERIOD_RX = eINSTANCE.getEcuInstance_ComProcessingPeriodRx();
        public static final EReference ECU_INSTANCE__COMM_CONTROLLERS = eINSTANCE.getEcuInstance_CommControllers();
        public static final EReference ECU_INSTANCE__CONNECTORS = eINSTANCE.getEcuInstance_Connectors();
        public static final EAttribute ECU_INSTANCE__DIAGNOSTIC_ADDRESS = eINSTANCE.getEcuInstance_DiagnosticAddress();
        public static final EAttribute ECU_INSTANCE__PDU_RCONFIGURATION_ID = eINSTANCE.getEcuInstance_PduRConfigurationId();
        public static final EAttribute ECU_INSTANCE__RESPONSE_ADDRESS = eINSTANCE.getEcuInstance_ResponseAddress();
        public static final EAttribute ECU_INSTANCE__SLEEP_MODE_SUPPORTED = eINSTANCE.getEcuInstance_SleepModeSupported();
        public static final EAttribute ECU_INSTANCE__WAKE_UP_OVER_BUS_SUPPORTED = eINSTANCE.getEcuInstance_WakeUpOverBusSupported();
        public static final EEnum PNC_GATEWAY_TYPE_ENUM = eINSTANCE.getPncGatewayTypeEnum();
    }
}

