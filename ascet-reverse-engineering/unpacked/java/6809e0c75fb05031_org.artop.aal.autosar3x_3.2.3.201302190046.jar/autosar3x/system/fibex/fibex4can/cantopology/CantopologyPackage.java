/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.system.fibex.fibex4can.cantopology;

import autosar3x.system.fibex.fibex4can.cantopology.CantopologyFactory;
import autosar3x.system.fibex.fibex4can.cantopology.impl.CantopologyPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CantopologyPackage
extends EPackage {
    public static final String eNAME = "cantopology";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/f/fcan/ct";
    public static final String eNS_PREFIX = "";
    public static final CantopologyPackage eINSTANCE = CantopologyPackageImpl.init();
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES = 0;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES__GCHECKSUM = 0;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES__GTIMESTAMP = 1;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES__CHECKSUM = 2;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES__TIMESTAMP = 3;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES__CAN_COMMUNICATION_CONTROLLER = 4;
    public static final int ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES_FEATURE_COUNT = 5;
    public static final int CAN_CLUSTER = 1;
    public static final int CAN_CLUSTER__GCHECKSUM = 0;
    public static final int CAN_CLUSTER__GTIMESTAMP = 1;
    public static final int CAN_CLUSTER__CHECKSUM = 2;
    public static final int CAN_CLUSTER__TIMESTAMP = 3;
    public static final int CAN_CLUSTER__GSHORT_NAME = 4;
    public static final int CAN_CLUSTER__GUUID = 5;
    public static final int CAN_CLUSTER__GCATEGORY = 6;
    public static final int CAN_CLUSTER__GDESC = 7;
    public static final int CAN_CLUSTER__SHORT_NAME = 8;
    public static final int CAN_CLUSTER__LONG_NAME = 9;
    public static final int CAN_CLUSTER__DESC = 10;
    public static final int CAN_CLUSTER__CATEGORY = 11;
    public static final int CAN_CLUSTER__ADMIN_DATA = 12;
    public static final int CAN_CLUSTER__INTRODUCTION = 13;
    public static final int CAN_CLUSTER__UUID = 14;
    public static final int CAN_CLUSTER__ALL_EXTENSIONS = 15;
    public static final int CAN_CLUSTER__CONTAINED_EXTENSIONS = 16;
    public static final int CAN_CLUSTER__GAR_PACKAGE = 17;
    public static final int CAN_CLUSTER__AR_PACKAGE = 18;
    public static final int CAN_CLUSTER__MAX_FRAME_LENGTH = 19;
    public static final int CAN_CLUSTER__NM_NODE_DETECTION_ENABLED = 20;
    public static final int CAN_CLUSTER__NM_NODE_ID_ENABLED = 21;
    public static final int CAN_CLUSTER__NM_REPEAT_MESSAGE_SUPPORT = 22;
    public static final int CAN_CLUSTER__PHYSICAL_CHANNELS = 23;
    public static final int CAN_CLUSTER__PROTOCOL_NAME = 24;
    public static final int CAN_CLUSTER__PROTOCOL_VERSION = 25;
    public static final int CAN_CLUSTER__SPEED = 26;
    public static final int CAN_CLUSTER__NM_BUS_LOAD_REDUCTION_ACTIVE = 27;
    public static final int CAN_CLUSTER__NM_BUS_LOAD_REDUCTION_ENABLED = 28;
    public static final int CAN_CLUSTER__NM_IMMEDIATE_NM_CYCLE_TIME = 29;
    public static final int CAN_CLUSTER__NM_IMMEDIATE_NM_TRANSMISSIONS = 30;
    public static final int CAN_CLUSTER__NM_IMMEDIATE_RESTART_ENABLED = 31;
    public static final int CAN_CLUSTER__NM_LOWER_CAN_ID = 32;
    public static final int CAN_CLUSTER__NM_MSG_CYCLE_TIME = 33;
    public static final int CAN_CLUSTER__NM_REMOTE_SLEEP_INDICATION_TIME = 34;
    public static final int CAN_CLUSTER__NM_REPEAT_MESSAGE_STATE_TIME = 35;
    public static final int CAN_CLUSTER__NM_TIMEOUT_TIME = 36;
    public static final int CAN_CLUSTER__NM_UPPER_CAN_ID = 37;
    public static final int CAN_CLUSTER__NM_WAIT_BUS_SLEEP_TIME = 38;
    public static final int CAN_CLUSTER_FEATURE_COUNT = 39;
    public static final int CAN_COMMUNICATION_CONNECTOR = 2;
    public static final int CAN_COMMUNICATION_CONNECTOR__GCHECKSUM = 0;
    public static final int CAN_COMMUNICATION_CONNECTOR__GTIMESTAMP = 1;
    public static final int CAN_COMMUNICATION_CONNECTOR__CHECKSUM = 2;
    public static final int CAN_COMMUNICATION_CONNECTOR__TIMESTAMP = 3;
    public static final int CAN_COMMUNICATION_CONNECTOR__GSHORT_NAME = 4;
    public static final int CAN_COMMUNICATION_CONNECTOR__GUUID = 5;
    public static final int CAN_COMMUNICATION_CONNECTOR__GCATEGORY = 6;
    public static final int CAN_COMMUNICATION_CONNECTOR__GDESC = 7;
    public static final int CAN_COMMUNICATION_CONNECTOR__SHORT_NAME = 8;
    public static final int CAN_COMMUNICATION_CONNECTOR__LONG_NAME = 9;
    public static final int CAN_COMMUNICATION_CONNECTOR__DESC = 10;
    public static final int CAN_COMMUNICATION_CONNECTOR__CATEGORY = 11;
    public static final int CAN_COMMUNICATION_CONNECTOR__ADMIN_DATA = 12;
    public static final int CAN_COMMUNICATION_CONNECTOR__INTRODUCTION = 13;
    public static final int CAN_COMMUNICATION_CONNECTOR__UUID = 14;
    public static final int CAN_COMMUNICATION_CONNECTOR__ALL_EXTENSIONS = 15;
    public static final int CAN_COMMUNICATION_CONNECTOR__CONTAINED_EXTENSIONS = 16;
    public static final int CAN_COMMUNICATION_CONNECTOR__ECU_INSTANCE = 17;
    public static final int CAN_COMMUNICATION_CONNECTOR__CHANNEL = 18;
    public static final int CAN_COMMUNICATION_CONNECTOR__COMM_CONTROLLER = 19;
    public static final int CAN_COMMUNICATION_CONNECTOR__ECU_COMM_PORT_INSTANCES = 20;
    public static final int CAN_COMMUNICATION_CONNECTOR__NM_ADDRESS = 21;
    public static final int CAN_COMMUNICATION_CONNECTOR__PNC_GATEWAY_TYPE = 22;
    public static final int CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_CAN_ID = 23;
    public static final int CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_CAN_ID_EXTENDED = 24;
    public static final int CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_CAN_ID_MASK = 25;
    public static final int CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_DATA_MASK = 26;
    public static final int CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_DLC = 27;
    public static final int CAN_COMMUNICATION_CONNECTOR_FEATURE_COUNT = 28;
    public static final int CAN_COMMUNICATION_CONTROLLER = 3;
    public static final int CAN_COMMUNICATION_CONTROLLER__GCHECKSUM = 0;
    public static final int CAN_COMMUNICATION_CONTROLLER__GTIMESTAMP = 1;
    public static final int CAN_COMMUNICATION_CONTROLLER__CHECKSUM = 2;
    public static final int CAN_COMMUNICATION_CONTROLLER__TIMESTAMP = 3;
    public static final int CAN_COMMUNICATION_CONTROLLER__GSHORT_NAME = 4;
    public static final int CAN_COMMUNICATION_CONTROLLER__GUUID = 5;
    public static final int CAN_COMMUNICATION_CONTROLLER__GCATEGORY = 6;
    public static final int CAN_COMMUNICATION_CONTROLLER__GDESC = 7;
    public static final int CAN_COMMUNICATION_CONTROLLER__SHORT_NAME = 8;
    public static final int CAN_COMMUNICATION_CONTROLLER__LONG_NAME = 9;
    public static final int CAN_COMMUNICATION_CONTROLLER__DESC = 10;
    public static final int CAN_COMMUNICATION_CONTROLLER__CATEGORY = 11;
    public static final int CAN_COMMUNICATION_CONTROLLER__ADMIN_DATA = 12;
    public static final int CAN_COMMUNICATION_CONTROLLER__INTRODUCTION = 13;
    public static final int CAN_COMMUNICATION_CONTROLLER__UUID = 14;
    public static final int CAN_COMMUNICATION_CONTROLLER__ALL_EXTENSIONS = 15;
    public static final int CAN_COMMUNICATION_CONTROLLER__CONTAINED_EXTENSIONS = 16;
    public static final int CAN_COMMUNICATION_CONTROLLER__ECU_INSTANCE = 17;
    public static final int CAN_COMMUNICATION_CONTROLLER__WAKE_UP_BY_CONTROLLER_SUPPORTED = 18;
    public static final int CAN_COMMUNICATION_CONTROLLER__CAN_CONTROLLER_ATTRIBUTES = 19;
    public static final int CAN_COMMUNICATION_CONTROLLER__NM_MSG_CYCLE_OFFSET = 20;
    public static final int CAN_COMMUNICATION_CONTROLLER__NM_MSG_REDUCED_TIME = 21;
    public static final int CAN_COMMUNICATION_CONTROLLER__NM_USER_DATA_ENABLED = 22;
    public static final int CAN_COMMUNICATION_CONTROLLER_FEATURE_COUNT = 23;
    public static final int CAN_CONTROLLER_CONFIGURATION = 4;
    public static final int CAN_CONTROLLER_CONFIGURATION__GCHECKSUM = 0;
    public static final int CAN_CONTROLLER_CONFIGURATION__GTIMESTAMP = 1;
    public static final int CAN_CONTROLLER_CONFIGURATION__CHECKSUM = 2;
    public static final int CAN_CONTROLLER_CONFIGURATION__TIMESTAMP = 3;
    public static final int CAN_CONTROLLER_CONFIGURATION__CAN_COMMUNICATION_CONTROLLER = 4;
    public static final int CAN_CONTROLLER_CONFIGURATION__NUMBER_OF_SAMPLES = 5;
    public static final int CAN_CONTROLLER_CONFIGURATION__PROPAGATION_DELAY = 6;
    public static final int CAN_CONTROLLER_CONFIGURATION__SYNC_JUMP_WIDTH = 7;
    public static final int CAN_CONTROLLER_CONFIGURATION__TIME_SEG1 = 8;
    public static final int CAN_CONTROLLER_CONFIGURATION__TIME_SEG2 = 9;
    public static final int CAN_CONTROLLER_CONFIGURATION_FEATURE_COUNT = 10;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS = 5;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__GCHECKSUM = 0;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__GTIMESTAMP = 1;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__CHECKSUM = 2;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__TIMESTAMP = 3;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__CAN_COMMUNICATION_CONTROLLER = 4;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MAX_NUMBER_OF_TIME_QUANTA_PER_BIT = 5;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MAX_SAMPLE_POINT = 6;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MAX_SYNC_JUMP_WIDTH = 7;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MIN_NUMBER_OF_TIME_QUANTA_PER_BIT = 8;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MIN_SAMPLE_POINT = 9;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MIN_SYNC_JUMP_WIDTH = 10;
    public static final int CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS_FEATURE_COUNT = 11;

    public EClass getAbstractCanCommunicationControllerAttributes();

    public EReference getAbstractCanCommunicationControllerAttributes_CanCommunicationController();

    public EClass getCanCluster();

    public EAttribute getCanCluster_NmBusLoadReductionActive();

    public EAttribute getCanCluster_NmBusLoadReductionEnabled();

    public EAttribute getCanCluster_NmImmediateNmCycleTime();

    public EAttribute getCanCluster_NmImmediateNmTransmissions();

    public EAttribute getCanCluster_NmImmediateRestartEnabled();

    public EAttribute getCanCluster_NmLowerCanId();

    public EAttribute getCanCluster_NmMsgCycleTime();

    public EAttribute getCanCluster_NmRemoteSleepIndicationTime();

    public EAttribute getCanCluster_NmRepeatMessageStateTime();

    public EAttribute getCanCluster_NmTimeoutTime();

    public EAttribute getCanCluster_NmUpperCanId();

    public EAttribute getCanCluster_NmWaitBusSleepTime();

    public EClass getCanCommunicationConnector();

    public EAttribute getCanCommunicationConnector_PncWakeupCanId();

    public EAttribute getCanCommunicationConnector_PncWakeupCanIdExtended();

    public EAttribute getCanCommunicationConnector_PncWakeupCanIdMask();

    public EAttribute getCanCommunicationConnector_PncWakeupDataMask();

    public EAttribute getCanCommunicationConnector_PncWakeupDlc();

    public EClass getCanCommunicationController();

    public EReference getCanCommunicationController_CanControllerAttributes();

    public EAttribute getCanCommunicationController_NmMsgCycleOffset();

    public EAttribute getCanCommunicationController_NmMsgReducedTime();

    public EAttribute getCanCommunicationController_NmUserDataEnabled();

    public EClass getCanControllerConfiguration();

    public EAttribute getCanControllerConfiguration_NumberOfSamples();

    public EAttribute getCanControllerConfiguration_PropagationDelay();

    public EAttribute getCanControllerConfiguration_SyncJumpWidth();

    public EAttribute getCanControllerConfiguration_TimeSeg1();

    public EAttribute getCanControllerConfiguration_TimeSeg2();

    public EClass getCanControllerConfigurationRequirements();

    public EAttribute getCanControllerConfigurationRequirements_MaxNumberOfTimeQuantaPerBit();

    public EAttribute getCanControllerConfigurationRequirements_MaxSamplePoint();

    public EAttribute getCanControllerConfigurationRequirements_MaxSyncJumpWidth();

    public EAttribute getCanControllerConfigurationRequirements_MinNumberOfTimeQuantaPerBit();

    public EAttribute getCanControllerConfigurationRequirements_MinSamplePoint();

    public EAttribute getCanControllerConfigurationRequirements_MinSyncJumpWidth();

    public CantopologyFactory getCantopologyFactory();

    public static interface Literals {
        public static final EClass ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES = eINSTANCE.getAbstractCanCommunicationControllerAttributes();
        public static final EReference ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES__CAN_COMMUNICATION_CONTROLLER = eINSTANCE.getAbstractCanCommunicationControllerAttributes_CanCommunicationController();
        public static final EClass CAN_CLUSTER = eINSTANCE.getCanCluster();
        public static final EAttribute CAN_CLUSTER__NM_BUS_LOAD_REDUCTION_ACTIVE = eINSTANCE.getCanCluster_NmBusLoadReductionActive();
        public static final EAttribute CAN_CLUSTER__NM_BUS_LOAD_REDUCTION_ENABLED = eINSTANCE.getCanCluster_NmBusLoadReductionEnabled();
        public static final EAttribute CAN_CLUSTER__NM_IMMEDIATE_NM_CYCLE_TIME = eINSTANCE.getCanCluster_NmImmediateNmCycleTime();
        public static final EAttribute CAN_CLUSTER__NM_IMMEDIATE_NM_TRANSMISSIONS = eINSTANCE.getCanCluster_NmImmediateNmTransmissions();
        public static final EAttribute CAN_CLUSTER__NM_IMMEDIATE_RESTART_ENABLED = eINSTANCE.getCanCluster_NmImmediateRestartEnabled();
        public static final EAttribute CAN_CLUSTER__NM_LOWER_CAN_ID = eINSTANCE.getCanCluster_NmLowerCanId();
        public static final EAttribute CAN_CLUSTER__NM_MSG_CYCLE_TIME = eINSTANCE.getCanCluster_NmMsgCycleTime();
        public static final EAttribute CAN_CLUSTER__NM_REMOTE_SLEEP_INDICATION_TIME = eINSTANCE.getCanCluster_NmRemoteSleepIndicationTime();
        public static final EAttribute CAN_CLUSTER__NM_REPEAT_MESSAGE_STATE_TIME = eINSTANCE.getCanCluster_NmRepeatMessageStateTime();
        public static final EAttribute CAN_CLUSTER__NM_TIMEOUT_TIME = eINSTANCE.getCanCluster_NmTimeoutTime();
        public static final EAttribute CAN_CLUSTER__NM_UPPER_CAN_ID = eINSTANCE.getCanCluster_NmUpperCanId();
        public static final EAttribute CAN_CLUSTER__NM_WAIT_BUS_SLEEP_TIME = eINSTANCE.getCanCluster_NmWaitBusSleepTime();
        public static final EClass CAN_COMMUNICATION_CONNECTOR = eINSTANCE.getCanCommunicationConnector();
        public static final EAttribute CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_CAN_ID = eINSTANCE.getCanCommunicationConnector_PncWakeupCanId();
        public static final EAttribute CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_CAN_ID_EXTENDED = eINSTANCE.getCanCommunicationConnector_PncWakeupCanIdExtended();
        public static final EAttribute CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_CAN_ID_MASK = eINSTANCE.getCanCommunicationConnector_PncWakeupCanIdMask();
        public static final EAttribute CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_DATA_MASK = eINSTANCE.getCanCommunicationConnector_PncWakeupDataMask();
        public static final EAttribute CAN_COMMUNICATION_CONNECTOR__PNC_WAKEUP_DLC = eINSTANCE.getCanCommunicationConnector_PncWakeupDlc();
        public static final EClass CAN_COMMUNICATION_CONTROLLER = eINSTANCE.getCanCommunicationController();
        public static final EReference CAN_COMMUNICATION_CONTROLLER__CAN_CONTROLLER_ATTRIBUTES = eINSTANCE.getCanCommunicationController_CanControllerAttributes();
        public static final EAttribute CAN_COMMUNICATION_CONTROLLER__NM_MSG_CYCLE_OFFSET = eINSTANCE.getCanCommunicationController_NmMsgCycleOffset();
        public static final EAttribute CAN_COMMUNICATION_CONTROLLER__NM_MSG_REDUCED_TIME = eINSTANCE.getCanCommunicationController_NmMsgReducedTime();
        public static final EAttribute CAN_COMMUNICATION_CONTROLLER__NM_USER_DATA_ENABLED = eINSTANCE.getCanCommunicationController_NmUserDataEnabled();
        public static final EClass CAN_CONTROLLER_CONFIGURATION = eINSTANCE.getCanControllerConfiguration();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION__NUMBER_OF_SAMPLES = eINSTANCE.getCanControllerConfiguration_NumberOfSamples();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION__PROPAGATION_DELAY = eINSTANCE.getCanControllerConfiguration_PropagationDelay();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION__SYNC_JUMP_WIDTH = eINSTANCE.getCanControllerConfiguration_SyncJumpWidth();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION__TIME_SEG1 = eINSTANCE.getCanControllerConfiguration_TimeSeg1();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION__TIME_SEG2 = eINSTANCE.getCanControllerConfiguration_TimeSeg2();
        public static final EClass CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS = eINSTANCE.getCanControllerConfigurationRequirements();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MAX_NUMBER_OF_TIME_QUANTA_PER_BIT = eINSTANCE.getCanControllerConfigurationRequirements_MaxNumberOfTimeQuantaPerBit();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MAX_SAMPLE_POINT = eINSTANCE.getCanControllerConfigurationRequirements_MaxSamplePoint();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MAX_SYNC_JUMP_WIDTH = eINSTANCE.getCanControllerConfigurationRequirements_MaxSyncJumpWidth();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MIN_NUMBER_OF_TIME_QUANTA_PER_BIT = eINSTANCE.getCanControllerConfigurationRequirements_MinNumberOfTimeQuantaPerBit();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MIN_SAMPLE_POINT = eINSTANCE.getCanControllerConfigurationRequirements_MinSamplePoint();
        public static final EAttribute CAN_CONTROLLER_CONFIGURATION_REQUIREMENTS__MIN_SYNC_JUMP_WIDTH = eINSTANCE.getCanControllerConfigurationRequirements_MinSyncJumpWidth();
    }
}

