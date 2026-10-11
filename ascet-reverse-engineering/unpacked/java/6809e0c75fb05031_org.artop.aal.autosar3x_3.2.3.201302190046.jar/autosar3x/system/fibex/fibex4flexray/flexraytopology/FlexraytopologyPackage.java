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
package autosar3x.system.fibex.fibex4flexray.flexraytopology;

import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyFactory;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.impl.FlexraytopologyPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface FlexraytopologyPackage
extends EPackage {
    public static final String eNAME = "flexraytopology";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/f/ff/ft";
    public static final String eNS_PREFIX = "";
    public static final FlexraytopologyPackage eINSTANCE = FlexraytopologyPackageImpl.init();
    public static final int FLEXRAY_CLUSTER = 0;
    public static final int FLEXRAY_CLUSTER__GCHECKSUM = 0;
    public static final int FLEXRAY_CLUSTER__GTIMESTAMP = 1;
    public static final int FLEXRAY_CLUSTER__CHECKSUM = 2;
    public static final int FLEXRAY_CLUSTER__TIMESTAMP = 3;
    public static final int FLEXRAY_CLUSTER__GSHORT_NAME = 4;
    public static final int FLEXRAY_CLUSTER__GUUID = 5;
    public static final int FLEXRAY_CLUSTER__GCATEGORY = 6;
    public static final int FLEXRAY_CLUSTER__GDESC = 7;
    public static final int FLEXRAY_CLUSTER__SHORT_NAME = 8;
    public static final int FLEXRAY_CLUSTER__LONG_NAME = 9;
    public static final int FLEXRAY_CLUSTER__DESC = 10;
    public static final int FLEXRAY_CLUSTER__CATEGORY = 11;
    public static final int FLEXRAY_CLUSTER__ADMIN_DATA = 12;
    public static final int FLEXRAY_CLUSTER__INTRODUCTION = 13;
    public static final int FLEXRAY_CLUSTER__UUID = 14;
    public static final int FLEXRAY_CLUSTER__ALL_EXTENSIONS = 15;
    public static final int FLEXRAY_CLUSTER__CONTAINED_EXTENSIONS = 16;
    public static final int FLEXRAY_CLUSTER__GAR_PACKAGE = 17;
    public static final int FLEXRAY_CLUSTER__AR_PACKAGE = 18;
    public static final int FLEXRAY_CLUSTER__MAX_FRAME_LENGTH = 19;
    public static final int FLEXRAY_CLUSTER__NM_NODE_DETECTION_ENABLED = 20;
    public static final int FLEXRAY_CLUSTER__NM_NODE_ID_ENABLED = 21;
    public static final int FLEXRAY_CLUSTER__NM_REPEAT_MESSAGE_SUPPORT = 22;
    public static final int FLEXRAY_CLUSTER__PHYSICAL_CHANNELS = 23;
    public static final int FLEXRAY_CLUSTER__PROTOCOL_NAME = 24;
    public static final int FLEXRAY_CLUSTER__PROTOCOL_VERSION = 25;
    public static final int FLEXRAY_CLUSTER__SPEED = 26;
    public static final int FLEXRAY_CLUSTER__ACTION_POINT_OFFSET = 27;
    public static final int FLEXRAY_CLUSTER__BIT = 28;
    public static final int FLEXRAY_CLUSTER__BUS_GUARDIAN_ENABLE_PART = 29;
    public static final int FLEXRAY_CLUSTER__CAS_RX_LOW_MAX = 30;
    public static final int FLEXRAY_CLUSTER__CAS_RX_LOW_MIN = 31;
    public static final int FLEXRAY_CLUSTER__COLD_START_ATTEMPTS = 32;
    public static final int FLEXRAY_CLUSTER__CYCLE = 33;
    public static final int FLEXRAY_CLUSTER__CYCLE_COUNT_MAX = 34;
    public static final int FLEXRAY_CLUSTER__DYNAMIC_SLOT_IDLE_PHASE = 35;
    public static final int FLEXRAY_CLUSTER__IGNORE_AFTER_TX = 36;
    public static final int FLEXRAY_CLUSTER__LISTEN_NOISE = 37;
    public static final int FLEXRAY_CLUSTER__MACRO_INITIAL_OFFSET = 38;
    public static final int FLEXRAY_CLUSTER__MACRO_PER_CYCLE = 39;
    public static final int FLEXRAY_CLUSTER__MACROTICK_DURATION = 40;
    public static final int FLEXRAY_CLUSTER__MAX_INITIALISATION_ERROR = 41;
    public static final int FLEXRAY_CLUSTER__MAX_PROPAGATION_DELAY = 42;
    public static final int FLEXRAY_CLUSTER__MAX_WITHOUT_CLOCK_CORRECTION_FATAL = 43;
    public static final int FLEXRAY_CLUSTER__MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE = 44;
    public static final int FLEXRAY_CLUSTER__MIN_PROPAGATION_DELAY = 45;
    public static final int FLEXRAY_CLUSTER__MINISLOT_ACTION_POINT_OFFSET = 46;
    public static final int FLEXRAY_CLUSTER__MINISLOT_DURATION = 47;
    public static final int FLEXRAY_CLUSTER__NETWORK_IDLE_TIME = 48;
    public static final int FLEXRAY_CLUSTER__NETWORK_MANAGEMENT_VECTOR_LENGTH = 49;
    public static final int FLEXRAY_CLUSTER__NM_DATA_CYCLE = 50;
    public static final int FLEXRAY_CLUSTER__NM_READY_SLEEP_COUNT = 51;
    public static final int FLEXRAY_CLUSTER__NM_REMOTE_SLEEP_INDICATION_TIME = 52;
    public static final int FLEXRAY_CLUSTER__NM_REPEAT_MESSAGE_TIME = 53;
    public static final int FLEXRAY_CLUSTER__NM_REPETITION_CYCLE = 54;
    public static final int FLEXRAY_CLUSTER__NM_VOTING_CYCLE = 55;
    public static final int FLEXRAY_CLUSTER__NUMBER_OF_CYCLES = 56;
    public static final int FLEXRAY_CLUSTER__NUMBER_OF_MINISLOTS = 57;
    public static final int FLEXRAY_CLUSTER__NUMBER_OF_STATIC_SLOTS = 58;
    public static final int FLEXRAY_CLUSTER__OFFSET_CORRECTION_MAX = 59;
    public static final int FLEXRAY_CLUSTER__OFFSET_CORRECTION_START = 60;
    public static final int FLEXRAY_CLUSTER__PAYLOAD_LENGTH_STATIC = 61;
    public static final int FLEXRAY_CLUSTER__SAMPLE_CLOCK_PERIOD = 62;
    public static final int FLEXRAY_CLUSTER__STATIC_SLOT_DURATION = 63;
    public static final int FLEXRAY_CLUSTER__SYMBOL_WINDOW = 64;
    public static final int FLEXRAY_CLUSTER__SYMBOL_WINDOW_ACTION_POINT_OFFSET = 65;
    public static final int FLEXRAY_CLUSTER__SYNC_FRAME_ID_COUNT_MAX = 66;
    public static final int FLEXRAY_CLUSTER__TRANSMISSION_START_SEQUENCE_DURATION = 67;
    public static final int FLEXRAY_CLUSTER__WAKEUP_RX_IDLE = 68;
    public static final int FLEXRAY_CLUSTER__WAKEUP_RX_LOW = 69;
    public static final int FLEXRAY_CLUSTER__WAKEUP_RX_WINDOW = 70;
    public static final int FLEXRAY_CLUSTER__WAKEUP_TX_ACTIVE = 71;
    public static final int FLEXRAY_CLUSTER__WAKEUP_TX_IDLE = 72;
    public static final int FLEXRAY_CLUSTER_FEATURE_COUNT = 73;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR = 1;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__GCHECKSUM = 0;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__GTIMESTAMP = 1;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__CHECKSUM = 2;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__TIMESTAMP = 3;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__GSHORT_NAME = 4;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__GUUID = 5;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__GCATEGORY = 6;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__GDESC = 7;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__SHORT_NAME = 8;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__LONG_NAME = 9;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__DESC = 10;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__CATEGORY = 11;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__ADMIN_DATA = 12;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__INTRODUCTION = 13;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__UUID = 14;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__ALL_EXTENSIONS = 15;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__CONTAINED_EXTENSIONS = 16;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__ECU_INSTANCE = 17;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__CHANNEL = 18;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__COMM_CONTROLLER = 19;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__ECU_COMM_PORT_INSTANCES = 20;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__NM_ADDRESS = 21;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__PNC_GATEWAY_TYPE = 22;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR__WAKE_UP_CHANNEL = 23;
    public static final int FLEX_RAY_COMMUNICATION_CONNECTOR_FEATURE_COUNT = 24;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER = 2;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__GCHECKSUM = 0;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__GTIMESTAMP = 1;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__CHECKSUM = 2;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__TIMESTAMP = 3;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__GSHORT_NAME = 4;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__GUUID = 5;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__GCATEGORY = 6;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__GDESC = 7;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__SHORT_NAME = 8;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__LONG_NAME = 9;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__DESC = 10;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__CATEGORY = 11;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__ADMIN_DATA = 12;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__INTRODUCTION = 13;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__UUID = 14;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__ALL_EXTENSIONS = 15;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__CONTAINED_EXTENSIONS = 16;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__ECU_INSTANCE = 17;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__WAKE_UP_BY_CONTROLLER_SUPPORTED = 18;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__ACCEPTED_STARTUP_RANGE = 19;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__ALLOW_HALT_DUE_TO_CLOCK = 20;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__ALLOW_PASSIVE_TO_ACTIVE = 21;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__CLUSTER_DRIFT_DAMPING = 22;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__DECODING_CORRECTION = 23;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__DELAY_COMPENSATION_A = 24;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__DELAY_COMPENSATION_B = 25;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__DYNAMIC_SEGMENT_ENABLE = 26;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__EXTERN_OFFSET_CORRECTION = 27;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__EXTERN_RATE_CORRECTION = 28;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__EXTERNAL_SYNC = 29;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__FALL_BACK_INTERNAL = 30;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__FLEXRAY_FIFOS = 31;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__KEY_SLOT_ID = 32;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__KEY_SLOT_ONLY_ENABLED = 33;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__KEY_SLOT_USED_FOR_START_UP = 34;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__KEY_SLOT_USED_FOR_SYNC = 35;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__LATEST_TX = 36;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__LISTEN_TIMEOUT = 37;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__MACRO_INITIAL_OFFSET_A = 38;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__MACRO_INITIAL_OFFSET_B = 39;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__MAXIMUM_DYNAMIC_PAYLOAD_LENGTH = 40;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__MICRO_INITIAL_OFFSET_A = 41;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__MICRO_INITIAL_OFFSET_B = 42;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__MICRO_PER_CYCLE = 43;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__MICRO_PER_MACRO_NOM = 44;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__MICROTICK_DURATION = 45;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__NM_CONTROL_BIT_VECTOR_ENABLED = 46;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__NM_NODE_DETECTION_ENABLED = 47;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__NM_SOURCE_NODE_IDENTIFIER_ENABLED = 48;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__NM_USER_DATA_ENABLED = 49;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__NM_VECTOR_EARLY_UPDATE = 50;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__OFFSET_CORRECTION_OUT = 51;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__RATE_CORRECTION_OUT = 52;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__SAMPLES_PER_MICROTICK = 53;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__SECOND_KEY_SLOT_ID = 54;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__START_UP_NODE = 55;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__SYNC_SLOT = 56;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__TWO_KEY_SLOT_MODE = 57;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__WAKE_UP_PATTERN = 58;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_FEATURE_COUNT = 59;
    public static final int FLEXRAY_FIFO_CONFIGURATION = 3;
    public static final int FLEXRAY_FIFO_CONFIGURATION__GCHECKSUM = 0;
    public static final int FLEXRAY_FIFO_CONFIGURATION__GTIMESTAMP = 1;
    public static final int FLEXRAY_FIFO_CONFIGURATION__CHECKSUM = 2;
    public static final int FLEXRAY_FIFO_CONFIGURATION__TIMESTAMP = 3;
    public static final int FLEXRAY_FIFO_CONFIGURATION__FLEXRAY_COMMUNICATION_CONTROLLER = 4;
    public static final int FLEXRAY_FIFO_CONFIGURATION__ADMIT_WITHOUT_MESSAGE_ID = 5;
    public static final int FLEXRAY_FIFO_CONFIGURATION__BASE_CYCLE = 6;
    public static final int FLEXRAY_FIFO_CONFIGURATION__CHANNELS = 7;
    public static final int FLEXRAY_FIFO_CONFIGURATION__CYCLE_REPETITION = 8;
    public static final int FLEXRAY_FIFO_CONFIGURATION__FIFO_DEPTH = 9;
    public static final int FLEXRAY_FIFO_CONFIGURATION__FIFO_RANGES = 10;
    public static final int FLEXRAY_FIFO_CONFIGURATION__MSG_ID_MASK = 11;
    public static final int FLEXRAY_FIFO_CONFIGURATION__MSG_ID_MATCH = 12;
    public static final int FLEXRAY_FIFO_CONFIGURATION_FEATURE_COUNT = 13;
    public static final int FLEXRAY_PHYSICAL_CHANNEL = 4;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__GCHECKSUM = 0;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__GTIMESTAMP = 1;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__CHECKSUM = 2;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__TIMESTAMP = 3;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__GSHORT_NAME = 4;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__GUUID = 5;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__GCATEGORY = 6;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__GDESC = 7;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__SHORT_NAME = 8;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__LONG_NAME = 9;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__DESC = 10;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__CATEGORY = 11;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__ADMIN_DATA = 12;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__INTRODUCTION = 13;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__UUID = 14;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__ALL_EXTENSIONS = 15;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__CONTAINED_EXTENSIONS = 16;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__COMMUNICATION_CLUSTER = 17;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__FRAME_TRIGGERINGS = 18;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__IPDU_TRIGGERINGS = 19;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__ISIGNAL_TRIGGERINGS = 20;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__TP_ADDRESS = 21;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__TP_CHANNELS = 22;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__TP_NODES = 23;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__CHANNEL_NAME = 24;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__PDU_POOLS = 25;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__TP_CONNECTION_CONTROLS = 26;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__TP_ECUS = 27;
    public static final int FLEXRAY_PHYSICAL_CHANNEL_FEATURE_COUNT = 28;
    public static final int FLEXRAY_FIFO_RANGE = 5;
    public static final int FLEXRAY_FIFO_RANGE__GCHECKSUM = 0;
    public static final int FLEXRAY_FIFO_RANGE__GTIMESTAMP = 1;
    public static final int FLEXRAY_FIFO_RANGE__CHECKSUM = 2;
    public static final int FLEXRAY_FIFO_RANGE__TIMESTAMP = 3;
    public static final int FLEXRAY_FIFO_RANGE__FLEXRAY_FIFO_CONFIGURATION = 4;
    public static final int FLEXRAY_FIFO_RANGE__RANGE_MAX = 5;
    public static final int FLEXRAY_FIFO_RANGE__RANGE_MIN = 6;
    public static final int FLEXRAY_FIFO_RANGE_FEATURE_COUNT = 7;
    public static final int FLEXRAY_CHANNEL_NAME = 6;

    public EClass getFlexrayCluster();

    public EAttribute getFlexrayCluster_ActionPointOffset();

    public EAttribute getFlexrayCluster_Bit();

    public EAttribute getFlexrayCluster_BusGuardianEnablePart();

    public EAttribute getFlexrayCluster_CasRxLowMax();

    public EAttribute getFlexrayCluster_CasRxLowMin();

    public EAttribute getFlexrayCluster_ColdStartAttempts();

    public EAttribute getFlexrayCluster_Cycle();

    public EAttribute getFlexrayCluster_CycleCountMax();

    public EAttribute getFlexrayCluster_DynamicSlotIdlePhase();

    public EAttribute getFlexrayCluster_IgnoreAfterTx();

    public EAttribute getFlexrayCluster_ListenNoise();

    public EAttribute getFlexrayCluster_MacroInitialOffset();

    public EAttribute getFlexrayCluster_MacroPerCycle();

    public EAttribute getFlexrayCluster_MacrotickDuration();

    public EAttribute getFlexrayCluster_MaxInitialisationError();

    public EAttribute getFlexrayCluster_MaxPropagationDelay();

    public EAttribute getFlexrayCluster_MaxWithoutClockCorrectionFatal();

    public EAttribute getFlexrayCluster_MaxWithoutClockCorrectionPassive();

    public EAttribute getFlexrayCluster_MinPropagationDelay();

    public EAttribute getFlexrayCluster_MinislotActionPointOffset();

    public EAttribute getFlexrayCluster_MinislotDuration();

    public EAttribute getFlexrayCluster_NetworkIdleTime();

    public EAttribute getFlexrayCluster_NetworkManagementVectorLength();

    public EAttribute getFlexrayCluster_NmDataCycle();

    public EAttribute getFlexrayCluster_NmReadySleepCount();

    public EAttribute getFlexrayCluster_NmRemoteSleepIndicationTime();

    public EAttribute getFlexrayCluster_NmRepeatMessageTime();

    public EAttribute getFlexrayCluster_NmRepetitionCycle();

    public EAttribute getFlexrayCluster_NmVotingCycle();

    public EAttribute getFlexrayCluster_NumberOfCycles();

    public EAttribute getFlexrayCluster_NumberOfMinislots();

    public EAttribute getFlexrayCluster_NumberOfStaticSlots();

    public EAttribute getFlexrayCluster_OffsetCorrectionMax();

    public EAttribute getFlexrayCluster_OffsetCorrectionStart();

    public EAttribute getFlexrayCluster_PayloadLengthStatic();

    public EAttribute getFlexrayCluster_SampleClockPeriod();

    public EAttribute getFlexrayCluster_StaticSlotDuration();

    public EAttribute getFlexrayCluster_SymbolWindow();

    public EAttribute getFlexrayCluster_SymbolWindowActionPointOffset();

    public EAttribute getFlexrayCluster_SyncFrameIDCountMax();

    public EAttribute getFlexrayCluster_TransmissionStartSequenceDuration();

    public EAttribute getFlexrayCluster_WakeupRxIdle();

    public EAttribute getFlexrayCluster_WakeupRxLow();

    public EAttribute getFlexrayCluster_WakeupRxWindow();

    public EAttribute getFlexrayCluster_WakeupTxActive();

    public EAttribute getFlexrayCluster_WakeupTxIdle();

    public EClass getFlexRayCommunicationConnector();

    public EAttribute getFlexRayCommunicationConnector_WakeUpChannel();

    public EClass getFlexrayCommunicationController();

    public EAttribute getFlexrayCommunicationController_AcceptedStartupRange();

    public EAttribute getFlexrayCommunicationController_AllowHaltDueToClock();

    public EAttribute getFlexrayCommunicationController_AllowPassiveToActive();

    public EAttribute getFlexrayCommunicationController_ClusterDriftDamping();

    public EAttribute getFlexrayCommunicationController_DecodingCorrection();

    public EAttribute getFlexrayCommunicationController_DelayCompensationA();

    public EAttribute getFlexrayCommunicationController_DelayCompensationB();

    public EAttribute getFlexrayCommunicationController_DynamicSegmentEnable();

    public EAttribute getFlexrayCommunicationController_ExternOffsetCorrection();

    public EAttribute getFlexrayCommunicationController_ExternRateCorrection();

    public EAttribute getFlexrayCommunicationController_ExternalSync();

    public EAttribute getFlexrayCommunicationController_FallBackInternal();

    public EReference getFlexrayCommunicationController_FlexrayFifos();

    public EAttribute getFlexrayCommunicationController_KeySlotID();

    public EAttribute getFlexrayCommunicationController_KeySlotOnlyEnabled();

    public EAttribute getFlexrayCommunicationController_KeySlotUsedForStartUp();

    public EAttribute getFlexrayCommunicationController_KeySlotUsedForSync();

    public EAttribute getFlexrayCommunicationController_LatestTX();

    public EAttribute getFlexrayCommunicationController_ListenTimeout();

    public EAttribute getFlexrayCommunicationController_MacroInitialOffsetA();

    public EAttribute getFlexrayCommunicationController_MacroInitialOffsetB();

    public EAttribute getFlexrayCommunicationController_MaximumDynamicPayloadLength();

    public EAttribute getFlexrayCommunicationController_MicroInitialOffsetA();

    public EAttribute getFlexrayCommunicationController_MicroInitialOffsetB();

    public EAttribute getFlexrayCommunicationController_MicroPerCycle();

    public EAttribute getFlexrayCommunicationController_MicroPerMacroNom();

    public EAttribute getFlexrayCommunicationController_MicrotickDuration();

    public EAttribute getFlexrayCommunicationController_NmControlBitVectorEnabled();

    public EAttribute getFlexrayCommunicationController_NmNodeDetectionEnabled();

    public EAttribute getFlexrayCommunicationController_NmSourceNodeIdentifierEnabled();

    public EAttribute getFlexrayCommunicationController_NmUserDataEnabled();

    public EAttribute getFlexrayCommunicationController_NmVectorEarlyUpdate();

    public EAttribute getFlexrayCommunicationController_OffsetCorrectionOut();

    public EAttribute getFlexrayCommunicationController_RateCorrectionOut();

    public EAttribute getFlexrayCommunicationController_SamplesPerMicrotick();

    public EAttribute getFlexrayCommunicationController_SecondKeySlotId();

    public EAttribute getFlexrayCommunicationController_StartUpNode();

    public EAttribute getFlexrayCommunicationController_SyncSlot();

    public EAttribute getFlexrayCommunicationController_TwoKeySlotMode();

    public EAttribute getFlexrayCommunicationController_WakeUpPattern();

    public EClass getFlexrayFifoConfiguration();

    public EReference getFlexrayFifoConfiguration_FlexrayCommunicationController();

    public EAttribute getFlexrayFifoConfiguration_AdmitWithoutMessageId();

    public EAttribute getFlexrayFifoConfiguration_BaseCycle();

    public EReference getFlexrayFifoConfiguration_Channels();

    public EAttribute getFlexrayFifoConfiguration_CycleRepetition();

    public EAttribute getFlexrayFifoConfiguration_FifoDepth();

    public EReference getFlexrayFifoConfiguration_FifoRanges();

    public EAttribute getFlexrayFifoConfiguration_MsgIdMask();

    public EAttribute getFlexrayFifoConfiguration_MsgIdMatch();

    public EClass getFlexrayPhysicalChannel();

    public EAttribute getFlexrayPhysicalChannel_ChannelName();

    public EReference getFlexrayPhysicalChannel_PduPools();

    public EReference getFlexrayPhysicalChannel_TpConnectionControls();

    public EReference getFlexrayPhysicalChannel_TpEcus();

    public EClass getFlexrayFifoRange();

    public EReference getFlexrayFifoRange_FlexrayFifoConfiguration();

    public EAttribute getFlexrayFifoRange_RangeMax();

    public EAttribute getFlexrayFifoRange_RangeMin();

    public EEnum getFlexrayChannelName();

    public FlexraytopologyFactory getFlexraytopologyFactory();

    public static interface Literals {
        public static final EClass FLEXRAY_CLUSTER = eINSTANCE.getFlexrayCluster();
        public static final EAttribute FLEXRAY_CLUSTER__ACTION_POINT_OFFSET = eINSTANCE.getFlexrayCluster_ActionPointOffset();
        public static final EAttribute FLEXRAY_CLUSTER__BIT = eINSTANCE.getFlexrayCluster_Bit();
        public static final EAttribute FLEXRAY_CLUSTER__BUS_GUARDIAN_ENABLE_PART = eINSTANCE.getFlexrayCluster_BusGuardianEnablePart();
        public static final EAttribute FLEXRAY_CLUSTER__CAS_RX_LOW_MAX = eINSTANCE.getFlexrayCluster_CasRxLowMax();
        public static final EAttribute FLEXRAY_CLUSTER__CAS_RX_LOW_MIN = eINSTANCE.getFlexrayCluster_CasRxLowMin();
        public static final EAttribute FLEXRAY_CLUSTER__COLD_START_ATTEMPTS = eINSTANCE.getFlexrayCluster_ColdStartAttempts();
        public static final EAttribute FLEXRAY_CLUSTER__CYCLE = eINSTANCE.getFlexrayCluster_Cycle();
        public static final EAttribute FLEXRAY_CLUSTER__CYCLE_COUNT_MAX = eINSTANCE.getFlexrayCluster_CycleCountMax();
        public static final EAttribute FLEXRAY_CLUSTER__DYNAMIC_SLOT_IDLE_PHASE = eINSTANCE.getFlexrayCluster_DynamicSlotIdlePhase();
        public static final EAttribute FLEXRAY_CLUSTER__IGNORE_AFTER_TX = eINSTANCE.getFlexrayCluster_IgnoreAfterTx();
        public static final EAttribute FLEXRAY_CLUSTER__LISTEN_NOISE = eINSTANCE.getFlexrayCluster_ListenNoise();
        public static final EAttribute FLEXRAY_CLUSTER__MACRO_INITIAL_OFFSET = eINSTANCE.getFlexrayCluster_MacroInitialOffset();
        public static final EAttribute FLEXRAY_CLUSTER__MACRO_PER_CYCLE = eINSTANCE.getFlexrayCluster_MacroPerCycle();
        public static final EAttribute FLEXRAY_CLUSTER__MACROTICK_DURATION = eINSTANCE.getFlexrayCluster_MacrotickDuration();
        public static final EAttribute FLEXRAY_CLUSTER__MAX_INITIALISATION_ERROR = eINSTANCE.getFlexrayCluster_MaxInitialisationError();
        public static final EAttribute FLEXRAY_CLUSTER__MAX_PROPAGATION_DELAY = eINSTANCE.getFlexrayCluster_MaxPropagationDelay();
        public static final EAttribute FLEXRAY_CLUSTER__MAX_WITHOUT_CLOCK_CORRECTION_FATAL = eINSTANCE.getFlexrayCluster_MaxWithoutClockCorrectionFatal();
        public static final EAttribute FLEXRAY_CLUSTER__MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE = eINSTANCE.getFlexrayCluster_MaxWithoutClockCorrectionPassive();
        public static final EAttribute FLEXRAY_CLUSTER__MIN_PROPAGATION_DELAY = eINSTANCE.getFlexrayCluster_MinPropagationDelay();
        public static final EAttribute FLEXRAY_CLUSTER__MINISLOT_ACTION_POINT_OFFSET = eINSTANCE.getFlexrayCluster_MinislotActionPointOffset();
        public static final EAttribute FLEXRAY_CLUSTER__MINISLOT_DURATION = eINSTANCE.getFlexrayCluster_MinislotDuration();
        public static final EAttribute FLEXRAY_CLUSTER__NETWORK_IDLE_TIME = eINSTANCE.getFlexrayCluster_NetworkIdleTime();
        public static final EAttribute FLEXRAY_CLUSTER__NETWORK_MANAGEMENT_VECTOR_LENGTH = eINSTANCE.getFlexrayCluster_NetworkManagementVectorLength();
        public static final EAttribute FLEXRAY_CLUSTER__NM_DATA_CYCLE = eINSTANCE.getFlexrayCluster_NmDataCycle();
        public static final EAttribute FLEXRAY_CLUSTER__NM_READY_SLEEP_COUNT = eINSTANCE.getFlexrayCluster_NmReadySleepCount();
        public static final EAttribute FLEXRAY_CLUSTER__NM_REMOTE_SLEEP_INDICATION_TIME = eINSTANCE.getFlexrayCluster_NmRemoteSleepIndicationTime();
        public static final EAttribute FLEXRAY_CLUSTER__NM_REPEAT_MESSAGE_TIME = eINSTANCE.getFlexrayCluster_NmRepeatMessageTime();
        public static final EAttribute FLEXRAY_CLUSTER__NM_REPETITION_CYCLE = eINSTANCE.getFlexrayCluster_NmRepetitionCycle();
        public static final EAttribute FLEXRAY_CLUSTER__NM_VOTING_CYCLE = eINSTANCE.getFlexrayCluster_NmVotingCycle();
        public static final EAttribute FLEXRAY_CLUSTER__NUMBER_OF_CYCLES = eINSTANCE.getFlexrayCluster_NumberOfCycles();
        public static final EAttribute FLEXRAY_CLUSTER__NUMBER_OF_MINISLOTS = eINSTANCE.getFlexrayCluster_NumberOfMinislots();
        public static final EAttribute FLEXRAY_CLUSTER__NUMBER_OF_STATIC_SLOTS = eINSTANCE.getFlexrayCluster_NumberOfStaticSlots();
        public static final EAttribute FLEXRAY_CLUSTER__OFFSET_CORRECTION_MAX = eINSTANCE.getFlexrayCluster_OffsetCorrectionMax();
        public static final EAttribute FLEXRAY_CLUSTER__OFFSET_CORRECTION_START = eINSTANCE.getFlexrayCluster_OffsetCorrectionStart();
        public static final EAttribute FLEXRAY_CLUSTER__PAYLOAD_LENGTH_STATIC = eINSTANCE.getFlexrayCluster_PayloadLengthStatic();
        public static final EAttribute FLEXRAY_CLUSTER__SAMPLE_CLOCK_PERIOD = eINSTANCE.getFlexrayCluster_SampleClockPeriod();
        public static final EAttribute FLEXRAY_CLUSTER__STATIC_SLOT_DURATION = eINSTANCE.getFlexrayCluster_StaticSlotDuration();
        public static final EAttribute FLEXRAY_CLUSTER__SYMBOL_WINDOW = eINSTANCE.getFlexrayCluster_SymbolWindow();
        public static final EAttribute FLEXRAY_CLUSTER__SYMBOL_WINDOW_ACTION_POINT_OFFSET = eINSTANCE.getFlexrayCluster_SymbolWindowActionPointOffset();
        public static final EAttribute FLEXRAY_CLUSTER__SYNC_FRAME_ID_COUNT_MAX = eINSTANCE.getFlexrayCluster_SyncFrameIDCountMax();
        public static final EAttribute FLEXRAY_CLUSTER__TRANSMISSION_START_SEQUENCE_DURATION = eINSTANCE.getFlexrayCluster_TransmissionStartSequenceDuration();
        public static final EAttribute FLEXRAY_CLUSTER__WAKEUP_RX_IDLE = eINSTANCE.getFlexrayCluster_WakeupRxIdle();
        public static final EAttribute FLEXRAY_CLUSTER__WAKEUP_RX_LOW = eINSTANCE.getFlexrayCluster_WakeupRxLow();
        public static final EAttribute FLEXRAY_CLUSTER__WAKEUP_RX_WINDOW = eINSTANCE.getFlexrayCluster_WakeupRxWindow();
        public static final EAttribute FLEXRAY_CLUSTER__WAKEUP_TX_ACTIVE = eINSTANCE.getFlexrayCluster_WakeupTxActive();
        public static final EAttribute FLEXRAY_CLUSTER__WAKEUP_TX_IDLE = eINSTANCE.getFlexrayCluster_WakeupTxIdle();
        public static final EClass FLEX_RAY_COMMUNICATION_CONNECTOR = eINSTANCE.getFlexRayCommunicationConnector();
        public static final EAttribute FLEX_RAY_COMMUNICATION_CONNECTOR__WAKE_UP_CHANNEL = eINSTANCE.getFlexRayCommunicationConnector_WakeUpChannel();
        public static final EClass FLEXRAY_COMMUNICATION_CONTROLLER = eINSTANCE.getFlexrayCommunicationController();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__ACCEPTED_STARTUP_RANGE = eINSTANCE.getFlexrayCommunicationController_AcceptedStartupRange();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__ALLOW_HALT_DUE_TO_CLOCK = eINSTANCE.getFlexrayCommunicationController_AllowHaltDueToClock();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__ALLOW_PASSIVE_TO_ACTIVE = eINSTANCE.getFlexrayCommunicationController_AllowPassiveToActive();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__CLUSTER_DRIFT_DAMPING = eINSTANCE.getFlexrayCommunicationController_ClusterDriftDamping();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__DECODING_CORRECTION = eINSTANCE.getFlexrayCommunicationController_DecodingCorrection();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__DELAY_COMPENSATION_A = eINSTANCE.getFlexrayCommunicationController_DelayCompensationA();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__DELAY_COMPENSATION_B = eINSTANCE.getFlexrayCommunicationController_DelayCompensationB();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__DYNAMIC_SEGMENT_ENABLE = eINSTANCE.getFlexrayCommunicationController_DynamicSegmentEnable();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__EXTERN_OFFSET_CORRECTION = eINSTANCE.getFlexrayCommunicationController_ExternOffsetCorrection();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__EXTERN_RATE_CORRECTION = eINSTANCE.getFlexrayCommunicationController_ExternRateCorrection();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__EXTERNAL_SYNC = eINSTANCE.getFlexrayCommunicationController_ExternalSync();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__FALL_BACK_INTERNAL = eINSTANCE.getFlexrayCommunicationController_FallBackInternal();
        public static final EReference FLEXRAY_COMMUNICATION_CONTROLLER__FLEXRAY_FIFOS = eINSTANCE.getFlexrayCommunicationController_FlexrayFifos();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__KEY_SLOT_ID = eINSTANCE.getFlexrayCommunicationController_KeySlotID();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__KEY_SLOT_ONLY_ENABLED = eINSTANCE.getFlexrayCommunicationController_KeySlotOnlyEnabled();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__KEY_SLOT_USED_FOR_START_UP = eINSTANCE.getFlexrayCommunicationController_KeySlotUsedForStartUp();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__KEY_SLOT_USED_FOR_SYNC = eINSTANCE.getFlexrayCommunicationController_KeySlotUsedForSync();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__LATEST_TX = eINSTANCE.getFlexrayCommunicationController_LatestTX();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__LISTEN_TIMEOUT = eINSTANCE.getFlexrayCommunicationController_ListenTimeout();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__MACRO_INITIAL_OFFSET_A = eINSTANCE.getFlexrayCommunicationController_MacroInitialOffsetA();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__MACRO_INITIAL_OFFSET_B = eINSTANCE.getFlexrayCommunicationController_MacroInitialOffsetB();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__MAXIMUM_DYNAMIC_PAYLOAD_LENGTH = eINSTANCE.getFlexrayCommunicationController_MaximumDynamicPayloadLength();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__MICRO_INITIAL_OFFSET_A = eINSTANCE.getFlexrayCommunicationController_MicroInitialOffsetA();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__MICRO_INITIAL_OFFSET_B = eINSTANCE.getFlexrayCommunicationController_MicroInitialOffsetB();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__MICRO_PER_CYCLE = eINSTANCE.getFlexrayCommunicationController_MicroPerCycle();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__MICRO_PER_MACRO_NOM = eINSTANCE.getFlexrayCommunicationController_MicroPerMacroNom();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__MICROTICK_DURATION = eINSTANCE.getFlexrayCommunicationController_MicrotickDuration();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__NM_CONTROL_BIT_VECTOR_ENABLED = eINSTANCE.getFlexrayCommunicationController_NmControlBitVectorEnabled();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__NM_NODE_DETECTION_ENABLED = eINSTANCE.getFlexrayCommunicationController_NmNodeDetectionEnabled();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__NM_SOURCE_NODE_IDENTIFIER_ENABLED = eINSTANCE.getFlexrayCommunicationController_NmSourceNodeIdentifierEnabled();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__NM_USER_DATA_ENABLED = eINSTANCE.getFlexrayCommunicationController_NmUserDataEnabled();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__NM_VECTOR_EARLY_UPDATE = eINSTANCE.getFlexrayCommunicationController_NmVectorEarlyUpdate();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__OFFSET_CORRECTION_OUT = eINSTANCE.getFlexrayCommunicationController_OffsetCorrectionOut();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__RATE_CORRECTION_OUT = eINSTANCE.getFlexrayCommunicationController_RateCorrectionOut();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__SAMPLES_PER_MICROTICK = eINSTANCE.getFlexrayCommunicationController_SamplesPerMicrotick();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__SECOND_KEY_SLOT_ID = eINSTANCE.getFlexrayCommunicationController_SecondKeySlotId();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__START_UP_NODE = eINSTANCE.getFlexrayCommunicationController_StartUpNode();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__SYNC_SLOT = eINSTANCE.getFlexrayCommunicationController_SyncSlot();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__TWO_KEY_SLOT_MODE = eINSTANCE.getFlexrayCommunicationController_TwoKeySlotMode();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER__WAKE_UP_PATTERN = eINSTANCE.getFlexrayCommunicationController_WakeUpPattern();
        public static final EClass FLEXRAY_FIFO_CONFIGURATION = eINSTANCE.getFlexrayFifoConfiguration();
        public static final EReference FLEXRAY_FIFO_CONFIGURATION__FLEXRAY_COMMUNICATION_CONTROLLER = eINSTANCE.getFlexrayFifoConfiguration_FlexrayCommunicationController();
        public static final EAttribute FLEXRAY_FIFO_CONFIGURATION__ADMIT_WITHOUT_MESSAGE_ID = eINSTANCE.getFlexrayFifoConfiguration_AdmitWithoutMessageId();
        public static final EAttribute FLEXRAY_FIFO_CONFIGURATION__BASE_CYCLE = eINSTANCE.getFlexrayFifoConfiguration_BaseCycle();
        public static final EReference FLEXRAY_FIFO_CONFIGURATION__CHANNELS = eINSTANCE.getFlexrayFifoConfiguration_Channels();
        public static final EAttribute FLEXRAY_FIFO_CONFIGURATION__CYCLE_REPETITION = eINSTANCE.getFlexrayFifoConfiguration_CycleRepetition();
        public static final EAttribute FLEXRAY_FIFO_CONFIGURATION__FIFO_DEPTH = eINSTANCE.getFlexrayFifoConfiguration_FifoDepth();
        public static final EReference FLEXRAY_FIFO_CONFIGURATION__FIFO_RANGES = eINSTANCE.getFlexrayFifoConfiguration_FifoRanges();
        public static final EAttribute FLEXRAY_FIFO_CONFIGURATION__MSG_ID_MASK = eINSTANCE.getFlexrayFifoConfiguration_MsgIdMask();
        public static final EAttribute FLEXRAY_FIFO_CONFIGURATION__MSG_ID_MATCH = eINSTANCE.getFlexrayFifoConfiguration_MsgIdMatch();
        public static final EClass FLEXRAY_PHYSICAL_CHANNEL = eINSTANCE.getFlexrayPhysicalChannel();
        public static final EAttribute FLEXRAY_PHYSICAL_CHANNEL__CHANNEL_NAME = eINSTANCE.getFlexrayPhysicalChannel_ChannelName();
        public static final EReference FLEXRAY_PHYSICAL_CHANNEL__PDU_POOLS = eINSTANCE.getFlexrayPhysicalChannel_PduPools();
        public static final EReference FLEXRAY_PHYSICAL_CHANNEL__TP_CONNECTION_CONTROLS = eINSTANCE.getFlexrayPhysicalChannel_TpConnectionControls();
        public static final EReference FLEXRAY_PHYSICAL_CHANNEL__TP_ECUS = eINSTANCE.getFlexrayPhysicalChannel_TpEcus();
        public static final EClass FLEXRAY_FIFO_RANGE = eINSTANCE.getFlexrayFifoRange();
        public static final EReference FLEXRAY_FIFO_RANGE__FLEXRAY_FIFO_CONFIGURATION = eINSTANCE.getFlexrayFifoRange_FlexrayFifoConfiguration();
        public static final EAttribute FLEXRAY_FIFO_RANGE__RANGE_MAX = eINSTANCE.getFlexrayFifoRange_RangeMax();
        public static final EAttribute FLEXRAY_FIFO_RANGE__RANGE_MIN = eINSTANCE.getFlexrayFifoRange_RangeMin();
        public static final EEnum FLEXRAY_CHANNEL_NAME = eINSTANCE.getFlexrayChannelName();
    }
}

