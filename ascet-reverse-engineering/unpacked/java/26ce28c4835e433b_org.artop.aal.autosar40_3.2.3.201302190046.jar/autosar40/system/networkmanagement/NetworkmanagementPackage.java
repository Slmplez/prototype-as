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
package autosar40.system.networkmanagement;

import autosar40.system.networkmanagement.NetworkmanagementFactory;
import autosar40.system.networkmanagement.impl.NetworkmanagementPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface NetworkmanagementPackage
extends EPackage {
    public static final String eNAME = "networkmanagement";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/nm";
    public static final String eNS_PREFIX = "";
    public static final NetworkmanagementPackage eINSTANCE = NetworkmanagementPackageImpl.init();
    public static final int BUSSPECIFIC_NM_ECU = 0;
    public static final int BUSSPECIFIC_NM_ECU__GCHECKSUM = 0;
    public static final int BUSSPECIFIC_NM_ECU__GTIMESTAMP = 1;
    public static final int BUSSPECIFIC_NM_ECU__CHECKSUM = 2;
    public static final int BUSSPECIFIC_NM_ECU__TIMESTAMP = 3;
    public static final int BUSSPECIFIC_NM_ECU__NM_ECU = 4;
    public static final int BUSSPECIFIC_NM_ECU_FEATURE_COUNT = 5;
    public static final int NM_CLUSTER = 2;
    public static final int NM_CLUSTER__GCHECKSUM = 0;
    public static final int NM_CLUSTER__GTIMESTAMP = 1;
    public static final int NM_CLUSTER__CHECKSUM = 2;
    public static final int NM_CLUSTER__TIMESTAMP = 3;
    public static final int NM_CLUSTER__GSHORT_NAME = 4;
    public static final int NM_CLUSTER__SHORT_NAME = 5;
    public static final int NM_CLUSTER__LONG_NAME = 6;
    public static final int NM_CLUSTER__GUUID = 7;
    public static final int NM_CLUSTER__GCATEGORY = 8;
    public static final int NM_CLUSTER__GDESC = 9;
    public static final int NM_CLUSTER__DESC = 10;
    public static final int NM_CLUSTER__CATEGORY = 11;
    public static final int NM_CLUSTER__ADMIN_DATA = 12;
    public static final int NM_CLUSTER__INTRODUCTION = 13;
    public static final int NM_CLUSTER__ANNOTATIONS = 14;
    public static final int NM_CLUSTER__UUID = 15;
    public static final int NM_CLUSTER__ALL_EXTENSIONS = 16;
    public static final int NM_CLUSTER__CONTAINED_EXTENSIONS = 17;
    public static final int NM_CLUSTER__NM_CONFIG = 18;
    public static final int NM_CLUSTER__COMMUNICATION_CLUSTER = 19;
    public static final int NM_CLUSTER__NM_CHANNEL_ID = 20;
    public static final int NM_CLUSTER__NM_CHANNEL_SLEEP_MASTER = 21;
    public static final int NM_CLUSTER__NM_NODES = 22;
    public static final int NM_CLUSTER__NM_SYNCHRONIZING_NETWORK = 23;
    public static final int NM_CLUSTER__VARIATION_POINT = 24;
    public static final int NM_CLUSTER_FEATURE_COUNT = 25;
    public static final int CAN_NM_CLUSTER = 1;
    public static final int CAN_NM_CLUSTER__GCHECKSUM = 0;
    public static final int CAN_NM_CLUSTER__GTIMESTAMP = 1;
    public static final int CAN_NM_CLUSTER__CHECKSUM = 2;
    public static final int CAN_NM_CLUSTER__TIMESTAMP = 3;
    public static final int CAN_NM_CLUSTER__GSHORT_NAME = 4;
    public static final int CAN_NM_CLUSTER__SHORT_NAME = 5;
    public static final int CAN_NM_CLUSTER__LONG_NAME = 6;
    public static final int CAN_NM_CLUSTER__GUUID = 7;
    public static final int CAN_NM_CLUSTER__GCATEGORY = 8;
    public static final int CAN_NM_CLUSTER__GDESC = 9;
    public static final int CAN_NM_CLUSTER__DESC = 10;
    public static final int CAN_NM_CLUSTER__CATEGORY = 11;
    public static final int CAN_NM_CLUSTER__ADMIN_DATA = 12;
    public static final int CAN_NM_CLUSTER__INTRODUCTION = 13;
    public static final int CAN_NM_CLUSTER__ANNOTATIONS = 14;
    public static final int CAN_NM_CLUSTER__UUID = 15;
    public static final int CAN_NM_CLUSTER__ALL_EXTENSIONS = 16;
    public static final int CAN_NM_CLUSTER__CONTAINED_EXTENSIONS = 17;
    public static final int CAN_NM_CLUSTER__NM_CONFIG = 18;
    public static final int CAN_NM_CLUSTER__COMMUNICATION_CLUSTER = 19;
    public static final int CAN_NM_CLUSTER__NM_CHANNEL_ID = 20;
    public static final int CAN_NM_CLUSTER__NM_CHANNEL_SLEEP_MASTER = 21;
    public static final int CAN_NM_CLUSTER__NM_NODES = 22;
    public static final int CAN_NM_CLUSTER__NM_SYNCHRONIZING_NETWORK = 23;
    public static final int CAN_NM_CLUSTER__VARIATION_POINT = 24;
    public static final int CAN_NM_CLUSTER__NM_BUSLOAD_REDUCTION_ACTIVE = 25;
    public static final int CAN_NM_CLUSTER__NM_CAR_WAKE_UP_BIT_POSITION = 26;
    public static final int CAN_NM_CLUSTER__NM_CAR_WAKE_UP_FILTER_ENABLED = 27;
    public static final int CAN_NM_CLUSTER__NM_CAR_WAKE_UP_FILTER_NODE_ID = 28;
    public static final int CAN_NM_CLUSTER__NM_CAR_WAKE_UP_RX_ENABLED = 29;
    public static final int CAN_NM_CLUSTER__NM_CBV_POSITION = 30;
    public static final int CAN_NM_CLUSTER__NM_CHANNEL_ACTIVE = 31;
    public static final int CAN_NM_CLUSTER__NM_IMMEDIATE_NM_CYCLE_TIME = 32;
    public static final int CAN_NM_CLUSTER__NM_IMMEDIATE_NM_TRANSMISSIONS = 33;
    public static final int CAN_NM_CLUSTER__NM_MESSAGE_TIMEOUT_TIME = 34;
    public static final int CAN_NM_CLUSTER__NM_MSG_CYCLE_TIME = 35;
    public static final int CAN_NM_CLUSTER__NM_NETWORK_TIMEOUT = 36;
    public static final int CAN_NM_CLUSTER__NM_NID_POSITION = 37;
    public static final int CAN_NM_CLUSTER__NM_REMOTE_SLEEP_INDICATION_TIME = 38;
    public static final int CAN_NM_CLUSTER__NM_REPEAT_MESSAGE_TIME = 39;
    public static final int CAN_NM_CLUSTER__NM_USER_DATA_LENGTH = 40;
    public static final int CAN_NM_CLUSTER__NM_WAIT_BUS_SLEEP_TIME = 41;
    public static final int CAN_NM_CLUSTER_FEATURE_COUNT = 42;
    public static final int NM_NODE = 3;
    public static final int NM_NODE__GCHECKSUM = 0;
    public static final int NM_NODE__GTIMESTAMP = 1;
    public static final int NM_NODE__CHECKSUM = 2;
    public static final int NM_NODE__TIMESTAMP = 3;
    public static final int NM_NODE__GSHORT_NAME = 4;
    public static final int NM_NODE__SHORT_NAME = 5;
    public static final int NM_NODE__LONG_NAME = 6;
    public static final int NM_NODE__GUUID = 7;
    public static final int NM_NODE__GCATEGORY = 8;
    public static final int NM_NODE__GDESC = 9;
    public static final int NM_NODE__DESC = 10;
    public static final int NM_NODE__CATEGORY = 11;
    public static final int NM_NODE__ADMIN_DATA = 12;
    public static final int NM_NODE__INTRODUCTION = 13;
    public static final int NM_NODE__ANNOTATIONS = 14;
    public static final int NM_NODE__UUID = 15;
    public static final int NM_NODE__ALL_EXTENSIONS = 16;
    public static final int NM_NODE__CONTAINED_EXTENSIONS = 17;
    public static final int NM_NODE__NM_CLUSTER = 18;
    public static final int NM_NODE__CONTROLLER = 19;
    public static final int NM_NODE__NM_IF_ECU = 20;
    public static final int NM_NODE__NM_NODE_ID = 21;
    public static final int NM_NODE__NM_PASSIVE_MODE_ENABLED = 22;
    public static final int NM_NODE__RX_NM_PDUS = 23;
    public static final int NM_NODE__TX_NM_PDUS = 24;
    public static final int NM_NODE__VARIATION_POINT = 25;
    public static final int NM_NODE_FEATURE_COUNT = 26;
    public static final int NM_ECU = 4;
    public static final int NM_ECU__GCHECKSUM = 0;
    public static final int NM_ECU__GTIMESTAMP = 1;
    public static final int NM_ECU__CHECKSUM = 2;
    public static final int NM_ECU__TIMESTAMP = 3;
    public static final int NM_ECU__GSHORT_NAME = 4;
    public static final int NM_ECU__SHORT_NAME = 5;
    public static final int NM_ECU__LONG_NAME = 6;
    public static final int NM_ECU__GUUID = 7;
    public static final int NM_ECU__GCATEGORY = 8;
    public static final int NM_ECU__GDESC = 9;
    public static final int NM_ECU__DESC = 10;
    public static final int NM_ECU__CATEGORY = 11;
    public static final int NM_ECU__ADMIN_DATA = 12;
    public static final int NM_ECU__INTRODUCTION = 13;
    public static final int NM_ECU__ANNOTATIONS = 14;
    public static final int NM_ECU__UUID = 15;
    public static final int NM_ECU__ALL_EXTENSIONS = 16;
    public static final int NM_ECU__CONTAINED_EXTENSIONS = 17;
    public static final int NM_ECU__NM_CONFIG = 18;
    public static final int NM_ECU__BUS_SPECIFIC_NM_ECU = 19;
    public static final int NM_ECU__ECU_INSTANCE = 20;
    public static final int NM_ECU__NM_BUS_SYNCHRONIZATION_ENABLED = 21;
    public static final int NM_ECU__NM_COM_CONTROL_ENABLED = 22;
    public static final int NM_ECU__NM_COORDINATOR = 23;
    public static final int NM_ECU__NM_CYCLETIME_MAIN_FUNCTION = 24;
    public static final int NM_ECU__NM_MULTIPLE_CHANNELS_ENABLED = 25;
    public static final int NM_ECU__NM_NODE_DETECTION_ENABLED = 26;
    public static final int NM_ECU__NM_NODE_ID_ENABLED = 27;
    public static final int NM_ECU__NM_PASSIVE_MODE_ENABLED = 28;
    public static final int NM_ECU__NM_PDU_RX_INDICATION_ENABLED = 29;
    public static final int NM_ECU__NM_REMOTE_SLEEP_IND_ENABLED = 30;
    public static final int NM_ECU__NM_REPEAT_MSG_IND_ENABLED = 31;
    public static final int NM_ECU__NM_STATE_CHANGE_IND_ENABLED = 32;
    public static final int NM_ECU__NM_USER_DATA_ENABLED = 33;
    public static final int NM_ECU__VARIATION_POINT = 34;
    public static final int NM_ECU_FEATURE_COUNT = 35;
    public static final int NM_COORDINATOR = 5;
    public static final int NM_COORDINATOR__GCHECKSUM = 0;
    public static final int NM_COORDINATOR__GTIMESTAMP = 1;
    public static final int NM_COORDINATOR__CHECKSUM = 2;
    public static final int NM_COORDINATOR__TIMESTAMP = 3;
    public static final int NM_COORDINATOR__NM_ECU = 4;
    public static final int NM_COORDINATOR__INDEX = 5;
    public static final int NM_COORDINATOR__NM_ACTIVE_COORDINATOR = 6;
    public static final int NM_COORDINATOR__NM_GLOBAL_COORDINATOR_TIME = 7;
    public static final int NM_COORDINATOR__NM_NODES = 8;
    public static final int NM_COORDINATOR__NM_SHUTDOWN_DELAY_TIMER = 9;
    public static final int NM_COORDINATOR_FEATURE_COUNT = 10;
    public static final int NM_CLUSTER_COUPLING = 7;
    public static final int NM_CLUSTER_COUPLING__GCHECKSUM = 0;
    public static final int NM_CLUSTER_COUPLING__GTIMESTAMP = 1;
    public static final int NM_CLUSTER_COUPLING__CHECKSUM = 2;
    public static final int NM_CLUSTER_COUPLING__TIMESTAMP = 3;
    public static final int NM_CLUSTER_COUPLING__NM_CONFIG = 4;
    public static final int NM_CLUSTER_COUPLING_FEATURE_COUNT = 5;
    public static final int CAN_NM_CLUSTER_COUPLING = 6;
    public static final int CAN_NM_CLUSTER_COUPLING__GCHECKSUM = 0;
    public static final int CAN_NM_CLUSTER_COUPLING__GTIMESTAMP = 1;
    public static final int CAN_NM_CLUSTER_COUPLING__CHECKSUM = 2;
    public static final int CAN_NM_CLUSTER_COUPLING__TIMESTAMP = 3;
    public static final int CAN_NM_CLUSTER_COUPLING__NM_CONFIG = 4;
    public static final int CAN_NM_CLUSTER_COUPLING__COUPLED_CLUSTERS = 5;
    public static final int CAN_NM_CLUSTER_COUPLING__NM_BUSLOAD_REDUCTION_ENABLED = 6;
    public static final int CAN_NM_CLUSTER_COUPLING__NM_IMMEDIATE_RESTART_ENABLED = 7;
    public static final int CAN_NM_CLUSTER_COUPLING_FEATURE_COUNT = 8;
    public static final int CAN_NM_ECU = 8;
    public static final int CAN_NM_ECU__GCHECKSUM = 0;
    public static final int CAN_NM_ECU__GTIMESTAMP = 1;
    public static final int CAN_NM_ECU__CHECKSUM = 2;
    public static final int CAN_NM_ECU__TIMESTAMP = 3;
    public static final int CAN_NM_ECU__NM_ECU = 4;
    public static final int CAN_NM_ECU__NM_REPEAT_MSG_INDICATION_ENABLED = 5;
    public static final int CAN_NM_ECU_FEATURE_COUNT = 6;
    public static final int CAN_NM_NODE = 9;
    public static final int CAN_NM_NODE__GCHECKSUM = 0;
    public static final int CAN_NM_NODE__GTIMESTAMP = 1;
    public static final int CAN_NM_NODE__CHECKSUM = 2;
    public static final int CAN_NM_NODE__TIMESTAMP = 3;
    public static final int CAN_NM_NODE__GSHORT_NAME = 4;
    public static final int CAN_NM_NODE__SHORT_NAME = 5;
    public static final int CAN_NM_NODE__LONG_NAME = 6;
    public static final int CAN_NM_NODE__GUUID = 7;
    public static final int CAN_NM_NODE__GCATEGORY = 8;
    public static final int CAN_NM_NODE__GDESC = 9;
    public static final int CAN_NM_NODE__DESC = 10;
    public static final int CAN_NM_NODE__CATEGORY = 11;
    public static final int CAN_NM_NODE__ADMIN_DATA = 12;
    public static final int CAN_NM_NODE__INTRODUCTION = 13;
    public static final int CAN_NM_NODE__ANNOTATIONS = 14;
    public static final int CAN_NM_NODE__UUID = 15;
    public static final int CAN_NM_NODE__ALL_EXTENSIONS = 16;
    public static final int CAN_NM_NODE__CONTAINED_EXTENSIONS = 17;
    public static final int CAN_NM_NODE__NM_CLUSTER = 18;
    public static final int CAN_NM_NODE__CONTROLLER = 19;
    public static final int CAN_NM_NODE__NM_IF_ECU = 20;
    public static final int CAN_NM_NODE__NM_NODE_ID = 21;
    public static final int CAN_NM_NODE__NM_PASSIVE_MODE_ENABLED = 22;
    public static final int CAN_NM_NODE__RX_NM_PDUS = 23;
    public static final int CAN_NM_NODE__TX_NM_PDUS = 24;
    public static final int CAN_NM_NODE__VARIATION_POINT = 25;
    public static final int CAN_NM_NODE__NM_MSG_CYCLE_OFFSET = 26;
    public static final int CAN_NM_NODE__NM_MSG_REDUCED_TIME = 27;
    public static final int CAN_NM_NODE__NM_RANGE_CONFIG = 28;
    public static final int CAN_NM_NODE_FEATURE_COUNT = 29;
    public static final int CAN_NM_RANGE_CONFIG = 10;
    public static final int CAN_NM_RANGE_CONFIG__GCHECKSUM = 0;
    public static final int CAN_NM_RANGE_CONFIG__GTIMESTAMP = 1;
    public static final int CAN_NM_RANGE_CONFIG__CHECKSUM = 2;
    public static final int CAN_NM_RANGE_CONFIG__TIMESTAMP = 3;
    public static final int CAN_NM_RANGE_CONFIG__CAN_NM_NODE = 4;
    public static final int CAN_NM_RANGE_CONFIG__LOWER_CAN_ID = 5;
    public static final int CAN_NM_RANGE_CONFIG__UPPER_CAN_ID = 6;
    public static final int CAN_NM_RANGE_CONFIG_FEATURE_COUNT = 7;
    public static final int FLEXRAY_NM_CLUSTER = 11;
    public static final int FLEXRAY_NM_CLUSTER__GCHECKSUM = 0;
    public static final int FLEXRAY_NM_CLUSTER__GTIMESTAMP = 1;
    public static final int FLEXRAY_NM_CLUSTER__CHECKSUM = 2;
    public static final int FLEXRAY_NM_CLUSTER__TIMESTAMP = 3;
    public static final int FLEXRAY_NM_CLUSTER__GSHORT_NAME = 4;
    public static final int FLEXRAY_NM_CLUSTER__SHORT_NAME = 5;
    public static final int FLEXRAY_NM_CLUSTER__LONG_NAME = 6;
    public static final int FLEXRAY_NM_CLUSTER__GUUID = 7;
    public static final int FLEXRAY_NM_CLUSTER__GCATEGORY = 8;
    public static final int FLEXRAY_NM_CLUSTER__GDESC = 9;
    public static final int FLEXRAY_NM_CLUSTER__DESC = 10;
    public static final int FLEXRAY_NM_CLUSTER__CATEGORY = 11;
    public static final int FLEXRAY_NM_CLUSTER__ADMIN_DATA = 12;
    public static final int FLEXRAY_NM_CLUSTER__INTRODUCTION = 13;
    public static final int FLEXRAY_NM_CLUSTER__ANNOTATIONS = 14;
    public static final int FLEXRAY_NM_CLUSTER__UUID = 15;
    public static final int FLEXRAY_NM_CLUSTER__ALL_EXTENSIONS = 16;
    public static final int FLEXRAY_NM_CLUSTER__CONTAINED_EXTENSIONS = 17;
    public static final int FLEXRAY_NM_CLUSTER__NM_CONFIG = 18;
    public static final int FLEXRAY_NM_CLUSTER__COMMUNICATION_CLUSTER = 19;
    public static final int FLEXRAY_NM_CLUSTER__NM_CHANNEL_ID = 20;
    public static final int FLEXRAY_NM_CLUSTER__NM_CHANNEL_SLEEP_MASTER = 21;
    public static final int FLEXRAY_NM_CLUSTER__NM_NODES = 22;
    public static final int FLEXRAY_NM_CLUSTER__NM_SYNCHRONIZING_NETWORK = 23;
    public static final int FLEXRAY_NM_CLUSTER__VARIATION_POINT = 24;
    public static final int FLEXRAY_NM_CLUSTER__NM_CAR_WAKE_UP_BIT_POSITION = 25;
    public static final int FLEXRAY_NM_CLUSTER__NM_CAR_WAKE_UP_FILTER_ENABLED = 26;
    public static final int FLEXRAY_NM_CLUSTER__NM_CAR_WAKE_UP_FILTER_NODE_ID = 27;
    public static final int FLEXRAY_NM_CLUSTER__NM_CAR_WAKE_UP_RX_ENABLED = 28;
    public static final int FLEXRAY_NM_CLUSTER__NM_CONTROL_BIT_VECTOR_ACTIVE = 29;
    public static final int FLEXRAY_NM_CLUSTER__NM_DATA_CYCLE = 30;
    public static final int FLEXRAY_NM_CLUSTER__NM_DATA_ENABLED = 31;
    public static final int FLEXRAY_NM_CLUSTER__NM_DETECTION_LOCK = 32;
    public static final int FLEXRAY_NM_CLUSTER__NM_MAIN_FUNCTION_PERIOD = 33;
    public static final int FLEXRAY_NM_CLUSTER__NM_MESSAGE_TIMEOUT_TIME = 34;
    public static final int FLEXRAY_NM_CLUSTER__NM_READY_SLEEP_COUNT = 35;
    public static final int FLEXRAY_NM_CLUSTER__NM_REMOTE_SLEEP_INDICATION_TIME = 36;
    public static final int FLEXRAY_NM_CLUSTER__NM_REPEAT_MESSAGE_BIT_ACTIVE = 37;
    public static final int FLEXRAY_NM_CLUSTER__NM_REPEAT_MESSAGE_TIME = 38;
    public static final int FLEXRAY_NM_CLUSTER__NM_REPETITION_CYCLE = 39;
    public static final int FLEXRAY_NM_CLUSTER__NM_VOTING_CYCLE = 40;
    public static final int FLEXRAY_NM_CLUSTER_FEATURE_COUNT = 41;
    public static final int FLEXRAY_NM_CLUSTER_COUPLING = 12;
    public static final int FLEXRAY_NM_CLUSTER_COUPLING__GCHECKSUM = 0;
    public static final int FLEXRAY_NM_CLUSTER_COUPLING__GTIMESTAMP = 1;
    public static final int FLEXRAY_NM_CLUSTER_COUPLING__CHECKSUM = 2;
    public static final int FLEXRAY_NM_CLUSTER_COUPLING__TIMESTAMP = 3;
    public static final int FLEXRAY_NM_CLUSTER_COUPLING__NM_CONFIG = 4;
    public static final int FLEXRAY_NM_CLUSTER_COUPLING__COUPLED_CLUSTERS = 5;
    public static final int FLEXRAY_NM_CLUSTER_COUPLING__NM_CONTROL_BIT_VECTOR_ENABLED = 6;
    public static final int FLEXRAY_NM_CLUSTER_COUPLING__NM_DATA_DISABLED = 7;
    public static final int FLEXRAY_NM_CLUSTER_COUPLING__NM_SCHEDULE_VARIANT = 8;
    public static final int FLEXRAY_NM_CLUSTER_COUPLING_FEATURE_COUNT = 9;
    public static final int FLEXRAY_NM_ECU = 13;
    public static final int FLEXRAY_NM_ECU__GCHECKSUM = 0;
    public static final int FLEXRAY_NM_ECU__GTIMESTAMP = 1;
    public static final int FLEXRAY_NM_ECU__CHECKSUM = 2;
    public static final int FLEXRAY_NM_ECU__TIMESTAMP = 3;
    public static final int FLEXRAY_NM_ECU__NM_ECU = 4;
    public static final int FLEXRAY_NM_ECU__NM_HW_VOTE_ENABLED = 5;
    public static final int FLEXRAY_NM_ECU__NM_MAIN_FUNCTION_ACROSS_FR_CYCLE = 6;
    public static final int FLEXRAY_NM_ECU__NM_REPEAT_MESSAGE_BIT_ENABLE = 7;
    public static final int FLEXRAY_NM_ECU_FEATURE_COUNT = 8;
    public static final int FLEXRAY_NM_NODE = 14;
    public static final int FLEXRAY_NM_NODE__GCHECKSUM = 0;
    public static final int FLEXRAY_NM_NODE__GTIMESTAMP = 1;
    public static final int FLEXRAY_NM_NODE__CHECKSUM = 2;
    public static final int FLEXRAY_NM_NODE__TIMESTAMP = 3;
    public static final int FLEXRAY_NM_NODE__GSHORT_NAME = 4;
    public static final int FLEXRAY_NM_NODE__SHORT_NAME = 5;
    public static final int FLEXRAY_NM_NODE__LONG_NAME = 6;
    public static final int FLEXRAY_NM_NODE__GUUID = 7;
    public static final int FLEXRAY_NM_NODE__GCATEGORY = 8;
    public static final int FLEXRAY_NM_NODE__GDESC = 9;
    public static final int FLEXRAY_NM_NODE__DESC = 10;
    public static final int FLEXRAY_NM_NODE__CATEGORY = 11;
    public static final int FLEXRAY_NM_NODE__ADMIN_DATA = 12;
    public static final int FLEXRAY_NM_NODE__INTRODUCTION = 13;
    public static final int FLEXRAY_NM_NODE__ANNOTATIONS = 14;
    public static final int FLEXRAY_NM_NODE__UUID = 15;
    public static final int FLEXRAY_NM_NODE__ALL_EXTENSIONS = 16;
    public static final int FLEXRAY_NM_NODE__CONTAINED_EXTENSIONS = 17;
    public static final int FLEXRAY_NM_NODE__NM_CLUSTER = 18;
    public static final int FLEXRAY_NM_NODE__CONTROLLER = 19;
    public static final int FLEXRAY_NM_NODE__NM_IF_ECU = 20;
    public static final int FLEXRAY_NM_NODE__NM_NODE_ID = 21;
    public static final int FLEXRAY_NM_NODE__NM_PASSIVE_MODE_ENABLED = 22;
    public static final int FLEXRAY_NM_NODE__RX_NM_PDUS = 23;
    public static final int FLEXRAY_NM_NODE__TX_NM_PDUS = 24;
    public static final int FLEXRAY_NM_NODE__VARIATION_POINT = 25;
    public static final int FLEXRAY_NM_NODE__NM_INSTANCE_ID = 26;
    public static final int FLEXRAY_NM_NODE_FEATURE_COUNT = 27;
    public static final int NM_CONFIG = 15;
    public static final int NM_CONFIG__GCHECKSUM = 0;
    public static final int NM_CONFIG__GTIMESTAMP = 1;
    public static final int NM_CONFIG__CHECKSUM = 2;
    public static final int NM_CONFIG__TIMESTAMP = 3;
    public static final int NM_CONFIG__GSHORT_NAME = 4;
    public static final int NM_CONFIG__SHORT_NAME = 5;
    public static final int NM_CONFIG__LONG_NAME = 6;
    public static final int NM_CONFIG__GUUID = 7;
    public static final int NM_CONFIG__GCATEGORY = 8;
    public static final int NM_CONFIG__GDESC = 9;
    public static final int NM_CONFIG__DESC = 10;
    public static final int NM_CONFIG__CATEGORY = 11;
    public static final int NM_CONFIG__ADMIN_DATA = 12;
    public static final int NM_CONFIG__INTRODUCTION = 13;
    public static final int NM_CONFIG__ANNOTATIONS = 14;
    public static final int NM_CONFIG__UUID = 15;
    public static final int NM_CONFIG__ALL_EXTENSIONS = 16;
    public static final int NM_CONFIG__CONTAINED_EXTENSIONS = 17;
    public static final int NM_CONFIG__GAR_PACKAGE = 18;
    public static final int NM_CONFIG__AR_PACKAGE = 19;
    public static final int NM_CONFIG__VARIATION_POINT = 20;
    public static final int NM_CONFIG__NM_CLUSTERS = 21;
    public static final int NM_CONFIG__NM_CLUSTER_COUPLINGS = 22;
    public static final int NM_CONFIG__NM_IF_ECUS = 23;
    public static final int NM_CONFIG_FEATURE_COUNT = 24;
    public static final int UDP_NM_CLUSTER = 16;
    public static final int UDP_NM_CLUSTER__GCHECKSUM = 0;
    public static final int UDP_NM_CLUSTER__GTIMESTAMP = 1;
    public static final int UDP_NM_CLUSTER__CHECKSUM = 2;
    public static final int UDP_NM_CLUSTER__TIMESTAMP = 3;
    public static final int UDP_NM_CLUSTER__GSHORT_NAME = 4;
    public static final int UDP_NM_CLUSTER__SHORT_NAME = 5;
    public static final int UDP_NM_CLUSTER__LONG_NAME = 6;
    public static final int UDP_NM_CLUSTER__GUUID = 7;
    public static final int UDP_NM_CLUSTER__GCATEGORY = 8;
    public static final int UDP_NM_CLUSTER__GDESC = 9;
    public static final int UDP_NM_CLUSTER__DESC = 10;
    public static final int UDP_NM_CLUSTER__CATEGORY = 11;
    public static final int UDP_NM_CLUSTER__ADMIN_DATA = 12;
    public static final int UDP_NM_CLUSTER__INTRODUCTION = 13;
    public static final int UDP_NM_CLUSTER__ANNOTATIONS = 14;
    public static final int UDP_NM_CLUSTER__UUID = 15;
    public static final int UDP_NM_CLUSTER__ALL_EXTENSIONS = 16;
    public static final int UDP_NM_CLUSTER__CONTAINED_EXTENSIONS = 17;
    public static final int UDP_NM_CLUSTER__NM_CONFIG = 18;
    public static final int UDP_NM_CLUSTER__COMMUNICATION_CLUSTER = 19;
    public static final int UDP_NM_CLUSTER__NM_CHANNEL_ID = 20;
    public static final int UDP_NM_CLUSTER__NM_CHANNEL_SLEEP_MASTER = 21;
    public static final int UDP_NM_CLUSTER__NM_NODES = 22;
    public static final int UDP_NM_CLUSTER__NM_SYNCHRONIZING_NETWORK = 23;
    public static final int UDP_NM_CLUSTER__VARIATION_POINT = 24;
    public static final int UDP_NM_CLUSTER__NM_CBV_POSITION = 25;
    public static final int UDP_NM_CLUSTER__NM_CHANNEL_ACTIVE = 26;
    public static final int UDP_NM_CLUSTER__NM_MESSAGE_TIMEOUT_TIME = 27;
    public static final int UDP_NM_CLUSTER__NM_MSG_CYCLE_TIME = 28;
    public static final int UDP_NM_CLUSTER__NM_NETWORK_TIMEOUT = 29;
    public static final int UDP_NM_CLUSTER__NM_NID_POSITION = 30;
    public static final int UDP_NM_CLUSTER__NM_REMOTE_SLEEP_INDICATION_TIME = 31;
    public static final int UDP_NM_CLUSTER__NM_REPEAT_MESSAGE_TIME = 32;
    public static final int UDP_NM_CLUSTER__NM_USER_DATA_LENGTH = 33;
    public static final int UDP_NM_CLUSTER__NM_WAIT_BUS_SLEEP_TIME = 34;
    public static final int UDP_NM_CLUSTER_FEATURE_COUNT = 35;
    public static final int UDP_NM_CLUSTER_COUPLING = 17;
    public static final int UDP_NM_CLUSTER_COUPLING__GCHECKSUM = 0;
    public static final int UDP_NM_CLUSTER_COUPLING__GTIMESTAMP = 1;
    public static final int UDP_NM_CLUSTER_COUPLING__CHECKSUM = 2;
    public static final int UDP_NM_CLUSTER_COUPLING__TIMESTAMP = 3;
    public static final int UDP_NM_CLUSTER_COUPLING__NM_CONFIG = 4;
    public static final int UDP_NM_CLUSTER_COUPLING__COUPLED_CLUSTERS = 5;
    public static final int UDP_NM_CLUSTER_COUPLING__NM_BUS_LOAD_REDUCTION_ENABLED = 6;
    public static final int UDP_NM_CLUSTER_COUPLING__NM_IMMEDIATE_RESTART_ENABLED = 7;
    public static final int UDP_NM_CLUSTER_COUPLING_FEATURE_COUNT = 8;
    public static final int UDP_NM_ECU = 18;
    public static final int UDP_NM_ECU__GCHECKSUM = 0;
    public static final int UDP_NM_ECU__GTIMESTAMP = 1;
    public static final int UDP_NM_ECU__CHECKSUM = 2;
    public static final int UDP_NM_ECU__TIMESTAMP = 3;
    public static final int UDP_NM_ECU__NM_ECU = 4;
    public static final int UDP_NM_ECU__NM_REPEAT_MSG_INDICATION_ENABLED = 5;
    public static final int UDP_NM_ECU__NM_SYNCHRONIZATION_POINT_ENABLED = 6;
    public static final int UDP_NM_ECU_FEATURE_COUNT = 7;
    public static final int UDP_NM_NODE = 19;
    public static final int UDP_NM_NODE__GCHECKSUM = 0;
    public static final int UDP_NM_NODE__GTIMESTAMP = 1;
    public static final int UDP_NM_NODE__CHECKSUM = 2;
    public static final int UDP_NM_NODE__TIMESTAMP = 3;
    public static final int UDP_NM_NODE__GSHORT_NAME = 4;
    public static final int UDP_NM_NODE__SHORT_NAME = 5;
    public static final int UDP_NM_NODE__LONG_NAME = 6;
    public static final int UDP_NM_NODE__GUUID = 7;
    public static final int UDP_NM_NODE__GCATEGORY = 8;
    public static final int UDP_NM_NODE__GDESC = 9;
    public static final int UDP_NM_NODE__DESC = 10;
    public static final int UDP_NM_NODE__CATEGORY = 11;
    public static final int UDP_NM_NODE__ADMIN_DATA = 12;
    public static final int UDP_NM_NODE__INTRODUCTION = 13;
    public static final int UDP_NM_NODE__ANNOTATIONS = 14;
    public static final int UDP_NM_NODE__UUID = 15;
    public static final int UDP_NM_NODE__ALL_EXTENSIONS = 16;
    public static final int UDP_NM_NODE__CONTAINED_EXTENSIONS = 17;
    public static final int UDP_NM_NODE__NM_CLUSTER = 18;
    public static final int UDP_NM_NODE__CONTROLLER = 19;
    public static final int UDP_NM_NODE__NM_IF_ECU = 20;
    public static final int UDP_NM_NODE__NM_NODE_ID = 21;
    public static final int UDP_NM_NODE__NM_PASSIVE_MODE_ENABLED = 22;
    public static final int UDP_NM_NODE__RX_NM_PDUS = 23;
    public static final int UDP_NM_NODE__TX_NM_PDUS = 24;
    public static final int UDP_NM_NODE__VARIATION_POINT = 25;
    public static final int UDP_NM_NODE__NM_MSG_CYCLE_OFFSET = 26;
    public static final int UDP_NM_NODE_FEATURE_COUNT = 27;
    public static final int FLEXRAY_NM_SCHEDULE_VARIANT = 20;

    public EClass getBusspecificNmEcu();

    public EReference getBusspecificNmEcu_NmEcu();

    public EClass getCanNmCluster();

    public EAttribute getCanNmCluster_NmBusloadReductionActive();

    public EAttribute getCanNmCluster_NmCarWakeUpBitPosition();

    public EAttribute getCanNmCluster_NmCarWakeUpFilterEnabled();

    public EAttribute getCanNmCluster_NmCarWakeUpFilterNodeId();

    public EAttribute getCanNmCluster_NmCarWakeUpRxEnabled();

    public EAttribute getCanNmCluster_NmCbvPosition();

    public EAttribute getCanNmCluster_NmChannelActive();

    public EAttribute getCanNmCluster_NmImmediateNmCycleTime();

    public EAttribute getCanNmCluster_NmImmediateNmTransmissions();

    public EAttribute getCanNmCluster_NmMessageTimeoutTime();

    public EAttribute getCanNmCluster_NmMsgCycleTime();

    public EAttribute getCanNmCluster_NmNetworkTimeout();

    public EAttribute getCanNmCluster_NmNidPosition();

    public EAttribute getCanNmCluster_NmRemoteSleepIndicationTime();

    public EAttribute getCanNmCluster_NmRepeatMessageTime();

    public EAttribute getCanNmCluster_NmUserDataLength();

    public EAttribute getCanNmCluster_NmWaitBusSleepTime();

    public EClass getNmCluster();

    public EReference getNmCluster_NmConfig();

    public EReference getNmCluster_CommunicationCluster();

    public EAttribute getNmCluster_NmChannelId();

    public EAttribute getNmCluster_NmChannelSleepMaster();

    public EReference getNmCluster_NmNodes();

    public EAttribute getNmCluster_NmSynchronizingNetwork();

    public EReference getNmCluster_VariationPoint();

    public EClass getNmNode();

    public EReference getNmNode_NmCluster();

    public EReference getNmNode_Controller();

    public EReference getNmNode_NmIfEcu();

    public EAttribute getNmNode_NmNodeId();

    public EAttribute getNmNode_NmPassiveModeEnabled();

    public EReference getNmNode_RxNmPdus();

    public EReference getNmNode_TxNmPdus();

    public EReference getNmNode_VariationPoint();

    public EClass getNmEcu();

    public EReference getNmEcu_NmConfig();

    public EReference getNmEcu_BusSpecificNmEcu();

    public EReference getNmEcu_EcuInstance();

    public EAttribute getNmEcu_NmBusSynchronizationEnabled();

    public EAttribute getNmEcu_NmComControlEnabled();

    public EReference getNmEcu_NmCoordinator();

    public EAttribute getNmEcu_NmCycletimeMainFunction();

    public EAttribute getNmEcu_NmMultipleChannelsEnabled();

    public EAttribute getNmEcu_NmNodeDetectionEnabled();

    public EAttribute getNmEcu_NmNodeIdEnabled();

    public EAttribute getNmEcu_NmPassiveModeEnabled();

    public EAttribute getNmEcu_NmPduRxIndicationEnabled();

    public EAttribute getNmEcu_NmRemoteSleepIndEnabled();

    public EAttribute getNmEcu_NmRepeatMsgIndEnabled();

    public EAttribute getNmEcu_NmStateChangeIndEnabled();

    public EAttribute getNmEcu_NmUserDataEnabled();

    public EReference getNmEcu_VariationPoint();

    public EClass getNmCoordinator();

    public EReference getNmCoordinator_NmEcu();

    public EAttribute getNmCoordinator_Index();

    public EAttribute getNmCoordinator_NmActiveCoordinator();

    public EAttribute getNmCoordinator_NmGlobalCoordinatorTime();

    public EReference getNmCoordinator_NmNodes();

    public EAttribute getNmCoordinator_NmShutdownDelayTimer();

    public EClass getCanNmClusterCoupling();

    public EReference getCanNmClusterCoupling_CoupledClusters();

    public EAttribute getCanNmClusterCoupling_NmBusloadReductionEnabled();

    public EAttribute getCanNmClusterCoupling_NmImmediateRestartEnabled();

    public EClass getNmClusterCoupling();

    public EReference getNmClusterCoupling_NmConfig();

    public EClass getCanNmEcu();

    public EAttribute getCanNmEcu_NmRepeatMsgIndicationEnabled();

    public EClass getCanNmNode();

    public EAttribute getCanNmNode_NmMsgCycleOffset();

    public EAttribute getCanNmNode_NmMsgReducedTime();

    public EReference getCanNmNode_NmRangeConfig();

    public EClass getCanNmRangeConfig();

    public EReference getCanNmRangeConfig_CanNmNode();

    public EAttribute getCanNmRangeConfig_LowerCanId();

    public EAttribute getCanNmRangeConfig_UpperCanId();

    public EClass getFlexrayNmCluster();

    public EAttribute getFlexrayNmCluster_NmCarWakeUpBitPosition();

    public EAttribute getFlexrayNmCluster_NmCarWakeUpFilterEnabled();

    public EAttribute getFlexrayNmCluster_NmCarWakeUpFilterNodeId();

    public EAttribute getFlexrayNmCluster_NmCarWakeUpRxEnabled();

    public EAttribute getFlexrayNmCluster_NmControlBitVectorActive();

    public EAttribute getFlexrayNmCluster_NmDataCycle();

    public EAttribute getFlexrayNmCluster_NmDataEnabled();

    public EAttribute getFlexrayNmCluster_NmDetectionLock();

    public EAttribute getFlexrayNmCluster_NmMainFunctionPeriod();

    public EAttribute getFlexrayNmCluster_NmMessageTimeoutTime();

    public EAttribute getFlexrayNmCluster_NmReadySleepCount();

    public EAttribute getFlexrayNmCluster_NmRemoteSleepIndicationTime();

    public EAttribute getFlexrayNmCluster_NmRepeatMessageBitActive();

    public EAttribute getFlexrayNmCluster_NmRepeatMessageTime();

    public EAttribute getFlexrayNmCluster_NmRepetitionCycle();

    public EAttribute getFlexrayNmCluster_NmVotingCycle();

    public EClass getFlexrayNmClusterCoupling();

    public EReference getFlexrayNmClusterCoupling_CoupledClusters();

    public EAttribute getFlexrayNmClusterCoupling_NmControlBitVectorEnabled();

    public EAttribute getFlexrayNmClusterCoupling_NmDataDisabled();

    public EAttribute getFlexrayNmClusterCoupling_NmScheduleVariant();

    public EClass getFlexrayNmEcu();

    public EAttribute getFlexrayNmEcu_NmHwVoteEnabled();

    public EAttribute getFlexrayNmEcu_NmMainFunctionAcrossFrCycle();

    public EAttribute getFlexrayNmEcu_NmRepeatMessageBitEnable();

    public EClass getFlexrayNmNode();

    public EAttribute getFlexrayNmNode_NmInstanceId();

    public EClass getNmConfig();

    public EReference getNmConfig_NmClusters();

    public EReference getNmConfig_NmClusterCouplings();

    public EReference getNmConfig_NmIfEcus();

    public EClass getUdpNmCluster();

    public EAttribute getUdpNmCluster_NmCbvPosition();

    public EAttribute getUdpNmCluster_NmChannelActive();

    public EAttribute getUdpNmCluster_NmMessageTimeoutTime();

    public EAttribute getUdpNmCluster_NmMsgCycleTime();

    public EAttribute getUdpNmCluster_NmNetworkTimeout();

    public EAttribute getUdpNmCluster_NmNidPosition();

    public EAttribute getUdpNmCluster_NmRemoteSleepIndicationTime();

    public EAttribute getUdpNmCluster_NmRepeatMessageTime();

    public EAttribute getUdpNmCluster_NmUserDataLength();

    public EAttribute getUdpNmCluster_NmWaitBusSleepTime();

    public EClass getUdpNmClusterCoupling();

    public EReference getUdpNmClusterCoupling_CoupledClusters();

    public EAttribute getUdpNmClusterCoupling_NmBusLoadReductionEnabled();

    public EAttribute getUdpNmClusterCoupling_NmImmediateRestartEnabled();

    public EClass getUdpNmEcu();

    public EAttribute getUdpNmEcu_NmRepeatMsgIndicationEnabled();

    public EAttribute getUdpNmEcu_NmSynchronizationPointEnabled();

    public EClass getUdpNmNode();

    public EAttribute getUdpNmNode_NmMsgCycleOffset();

    public EEnum getFlexrayNmScheduleVariant();

    public NetworkmanagementFactory getNetworkmanagementFactory();

    public static interface Literals {
        public static final EClass BUSSPECIFIC_NM_ECU = eINSTANCE.getBusspecificNmEcu();
        public static final EReference BUSSPECIFIC_NM_ECU__NM_ECU = eINSTANCE.getBusspecificNmEcu_NmEcu();
        public static final EClass CAN_NM_CLUSTER = eINSTANCE.getCanNmCluster();
        public static final EAttribute CAN_NM_CLUSTER__NM_BUSLOAD_REDUCTION_ACTIVE = eINSTANCE.getCanNmCluster_NmBusloadReductionActive();
        public static final EAttribute CAN_NM_CLUSTER__NM_CAR_WAKE_UP_BIT_POSITION = eINSTANCE.getCanNmCluster_NmCarWakeUpBitPosition();
        public static final EAttribute CAN_NM_CLUSTER__NM_CAR_WAKE_UP_FILTER_ENABLED = eINSTANCE.getCanNmCluster_NmCarWakeUpFilterEnabled();
        public static final EAttribute CAN_NM_CLUSTER__NM_CAR_WAKE_UP_FILTER_NODE_ID = eINSTANCE.getCanNmCluster_NmCarWakeUpFilterNodeId();
        public static final EAttribute CAN_NM_CLUSTER__NM_CAR_WAKE_UP_RX_ENABLED = eINSTANCE.getCanNmCluster_NmCarWakeUpRxEnabled();
        public static final EAttribute CAN_NM_CLUSTER__NM_CBV_POSITION = eINSTANCE.getCanNmCluster_NmCbvPosition();
        public static final EAttribute CAN_NM_CLUSTER__NM_CHANNEL_ACTIVE = eINSTANCE.getCanNmCluster_NmChannelActive();
        public static final EAttribute CAN_NM_CLUSTER__NM_IMMEDIATE_NM_CYCLE_TIME = eINSTANCE.getCanNmCluster_NmImmediateNmCycleTime();
        public static final EAttribute CAN_NM_CLUSTER__NM_IMMEDIATE_NM_TRANSMISSIONS = eINSTANCE.getCanNmCluster_NmImmediateNmTransmissions();
        public static final EAttribute CAN_NM_CLUSTER__NM_MESSAGE_TIMEOUT_TIME = eINSTANCE.getCanNmCluster_NmMessageTimeoutTime();
        public static final EAttribute CAN_NM_CLUSTER__NM_MSG_CYCLE_TIME = eINSTANCE.getCanNmCluster_NmMsgCycleTime();
        public static final EAttribute CAN_NM_CLUSTER__NM_NETWORK_TIMEOUT = eINSTANCE.getCanNmCluster_NmNetworkTimeout();
        public static final EAttribute CAN_NM_CLUSTER__NM_NID_POSITION = eINSTANCE.getCanNmCluster_NmNidPosition();
        public static final EAttribute CAN_NM_CLUSTER__NM_REMOTE_SLEEP_INDICATION_TIME = eINSTANCE.getCanNmCluster_NmRemoteSleepIndicationTime();
        public static final EAttribute CAN_NM_CLUSTER__NM_REPEAT_MESSAGE_TIME = eINSTANCE.getCanNmCluster_NmRepeatMessageTime();
        public static final EAttribute CAN_NM_CLUSTER__NM_USER_DATA_LENGTH = eINSTANCE.getCanNmCluster_NmUserDataLength();
        public static final EAttribute CAN_NM_CLUSTER__NM_WAIT_BUS_SLEEP_TIME = eINSTANCE.getCanNmCluster_NmWaitBusSleepTime();
        public static final EClass NM_CLUSTER = eINSTANCE.getNmCluster();
        public static final EReference NM_CLUSTER__NM_CONFIG = eINSTANCE.getNmCluster_NmConfig();
        public static final EReference NM_CLUSTER__COMMUNICATION_CLUSTER = eINSTANCE.getNmCluster_CommunicationCluster();
        public static final EAttribute NM_CLUSTER__NM_CHANNEL_ID = eINSTANCE.getNmCluster_NmChannelId();
        public static final EAttribute NM_CLUSTER__NM_CHANNEL_SLEEP_MASTER = eINSTANCE.getNmCluster_NmChannelSleepMaster();
        public static final EReference NM_CLUSTER__NM_NODES = eINSTANCE.getNmCluster_NmNodes();
        public static final EAttribute NM_CLUSTER__NM_SYNCHRONIZING_NETWORK = eINSTANCE.getNmCluster_NmSynchronizingNetwork();
        public static final EReference NM_CLUSTER__VARIATION_POINT = eINSTANCE.getNmCluster_VariationPoint();
        public static final EClass NM_NODE = eINSTANCE.getNmNode();
        public static final EReference NM_NODE__NM_CLUSTER = eINSTANCE.getNmNode_NmCluster();
        public static final EReference NM_NODE__CONTROLLER = eINSTANCE.getNmNode_Controller();
        public static final EReference NM_NODE__NM_IF_ECU = eINSTANCE.getNmNode_NmIfEcu();
        public static final EAttribute NM_NODE__NM_NODE_ID = eINSTANCE.getNmNode_NmNodeId();
        public static final EAttribute NM_NODE__NM_PASSIVE_MODE_ENABLED = eINSTANCE.getNmNode_NmPassiveModeEnabled();
        public static final EReference NM_NODE__RX_NM_PDUS = eINSTANCE.getNmNode_RxNmPdus();
        public static final EReference NM_NODE__TX_NM_PDUS = eINSTANCE.getNmNode_TxNmPdus();
        public static final EReference NM_NODE__VARIATION_POINT = eINSTANCE.getNmNode_VariationPoint();
        public static final EClass NM_ECU = eINSTANCE.getNmEcu();
        public static final EReference NM_ECU__NM_CONFIG = eINSTANCE.getNmEcu_NmConfig();
        public static final EReference NM_ECU__BUS_SPECIFIC_NM_ECU = eINSTANCE.getNmEcu_BusSpecificNmEcu();
        public static final EReference NM_ECU__ECU_INSTANCE = eINSTANCE.getNmEcu_EcuInstance();
        public static final EAttribute NM_ECU__NM_BUS_SYNCHRONIZATION_ENABLED = eINSTANCE.getNmEcu_NmBusSynchronizationEnabled();
        public static final EAttribute NM_ECU__NM_COM_CONTROL_ENABLED = eINSTANCE.getNmEcu_NmComControlEnabled();
        public static final EReference NM_ECU__NM_COORDINATOR = eINSTANCE.getNmEcu_NmCoordinator();
        public static final EAttribute NM_ECU__NM_CYCLETIME_MAIN_FUNCTION = eINSTANCE.getNmEcu_NmCycletimeMainFunction();
        public static final EAttribute NM_ECU__NM_MULTIPLE_CHANNELS_ENABLED = eINSTANCE.getNmEcu_NmMultipleChannelsEnabled();
        public static final EAttribute NM_ECU__NM_NODE_DETECTION_ENABLED = eINSTANCE.getNmEcu_NmNodeDetectionEnabled();
        public static final EAttribute NM_ECU__NM_NODE_ID_ENABLED = eINSTANCE.getNmEcu_NmNodeIdEnabled();
        public static final EAttribute NM_ECU__NM_PASSIVE_MODE_ENABLED = eINSTANCE.getNmEcu_NmPassiveModeEnabled();
        public static final EAttribute NM_ECU__NM_PDU_RX_INDICATION_ENABLED = eINSTANCE.getNmEcu_NmPduRxIndicationEnabled();
        public static final EAttribute NM_ECU__NM_REMOTE_SLEEP_IND_ENABLED = eINSTANCE.getNmEcu_NmRemoteSleepIndEnabled();
        public static final EAttribute NM_ECU__NM_REPEAT_MSG_IND_ENABLED = eINSTANCE.getNmEcu_NmRepeatMsgIndEnabled();
        public static final EAttribute NM_ECU__NM_STATE_CHANGE_IND_ENABLED = eINSTANCE.getNmEcu_NmStateChangeIndEnabled();
        public static final EAttribute NM_ECU__NM_USER_DATA_ENABLED = eINSTANCE.getNmEcu_NmUserDataEnabled();
        public static final EReference NM_ECU__VARIATION_POINT = eINSTANCE.getNmEcu_VariationPoint();
        public static final EClass NM_COORDINATOR = eINSTANCE.getNmCoordinator();
        public static final EReference NM_COORDINATOR__NM_ECU = eINSTANCE.getNmCoordinator_NmEcu();
        public static final EAttribute NM_COORDINATOR__INDEX = eINSTANCE.getNmCoordinator_Index();
        public static final EAttribute NM_COORDINATOR__NM_ACTIVE_COORDINATOR = eINSTANCE.getNmCoordinator_NmActiveCoordinator();
        public static final EAttribute NM_COORDINATOR__NM_GLOBAL_COORDINATOR_TIME = eINSTANCE.getNmCoordinator_NmGlobalCoordinatorTime();
        public static final EReference NM_COORDINATOR__NM_NODES = eINSTANCE.getNmCoordinator_NmNodes();
        public static final EAttribute NM_COORDINATOR__NM_SHUTDOWN_DELAY_TIMER = eINSTANCE.getNmCoordinator_NmShutdownDelayTimer();
        public static final EClass CAN_NM_CLUSTER_COUPLING = eINSTANCE.getCanNmClusterCoupling();
        public static final EReference CAN_NM_CLUSTER_COUPLING__COUPLED_CLUSTERS = eINSTANCE.getCanNmClusterCoupling_CoupledClusters();
        public static final EAttribute CAN_NM_CLUSTER_COUPLING__NM_BUSLOAD_REDUCTION_ENABLED = eINSTANCE.getCanNmClusterCoupling_NmBusloadReductionEnabled();
        public static final EAttribute CAN_NM_CLUSTER_COUPLING__NM_IMMEDIATE_RESTART_ENABLED = eINSTANCE.getCanNmClusterCoupling_NmImmediateRestartEnabled();
        public static final EClass NM_CLUSTER_COUPLING = eINSTANCE.getNmClusterCoupling();
        public static final EReference NM_CLUSTER_COUPLING__NM_CONFIG = eINSTANCE.getNmClusterCoupling_NmConfig();
        public static final EClass CAN_NM_ECU = eINSTANCE.getCanNmEcu();
        public static final EAttribute CAN_NM_ECU__NM_REPEAT_MSG_INDICATION_ENABLED = eINSTANCE.getCanNmEcu_NmRepeatMsgIndicationEnabled();
        public static final EClass CAN_NM_NODE = eINSTANCE.getCanNmNode();
        public static final EAttribute CAN_NM_NODE__NM_MSG_CYCLE_OFFSET = eINSTANCE.getCanNmNode_NmMsgCycleOffset();
        public static final EAttribute CAN_NM_NODE__NM_MSG_REDUCED_TIME = eINSTANCE.getCanNmNode_NmMsgReducedTime();
        public static final EReference CAN_NM_NODE__NM_RANGE_CONFIG = eINSTANCE.getCanNmNode_NmRangeConfig();
        public static final EClass CAN_NM_RANGE_CONFIG = eINSTANCE.getCanNmRangeConfig();
        public static final EReference CAN_NM_RANGE_CONFIG__CAN_NM_NODE = eINSTANCE.getCanNmRangeConfig_CanNmNode();
        public static final EAttribute CAN_NM_RANGE_CONFIG__LOWER_CAN_ID = eINSTANCE.getCanNmRangeConfig_LowerCanId();
        public static final EAttribute CAN_NM_RANGE_CONFIG__UPPER_CAN_ID = eINSTANCE.getCanNmRangeConfig_UpperCanId();
        public static final EClass FLEXRAY_NM_CLUSTER = eINSTANCE.getFlexrayNmCluster();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_CAR_WAKE_UP_BIT_POSITION = eINSTANCE.getFlexrayNmCluster_NmCarWakeUpBitPosition();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_CAR_WAKE_UP_FILTER_ENABLED = eINSTANCE.getFlexrayNmCluster_NmCarWakeUpFilterEnabled();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_CAR_WAKE_UP_FILTER_NODE_ID = eINSTANCE.getFlexrayNmCluster_NmCarWakeUpFilterNodeId();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_CAR_WAKE_UP_RX_ENABLED = eINSTANCE.getFlexrayNmCluster_NmCarWakeUpRxEnabled();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_CONTROL_BIT_VECTOR_ACTIVE = eINSTANCE.getFlexrayNmCluster_NmControlBitVectorActive();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_DATA_CYCLE = eINSTANCE.getFlexrayNmCluster_NmDataCycle();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_DATA_ENABLED = eINSTANCE.getFlexrayNmCluster_NmDataEnabled();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_DETECTION_LOCK = eINSTANCE.getFlexrayNmCluster_NmDetectionLock();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_MAIN_FUNCTION_PERIOD = eINSTANCE.getFlexrayNmCluster_NmMainFunctionPeriod();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_MESSAGE_TIMEOUT_TIME = eINSTANCE.getFlexrayNmCluster_NmMessageTimeoutTime();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_READY_SLEEP_COUNT = eINSTANCE.getFlexrayNmCluster_NmReadySleepCount();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_REMOTE_SLEEP_INDICATION_TIME = eINSTANCE.getFlexrayNmCluster_NmRemoteSleepIndicationTime();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_REPEAT_MESSAGE_BIT_ACTIVE = eINSTANCE.getFlexrayNmCluster_NmRepeatMessageBitActive();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_REPEAT_MESSAGE_TIME = eINSTANCE.getFlexrayNmCluster_NmRepeatMessageTime();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_REPETITION_CYCLE = eINSTANCE.getFlexrayNmCluster_NmRepetitionCycle();
        public static final EAttribute FLEXRAY_NM_CLUSTER__NM_VOTING_CYCLE = eINSTANCE.getFlexrayNmCluster_NmVotingCycle();
        public static final EClass FLEXRAY_NM_CLUSTER_COUPLING = eINSTANCE.getFlexrayNmClusterCoupling();
        public static final EReference FLEXRAY_NM_CLUSTER_COUPLING__COUPLED_CLUSTERS = eINSTANCE.getFlexrayNmClusterCoupling_CoupledClusters();
        public static final EAttribute FLEXRAY_NM_CLUSTER_COUPLING__NM_CONTROL_BIT_VECTOR_ENABLED = eINSTANCE.getFlexrayNmClusterCoupling_NmControlBitVectorEnabled();
        public static final EAttribute FLEXRAY_NM_CLUSTER_COUPLING__NM_DATA_DISABLED = eINSTANCE.getFlexrayNmClusterCoupling_NmDataDisabled();
        public static final EAttribute FLEXRAY_NM_CLUSTER_COUPLING__NM_SCHEDULE_VARIANT = eINSTANCE.getFlexrayNmClusterCoupling_NmScheduleVariant();
        public static final EClass FLEXRAY_NM_ECU = eINSTANCE.getFlexrayNmEcu();
        public static final EAttribute FLEXRAY_NM_ECU__NM_HW_VOTE_ENABLED = eINSTANCE.getFlexrayNmEcu_NmHwVoteEnabled();
        public static final EAttribute FLEXRAY_NM_ECU__NM_MAIN_FUNCTION_ACROSS_FR_CYCLE = eINSTANCE.getFlexrayNmEcu_NmMainFunctionAcrossFrCycle();
        public static final EAttribute FLEXRAY_NM_ECU__NM_REPEAT_MESSAGE_BIT_ENABLE = eINSTANCE.getFlexrayNmEcu_NmRepeatMessageBitEnable();
        public static final EClass FLEXRAY_NM_NODE = eINSTANCE.getFlexrayNmNode();
        public static final EAttribute FLEXRAY_NM_NODE__NM_INSTANCE_ID = eINSTANCE.getFlexrayNmNode_NmInstanceId();
        public static final EClass NM_CONFIG = eINSTANCE.getNmConfig();
        public static final EReference NM_CONFIG__NM_CLUSTERS = eINSTANCE.getNmConfig_NmClusters();
        public static final EReference NM_CONFIG__NM_CLUSTER_COUPLINGS = eINSTANCE.getNmConfig_NmClusterCouplings();
        public static final EReference NM_CONFIG__NM_IF_ECUS = eINSTANCE.getNmConfig_NmIfEcus();
        public static final EClass UDP_NM_CLUSTER = eINSTANCE.getUdpNmCluster();
        public static final EAttribute UDP_NM_CLUSTER__NM_CBV_POSITION = eINSTANCE.getUdpNmCluster_NmCbvPosition();
        public static final EAttribute UDP_NM_CLUSTER__NM_CHANNEL_ACTIVE = eINSTANCE.getUdpNmCluster_NmChannelActive();
        public static final EAttribute UDP_NM_CLUSTER__NM_MESSAGE_TIMEOUT_TIME = eINSTANCE.getUdpNmCluster_NmMessageTimeoutTime();
        public static final EAttribute UDP_NM_CLUSTER__NM_MSG_CYCLE_TIME = eINSTANCE.getUdpNmCluster_NmMsgCycleTime();
        public static final EAttribute UDP_NM_CLUSTER__NM_NETWORK_TIMEOUT = eINSTANCE.getUdpNmCluster_NmNetworkTimeout();
        public static final EAttribute UDP_NM_CLUSTER__NM_NID_POSITION = eINSTANCE.getUdpNmCluster_NmNidPosition();
        public static final EAttribute UDP_NM_CLUSTER__NM_REMOTE_SLEEP_INDICATION_TIME = eINSTANCE.getUdpNmCluster_NmRemoteSleepIndicationTime();
        public static final EAttribute UDP_NM_CLUSTER__NM_REPEAT_MESSAGE_TIME = eINSTANCE.getUdpNmCluster_NmRepeatMessageTime();
        public static final EAttribute UDP_NM_CLUSTER__NM_USER_DATA_LENGTH = eINSTANCE.getUdpNmCluster_NmUserDataLength();
        public static final EAttribute UDP_NM_CLUSTER__NM_WAIT_BUS_SLEEP_TIME = eINSTANCE.getUdpNmCluster_NmWaitBusSleepTime();
        public static final EClass UDP_NM_CLUSTER_COUPLING = eINSTANCE.getUdpNmClusterCoupling();
        public static final EReference UDP_NM_CLUSTER_COUPLING__COUPLED_CLUSTERS = eINSTANCE.getUdpNmClusterCoupling_CoupledClusters();
        public static final EAttribute UDP_NM_CLUSTER_COUPLING__NM_BUS_LOAD_REDUCTION_ENABLED = eINSTANCE.getUdpNmClusterCoupling_NmBusLoadReductionEnabled();
        public static final EAttribute UDP_NM_CLUSTER_COUPLING__NM_IMMEDIATE_RESTART_ENABLED = eINSTANCE.getUdpNmClusterCoupling_NmImmediateRestartEnabled();
        public static final EClass UDP_NM_ECU = eINSTANCE.getUdpNmEcu();
        public static final EAttribute UDP_NM_ECU__NM_REPEAT_MSG_INDICATION_ENABLED = eINSTANCE.getUdpNmEcu_NmRepeatMsgIndicationEnabled();
        public static final EAttribute UDP_NM_ECU__NM_SYNCHRONIZATION_POINT_ENABLED = eINSTANCE.getUdpNmEcu_NmSynchronizationPointEnabled();
        public static final EClass UDP_NM_NODE = eINSTANCE.getUdpNmNode();
        public static final EAttribute UDP_NM_NODE__NM_MSG_CYCLE_OFFSET = eINSTANCE.getUdpNmNode_NmMsgCycleOffset();
        public static final EEnum FLEXRAY_NM_SCHEDULE_VARIANT = eINSTANCE.getFlexrayNmScheduleVariant();
    }
}

