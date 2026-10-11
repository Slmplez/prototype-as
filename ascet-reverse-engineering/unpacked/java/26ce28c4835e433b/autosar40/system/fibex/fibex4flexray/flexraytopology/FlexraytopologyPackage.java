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
package autosar40.system.fibex.fibex4flexray.flexraytopology;

import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyFactory;
import autosar40.system.fibex.fibex4flexray.flexraytopology.impl.FlexraytopologyPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface FlexraytopologyPackage
extends EPackage {
    public static final String eNAME = "flexraytopology";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/ff/ft";
    public static final String eNS_PREFIX = "";
    public static final FlexraytopologyPackage eINSTANCE = FlexraytopologyPackageImpl.init();
    public static final int FLEXRAY_CLUSTER = 0;
    public static final int FLEXRAY_CLUSTER__GCHECKSUM = 0;
    public static final int FLEXRAY_CLUSTER__GTIMESTAMP = 1;
    public static final int FLEXRAY_CLUSTER__CHECKSUM = 2;
    public static final int FLEXRAY_CLUSTER__TIMESTAMP = 3;
    public static final int FLEXRAY_CLUSTER__GSHORT_NAME = 4;
    public static final int FLEXRAY_CLUSTER__SHORT_NAME = 5;
    public static final int FLEXRAY_CLUSTER__LONG_NAME = 6;
    public static final int FLEXRAY_CLUSTER__GUUID = 7;
    public static final int FLEXRAY_CLUSTER__GCATEGORY = 8;
    public static final int FLEXRAY_CLUSTER__GDESC = 9;
    public static final int FLEXRAY_CLUSTER__DESC = 10;
    public static final int FLEXRAY_CLUSTER__CATEGORY = 11;
    public static final int FLEXRAY_CLUSTER__ADMIN_DATA = 12;
    public static final int FLEXRAY_CLUSTER__INTRODUCTION = 13;
    public static final int FLEXRAY_CLUSTER__ANNOTATIONS = 14;
    public static final int FLEXRAY_CLUSTER__UUID = 15;
    public static final int FLEXRAY_CLUSTER__ALL_EXTENSIONS = 16;
    public static final int FLEXRAY_CLUSTER__CONTAINED_EXTENSIONS = 17;
    public static final int FLEXRAY_CLUSTER__GAR_PACKAGE = 18;
    public static final int FLEXRAY_CLUSTER__AR_PACKAGE = 19;
    public static final int FLEXRAY_CLUSTER__VARIATION_POINT = 20;
    public static final int FLEXRAY_CLUSTER__FLEXRAY_CLUSTER_VARIANTS = 21;
    public static final int FLEXRAY_CLUSTER_FEATURE_COUNT = 22;
    public static final int FLEXRAY_CLUSTER_CONTENT = 2;
    public static final int FLEXRAY_CLUSTER_CONTENT__GCHECKSUM = 0;
    public static final int FLEXRAY_CLUSTER_CONTENT__GTIMESTAMP = 1;
    public static final int FLEXRAY_CLUSTER_CONTENT__CHECKSUM = 2;
    public static final int FLEXRAY_CLUSTER_CONTENT__TIMESTAMP = 3;
    public static final int FLEXRAY_CLUSTER_CONTENT__PHYSICAL_CHANNELS = 4;
    public static final int FLEXRAY_CLUSTER_CONTENT__PROTOCOL_NAME = 5;
    public static final int FLEXRAY_CLUSTER_CONTENT__PROTOCOL_VERSION = 6;
    public static final int FLEXRAY_CLUSTER_CONTENT__SPEED = 7;
    public static final int FLEXRAY_CLUSTER_CONTENT__ACTION_POINT_OFFSET = 8;
    public static final int FLEXRAY_CLUSTER_CONTENT__BIT = 9;
    public static final int FLEXRAY_CLUSTER_CONTENT__CAS_RX_LOW_MAX = 10;
    public static final int FLEXRAY_CLUSTER_CONTENT__COLD_START_ATTEMPTS = 11;
    public static final int FLEXRAY_CLUSTER_CONTENT__CYCLE = 12;
    public static final int FLEXRAY_CLUSTER_CONTENT__CYCLE_COUNT_MAX = 13;
    public static final int FLEXRAY_CLUSTER_CONTENT__DETECT_NIT_ERROR = 14;
    public static final int FLEXRAY_CLUSTER_CONTENT__DYNAMIC_SLOT_IDLE_PHASE = 15;
    public static final int FLEXRAY_CLUSTER_CONTENT__IGNORE_AFTER_TX = 16;
    public static final int FLEXRAY_CLUSTER_CONTENT__LISTEN_NOISE = 17;
    public static final int FLEXRAY_CLUSTER_CONTENT__MACRO_PER_CYCLE = 18;
    public static final int FLEXRAY_CLUSTER_CONTENT__MACROTICK_DURATION = 19;
    public static final int FLEXRAY_CLUSTER_CONTENT__MAX_WITHOUT_CLOCK_CORRECTION_FATAL = 20;
    public static final int FLEXRAY_CLUSTER_CONTENT__MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE = 21;
    public static final int FLEXRAY_CLUSTER_CONTENT__MINISLOT_ACTION_POINT_OFFSET = 22;
    public static final int FLEXRAY_CLUSTER_CONTENT__MINISLOT_DURATION = 23;
    public static final int FLEXRAY_CLUSTER_CONTENT__NETWORK_IDLE_TIME = 24;
    public static final int FLEXRAY_CLUSTER_CONTENT__NETWORK_MANAGEMENT_VECTOR_LENGTH = 25;
    public static final int FLEXRAY_CLUSTER_CONTENT__NUMBER_OF_MINISLOTS = 26;
    public static final int FLEXRAY_CLUSTER_CONTENT__NUMBER_OF_STATIC_SLOTS = 27;
    public static final int FLEXRAY_CLUSTER_CONTENT__OFFSET_CORRECTION_START = 28;
    public static final int FLEXRAY_CLUSTER_CONTENT__PAYLOAD_LENGTH_STATIC = 29;
    public static final int FLEXRAY_CLUSTER_CONTENT__SAFETY_MARGIN = 30;
    public static final int FLEXRAY_CLUSTER_CONTENT__SAMPLE_CLOCK_PERIOD = 31;
    public static final int FLEXRAY_CLUSTER_CONTENT__STATIC_SLOT_DURATION = 32;
    public static final int FLEXRAY_CLUSTER_CONTENT__SYMBOL_WINDOW = 33;
    public static final int FLEXRAY_CLUSTER_CONTENT__SYMBOL_WINDOW_ACTION_POINT_OFFSET = 34;
    public static final int FLEXRAY_CLUSTER_CONTENT__SYNC_FRAME_ID_COUNT_MAX = 35;
    public static final int FLEXRAY_CLUSTER_CONTENT__TRANSMISSION_START_SEQUENCE_DURATION = 36;
    public static final int FLEXRAY_CLUSTER_CONTENT__WAKEUP_RX_IDLE = 37;
    public static final int FLEXRAY_CLUSTER_CONTENT__WAKEUP_RX_LOW = 38;
    public static final int FLEXRAY_CLUSTER_CONTENT__WAKEUP_RX_WINDOW = 39;
    public static final int FLEXRAY_CLUSTER_CONTENT__WAKEUP_TX_ACTIVE = 40;
    public static final int FLEXRAY_CLUSTER_CONTENT__WAKEUP_TX_IDLE = 41;
    public static final int FLEXRAY_CLUSTER_CONTENT_FEATURE_COUNT = 42;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL = 1;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__GCHECKSUM = 0;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__GTIMESTAMP = 1;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__CHECKSUM = 2;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__TIMESTAMP = 3;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__PHYSICAL_CHANNELS = 4;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__PROTOCOL_NAME = 5;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__PROTOCOL_VERSION = 6;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__SPEED = 7;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__ACTION_POINT_OFFSET = 8;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__BIT = 9;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__CAS_RX_LOW_MAX = 10;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__COLD_START_ATTEMPTS = 11;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__CYCLE = 12;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__CYCLE_COUNT_MAX = 13;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__DETECT_NIT_ERROR = 14;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__DYNAMIC_SLOT_IDLE_PHASE = 15;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__IGNORE_AFTER_TX = 16;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__LISTEN_NOISE = 17;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__MACRO_PER_CYCLE = 18;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__MACROTICK_DURATION = 19;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__MAX_WITHOUT_CLOCK_CORRECTION_FATAL = 20;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE = 21;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__MINISLOT_ACTION_POINT_OFFSET = 22;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__MINISLOT_DURATION = 23;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__NETWORK_IDLE_TIME = 24;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__NETWORK_MANAGEMENT_VECTOR_LENGTH = 25;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__NUMBER_OF_MINISLOTS = 26;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__NUMBER_OF_STATIC_SLOTS = 27;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__OFFSET_CORRECTION_START = 28;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__PAYLOAD_LENGTH_STATIC = 29;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__SAFETY_MARGIN = 30;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__SAMPLE_CLOCK_PERIOD = 31;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__STATIC_SLOT_DURATION = 32;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__SYMBOL_WINDOW = 33;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__SYMBOL_WINDOW_ACTION_POINT_OFFSET = 34;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__SYNC_FRAME_ID_COUNT_MAX = 35;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__TRANSMISSION_START_SEQUENCE_DURATION = 36;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__WAKEUP_RX_IDLE = 37;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__WAKEUP_RX_LOW = 38;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__WAKEUP_RX_WINDOW = 39;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__WAKEUP_TX_ACTIVE = 40;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__WAKEUP_TX_IDLE = 41;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__FLEXRAY_CLUSTER = 42;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL__VARIATION_POINT = 43;
    public static final int FLEXRAY_CLUSTER_CONDITIONAL_FEATURE_COUNT = 44;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR = 3;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__GCHECKSUM = 0;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__GTIMESTAMP = 1;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__CHECKSUM = 2;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__TIMESTAMP = 3;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__GSHORT_NAME = 4;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__SHORT_NAME = 5;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__LONG_NAME = 6;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__GUUID = 7;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__GCATEGORY = 8;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__GDESC = 9;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__DESC = 10;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__CATEGORY = 11;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__ADMIN_DATA = 12;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__INTRODUCTION = 13;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__ANNOTATIONS = 14;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__UUID = 15;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__ALL_EXTENSIONS = 16;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__CONTAINED_EXTENSIONS = 17;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__ECU_INSTANCE = 18;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__COMM_CONTROLLER = 19;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__ECU_COMM_PORT_INSTANCES = 20;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__PNC_GATEWAY_TYPE = 21;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR__WAKE_UP_CHANNEL = 22;
    public static final int FLEXRAY_COMMUNICATION_CONNECTOR_FEATURE_COUNT = 23;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER = 4;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__GCHECKSUM = 0;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__GTIMESTAMP = 1;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__CHECKSUM = 2;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__TIMESTAMP = 3;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__GSHORT_NAME = 4;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__SHORT_NAME = 5;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__LONG_NAME = 6;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__GUUID = 7;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__GCATEGORY = 8;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__GDESC = 9;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__DESC = 10;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__CATEGORY = 11;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__ADMIN_DATA = 12;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__INTRODUCTION = 13;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__ANNOTATIONS = 14;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__UUID = 15;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__ALL_EXTENSIONS = 16;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__CONTAINED_EXTENSIONS = 17;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__ECU_INSTANCE = 18;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER__FLEXRAY_COMMUNICATION_CONTROLLER_VARIANTS = 19;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_FEATURE_COUNT = 20;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT = 6;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__GCHECKSUM = 0;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__GTIMESTAMP = 1;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__CHECKSUM = 2;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__TIMESTAMP = 3;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__ACCEPTED_STARTUP_RANGE = 4;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__ALLOW_HALT_DUE_TO_CLOCK = 5;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__ALLOW_PASSIVE_TO_ACTIVE = 6;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__CLUSTER_DRIFT_DAMPING = 7;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__DECODING_CORRECTION = 8;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__DELAY_COMPENSATION_A = 9;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__DELAY_COMPENSATION_B = 10;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__EXTERN_OFFSET_CORRECTION = 11;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__EXTERN_RATE_CORRECTION = 12;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__EXTERNAL_SYNC = 13;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__FALL_BACK_INTERNAL = 14;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__FLEXRAY_FIFOS = 15;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__KEY_SLOT_ID = 16;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__KEY_SLOT_ONLY_ENABLED = 17;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__KEY_SLOT_USED_FOR_START_UP = 18;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__KEY_SLOT_USED_FOR_SYNC = 19;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__LATEST_TX = 20;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__LISTEN_TIMEOUT = 21;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__MACRO_INITIAL_OFFSET_A = 22;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__MACRO_INITIAL_OFFSET_B = 23;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__MAXIMUM_DYNAMIC_PAYLOAD_LENGTH = 24;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__MICRO_INITIAL_OFFSET_A = 25;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__MICRO_INITIAL_OFFSET_B = 26;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__MICRO_PER_CYCLE = 27;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__MICROTICK_DURATION = 28;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__NM_VECTOR_EARLY_UPDATE = 29;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__OFFSET_CORRECTION_OUT = 30;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__RATE_CORRECTION_OUT = 31;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__SAMPLES_PER_MICROTICK = 32;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__SECOND_KEY_SLOT_ID = 33;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__TWO_KEY_SLOT_MODE = 34;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__WAKE_UP_PATTERN = 35;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT_FEATURE_COUNT = 36;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL = 5;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__GCHECKSUM = 0;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__GTIMESTAMP = 1;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__CHECKSUM = 2;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__TIMESTAMP = 3;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__ACCEPTED_STARTUP_RANGE = 4;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__ALLOW_HALT_DUE_TO_CLOCK = 5;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__ALLOW_PASSIVE_TO_ACTIVE = 6;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__CLUSTER_DRIFT_DAMPING = 7;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__DECODING_CORRECTION = 8;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__DELAY_COMPENSATION_A = 9;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__DELAY_COMPENSATION_B = 10;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__EXTERN_OFFSET_CORRECTION = 11;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__EXTERN_RATE_CORRECTION = 12;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__EXTERNAL_SYNC = 13;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__FALL_BACK_INTERNAL = 14;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__FLEXRAY_FIFOS = 15;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__KEY_SLOT_ID = 16;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__KEY_SLOT_ONLY_ENABLED = 17;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__KEY_SLOT_USED_FOR_START_UP = 18;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__KEY_SLOT_USED_FOR_SYNC = 19;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__LATEST_TX = 20;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__LISTEN_TIMEOUT = 21;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__MACRO_INITIAL_OFFSET_A = 22;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__MACRO_INITIAL_OFFSET_B = 23;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__MAXIMUM_DYNAMIC_PAYLOAD_LENGTH = 24;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__MICRO_INITIAL_OFFSET_A = 25;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__MICRO_INITIAL_OFFSET_B = 26;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__MICRO_PER_CYCLE = 27;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__MICROTICK_DURATION = 28;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__NM_VECTOR_EARLY_UPDATE = 29;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__OFFSET_CORRECTION_OUT = 30;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__RATE_CORRECTION_OUT = 31;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__SAMPLES_PER_MICROTICK = 32;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__SECOND_KEY_SLOT_ID = 33;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__TWO_KEY_SLOT_MODE = 34;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__WAKE_UP_PATTERN = 35;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__FLEXRAY_COMMUNICATION_CONTROLLER = 36;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__VARIATION_POINT = 37;
    public static final int FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL_FEATURE_COUNT = 38;
    public static final int FLEXRAY_FIFO_CONFIGURATION = 7;
    public static final int FLEXRAY_FIFO_CONFIGURATION__GCHECKSUM = 0;
    public static final int FLEXRAY_FIFO_CONFIGURATION__GTIMESTAMP = 1;
    public static final int FLEXRAY_FIFO_CONFIGURATION__CHECKSUM = 2;
    public static final int FLEXRAY_FIFO_CONFIGURATION__TIMESTAMP = 3;
    public static final int FLEXRAY_FIFO_CONFIGURATION__FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT = 4;
    public static final int FLEXRAY_FIFO_CONFIGURATION__ADMIT_WITHOUT_MESSAGE_ID = 5;
    public static final int FLEXRAY_FIFO_CONFIGURATION__BASE_CYCLE = 6;
    public static final int FLEXRAY_FIFO_CONFIGURATION__CHANNEL = 7;
    public static final int FLEXRAY_FIFO_CONFIGURATION__CYCLE_REPETITION = 8;
    public static final int FLEXRAY_FIFO_CONFIGURATION__FIFO_DEPTH = 9;
    public static final int FLEXRAY_FIFO_CONFIGURATION__FIFO_RANGES = 10;
    public static final int FLEXRAY_FIFO_CONFIGURATION__MSG_ID_MASK = 11;
    public static final int FLEXRAY_FIFO_CONFIGURATION__MSG_ID_MATCH = 12;
    public static final int FLEXRAY_FIFO_CONFIGURATION_FEATURE_COUNT = 13;
    public static final int FLEXRAY_PHYSICAL_CHANNEL = 8;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__GCHECKSUM = 0;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__GTIMESTAMP = 1;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__CHECKSUM = 2;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__TIMESTAMP = 3;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__GSHORT_NAME = 4;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__SHORT_NAME = 5;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__LONG_NAME = 6;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__GUUID = 7;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__GCATEGORY = 8;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__GDESC = 9;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__DESC = 10;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__CATEGORY = 11;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__ADMIN_DATA = 12;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__INTRODUCTION = 13;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__ANNOTATIONS = 14;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__UUID = 15;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__ALL_EXTENSIONS = 16;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__CONTAINED_EXTENSIONS = 17;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__COMMUNICATION_CLUSTER_CONTENT = 18;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__COMM_CONNECTORS = 19;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__FRAME_TRIGGERINGS = 20;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__ISIGNAL_TRIGGERINGS = 21;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__PDU_TRIGGERINGS = 22;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__VARIATION_POINT = 23;
    public static final int FLEXRAY_PHYSICAL_CHANNEL__CHANNEL_NAME = 24;
    public static final int FLEXRAY_PHYSICAL_CHANNEL_FEATURE_COUNT = 25;
    public static final int FLEXRAY_FIFO_RANGE = 9;
    public static final int FLEXRAY_FIFO_RANGE__GCHECKSUM = 0;
    public static final int FLEXRAY_FIFO_RANGE__GTIMESTAMP = 1;
    public static final int FLEXRAY_FIFO_RANGE__CHECKSUM = 2;
    public static final int FLEXRAY_FIFO_RANGE__TIMESTAMP = 3;
    public static final int FLEXRAY_FIFO_RANGE__FLEXRAY_FIFO_CONFIGURATION = 4;
    public static final int FLEXRAY_FIFO_RANGE__RANGE_MAX = 5;
    public static final int FLEXRAY_FIFO_RANGE__RANGE_MIN = 6;
    public static final int FLEXRAY_FIFO_RANGE_FEATURE_COUNT = 7;
    public static final int FLEXRAY_CHANNEL_NAME = 10;

    public EClass getFlexrayCluster();

    public EReference getFlexrayCluster_FlexrayClusterVariants();

    public EClass getFlexrayClusterConditional();

    public EReference getFlexrayClusterConditional_FlexrayCluster();

    public EReference getFlexrayClusterConditional_VariationPoint();

    public EClass getFlexrayClusterContent();

    public EAttribute getFlexrayClusterContent_ActionPointOffset();

    public EAttribute getFlexrayClusterContent_Bit();

    public EAttribute getFlexrayClusterContent_CasRxLowMax();

    public EAttribute getFlexrayClusterContent_ColdStartAttempts();

    public EAttribute getFlexrayClusterContent_Cycle();

    public EAttribute getFlexrayClusterContent_CycleCountMax();

    public EAttribute getFlexrayClusterContent_DetectNitError();

    public EAttribute getFlexrayClusterContent_DynamicSlotIdlePhase();

    public EAttribute getFlexrayClusterContent_IgnoreAfterTx();

    public EAttribute getFlexrayClusterContent_ListenNoise();

    public EAttribute getFlexrayClusterContent_MacroPerCycle();

    public EAttribute getFlexrayClusterContent_MacrotickDuration();

    public EAttribute getFlexrayClusterContent_MaxWithoutClockCorrectionFatal();

    public EAttribute getFlexrayClusterContent_MaxWithoutClockCorrectionPassive();

    public EAttribute getFlexrayClusterContent_MinislotActionPointOffset();

    public EAttribute getFlexrayClusterContent_MinislotDuration();

    public EAttribute getFlexrayClusterContent_NetworkIdleTime();

    public EAttribute getFlexrayClusterContent_NetworkManagementVectorLength();

    public EAttribute getFlexrayClusterContent_NumberOfMinislots();

    public EAttribute getFlexrayClusterContent_NumberOfStaticSlots();

    public EAttribute getFlexrayClusterContent_OffsetCorrectionStart();

    public EAttribute getFlexrayClusterContent_PayloadLengthStatic();

    public EAttribute getFlexrayClusterContent_SafetyMargin();

    public EAttribute getFlexrayClusterContent_SampleClockPeriod();

    public EAttribute getFlexrayClusterContent_StaticSlotDuration();

    public EAttribute getFlexrayClusterContent_SymbolWindow();

    public EAttribute getFlexrayClusterContent_SymbolWindowActionPointOffset();

    public EAttribute getFlexrayClusterContent_SyncFrameIdCountMax();

    public EAttribute getFlexrayClusterContent_TransmissionStartSequenceDuration();

    public EAttribute getFlexrayClusterContent_WakeupRxIdle();

    public EAttribute getFlexrayClusterContent_WakeupRxLow();

    public EAttribute getFlexrayClusterContent_WakeupRxWindow();

    public EAttribute getFlexrayClusterContent_WakeupTxActive();

    public EAttribute getFlexrayClusterContent_WakeupTxIdle();

    public EClass getFlexrayCommunicationConnector();

    public EAttribute getFlexrayCommunicationConnector_WakeUpChannel();

    public EClass getFlexrayCommunicationController();

    public EReference getFlexrayCommunicationController_FlexrayCommunicationControllerVariants();

    public EClass getFlexrayCommunicationControllerConditional();

    public EReference getFlexrayCommunicationControllerConditional_FlexrayCommunicationController();

    public EReference getFlexrayCommunicationControllerConditional_VariationPoint();

    public EClass getFlexrayCommunicationControllerContent();

    public EAttribute getFlexrayCommunicationControllerContent_AcceptedStartupRange();

    public EAttribute getFlexrayCommunicationControllerContent_AllowHaltDueToClock();

    public EAttribute getFlexrayCommunicationControllerContent_AllowPassiveToActive();

    public EAttribute getFlexrayCommunicationControllerContent_ClusterDriftDamping();

    public EAttribute getFlexrayCommunicationControllerContent_DecodingCorrection();

    public EAttribute getFlexrayCommunicationControllerContent_DelayCompensationA();

    public EAttribute getFlexrayCommunicationControllerContent_DelayCompensationB();

    public EAttribute getFlexrayCommunicationControllerContent_ExternOffsetCorrection();

    public EAttribute getFlexrayCommunicationControllerContent_ExternRateCorrection();

    public EAttribute getFlexrayCommunicationControllerContent_ExternalSync();

    public EAttribute getFlexrayCommunicationControllerContent_FallBackInternal();

    public EReference getFlexrayCommunicationControllerContent_FlexrayFifos();

    public EAttribute getFlexrayCommunicationControllerContent_KeySlotID();

    public EAttribute getFlexrayCommunicationControllerContent_KeySlotOnlyEnabled();

    public EAttribute getFlexrayCommunicationControllerContent_KeySlotUsedForStartUp();

    public EAttribute getFlexrayCommunicationControllerContent_KeySlotUsedForSync();

    public EAttribute getFlexrayCommunicationControllerContent_LatestTX();

    public EAttribute getFlexrayCommunicationControllerContent_ListenTimeout();

    public EAttribute getFlexrayCommunicationControllerContent_MacroInitialOffsetA();

    public EAttribute getFlexrayCommunicationControllerContent_MacroInitialOffsetB();

    public EAttribute getFlexrayCommunicationControllerContent_MaximumDynamicPayloadLength();

    public EAttribute getFlexrayCommunicationControllerContent_MicroInitialOffsetA();

    public EAttribute getFlexrayCommunicationControllerContent_MicroInitialOffsetB();

    public EAttribute getFlexrayCommunicationControllerContent_MicroPerCycle();

    public EAttribute getFlexrayCommunicationControllerContent_MicrotickDuration();

    public EAttribute getFlexrayCommunicationControllerContent_NmVectorEarlyUpdate();

    public EAttribute getFlexrayCommunicationControllerContent_OffsetCorrectionOut();

    public EAttribute getFlexrayCommunicationControllerContent_RateCorrectionOut();

    public EAttribute getFlexrayCommunicationControllerContent_SamplesPerMicrotick();

    public EAttribute getFlexrayCommunicationControllerContent_SecondKeySlotId();

    public EAttribute getFlexrayCommunicationControllerContent_TwoKeySlotMode();

    public EAttribute getFlexrayCommunicationControllerContent_WakeUpPattern();

    public EClass getFlexrayFifoConfiguration();

    public EReference getFlexrayFifoConfiguration_FlexrayCommunicationControllerContent();

    public EAttribute getFlexrayFifoConfiguration_AdmitWithoutMessageId();

    public EAttribute getFlexrayFifoConfiguration_BaseCycle();

    public EReference getFlexrayFifoConfiguration_Channel();

    public EAttribute getFlexrayFifoConfiguration_CycleRepetition();

    public EAttribute getFlexrayFifoConfiguration_FifoDepth();

    public EReference getFlexrayFifoConfiguration_FifoRanges();

    public EAttribute getFlexrayFifoConfiguration_MsgIdMask();

    public EAttribute getFlexrayFifoConfiguration_MsgIdMatch();

    public EClass getFlexrayPhysicalChannel();

    public EAttribute getFlexrayPhysicalChannel_ChannelName();

    public EClass getFlexrayFifoRange();

    public EReference getFlexrayFifoRange_FlexrayFifoConfiguration();

    public EAttribute getFlexrayFifoRange_RangeMax();

    public EAttribute getFlexrayFifoRange_RangeMin();

    public EEnum getFlexrayChannelName();

    public FlexraytopologyFactory getFlexraytopologyFactory();

    public static interface Literals {
        public static final EClass FLEXRAY_CLUSTER = eINSTANCE.getFlexrayCluster();
        public static final EReference FLEXRAY_CLUSTER__FLEXRAY_CLUSTER_VARIANTS = eINSTANCE.getFlexrayCluster_FlexrayClusterVariants();
        public static final EClass FLEXRAY_CLUSTER_CONDITIONAL = eINSTANCE.getFlexrayClusterConditional();
        public static final EReference FLEXRAY_CLUSTER_CONDITIONAL__FLEXRAY_CLUSTER = eINSTANCE.getFlexrayClusterConditional_FlexrayCluster();
        public static final EReference FLEXRAY_CLUSTER_CONDITIONAL__VARIATION_POINT = eINSTANCE.getFlexrayClusterConditional_VariationPoint();
        public static final EClass FLEXRAY_CLUSTER_CONTENT = eINSTANCE.getFlexrayClusterContent();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__ACTION_POINT_OFFSET = eINSTANCE.getFlexrayClusterContent_ActionPointOffset();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__BIT = eINSTANCE.getFlexrayClusterContent_Bit();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__CAS_RX_LOW_MAX = eINSTANCE.getFlexrayClusterContent_CasRxLowMax();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__COLD_START_ATTEMPTS = eINSTANCE.getFlexrayClusterContent_ColdStartAttempts();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__CYCLE = eINSTANCE.getFlexrayClusterContent_Cycle();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__CYCLE_COUNT_MAX = eINSTANCE.getFlexrayClusterContent_CycleCountMax();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__DETECT_NIT_ERROR = eINSTANCE.getFlexrayClusterContent_DetectNitError();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__DYNAMIC_SLOT_IDLE_PHASE = eINSTANCE.getFlexrayClusterContent_DynamicSlotIdlePhase();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__IGNORE_AFTER_TX = eINSTANCE.getFlexrayClusterContent_IgnoreAfterTx();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__LISTEN_NOISE = eINSTANCE.getFlexrayClusterContent_ListenNoise();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__MACRO_PER_CYCLE = eINSTANCE.getFlexrayClusterContent_MacroPerCycle();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__MACROTICK_DURATION = eINSTANCE.getFlexrayClusterContent_MacrotickDuration();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__MAX_WITHOUT_CLOCK_CORRECTION_FATAL = eINSTANCE.getFlexrayClusterContent_MaxWithoutClockCorrectionFatal();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE = eINSTANCE.getFlexrayClusterContent_MaxWithoutClockCorrectionPassive();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__MINISLOT_ACTION_POINT_OFFSET = eINSTANCE.getFlexrayClusterContent_MinislotActionPointOffset();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__MINISLOT_DURATION = eINSTANCE.getFlexrayClusterContent_MinislotDuration();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__NETWORK_IDLE_TIME = eINSTANCE.getFlexrayClusterContent_NetworkIdleTime();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__NETWORK_MANAGEMENT_VECTOR_LENGTH = eINSTANCE.getFlexrayClusterContent_NetworkManagementVectorLength();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__NUMBER_OF_MINISLOTS = eINSTANCE.getFlexrayClusterContent_NumberOfMinislots();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__NUMBER_OF_STATIC_SLOTS = eINSTANCE.getFlexrayClusterContent_NumberOfStaticSlots();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__OFFSET_CORRECTION_START = eINSTANCE.getFlexrayClusterContent_OffsetCorrectionStart();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__PAYLOAD_LENGTH_STATIC = eINSTANCE.getFlexrayClusterContent_PayloadLengthStatic();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__SAFETY_MARGIN = eINSTANCE.getFlexrayClusterContent_SafetyMargin();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__SAMPLE_CLOCK_PERIOD = eINSTANCE.getFlexrayClusterContent_SampleClockPeriod();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__STATIC_SLOT_DURATION = eINSTANCE.getFlexrayClusterContent_StaticSlotDuration();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__SYMBOL_WINDOW = eINSTANCE.getFlexrayClusterContent_SymbolWindow();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__SYMBOL_WINDOW_ACTION_POINT_OFFSET = eINSTANCE.getFlexrayClusterContent_SymbolWindowActionPointOffset();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__SYNC_FRAME_ID_COUNT_MAX = eINSTANCE.getFlexrayClusterContent_SyncFrameIdCountMax();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__TRANSMISSION_START_SEQUENCE_DURATION = eINSTANCE.getFlexrayClusterContent_TransmissionStartSequenceDuration();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__WAKEUP_RX_IDLE = eINSTANCE.getFlexrayClusterContent_WakeupRxIdle();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__WAKEUP_RX_LOW = eINSTANCE.getFlexrayClusterContent_WakeupRxLow();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__WAKEUP_RX_WINDOW = eINSTANCE.getFlexrayClusterContent_WakeupRxWindow();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__WAKEUP_TX_ACTIVE = eINSTANCE.getFlexrayClusterContent_WakeupTxActive();
        public static final EAttribute FLEXRAY_CLUSTER_CONTENT__WAKEUP_TX_IDLE = eINSTANCE.getFlexrayClusterContent_WakeupTxIdle();
        public static final EClass FLEXRAY_COMMUNICATION_CONNECTOR = eINSTANCE.getFlexrayCommunicationConnector();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONNECTOR__WAKE_UP_CHANNEL = eINSTANCE.getFlexrayCommunicationConnector_WakeUpChannel();
        public static final EClass FLEXRAY_COMMUNICATION_CONTROLLER = eINSTANCE.getFlexrayCommunicationController();
        public static final EReference FLEXRAY_COMMUNICATION_CONTROLLER__FLEXRAY_COMMUNICATION_CONTROLLER_VARIANTS = eINSTANCE.getFlexrayCommunicationController_FlexrayCommunicationControllerVariants();
        public static final EClass FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL = eINSTANCE.getFlexrayCommunicationControllerConditional();
        public static final EReference FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__FLEXRAY_COMMUNICATION_CONTROLLER = eINSTANCE.getFlexrayCommunicationControllerConditional_FlexrayCommunicationController();
        public static final EReference FLEXRAY_COMMUNICATION_CONTROLLER_CONDITIONAL__VARIATION_POINT = eINSTANCE.getFlexrayCommunicationControllerConditional_VariationPoint();
        public static final EClass FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT = eINSTANCE.getFlexrayCommunicationControllerContent();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__ACCEPTED_STARTUP_RANGE = eINSTANCE.getFlexrayCommunicationControllerContent_AcceptedStartupRange();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__ALLOW_HALT_DUE_TO_CLOCK = eINSTANCE.getFlexrayCommunicationControllerContent_AllowHaltDueToClock();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__ALLOW_PASSIVE_TO_ACTIVE = eINSTANCE.getFlexrayCommunicationControllerContent_AllowPassiveToActive();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__CLUSTER_DRIFT_DAMPING = eINSTANCE.getFlexrayCommunicationControllerContent_ClusterDriftDamping();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__DECODING_CORRECTION = eINSTANCE.getFlexrayCommunicationControllerContent_DecodingCorrection();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__DELAY_COMPENSATION_A = eINSTANCE.getFlexrayCommunicationControllerContent_DelayCompensationA();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__DELAY_COMPENSATION_B = eINSTANCE.getFlexrayCommunicationControllerContent_DelayCompensationB();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__EXTERN_OFFSET_CORRECTION = eINSTANCE.getFlexrayCommunicationControllerContent_ExternOffsetCorrection();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__EXTERN_RATE_CORRECTION = eINSTANCE.getFlexrayCommunicationControllerContent_ExternRateCorrection();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__EXTERNAL_SYNC = eINSTANCE.getFlexrayCommunicationControllerContent_ExternalSync();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__FALL_BACK_INTERNAL = eINSTANCE.getFlexrayCommunicationControllerContent_FallBackInternal();
        public static final EReference FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__FLEXRAY_FIFOS = eINSTANCE.getFlexrayCommunicationControllerContent_FlexrayFifos();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__KEY_SLOT_ID = eINSTANCE.getFlexrayCommunicationControllerContent_KeySlotID();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__KEY_SLOT_ONLY_ENABLED = eINSTANCE.getFlexrayCommunicationControllerContent_KeySlotOnlyEnabled();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__KEY_SLOT_USED_FOR_START_UP = eINSTANCE.getFlexrayCommunicationControllerContent_KeySlotUsedForStartUp();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__KEY_SLOT_USED_FOR_SYNC = eINSTANCE.getFlexrayCommunicationControllerContent_KeySlotUsedForSync();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__LATEST_TX = eINSTANCE.getFlexrayCommunicationControllerContent_LatestTX();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__LISTEN_TIMEOUT = eINSTANCE.getFlexrayCommunicationControllerContent_ListenTimeout();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__MACRO_INITIAL_OFFSET_A = eINSTANCE.getFlexrayCommunicationControllerContent_MacroInitialOffsetA();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__MACRO_INITIAL_OFFSET_B = eINSTANCE.getFlexrayCommunicationControllerContent_MacroInitialOffsetB();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__MAXIMUM_DYNAMIC_PAYLOAD_LENGTH = eINSTANCE.getFlexrayCommunicationControllerContent_MaximumDynamicPayloadLength();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__MICRO_INITIAL_OFFSET_A = eINSTANCE.getFlexrayCommunicationControllerContent_MicroInitialOffsetA();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__MICRO_INITIAL_OFFSET_B = eINSTANCE.getFlexrayCommunicationControllerContent_MicroInitialOffsetB();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__MICRO_PER_CYCLE = eINSTANCE.getFlexrayCommunicationControllerContent_MicroPerCycle();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__MICROTICK_DURATION = eINSTANCE.getFlexrayCommunicationControllerContent_MicrotickDuration();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__NM_VECTOR_EARLY_UPDATE = eINSTANCE.getFlexrayCommunicationControllerContent_NmVectorEarlyUpdate();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__OFFSET_CORRECTION_OUT = eINSTANCE.getFlexrayCommunicationControllerContent_OffsetCorrectionOut();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__RATE_CORRECTION_OUT = eINSTANCE.getFlexrayCommunicationControllerContent_RateCorrectionOut();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__SAMPLES_PER_MICROTICK = eINSTANCE.getFlexrayCommunicationControllerContent_SamplesPerMicrotick();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__SECOND_KEY_SLOT_ID = eINSTANCE.getFlexrayCommunicationControllerContent_SecondKeySlotId();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__TWO_KEY_SLOT_MODE = eINSTANCE.getFlexrayCommunicationControllerContent_TwoKeySlotMode();
        public static final EAttribute FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT__WAKE_UP_PATTERN = eINSTANCE.getFlexrayCommunicationControllerContent_WakeUpPattern();
        public static final EClass FLEXRAY_FIFO_CONFIGURATION = eINSTANCE.getFlexrayFifoConfiguration();
        public static final EReference FLEXRAY_FIFO_CONFIGURATION__FLEXRAY_COMMUNICATION_CONTROLLER_CONTENT = eINSTANCE.getFlexrayFifoConfiguration_FlexrayCommunicationControllerContent();
        public static final EAttribute FLEXRAY_FIFO_CONFIGURATION__ADMIT_WITHOUT_MESSAGE_ID = eINSTANCE.getFlexrayFifoConfiguration_AdmitWithoutMessageId();
        public static final EAttribute FLEXRAY_FIFO_CONFIGURATION__BASE_CYCLE = eINSTANCE.getFlexrayFifoConfiguration_BaseCycle();
        public static final EReference FLEXRAY_FIFO_CONFIGURATION__CHANNEL = eINSTANCE.getFlexrayFifoConfiguration_Channel();
        public static final EAttribute FLEXRAY_FIFO_CONFIGURATION__CYCLE_REPETITION = eINSTANCE.getFlexrayFifoConfiguration_CycleRepetition();
        public static final EAttribute FLEXRAY_FIFO_CONFIGURATION__FIFO_DEPTH = eINSTANCE.getFlexrayFifoConfiguration_FifoDepth();
        public static final EReference FLEXRAY_FIFO_CONFIGURATION__FIFO_RANGES = eINSTANCE.getFlexrayFifoConfiguration_FifoRanges();
        public static final EAttribute FLEXRAY_FIFO_CONFIGURATION__MSG_ID_MASK = eINSTANCE.getFlexrayFifoConfiguration_MsgIdMask();
        public static final EAttribute FLEXRAY_FIFO_CONFIGURATION__MSG_ID_MATCH = eINSTANCE.getFlexrayFifoConfiguration_MsgIdMatch();
        public static final EClass FLEXRAY_PHYSICAL_CHANNEL = eINSTANCE.getFlexrayPhysicalChannel();
        public static final EAttribute FLEXRAY_PHYSICAL_CHANNEL__CHANNEL_NAME = eINSTANCE.getFlexrayPhysicalChannel_ChannelName();
        public static final EClass FLEXRAY_FIFO_RANGE = eINSTANCE.getFlexrayFifoRange();
        public static final EReference FLEXRAY_FIFO_RANGE__FLEXRAY_FIFO_CONFIGURATION = eINSTANCE.getFlexrayFifoRange_FlexrayFifoConfiguration();
        public static final EAttribute FLEXRAY_FIFO_RANGE__RANGE_MAX = eINSTANCE.getFlexrayFifoRange_RangeMax();
        public static final EAttribute FLEXRAY_FIFO_RANGE__RANGE_MIN = eINSTANCE.getFlexrayFifoRange_RangeMin();
        public static final EEnum FLEXRAY_CHANNEL_NAME = eINSTANCE.getFlexrayChannelName();
    }
}

