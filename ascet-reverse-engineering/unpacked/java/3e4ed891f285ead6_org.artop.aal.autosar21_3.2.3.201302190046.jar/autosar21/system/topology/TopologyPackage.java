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
package autosar21.system.topology;

import autosar21.system.topology.TopologyFactory;
import autosar21.system.topology.impl.TopologyPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TopologyPackage
extends EPackage {
    public static final String eNAME = "topology";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/s/t";
    public static final String eNS_PREFIX = "";
    public static final TopologyPackage eINSTANCE = TopologyPackageImpl.init();
    public static final int COMMUNICATION_CLUSTER = 15;
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
    public static final int COMMUNICATION_CLUSTER__UUID = 13;
    public static final int COMMUNICATION_CLUSTER__ALL_EXTENSIONS = 14;
    public static final int COMMUNICATION_CLUSTER__CONTAINED_EXTENSIONS = 15;
    public static final int COMMUNICATION_CLUSTER__SYSTEM_TOPOLOGY_TYPE = 16;
    public static final int COMMUNICATION_CLUSTER__COMMUNICATION_SPEED_BUS = 17;
    public static final int COMMUNICATION_CLUSTER__PHYSICAL_CHANNELS = 18;
    public static final int COMMUNICATION_CLUSTER__PROTOCOL_NAME = 19;
    public static final int COMMUNICATION_CLUSTER__PROTOCOL_VERSION = 20;
    public static final int COMMUNICATION_CLUSTER_FEATURE_COUNT = 21;
    public static final int CAN_BUS = 0;
    public static final int CAN_BUS__GCHECKSUM = 0;
    public static final int CAN_BUS__GTIMESTAMP = 1;
    public static final int CAN_BUS__CHECKSUM = 2;
    public static final int CAN_BUS__TIMESTAMP = 3;
    public static final int CAN_BUS__GSHORT_NAME = 4;
    public static final int CAN_BUS__GUUID = 5;
    public static final int CAN_BUS__GCATEGORY = 6;
    public static final int CAN_BUS__GDESC = 7;
    public static final int CAN_BUS__SHORT_NAME = 8;
    public static final int CAN_BUS__LONG_NAME = 9;
    public static final int CAN_BUS__DESC = 10;
    public static final int CAN_BUS__CATEGORY = 11;
    public static final int CAN_BUS__ADMIN_DATA = 12;
    public static final int CAN_BUS__UUID = 13;
    public static final int CAN_BUS__ALL_EXTENSIONS = 14;
    public static final int CAN_BUS__CONTAINED_EXTENSIONS = 15;
    public static final int CAN_BUS__SYSTEM_TOPOLOGY_TYPE = 16;
    public static final int CAN_BUS__COMMUNICATION_SPEED_BUS = 17;
    public static final int CAN_BUS__PHYSICAL_CHANNELS = 18;
    public static final int CAN_BUS__PROTOCOL_NAME = 19;
    public static final int CAN_BUS__PROTOCOL_VERSION = 20;
    public static final int CAN_BUS__CAN_ADDRESSING_MODE = 21;
    public static final int CAN_BUS_FEATURE_COUNT = 22;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE = 2;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__GCHECKSUM = 0;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__GTIMESTAMP = 1;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__CHECKSUM = 2;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__TIMESTAMP = 3;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__GSHORT_NAME = 4;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__GUUID = 5;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__GCATEGORY = 6;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__GDESC = 7;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__SHORT_NAME = 8;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__LONG_NAME = 9;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__DESC = 10;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__CATEGORY = 11;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__ADMIN_DATA = 12;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__UUID = 13;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__ALL_EXTENSIONS = 14;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__CONTAINED_EXTENSIONS = 15;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__ECU_INSTANCE = 16;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__COMM_PORT_ID = 17;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__COMMUNICATION_SPEED_PORT = 18;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__PORT = 19;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE__WAKE_UP_ON_COMM_PORT_SUPPORTED = 20;
    public static final int ECU_COMMUNICATION_PORT_INSTANCE_FEATURE_COUNT = 21;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE = 1;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__GCHECKSUM = 0;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__GTIMESTAMP = 1;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__CHECKSUM = 2;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__TIMESTAMP = 3;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__GSHORT_NAME = 4;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__GUUID = 5;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__GCATEGORY = 6;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__GDESC = 7;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__SHORT_NAME = 8;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__LONG_NAME = 9;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__DESC = 10;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__CATEGORY = 11;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__ADMIN_DATA = 12;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__UUID = 13;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__ALL_EXTENSIONS = 14;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__CONTAINED_EXTENSIONS = 15;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__ECU_INSTANCE = 16;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__COMM_PORT_ID = 17;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__COMMUNICATION_SPEED_PORT = 18;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__PORT = 19;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__WAKE_UP_ON_COMM_PORT_SUPPORTED = 20;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__BRP = 21;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__MAX_PERMITTED_PROCESSING_PERIOD_JITTER = 22;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__PORT_TERMINATION = 23;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__PROTOCOL_VERSION = 24;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__RECEIVE_PROCESSING_PERIOD = 25;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__SYNC_JUMP_WIDTH = 26;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__TIME_SEG0 = 27;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__TIME_SEG1 = 28;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE__TRANSMIT_PROCESSING_PERIOD = 29;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE_FEATURE_COUNT = 30;
    public static final int CONNECTOR = 3;
    public static final int CONNECTOR__GCHECKSUM = 0;
    public static final int CONNECTOR__GTIMESTAMP = 1;
    public static final int CONNECTOR__CHECKSUM = 2;
    public static final int CONNECTOR__TIMESTAMP = 3;
    public static final int CONNECTOR__GSHORT_NAME = 4;
    public static final int CONNECTOR__GUUID = 5;
    public static final int CONNECTOR__GCATEGORY = 6;
    public static final int CONNECTOR__GDESC = 7;
    public static final int CONNECTOR__SHORT_NAME = 8;
    public static final int CONNECTOR__LONG_NAME = 9;
    public static final int CONNECTOR__DESC = 10;
    public static final int CONNECTOR__CATEGORY = 11;
    public static final int CONNECTOR__ADMIN_DATA = 12;
    public static final int CONNECTOR__UUID = 13;
    public static final int CONNECTOR__ALL_EXTENSIONS = 14;
    public static final int CONNECTOR__CONTAINED_EXTENSIONS = 15;
    public static final int CONNECTOR__ECU_INSTANCE = 16;
    public static final int CONNECTOR__COMM_PORT = 17;
    public static final int CONNECTOR_FEATURE_COUNT = 18;
    public static final int TOPOLOGY_ELEMENT = 5;
    public static final int TOPOLOGY_ELEMENT__GCHECKSUM = 0;
    public static final int TOPOLOGY_ELEMENT__GTIMESTAMP = 1;
    public static final int TOPOLOGY_ELEMENT__CHECKSUM = 2;
    public static final int TOPOLOGY_ELEMENT__TIMESTAMP = 3;
    public static final int TOPOLOGY_ELEMENT__GSHORT_NAME = 4;
    public static final int TOPOLOGY_ELEMENT__GUUID = 5;
    public static final int TOPOLOGY_ELEMENT__GCATEGORY = 6;
    public static final int TOPOLOGY_ELEMENT__GDESC = 7;
    public static final int TOPOLOGY_ELEMENT__SHORT_NAME = 8;
    public static final int TOPOLOGY_ELEMENT__LONG_NAME = 9;
    public static final int TOPOLOGY_ELEMENT__DESC = 10;
    public static final int TOPOLOGY_ELEMENT__CATEGORY = 11;
    public static final int TOPOLOGY_ELEMENT__ADMIN_DATA = 12;
    public static final int TOPOLOGY_ELEMENT__UUID = 13;
    public static final int TOPOLOGY_ELEMENT__ALL_EXTENSIONS = 14;
    public static final int TOPOLOGY_ELEMENT__CONTAINED_EXTENSIONS = 15;
    public static final int TOPOLOGY_ELEMENT__SYSTEM_TOPOLOGY_TYPE = 16;
    public static final int TOPOLOGY_ELEMENT__CHILDS = 17;
    public static final int TOPOLOGY_ELEMENT__PARENT = 18;
    public static final int TOPOLOGY_ELEMENT_FEATURE_COUNT = 19;
    public static final int ECU_INSTANCE = 4;
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
    public static final int ECU_INSTANCE__UUID = 13;
    public static final int ECU_INSTANCE__ALL_EXTENSIONS = 14;
    public static final int ECU_INSTANCE__CONTAINED_EXTENSIONS = 15;
    public static final int ECU_INSTANCE__SYSTEM_TOPOLOGY_TYPE = 16;
    public static final int ECU_INSTANCE__CHILDS = 17;
    public static final int ECU_INSTANCE__PARENT = 18;
    public static final int ECU_INSTANCE__COM_PROCESSING_PERIOD = 19;
    public static final int ECU_INSTANCE__COMM_PORTS = 20;
    public static final int ECU_INSTANCE__CONNECTORS = 21;
    public static final int ECU_INSTANCE__ECU_ADDRESS = 22;
    public static final int ECU_INSTANCE__ECU = 23;
    public static final int ECU_INSTANCE__POWER_SUPPLY = 24;
    public static final int ECU_INSTANCE__PROCESSING_UNIT_ENDIANNESS = 25;
    public static final int ECU_INSTANCE__SLEEP_MODE_SUPPORTED = 26;
    public static final int ECU_INSTANCE__WAKE_UP_ON_INTERNAL_SUPPORTED = 27;
    public static final int ECU_INSTANCE__WAKE_UP_ON_IO_SUPPORTED = 28;
    public static final int ECU_INSTANCE_FEATURE_COUNT = 29;
    public static final int FLEXRAY_CLUSTER = 6;
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
    public static final int FLEXRAY_CLUSTER__UUID = 13;
    public static final int FLEXRAY_CLUSTER__ALL_EXTENSIONS = 14;
    public static final int FLEXRAY_CLUSTER__CONTAINED_EXTENSIONS = 15;
    public static final int FLEXRAY_CLUSTER__SYSTEM_TOPOLOGY_TYPE = 16;
    public static final int FLEXRAY_CLUSTER__COMMUNICATION_SPEED_BUS = 17;
    public static final int FLEXRAY_CLUSTER__PHYSICAL_CHANNELS = 18;
    public static final int FLEXRAY_CLUSTER__PROTOCOL_NAME = 19;
    public static final int FLEXRAY_CLUSTER__PROTOCOL_VERSION = 20;
    public static final int FLEXRAY_CLUSTER__ACTION_POINT_OFFSET = 21;
    public static final int FLEXRAY_CLUSTER__BUS_GUARDIAN_ENABLE_PART = 22;
    public static final int FLEXRAY_CLUSTER__CAS_RX_LOW_MAX = 23;
    public static final int FLEXRAY_CLUSTER__CAS_RX_LOW_MIN = 24;
    public static final int FLEXRAY_CLUSTER__COLD_START_ATTEMPTS = 25;
    public static final int FLEXRAY_CLUSTER__CYCLE = 26;
    public static final int FLEXRAY_CLUSTER__DYNAMIC_SLOT_IDLE_PHASE = 27;
    public static final int FLEXRAY_CLUSTER__LISTEN_NOISE = 28;
    public static final int FLEXRAY_CLUSTER__MACRO_INITIAL_OFFSET = 29;
    public static final int FLEXRAY_CLUSTER__MACRO_PER_CYCLE = 30;
    public static final int FLEXRAY_CLUSTER__MACROTICK_DURATION = 31;
    public static final int FLEXRAY_CLUSTER__MAX_INITIALISATION_ERROR = 32;
    public static final int FLEXRAY_CLUSTER__MAX_WITHOUT_CLOCK_CORRECTION_FATAL = 33;
    public static final int FLEXRAY_CLUSTER__MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE = 34;
    public static final int FLEXRAY_CLUSTER__MINISLOT_ACTION_POINT_OFFSET = 35;
    public static final int FLEXRAY_CLUSTER__MINISLOT_DURATION = 36;
    public static final int FLEXRAY_CLUSTER__NETWORK_IDLE_TIME = 37;
    public static final int FLEXRAY_CLUSTER__NETWORK_MANAGEMENT_VECTOR_LENGTH = 38;
    public static final int FLEXRAY_CLUSTER__NUMBER_OF_MINISLOTS = 39;
    public static final int FLEXRAY_CLUSTER__NUMBER_OF_STATIC_SLOTS = 40;
    public static final int FLEXRAY_CLUSTER__OFFSET_CORRECTION_START = 41;
    public static final int FLEXRAY_CLUSTER__PAYLOAD_LENGTH_STATIC = 42;
    public static final int FLEXRAY_CLUSTER__SAMPLE_CLOCK_PERIOD = 43;
    public static final int FLEXRAY_CLUSTER__STATIC_SLOT_DURATION = 44;
    public static final int FLEXRAY_CLUSTER__SYMBOL_WINDOW = 45;
    public static final int FLEXRAY_CLUSTER__SYNC_NODE_MAX = 46;
    public static final int FLEXRAY_CLUSTER__TRANSMISSION_START_SEQUENCE_DURATION = 47;
    public static final int FLEXRAY_CLUSTER__WAKE_UP_SYMBOL_RX_IDLE = 48;
    public static final int FLEXRAY_CLUSTER__WAKE_UP_SYMBOL_RX_LOW = 49;
    public static final int FLEXRAY_CLUSTER__WAKE_UP_SYMBOL_RX_WINDOW = 50;
    public static final int FLEXRAY_CLUSTER__WAKE_UP_SYMBOL_TX_IDLE = 51;
    public static final int FLEXRAY_CLUSTER__WAKE_UP_SYMBOL_TX_LOW = 52;
    public static final int FLEXRAY_CLUSTER_FEATURE_COUNT = 53;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE = 7;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__GCHECKSUM = 0;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__GTIMESTAMP = 1;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__CHECKSUM = 2;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__TIMESTAMP = 3;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__GSHORT_NAME = 4;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__GUUID = 5;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__GCATEGORY = 6;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__GDESC = 7;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__SHORT_NAME = 8;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__LONG_NAME = 9;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__DESC = 10;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__CATEGORY = 11;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__ADMIN_DATA = 12;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__UUID = 13;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__ALL_EXTENSIONS = 14;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__CONTAINED_EXTENSIONS = 15;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__ECU_INSTANCE = 16;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__COMM_PORT_ID = 17;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__COMMUNICATION_SPEED_PORT = 18;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__PORT = 19;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__WAKE_UP_ON_COMM_PORT_SUPPORTED = 20;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__ACCEPTED_STARTUP_RANGE = 21;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__ALLOW_HALT_DUE_TO_CLOCK = 22;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__ALLOW_PASSIVE_TO_ACTIVE = 23;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__CLUSTER_DRIFT_DAMPING = 24;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__DELAY_COMPENSATION_A = 25;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__DELAY_COMPENSATION_B = 26;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__DYNAMIC_SEGMENT_ENABLE = 27;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__EXTERN_OFFSET_CORRECTION = 28;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__EXTERN_RATE_CORRECTION = 29;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__KEY_SLOT_ID = 30;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__KEY_SLOT_USED_FOR_START_UP = 31;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__KEY_SLOT_USED_FOR_SYNC = 32;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__LATEST_TX = 33;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__LISTEN_TIMEOUT = 34;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__MAX_DRIFT = 35;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__MAXIMUM_DYNAMIC_PAYLOAD_LENGTH = 36;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__MICRO_INITIAL_OFFSET_A = 37;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__MICRO_INITIAL_OFFSET_B = 38;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__MICRO_PER_CYCLE = 39;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__MICRO_PER_MACRO_NOM = 40;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__MICROTICK_DURATION = 41;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__SAMPLES_PER_MICROTICK = 42;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__SINGLE_SLOT_ENABLED = 43;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__START_UP_NODE = 44;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__SYNC_SLOT = 45;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE__WAKE_UP_PATTERN = 46;
    public static final int FLEXRAY_COMMUNICATION_PORT_INSTANCE_FEATURE_COUNT = 47;
    public static final int HUB = 8;
    public static final int HUB__GCHECKSUM = 0;
    public static final int HUB__GTIMESTAMP = 1;
    public static final int HUB__CHECKSUM = 2;
    public static final int HUB__TIMESTAMP = 3;
    public static final int HUB__GSHORT_NAME = 4;
    public static final int HUB__GUUID = 5;
    public static final int HUB__GCATEGORY = 6;
    public static final int HUB__GDESC = 7;
    public static final int HUB__SHORT_NAME = 8;
    public static final int HUB__LONG_NAME = 9;
    public static final int HUB__DESC = 10;
    public static final int HUB__CATEGORY = 11;
    public static final int HUB__ADMIN_DATA = 12;
    public static final int HUB__UUID = 13;
    public static final int HUB__ALL_EXTENSIONS = 14;
    public static final int HUB__CONTAINED_EXTENSIONS = 15;
    public static final int HUB__SYSTEM_TOPOLOGY_TYPE = 16;
    public static final int HUB__CHILDS = 17;
    public static final int HUB__PARENT = 18;
    public static final int HUB__HUB_TYPE = 19;
    public static final int HUB_FEATURE_COUNT = 20;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE = 9;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__GCHECKSUM = 0;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__GTIMESTAMP = 1;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__CHECKSUM = 2;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__TIMESTAMP = 3;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__GSHORT_NAME = 4;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__GUUID = 5;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__GCATEGORY = 6;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__GDESC = 7;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__SHORT_NAME = 8;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__LONG_NAME = 9;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__DESC = 10;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__CATEGORY = 11;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__ADMIN_DATA = 12;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__UUID = 13;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__ALL_EXTENSIONS = 14;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__CONTAINED_EXTENSIONS = 15;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__ECU_INSTANCE = 16;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__COMM_PORT_ID = 17;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__COMMUNICATION_SPEED_PORT = 18;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__PORT = 19;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__WAKE_UP_ON_COMM_PORT_SUPPORTED = 20;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__DIAGNOSTIC_ADDRESS = 21;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__FUNCTION_ID = 22;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__INITIAL_NA_DS = 23;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__MAX_MESSAGE_LENGTH = 24;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__MAX_PERMITTED_SLAVE_JITTER = 25;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__NODE_ROLE = 26;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__P2_MIN = 27;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__PROTOCOL_VERSION = 28;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__ST_MIN = 29;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__SUPPLIER_ID = 30;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__SUPPORT_SID = 31;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__TIME_BASE = 32;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__TIME_BASE_JITTER = 33;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE__VARIANT_ID = 34;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE_FEATURE_COUNT = 35;
    public static final int LIN_SUB_BUS = 10;
    public static final int LIN_SUB_BUS__GCHECKSUM = 0;
    public static final int LIN_SUB_BUS__GTIMESTAMP = 1;
    public static final int LIN_SUB_BUS__CHECKSUM = 2;
    public static final int LIN_SUB_BUS__TIMESTAMP = 3;
    public static final int LIN_SUB_BUS__GSHORT_NAME = 4;
    public static final int LIN_SUB_BUS__GUUID = 5;
    public static final int LIN_SUB_BUS__GCATEGORY = 6;
    public static final int LIN_SUB_BUS__GDESC = 7;
    public static final int LIN_SUB_BUS__SHORT_NAME = 8;
    public static final int LIN_SUB_BUS__LONG_NAME = 9;
    public static final int LIN_SUB_BUS__DESC = 10;
    public static final int LIN_SUB_BUS__CATEGORY = 11;
    public static final int LIN_SUB_BUS__ADMIN_DATA = 12;
    public static final int LIN_SUB_BUS__UUID = 13;
    public static final int LIN_SUB_BUS__ALL_EXTENSIONS = 14;
    public static final int LIN_SUB_BUS__CONTAINED_EXTENSIONS = 15;
    public static final int LIN_SUB_BUS__SYSTEM_TOPOLOGY_TYPE = 16;
    public static final int LIN_SUB_BUS__COMMUNICATION_SPEED_BUS = 17;
    public static final int LIN_SUB_BUS__PHYSICAL_CHANNELS = 18;
    public static final int LIN_SUB_BUS__PROTOCOL_NAME = 19;
    public static final int LIN_SUB_BUS__PROTOCOL_VERSION = 20;
    public static final int LIN_SUB_BUS__MAX_PERMITTED_SLAVE_JITTER = 21;
    public static final int LIN_SUB_BUS_FEATURE_COUNT = 22;
    public static final int PHYSICAL_CHANNEL = 11;
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
    public static final int PHYSICAL_CHANNEL__UUID = 13;
    public static final int PHYSICAL_CHANNEL__ALL_EXTENSIONS = 14;
    public static final int PHYSICAL_CHANNEL__CONTAINED_EXTENSIONS = 15;
    public static final int PHYSICAL_CHANNEL__COMMUNICATION_CLUSTER = 16;
    public static final int PHYSICAL_CHANNEL__PHYSICAL_SEGMENTS = 17;
    public static final int PHYSICAL_CHANNEL_FEATURE_COUNT = 18;
    public static final int PHYSICAL_MEDIUM_SEGMENT = 12;
    public static final int PHYSICAL_MEDIUM_SEGMENT__GCHECKSUM = 0;
    public static final int PHYSICAL_MEDIUM_SEGMENT__GTIMESTAMP = 1;
    public static final int PHYSICAL_MEDIUM_SEGMENT__CHECKSUM = 2;
    public static final int PHYSICAL_MEDIUM_SEGMENT__TIMESTAMP = 3;
    public static final int PHYSICAL_MEDIUM_SEGMENT__PHYSICAL_CHANNEL = 4;
    public static final int PHYSICAL_MEDIUM_SEGMENT__CONNECTED_ECUS = 5;
    public static final int PHYSICAL_MEDIUM_SEGMENT__CONNECTED_HUBS = 6;
    public static final int PHYSICAL_MEDIUM_SEGMENT__PHYSICAL_MEDIUM_DATA_LINES = 7;
    public static final int PHYSICAL_MEDIUM_SEGMENT__PHYSICAL_MEDIUM_TYPE = 8;
    public static final int PHYSICAL_MEDIUM_SEGMENT_FEATURE_COUNT = 9;
    public static final int SYSTEM_TOPOLOGY_TYPE = 13;
    public static final int SYSTEM_TOPOLOGY_TYPE__GCHECKSUM = 0;
    public static final int SYSTEM_TOPOLOGY_TYPE__GTIMESTAMP = 1;
    public static final int SYSTEM_TOPOLOGY_TYPE__CHECKSUM = 2;
    public static final int SYSTEM_TOPOLOGY_TYPE__TIMESTAMP = 3;
    public static final int SYSTEM_TOPOLOGY_TYPE__GSHORT_NAME = 4;
    public static final int SYSTEM_TOPOLOGY_TYPE__GUUID = 5;
    public static final int SYSTEM_TOPOLOGY_TYPE__GCATEGORY = 6;
    public static final int SYSTEM_TOPOLOGY_TYPE__GDESC = 7;
    public static final int SYSTEM_TOPOLOGY_TYPE__SHORT_NAME = 8;
    public static final int SYSTEM_TOPOLOGY_TYPE__LONG_NAME = 9;
    public static final int SYSTEM_TOPOLOGY_TYPE__DESC = 10;
    public static final int SYSTEM_TOPOLOGY_TYPE__CATEGORY = 11;
    public static final int SYSTEM_TOPOLOGY_TYPE__ADMIN_DATA = 12;
    public static final int SYSTEM_TOPOLOGY_TYPE__UUID = 13;
    public static final int SYSTEM_TOPOLOGY_TYPE__ALL_EXTENSIONS = 14;
    public static final int SYSTEM_TOPOLOGY_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int SYSTEM_TOPOLOGY_TYPE__GAR_PACKAGE = 16;
    public static final int SYSTEM_TOPOLOGY_TYPE__AR_PACKAGE = 17;
    public static final int SYSTEM_TOPOLOGY_TYPE__COMMUNICATION_CLUSTERS = 18;
    public static final int SYSTEM_TOPOLOGY_TYPE__TOPOLOGY_ELEMENTS = 19;
    public static final int SYSTEM_TOPOLOGY_TYPE_FEATURE_COUNT = 20;
    public static final int UNSPECIFIED_CONNECTION = 14;
    public static final int UNSPECIFIED_CONNECTION__GCHECKSUM = 0;
    public static final int UNSPECIFIED_CONNECTION__GTIMESTAMP = 1;
    public static final int UNSPECIFIED_CONNECTION__CHECKSUM = 2;
    public static final int UNSPECIFIED_CONNECTION__TIMESTAMP = 3;
    public static final int UNSPECIFIED_CONNECTION__GSHORT_NAME = 4;
    public static final int UNSPECIFIED_CONNECTION__GUUID = 5;
    public static final int UNSPECIFIED_CONNECTION__GCATEGORY = 6;
    public static final int UNSPECIFIED_CONNECTION__GDESC = 7;
    public static final int UNSPECIFIED_CONNECTION__SHORT_NAME = 8;
    public static final int UNSPECIFIED_CONNECTION__LONG_NAME = 9;
    public static final int UNSPECIFIED_CONNECTION__DESC = 10;
    public static final int UNSPECIFIED_CONNECTION__CATEGORY = 11;
    public static final int UNSPECIFIED_CONNECTION__ADMIN_DATA = 12;
    public static final int UNSPECIFIED_CONNECTION__UUID = 13;
    public static final int UNSPECIFIED_CONNECTION__ALL_EXTENSIONS = 14;
    public static final int UNSPECIFIED_CONNECTION__CONTAINED_EXTENSIONS = 15;
    public static final int UNSPECIFIED_CONNECTION__SYSTEM_TOPOLOGY_TYPE = 16;
    public static final int UNSPECIFIED_CONNECTION__COMMUNICATION_SPEED_BUS = 17;
    public static final int UNSPECIFIED_CONNECTION__PHYSICAL_CHANNELS = 18;
    public static final int UNSPECIFIED_CONNECTION__PROTOCOL_NAME = 19;
    public static final int UNSPECIFIED_CONNECTION__PROTOCOL_VERSION = 20;
    public static final int UNSPECIFIED_CONNECTION_FEATURE_COUNT = 21;
    public static final int CAN_BUS_CAN_ADDRESSING_MODE_ENUM = 16;
    public static final int CAN_COMMUNICATION_PORT_INSTANCE_PROTOCOL_VERSION_ENUM = 17;
    public static final int ECU_INSTANCE_POWER_SUPPLY_ENUM = 18;
    public static final int HUB_HUB_TYPE_ENUM = 19;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE_PROTOCOL_VERSION_ENUM = 20;
    public static final int LIN_COMMUNICATION_PORT_INSTANCE_NODE_ROLE_ENUM = 21;
    public static final int PHYSICAL_MEDIUM_SEGMENT_PHYSICAL_MEDIUM_TYPE_ENUM = 22;

    public EClass getCANBus();

    public EAttribute getCANBus_CanAddressingMode();

    public EClass getCANCommunicationPortInstance();

    public EAttribute getCANCommunicationPortInstance_BRP();

    public EAttribute getCANCommunicationPortInstance_MaxPermittedProcessingPeriodJitter();

    public EAttribute getCANCommunicationPortInstance_PortTermination();

    public EAttribute getCANCommunicationPortInstance_ProtocolVersion();

    public EAttribute getCANCommunicationPortInstance_ReceiveProcessingPeriod();

    public EAttribute getCANCommunicationPortInstance_SyncJumpWidth();

    public EAttribute getCANCommunicationPortInstance_TimeSeg0();

    public EAttribute getCANCommunicationPortInstance_TimeSeg1();

    public EAttribute getCANCommunicationPortInstance_TransmitProcessingPeriod();

    public EClass getECUCommunicationPortInstance();

    public EReference getECUCommunicationPortInstance_ECUInstance();

    public EAttribute getECUCommunicationPortInstance_CommPortId();

    public EAttribute getECUCommunicationPortInstance_CommunicationSpeedPort();

    public EReference getECUCommunicationPortInstance_Port();

    public EAttribute getECUCommunicationPortInstance_WakeUpOnCommPortSupported();

    public EClass getConnector();

    public EReference getConnector_ECUInstance();

    public EReference getConnector_CommPort();

    public EClass getECUInstance();

    public EAttribute getECUInstance_COMProcessingPeriod();

    public EReference getECUInstance_CommPorts();

    public EReference getECUInstance_Connectors();

    public EAttribute getECUInstance_EcuAddress();

    public EReference getECUInstance_Ecu();

    public EAttribute getECUInstance_PowerSupply();

    public EAttribute getECUInstance_ProcessingUnitEndianness();

    public EAttribute getECUInstance_SleepModeSupported();

    public EAttribute getECUInstance_WakeUpOnInternalSupported();

    public EAttribute getECUInstance_WakeUpOnIoSupported();

    public EClass getTopologyElement();

    public EReference getTopologyElement_SystemTopologyType();

    public EReference getTopologyElement_Childs();

    public EReference getTopologyElement_Parent();

    public EClass getFlexrayCluster();

    public EAttribute getFlexrayCluster_ActionPointOffset();

    public EAttribute getFlexrayCluster_BusGuardianEnablePart();

    public EAttribute getFlexrayCluster_CasRxLowMax();

    public EAttribute getFlexrayCluster_CasRxLowMin();

    public EAttribute getFlexrayCluster_ColdStartAttempts();

    public EAttribute getFlexrayCluster_Cycle();

    public EAttribute getFlexrayCluster_DynamicSlotIdlePhase();

    public EAttribute getFlexrayCluster_ListenNoise();

    public EAttribute getFlexrayCluster_MacroInitialOffset();

    public EAttribute getFlexrayCluster_MacroPerCycle();

    public EAttribute getFlexrayCluster_MacrotickDuration();

    public EAttribute getFlexrayCluster_MaxInitialisationError();

    public EAttribute getFlexrayCluster_MaxWithoutClockCorrectionFatal();

    public EAttribute getFlexrayCluster_MaxWithoutClockCorrectionPassive();

    public EAttribute getFlexrayCluster_MinislotActionPointOffset();

    public EAttribute getFlexrayCluster_MinislotDuration();

    public EAttribute getFlexrayCluster_NetworkIdleTime();

    public EAttribute getFlexrayCluster_NetworkManagementVectorLength();

    public EAttribute getFlexrayCluster_NumberOfMinislots();

    public EAttribute getFlexrayCluster_NumberOfStaticSlots();

    public EAttribute getFlexrayCluster_OffsetCorrectionStart();

    public EAttribute getFlexrayCluster_PayloadLengthStatic();

    public EAttribute getFlexrayCluster_SampleClockPeriod();

    public EAttribute getFlexrayCluster_StaticSlotDuration();

    public EAttribute getFlexrayCluster_SymbolWindow();

    public EAttribute getFlexrayCluster_SyncNodeMax();

    public EAttribute getFlexrayCluster_TransmissionStartSequenceDuration();

    public EAttribute getFlexrayCluster_WakeUpSymbolRxIdle();

    public EAttribute getFlexrayCluster_WakeUpSymbolRxLow();

    public EAttribute getFlexrayCluster_WakeUpSymbolRxWindow();

    public EAttribute getFlexrayCluster_WakeUpSymbolTxIdle();

    public EAttribute getFlexrayCluster_WakeUpSymbolTxLow();

    public EClass getFlexrayCommunicationPortInstance();

    public EAttribute getFlexrayCommunicationPortInstance_AcceptedStartupRange();

    public EAttribute getFlexrayCommunicationPortInstance_AllowHaltDueToClock();

    public EAttribute getFlexrayCommunicationPortInstance_AllowPassiveToActive();

    public EAttribute getFlexrayCommunicationPortInstance_ClusterDriftDamping();

    public EAttribute getFlexrayCommunicationPortInstance_DelayCompensationA();

    public EAttribute getFlexrayCommunicationPortInstance_DelayCompensationB();

    public EAttribute getFlexrayCommunicationPortInstance_DynamicSegmentEnable();

    public EAttribute getFlexrayCommunicationPortInstance_ExternOffsetCorrection();

    public EAttribute getFlexrayCommunicationPortInstance_ExternRateCorrection();

    public EAttribute getFlexrayCommunicationPortInstance_KeySlotID();

    public EAttribute getFlexrayCommunicationPortInstance_KeySlotUsedForStartUp();

    public EAttribute getFlexrayCommunicationPortInstance_KeySlotUsedForSync();

    public EAttribute getFlexrayCommunicationPortInstance_LatestTX();

    public EAttribute getFlexrayCommunicationPortInstance_ListenTimeout();

    public EAttribute getFlexrayCommunicationPortInstance_MaxDrift();

    public EAttribute getFlexrayCommunicationPortInstance_MaximumDynamicPayloadLength();

    public EAttribute getFlexrayCommunicationPortInstance_MicroInitialOffsetA();

    public EAttribute getFlexrayCommunicationPortInstance_MicroInitialOffsetB();

    public EAttribute getFlexrayCommunicationPortInstance_MicroPerCycle();

    public EAttribute getFlexrayCommunicationPortInstance_MicroPerMacroNom();

    public EAttribute getFlexrayCommunicationPortInstance_MicrotickDuration();

    public EAttribute getFlexrayCommunicationPortInstance_SamplesPerMicrotick();

    public EAttribute getFlexrayCommunicationPortInstance_SingleSlotEnabled();

    public EAttribute getFlexrayCommunicationPortInstance_StartUpNode();

    public EAttribute getFlexrayCommunicationPortInstance_SyncSlot();

    public EAttribute getFlexrayCommunicationPortInstance_WakeUpPattern();

    public EClass getHub();

    public EAttribute getHub_HubType();

    public EClass getLINCommunicationPortInstance();

    public EAttribute getLINCommunicationPortInstance_DiagnosticAddress();

    public EAttribute getLINCommunicationPortInstance_FunctionID();

    public EAttribute getLINCommunicationPortInstance_InitialNADs();

    public EAttribute getLINCommunicationPortInstance_MaxMessageLength();

    public EAttribute getLINCommunicationPortInstance_MaxPermittedSlaveJitter();

    public EAttribute getLINCommunicationPortInstance_NodeRole();

    public EAttribute getLINCommunicationPortInstance_P2Min();

    public EAttribute getLINCommunicationPortInstance_ProtocolVersion();

    public EAttribute getLINCommunicationPortInstance_StMin();

    public EAttribute getLINCommunicationPortInstance_SupplierID();

    public EAttribute getLINCommunicationPortInstance_SupportSID();

    public EAttribute getLINCommunicationPortInstance_TimeBase();

    public EAttribute getLINCommunicationPortInstance_TimeBaseJitter();

    public EAttribute getLINCommunicationPortInstance_VariantID();

    public EClass getLINSubBus();

    public EAttribute getLINSubBus_MaxPermittedSlaveJitter();

    public EClass getPhysicalChannel();

    public EReference getPhysicalChannel_CommunicationCluster();

    public EReference getPhysicalChannel_PhysicalSegments();

    public EClass getPhysicalMediumSegment();

    public EReference getPhysicalMediumSegment_PhysicalChannel();

    public EReference getPhysicalMediumSegment_ConnectedEcus();

    public EReference getPhysicalMediumSegment_ConnectedHubs();

    public EAttribute getPhysicalMediumSegment_PhysicalMediumDataLines();

    public EAttribute getPhysicalMediumSegment_PhysicalMediumType();

    public EClass getSystemTopologyType();

    public EReference getSystemTopologyType_CommunicationClusters();

    public EReference getSystemTopologyType_TopologyElements();

    public EClass getUnspecifiedConnection();

    public EClass getCommunicationCluster();

    public EReference getCommunicationCluster_SystemTopologyType();

    public EAttribute getCommunicationCluster_CommunicationSpeedBus();

    public EReference getCommunicationCluster_PhysicalChannels();

    public EAttribute getCommunicationCluster_ProtocolName();

    public EAttribute getCommunicationCluster_ProtocolVersion();

    public EEnum getCANBusCanAddressingModeEnum();

    public EEnum getCANCommunicationPortInstanceProtocolVersionEnum();

    public EEnum getECUInstancePowerSupplyEnum();

    public EEnum getHubHubTypeEnum();

    public EEnum getLINCommunicationPortInstanceProtocolVersionEnum();

    public EEnum getLINCommunicationPortInstanceNodeRoleEnum();

    public EEnum getPhysicalMediumSegmentPhysicalMediumTypeEnum();

    public TopologyFactory getTopologyFactory();

    public static interface Literals {
        public static final EClass CAN_BUS = eINSTANCE.getCANBus();
        public static final EAttribute CAN_BUS__CAN_ADDRESSING_MODE = eINSTANCE.getCANBus_CanAddressingMode();
        public static final EClass CAN_COMMUNICATION_PORT_INSTANCE = eINSTANCE.getCANCommunicationPortInstance();
        public static final EAttribute CAN_COMMUNICATION_PORT_INSTANCE__BRP = eINSTANCE.getCANCommunicationPortInstance_BRP();
        public static final EAttribute CAN_COMMUNICATION_PORT_INSTANCE__MAX_PERMITTED_PROCESSING_PERIOD_JITTER = eINSTANCE.getCANCommunicationPortInstance_MaxPermittedProcessingPeriodJitter();
        public static final EAttribute CAN_COMMUNICATION_PORT_INSTANCE__PORT_TERMINATION = eINSTANCE.getCANCommunicationPortInstance_PortTermination();
        public static final EAttribute CAN_COMMUNICATION_PORT_INSTANCE__PROTOCOL_VERSION = eINSTANCE.getCANCommunicationPortInstance_ProtocolVersion();
        public static final EAttribute CAN_COMMUNICATION_PORT_INSTANCE__RECEIVE_PROCESSING_PERIOD = eINSTANCE.getCANCommunicationPortInstance_ReceiveProcessingPeriod();
        public static final EAttribute CAN_COMMUNICATION_PORT_INSTANCE__SYNC_JUMP_WIDTH = eINSTANCE.getCANCommunicationPortInstance_SyncJumpWidth();
        public static final EAttribute CAN_COMMUNICATION_PORT_INSTANCE__TIME_SEG0 = eINSTANCE.getCANCommunicationPortInstance_TimeSeg0();
        public static final EAttribute CAN_COMMUNICATION_PORT_INSTANCE__TIME_SEG1 = eINSTANCE.getCANCommunicationPortInstance_TimeSeg1();
        public static final EAttribute CAN_COMMUNICATION_PORT_INSTANCE__TRANSMIT_PROCESSING_PERIOD = eINSTANCE.getCANCommunicationPortInstance_TransmitProcessingPeriod();
        public static final EClass ECU_COMMUNICATION_PORT_INSTANCE = eINSTANCE.getECUCommunicationPortInstance();
        public static final EReference ECU_COMMUNICATION_PORT_INSTANCE__ECU_INSTANCE = eINSTANCE.getECUCommunicationPortInstance_ECUInstance();
        public static final EAttribute ECU_COMMUNICATION_PORT_INSTANCE__COMM_PORT_ID = eINSTANCE.getECUCommunicationPortInstance_CommPortId();
        public static final EAttribute ECU_COMMUNICATION_PORT_INSTANCE__COMMUNICATION_SPEED_PORT = eINSTANCE.getECUCommunicationPortInstance_CommunicationSpeedPort();
        public static final EReference ECU_COMMUNICATION_PORT_INSTANCE__PORT = eINSTANCE.getECUCommunicationPortInstance_Port();
        public static final EAttribute ECU_COMMUNICATION_PORT_INSTANCE__WAKE_UP_ON_COMM_PORT_SUPPORTED = eINSTANCE.getECUCommunicationPortInstance_WakeUpOnCommPortSupported();
        public static final EClass CONNECTOR = eINSTANCE.getConnector();
        public static final EReference CONNECTOR__ECU_INSTANCE = eINSTANCE.getConnector_ECUInstance();
        public static final EReference CONNECTOR__COMM_PORT = eINSTANCE.getConnector_CommPort();
        public static final EClass ECU_INSTANCE = eINSTANCE.getECUInstance();
        public static final EAttribute ECU_INSTANCE__COM_PROCESSING_PERIOD = eINSTANCE.getECUInstance_COMProcessingPeriod();
        public static final EReference ECU_INSTANCE__COMM_PORTS = eINSTANCE.getECUInstance_CommPorts();
        public static final EReference ECU_INSTANCE__CONNECTORS = eINSTANCE.getECUInstance_Connectors();
        public static final EAttribute ECU_INSTANCE__ECU_ADDRESS = eINSTANCE.getECUInstance_EcuAddress();
        public static final EReference ECU_INSTANCE__ECU = eINSTANCE.getECUInstance_Ecu();
        public static final EAttribute ECU_INSTANCE__POWER_SUPPLY = eINSTANCE.getECUInstance_PowerSupply();
        public static final EAttribute ECU_INSTANCE__PROCESSING_UNIT_ENDIANNESS = eINSTANCE.getECUInstance_ProcessingUnitEndianness();
        public static final EAttribute ECU_INSTANCE__SLEEP_MODE_SUPPORTED = eINSTANCE.getECUInstance_SleepModeSupported();
        public static final EAttribute ECU_INSTANCE__WAKE_UP_ON_INTERNAL_SUPPORTED = eINSTANCE.getECUInstance_WakeUpOnInternalSupported();
        public static final EAttribute ECU_INSTANCE__WAKE_UP_ON_IO_SUPPORTED = eINSTANCE.getECUInstance_WakeUpOnIoSupported();
        public static final EClass TOPOLOGY_ELEMENT = eINSTANCE.getTopologyElement();
        public static final EReference TOPOLOGY_ELEMENT__SYSTEM_TOPOLOGY_TYPE = eINSTANCE.getTopologyElement_SystemTopologyType();
        public static final EReference TOPOLOGY_ELEMENT__CHILDS = eINSTANCE.getTopologyElement_Childs();
        public static final EReference TOPOLOGY_ELEMENT__PARENT = eINSTANCE.getTopologyElement_Parent();
        public static final EClass FLEXRAY_CLUSTER = eINSTANCE.getFlexrayCluster();
        public static final EAttribute FLEXRAY_CLUSTER__ACTION_POINT_OFFSET = eINSTANCE.getFlexrayCluster_ActionPointOffset();
        public static final EAttribute FLEXRAY_CLUSTER__BUS_GUARDIAN_ENABLE_PART = eINSTANCE.getFlexrayCluster_BusGuardianEnablePart();
        public static final EAttribute FLEXRAY_CLUSTER__CAS_RX_LOW_MAX = eINSTANCE.getFlexrayCluster_CasRxLowMax();
        public static final EAttribute FLEXRAY_CLUSTER__CAS_RX_LOW_MIN = eINSTANCE.getFlexrayCluster_CasRxLowMin();
        public static final EAttribute FLEXRAY_CLUSTER__COLD_START_ATTEMPTS = eINSTANCE.getFlexrayCluster_ColdStartAttempts();
        public static final EAttribute FLEXRAY_CLUSTER__CYCLE = eINSTANCE.getFlexrayCluster_Cycle();
        public static final EAttribute FLEXRAY_CLUSTER__DYNAMIC_SLOT_IDLE_PHASE = eINSTANCE.getFlexrayCluster_DynamicSlotIdlePhase();
        public static final EAttribute FLEXRAY_CLUSTER__LISTEN_NOISE = eINSTANCE.getFlexrayCluster_ListenNoise();
        public static final EAttribute FLEXRAY_CLUSTER__MACRO_INITIAL_OFFSET = eINSTANCE.getFlexrayCluster_MacroInitialOffset();
        public static final EAttribute FLEXRAY_CLUSTER__MACRO_PER_CYCLE = eINSTANCE.getFlexrayCluster_MacroPerCycle();
        public static final EAttribute FLEXRAY_CLUSTER__MACROTICK_DURATION = eINSTANCE.getFlexrayCluster_MacrotickDuration();
        public static final EAttribute FLEXRAY_CLUSTER__MAX_INITIALISATION_ERROR = eINSTANCE.getFlexrayCluster_MaxInitialisationError();
        public static final EAttribute FLEXRAY_CLUSTER__MAX_WITHOUT_CLOCK_CORRECTION_FATAL = eINSTANCE.getFlexrayCluster_MaxWithoutClockCorrectionFatal();
        public static final EAttribute FLEXRAY_CLUSTER__MAX_WITHOUT_CLOCK_CORRECTION_PASSIVE = eINSTANCE.getFlexrayCluster_MaxWithoutClockCorrectionPassive();
        public static final EAttribute FLEXRAY_CLUSTER__MINISLOT_ACTION_POINT_OFFSET = eINSTANCE.getFlexrayCluster_MinislotActionPointOffset();
        public static final EAttribute FLEXRAY_CLUSTER__MINISLOT_DURATION = eINSTANCE.getFlexrayCluster_MinislotDuration();
        public static final EAttribute FLEXRAY_CLUSTER__NETWORK_IDLE_TIME = eINSTANCE.getFlexrayCluster_NetworkIdleTime();
        public static final EAttribute FLEXRAY_CLUSTER__NETWORK_MANAGEMENT_VECTOR_LENGTH = eINSTANCE.getFlexrayCluster_NetworkManagementVectorLength();
        public static final EAttribute FLEXRAY_CLUSTER__NUMBER_OF_MINISLOTS = eINSTANCE.getFlexrayCluster_NumberOfMinislots();
        public static final EAttribute FLEXRAY_CLUSTER__NUMBER_OF_STATIC_SLOTS = eINSTANCE.getFlexrayCluster_NumberOfStaticSlots();
        public static final EAttribute FLEXRAY_CLUSTER__OFFSET_CORRECTION_START = eINSTANCE.getFlexrayCluster_OffsetCorrectionStart();
        public static final EAttribute FLEXRAY_CLUSTER__PAYLOAD_LENGTH_STATIC = eINSTANCE.getFlexrayCluster_PayloadLengthStatic();
        public static final EAttribute FLEXRAY_CLUSTER__SAMPLE_CLOCK_PERIOD = eINSTANCE.getFlexrayCluster_SampleClockPeriod();
        public static final EAttribute FLEXRAY_CLUSTER__STATIC_SLOT_DURATION = eINSTANCE.getFlexrayCluster_StaticSlotDuration();
        public static final EAttribute FLEXRAY_CLUSTER__SYMBOL_WINDOW = eINSTANCE.getFlexrayCluster_SymbolWindow();
        public static final EAttribute FLEXRAY_CLUSTER__SYNC_NODE_MAX = eINSTANCE.getFlexrayCluster_SyncNodeMax();
        public static final EAttribute FLEXRAY_CLUSTER__TRANSMISSION_START_SEQUENCE_DURATION = eINSTANCE.getFlexrayCluster_TransmissionStartSequenceDuration();
        public static final EAttribute FLEXRAY_CLUSTER__WAKE_UP_SYMBOL_RX_IDLE = eINSTANCE.getFlexrayCluster_WakeUpSymbolRxIdle();
        public static final EAttribute FLEXRAY_CLUSTER__WAKE_UP_SYMBOL_RX_LOW = eINSTANCE.getFlexrayCluster_WakeUpSymbolRxLow();
        public static final EAttribute FLEXRAY_CLUSTER__WAKE_UP_SYMBOL_RX_WINDOW = eINSTANCE.getFlexrayCluster_WakeUpSymbolRxWindow();
        public static final EAttribute FLEXRAY_CLUSTER__WAKE_UP_SYMBOL_TX_IDLE = eINSTANCE.getFlexrayCluster_WakeUpSymbolTxIdle();
        public static final EAttribute FLEXRAY_CLUSTER__WAKE_UP_SYMBOL_TX_LOW = eINSTANCE.getFlexrayCluster_WakeUpSymbolTxLow();
        public static final EClass FLEXRAY_COMMUNICATION_PORT_INSTANCE = eINSTANCE.getFlexrayCommunicationPortInstance();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__ACCEPTED_STARTUP_RANGE = eINSTANCE.getFlexrayCommunicationPortInstance_AcceptedStartupRange();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__ALLOW_HALT_DUE_TO_CLOCK = eINSTANCE.getFlexrayCommunicationPortInstance_AllowHaltDueToClock();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__ALLOW_PASSIVE_TO_ACTIVE = eINSTANCE.getFlexrayCommunicationPortInstance_AllowPassiveToActive();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__CLUSTER_DRIFT_DAMPING = eINSTANCE.getFlexrayCommunicationPortInstance_ClusterDriftDamping();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__DELAY_COMPENSATION_A = eINSTANCE.getFlexrayCommunicationPortInstance_DelayCompensationA();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__DELAY_COMPENSATION_B = eINSTANCE.getFlexrayCommunicationPortInstance_DelayCompensationB();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__DYNAMIC_SEGMENT_ENABLE = eINSTANCE.getFlexrayCommunicationPortInstance_DynamicSegmentEnable();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__EXTERN_OFFSET_CORRECTION = eINSTANCE.getFlexrayCommunicationPortInstance_ExternOffsetCorrection();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__EXTERN_RATE_CORRECTION = eINSTANCE.getFlexrayCommunicationPortInstance_ExternRateCorrection();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__KEY_SLOT_ID = eINSTANCE.getFlexrayCommunicationPortInstance_KeySlotID();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__KEY_SLOT_USED_FOR_START_UP = eINSTANCE.getFlexrayCommunicationPortInstance_KeySlotUsedForStartUp();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__KEY_SLOT_USED_FOR_SYNC = eINSTANCE.getFlexrayCommunicationPortInstance_KeySlotUsedForSync();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__LATEST_TX = eINSTANCE.getFlexrayCommunicationPortInstance_LatestTX();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__LISTEN_TIMEOUT = eINSTANCE.getFlexrayCommunicationPortInstance_ListenTimeout();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__MAX_DRIFT = eINSTANCE.getFlexrayCommunicationPortInstance_MaxDrift();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__MAXIMUM_DYNAMIC_PAYLOAD_LENGTH = eINSTANCE.getFlexrayCommunicationPortInstance_MaximumDynamicPayloadLength();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__MICRO_INITIAL_OFFSET_A = eINSTANCE.getFlexrayCommunicationPortInstance_MicroInitialOffsetA();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__MICRO_INITIAL_OFFSET_B = eINSTANCE.getFlexrayCommunicationPortInstance_MicroInitialOffsetB();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__MICRO_PER_CYCLE = eINSTANCE.getFlexrayCommunicationPortInstance_MicroPerCycle();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__MICRO_PER_MACRO_NOM = eINSTANCE.getFlexrayCommunicationPortInstance_MicroPerMacroNom();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__MICROTICK_DURATION = eINSTANCE.getFlexrayCommunicationPortInstance_MicrotickDuration();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__SAMPLES_PER_MICROTICK = eINSTANCE.getFlexrayCommunicationPortInstance_SamplesPerMicrotick();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__SINGLE_SLOT_ENABLED = eINSTANCE.getFlexrayCommunicationPortInstance_SingleSlotEnabled();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__START_UP_NODE = eINSTANCE.getFlexrayCommunicationPortInstance_StartUpNode();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__SYNC_SLOT = eINSTANCE.getFlexrayCommunicationPortInstance_SyncSlot();
        public static final EAttribute FLEXRAY_COMMUNICATION_PORT_INSTANCE__WAKE_UP_PATTERN = eINSTANCE.getFlexrayCommunicationPortInstance_WakeUpPattern();
        public static final EClass HUB = eINSTANCE.getHub();
        public static final EAttribute HUB__HUB_TYPE = eINSTANCE.getHub_HubType();
        public static final EClass LIN_COMMUNICATION_PORT_INSTANCE = eINSTANCE.getLINCommunicationPortInstance();
        public static final EAttribute LIN_COMMUNICATION_PORT_INSTANCE__DIAGNOSTIC_ADDRESS = eINSTANCE.getLINCommunicationPortInstance_DiagnosticAddress();
        public static final EAttribute LIN_COMMUNICATION_PORT_INSTANCE__FUNCTION_ID = eINSTANCE.getLINCommunicationPortInstance_FunctionID();
        public static final EAttribute LIN_COMMUNICATION_PORT_INSTANCE__INITIAL_NA_DS = eINSTANCE.getLINCommunicationPortInstance_InitialNADs();
        public static final EAttribute LIN_COMMUNICATION_PORT_INSTANCE__MAX_MESSAGE_LENGTH = eINSTANCE.getLINCommunicationPortInstance_MaxMessageLength();
        public static final EAttribute LIN_COMMUNICATION_PORT_INSTANCE__MAX_PERMITTED_SLAVE_JITTER = eINSTANCE.getLINCommunicationPortInstance_MaxPermittedSlaveJitter();
        public static final EAttribute LIN_COMMUNICATION_PORT_INSTANCE__NODE_ROLE = eINSTANCE.getLINCommunicationPortInstance_NodeRole();
        public static final EAttribute LIN_COMMUNICATION_PORT_INSTANCE__P2_MIN = eINSTANCE.getLINCommunicationPortInstance_P2Min();
        public static final EAttribute LIN_COMMUNICATION_PORT_INSTANCE__PROTOCOL_VERSION = eINSTANCE.getLINCommunicationPortInstance_ProtocolVersion();
        public static final EAttribute LIN_COMMUNICATION_PORT_INSTANCE__ST_MIN = eINSTANCE.getLINCommunicationPortInstance_StMin();
        public static final EAttribute LIN_COMMUNICATION_PORT_INSTANCE__SUPPLIER_ID = eINSTANCE.getLINCommunicationPortInstance_SupplierID();
        public static final EAttribute LIN_COMMUNICATION_PORT_INSTANCE__SUPPORT_SID = eINSTANCE.getLINCommunicationPortInstance_SupportSID();
        public static final EAttribute LIN_COMMUNICATION_PORT_INSTANCE__TIME_BASE = eINSTANCE.getLINCommunicationPortInstance_TimeBase();
        public static final EAttribute LIN_COMMUNICATION_PORT_INSTANCE__TIME_BASE_JITTER = eINSTANCE.getLINCommunicationPortInstance_TimeBaseJitter();
        public static final EAttribute LIN_COMMUNICATION_PORT_INSTANCE__VARIANT_ID = eINSTANCE.getLINCommunicationPortInstance_VariantID();
        public static final EClass LIN_SUB_BUS = eINSTANCE.getLINSubBus();
        public static final EAttribute LIN_SUB_BUS__MAX_PERMITTED_SLAVE_JITTER = eINSTANCE.getLINSubBus_MaxPermittedSlaveJitter();
        public static final EClass PHYSICAL_CHANNEL = eINSTANCE.getPhysicalChannel();
        public static final EReference PHYSICAL_CHANNEL__COMMUNICATION_CLUSTER = eINSTANCE.getPhysicalChannel_CommunicationCluster();
        public static final EReference PHYSICAL_CHANNEL__PHYSICAL_SEGMENTS = eINSTANCE.getPhysicalChannel_PhysicalSegments();
        public static final EClass PHYSICAL_MEDIUM_SEGMENT = eINSTANCE.getPhysicalMediumSegment();
        public static final EReference PHYSICAL_MEDIUM_SEGMENT__PHYSICAL_CHANNEL = eINSTANCE.getPhysicalMediumSegment_PhysicalChannel();
        public static final EReference PHYSICAL_MEDIUM_SEGMENT__CONNECTED_ECUS = eINSTANCE.getPhysicalMediumSegment_ConnectedEcus();
        public static final EReference PHYSICAL_MEDIUM_SEGMENT__CONNECTED_HUBS = eINSTANCE.getPhysicalMediumSegment_ConnectedHubs();
        public static final EAttribute PHYSICAL_MEDIUM_SEGMENT__PHYSICAL_MEDIUM_DATA_LINES = eINSTANCE.getPhysicalMediumSegment_PhysicalMediumDataLines();
        public static final EAttribute PHYSICAL_MEDIUM_SEGMENT__PHYSICAL_MEDIUM_TYPE = eINSTANCE.getPhysicalMediumSegment_PhysicalMediumType();
        public static final EClass SYSTEM_TOPOLOGY_TYPE = eINSTANCE.getSystemTopologyType();
        public static final EReference SYSTEM_TOPOLOGY_TYPE__COMMUNICATION_CLUSTERS = eINSTANCE.getSystemTopologyType_CommunicationClusters();
        public static final EReference SYSTEM_TOPOLOGY_TYPE__TOPOLOGY_ELEMENTS = eINSTANCE.getSystemTopologyType_TopologyElements();
        public static final EClass UNSPECIFIED_CONNECTION = eINSTANCE.getUnspecifiedConnection();
        public static final EClass COMMUNICATION_CLUSTER = eINSTANCE.getCommunicationCluster();
        public static final EReference COMMUNICATION_CLUSTER__SYSTEM_TOPOLOGY_TYPE = eINSTANCE.getCommunicationCluster_SystemTopologyType();
        public static final EAttribute COMMUNICATION_CLUSTER__COMMUNICATION_SPEED_BUS = eINSTANCE.getCommunicationCluster_CommunicationSpeedBus();
        public static final EReference COMMUNICATION_CLUSTER__PHYSICAL_CHANNELS = eINSTANCE.getCommunicationCluster_PhysicalChannels();
        public static final EAttribute COMMUNICATION_CLUSTER__PROTOCOL_NAME = eINSTANCE.getCommunicationCluster_ProtocolName();
        public static final EAttribute COMMUNICATION_CLUSTER__PROTOCOL_VERSION = eINSTANCE.getCommunicationCluster_ProtocolVersion();
        public static final EEnum CAN_BUS_CAN_ADDRESSING_MODE_ENUM = eINSTANCE.getCANBusCanAddressingModeEnum();
        public static final EEnum CAN_COMMUNICATION_PORT_INSTANCE_PROTOCOL_VERSION_ENUM = eINSTANCE.getCANCommunicationPortInstanceProtocolVersionEnum();
        public static final EEnum ECU_INSTANCE_POWER_SUPPLY_ENUM = eINSTANCE.getECUInstancePowerSupplyEnum();
        public static final EEnum HUB_HUB_TYPE_ENUM = eINSTANCE.getHubHubTypeEnum();
        public static final EEnum LIN_COMMUNICATION_PORT_INSTANCE_PROTOCOL_VERSION_ENUM = eINSTANCE.getLINCommunicationPortInstanceProtocolVersionEnum();
        public static final EEnum LIN_COMMUNICATION_PORT_INSTANCE_NODE_ROLE_ENUM = eINSTANCE.getLINCommunicationPortInstanceNodeRoleEnum();
        public static final EEnum PHYSICAL_MEDIUM_SEGMENT_PHYSICAL_MEDIUM_TYPE_ENUM = eINSTANCE.getPhysicalMediumSegmentPhysicalMediumTypeEnum();
    }
}

