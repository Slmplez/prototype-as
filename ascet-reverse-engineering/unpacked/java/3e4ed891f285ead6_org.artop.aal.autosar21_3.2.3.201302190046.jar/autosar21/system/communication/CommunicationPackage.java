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
package autosar21.system.communication;

import autosar21.system.communication.CommunicationFactory;
import autosar21.system.communication.impl.CommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CommunicationPackage
extends EPackage {
    public static final String eNAME = "communication";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/s/c";
    public static final String eNS_PREFIX = "";
    public static final CommunicationPackage eINSTANCE = CommunicationPackageImpl.init();
    public static final int PDU_PROTOTYPE = 0;
    public static final int PDU_PROTOTYPE__GCHECKSUM = 0;
    public static final int PDU_PROTOTYPE__GTIMESTAMP = 1;
    public static final int PDU_PROTOTYPE__CHECKSUM = 2;
    public static final int PDU_PROTOTYPE__TIMESTAMP = 3;
    public static final int PDU_PROTOTYPE__GSHORT_NAME = 4;
    public static final int PDU_PROTOTYPE__GUUID = 5;
    public static final int PDU_PROTOTYPE__GCATEGORY = 6;
    public static final int PDU_PROTOTYPE__GDESC = 7;
    public static final int PDU_PROTOTYPE__SHORT_NAME = 8;
    public static final int PDU_PROTOTYPE__LONG_NAME = 9;
    public static final int PDU_PROTOTYPE__DESC = 10;
    public static final int PDU_PROTOTYPE__CATEGORY = 11;
    public static final int PDU_PROTOTYPE__ADMIN_DATA = 12;
    public static final int PDU_PROTOTYPE__UUID = 13;
    public static final int PDU_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int PDU_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int PDU_PROTOTYPE__FRAME = 16;
    public static final int PDU_PROTOTYPE__INCLUDED_CLUSTER_SIGNALS = 17;
    public static final int PDU_PROTOTYPE__PDU_TYPE = 18;
    public static final int PDU_PROTOTYPE__START_POSITION = 19;
    public static final int PDU_PROTOTYPE__UPDATE_INDICATION_BIT_POSITION = 20;
    public static final int PDU_PROTOTYPE_FEATURE_COUNT = 21;
    public static final int TIMING = 1;
    public static final int TIMING__GCHECKSUM = 0;
    public static final int TIMING__GTIMESTAMP = 1;
    public static final int TIMING__CHECKSUM = 2;
    public static final int TIMING__TIMESTAMP = 3;
    public static final int TIMING__FREE_TEXT_CONDITIONS = 4;
    public static final int TIMING_FEATURE_COUNT = 5;
    public static final int FREE_TEXT_CONDITION = 2;
    public static final int FREE_TEXT_CONDITION__GCHECKSUM = 0;
    public static final int FREE_TEXT_CONDITION__GTIMESTAMP = 1;
    public static final int FREE_TEXT_CONDITION__CHECKSUM = 2;
    public static final int FREE_TEXT_CONDITION__TIMESTAMP = 3;
    public static final int FREE_TEXT_CONDITION__TIMING = 4;
    public static final int FREE_TEXT_CONDITION__CONDITION = 5;
    public static final int FREE_TEXT_CONDITION_FEATURE_COUNT = 6;
    public static final int COMMUNICATION_MATRIX_TYPE = 3;
    public static final int COMMUNICATION_MATRIX_TYPE__GCHECKSUM = 0;
    public static final int COMMUNICATION_MATRIX_TYPE__GTIMESTAMP = 1;
    public static final int COMMUNICATION_MATRIX_TYPE__CHECKSUM = 2;
    public static final int COMMUNICATION_MATRIX_TYPE__TIMESTAMP = 3;
    public static final int COMMUNICATION_MATRIX_TYPE__GSHORT_NAME = 4;
    public static final int COMMUNICATION_MATRIX_TYPE__GUUID = 5;
    public static final int COMMUNICATION_MATRIX_TYPE__GCATEGORY = 6;
    public static final int COMMUNICATION_MATRIX_TYPE__GDESC = 7;
    public static final int COMMUNICATION_MATRIX_TYPE__SHORT_NAME = 8;
    public static final int COMMUNICATION_MATRIX_TYPE__LONG_NAME = 9;
    public static final int COMMUNICATION_MATRIX_TYPE__DESC = 10;
    public static final int COMMUNICATION_MATRIX_TYPE__CATEGORY = 11;
    public static final int COMMUNICATION_MATRIX_TYPE__ADMIN_DATA = 12;
    public static final int COMMUNICATION_MATRIX_TYPE__UUID = 13;
    public static final int COMMUNICATION_MATRIX_TYPE__ALL_EXTENSIONS = 14;
    public static final int COMMUNICATION_MATRIX_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int COMMUNICATION_MATRIX_TYPE__GAR_PACKAGE = 16;
    public static final int COMMUNICATION_MATRIX_TYPE__AR_PACKAGE = 17;
    public static final int COMMUNICATION_MATRIX_TYPE__COMMUNICATION_CLUSTER = 18;
    public static final int COMMUNICATION_MATRIX_TYPE__FRAMES = 19;
    public static final int COMMUNICATION_MATRIX_TYPE__LIN_SCHEDULING_TABLES = 20;
    public static final int COMMUNICATION_MATRIX_TYPE__SYSTEM_TOPOLOGY_TYPE = 21;
    public static final int COMMUNICATION_MATRIX_TYPE_FEATURE_COUNT = 22;
    public static final int LIN_SCHEDULING_TABLE = 4;
    public static final int LIN_SCHEDULING_TABLE__GCHECKSUM = 0;
    public static final int LIN_SCHEDULING_TABLE__GTIMESTAMP = 1;
    public static final int LIN_SCHEDULING_TABLE__CHECKSUM = 2;
    public static final int LIN_SCHEDULING_TABLE__TIMESTAMP = 3;
    public static final int LIN_SCHEDULING_TABLE__GSHORT_NAME = 4;
    public static final int LIN_SCHEDULING_TABLE__GUUID = 5;
    public static final int LIN_SCHEDULING_TABLE__GCATEGORY = 6;
    public static final int LIN_SCHEDULING_TABLE__GDESC = 7;
    public static final int LIN_SCHEDULING_TABLE__SHORT_NAME = 8;
    public static final int LIN_SCHEDULING_TABLE__LONG_NAME = 9;
    public static final int LIN_SCHEDULING_TABLE__DESC = 10;
    public static final int LIN_SCHEDULING_TABLE__CATEGORY = 11;
    public static final int LIN_SCHEDULING_TABLE__ADMIN_DATA = 12;
    public static final int LIN_SCHEDULING_TABLE__UUID = 13;
    public static final int LIN_SCHEDULING_TABLE__ALL_EXTENSIONS = 14;
    public static final int LIN_SCHEDULING_TABLE__CONTAINED_EXTENSIONS = 15;
    public static final int LIN_SCHEDULING_TABLE__COMMUNICATION_MATRIX_TYPE = 16;
    public static final int LIN_SCHEDULING_TABLE__ENTRIES = 17;
    public static final int LIN_SCHEDULING_TABLE_FEATURE_COUNT = 18;
    public static final int LIN_SCHEDULING_TABLE_ENTRY = 5;
    public static final int LIN_SCHEDULING_TABLE_ENTRY__GCHECKSUM = 0;
    public static final int LIN_SCHEDULING_TABLE_ENTRY__GTIMESTAMP = 1;
    public static final int LIN_SCHEDULING_TABLE_ENTRY__CHECKSUM = 2;
    public static final int LIN_SCHEDULING_TABLE_ENTRY__TIMESTAMP = 3;
    public static final int LIN_SCHEDULING_TABLE_ENTRY__LIN_SCHEDULING_TABLE = 4;
    public static final int LIN_SCHEDULING_TABLE_ENTRY__DELAY_TO_NEXT_FRAME = 5;
    public static final int LIN_SCHEDULING_TABLE_ENTRY_FEATURE_COUNT = 6;
    public static final int FRAME = 6;
    public static final int FRAME__GCHECKSUM = 0;
    public static final int FRAME__GTIMESTAMP = 1;
    public static final int FRAME__CHECKSUM = 2;
    public static final int FRAME__TIMESTAMP = 3;
    public static final int FRAME__GSHORT_NAME = 4;
    public static final int FRAME__GUUID = 5;
    public static final int FRAME__GCATEGORY = 6;
    public static final int FRAME__GDESC = 7;
    public static final int FRAME__SHORT_NAME = 8;
    public static final int FRAME__LONG_NAME = 9;
    public static final int FRAME__DESC = 10;
    public static final int FRAME__CATEGORY = 11;
    public static final int FRAME__ADMIN_DATA = 12;
    public static final int FRAME__UUID = 13;
    public static final int FRAME__ALL_EXTENSIONS = 14;
    public static final int FRAME__CONTAINED_EXTENSIONS = 15;
    public static final int FRAME__COMMUNICATION_MATRIX_TYPE = 16;
    public static final int FRAME__FRAME_ID = 17;
    public static final int FRAME__FRAME_LENGTH = 18;
    public static final int FRAME__FRAME_TIMINGS = 19;
    public static final int FRAME__MINIMUM_DELAY_TIME = 20;
    public static final int FRAME__PDU_PROTOTYPES = 21;
    public static final int FRAME__RECEIVERS = 22;
    public static final int FRAME__TRANSMITTER = 23;
    public static final int FRAME__USED_PHYSICAL_CHANNEL = 24;
    public static final int FRAME_FEATURE_COUNT = 25;
    public static final int ABSOLUTELY_SCHEDULED_TIMING = 7;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__GCHECKSUM = 0;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__GTIMESTAMP = 1;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__CHECKSUM = 2;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__TIMESTAMP = 3;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__FREE_TEXT_CONDITIONS = 4;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__BASE_CYCLE = 5;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__CYCLE_REPETITION = 6;
    public static final int ABSOLUTELY_SCHEDULED_TIMING__SLOT_ID = 7;
    public static final int ABSOLUTELY_SCHEDULED_TIMING_FEATURE_COUNT = 8;
    public static final int ACTIVE_CONDITION = 8;
    public static final int ACTIVE_CONDITION__GCHECKSUM = 0;
    public static final int ACTIVE_CONDITION__GTIMESTAMP = 1;
    public static final int ACTIVE_CONDITION__CHECKSUM = 2;
    public static final int ACTIVE_CONDITION__TIMESTAMP = 3;
    public static final int ACTIVE_CONDITION__SYSTEM_STATES = 4;
    public static final int ACTIVE_CONDITION_FEATURE_COUNT = 5;
    public static final int SYSTEM_STATE_TRIGGER = 9;
    public static final int SYSTEM_STATE_TRIGGER__GCHECKSUM = 0;
    public static final int SYSTEM_STATE_TRIGGER__GTIMESTAMP = 1;
    public static final int SYSTEM_STATE_TRIGGER__CHECKSUM = 2;
    public static final int SYSTEM_STATE_TRIGGER__TIMESTAMP = 3;
    public static final int SYSTEM_STATE_TRIGGER__SYSTEM_STATE_CONDITIONS = 4;
    public static final int SYSTEM_STATE_TRIGGER_FEATURE_COUNT = 5;
    public static final int CAN_FRAME = 10;
    public static final int CAN_FRAME__GCHECKSUM = 0;
    public static final int CAN_FRAME__GTIMESTAMP = 1;
    public static final int CAN_FRAME__CHECKSUM = 2;
    public static final int CAN_FRAME__TIMESTAMP = 3;
    public static final int CAN_FRAME__GSHORT_NAME = 4;
    public static final int CAN_FRAME__GUUID = 5;
    public static final int CAN_FRAME__GCATEGORY = 6;
    public static final int CAN_FRAME__GDESC = 7;
    public static final int CAN_FRAME__SHORT_NAME = 8;
    public static final int CAN_FRAME__LONG_NAME = 9;
    public static final int CAN_FRAME__DESC = 10;
    public static final int CAN_FRAME__CATEGORY = 11;
    public static final int CAN_FRAME__ADMIN_DATA = 12;
    public static final int CAN_FRAME__UUID = 13;
    public static final int CAN_FRAME__ALL_EXTENSIONS = 14;
    public static final int CAN_FRAME__CONTAINED_EXTENSIONS = 15;
    public static final int CAN_FRAME__COMMUNICATION_MATRIX_TYPE = 16;
    public static final int CAN_FRAME__FRAME_ID = 17;
    public static final int CAN_FRAME__FRAME_LENGTH = 18;
    public static final int CAN_FRAME__FRAME_TIMINGS = 19;
    public static final int CAN_FRAME__MINIMUM_DELAY_TIME = 20;
    public static final int CAN_FRAME__PDU_PROTOTYPES = 21;
    public static final int CAN_FRAME__RECEIVERS = 22;
    public static final int CAN_FRAME__TRANSMITTER = 23;
    public static final int CAN_FRAME__USED_PHYSICAL_CHANNEL = 24;
    public static final int CAN_FRAME_FEATURE_COUNT = 25;
    public static final int CYCLIC_TIMING = 11;
    public static final int CYCLIC_TIMING__GCHECKSUM = 0;
    public static final int CYCLIC_TIMING__GTIMESTAMP = 1;
    public static final int CYCLIC_TIMING__CHECKSUM = 2;
    public static final int CYCLIC_TIMING__TIMESTAMP = 3;
    public static final int CYCLIC_TIMING__FREE_TEXT_CONDITIONS = 4;
    public static final int CYCLIC_TIMING__ACTIVE_CONDITION = 5;
    public static final int CYCLIC_TIMING__CYCLE_TIME = 6;
    public static final int CYCLIC_TIMING__START_CONDITION = 7;
    public static final int CYCLIC_TIMING__STARTING_TIME = 8;
    public static final int CYCLIC_TIMING__STOP_CONDITION = 9;
    public static final int CYCLIC_TIMING_FEATURE_COUNT = 10;
    public static final int STOP_CONDITION = 12;
    public static final int STOP_CONDITION__GCHECKSUM = 0;
    public static final int STOP_CONDITION__GTIMESTAMP = 1;
    public static final int STOP_CONDITION__CHECKSUM = 2;
    public static final int STOP_CONDITION__TIMESTAMP = 3;
    public static final int STOP_CONDITION__CYCLIC_TIMING = 4;
    public static final int STOP_CONDITION__SIGNAL_STATES = 5;
    public static final int STOP_CONDITION__SYSTEM_STATES = 6;
    public static final int STOP_CONDITION_FEATURE_COUNT = 7;
    public static final int SIGNAL_TRIGGER = 13;
    public static final int SIGNAL_TRIGGER__GCHECKSUM = 0;
    public static final int SIGNAL_TRIGGER__GTIMESTAMP = 1;
    public static final int SIGNAL_TRIGGER__CHECKSUM = 2;
    public static final int SIGNAL_TRIGGER__TIMESTAMP = 3;
    public static final int SIGNAL_TRIGGER__COMPARED_SIGNAL = 4;
    public static final int SIGNAL_TRIGGER__DATA_EVENT_CONDITION = 5;
    public static final int SIGNAL_TRIGGER_FEATURE_COUNT = 6;
    public static final int START_CONDITION = 14;
    public static final int START_CONDITION__GCHECKSUM = 0;
    public static final int START_CONDITION__GTIMESTAMP = 1;
    public static final int START_CONDITION__CHECKSUM = 2;
    public static final int START_CONDITION__TIMESTAMP = 3;
    public static final int START_CONDITION__CYCLIC_TIMING = 4;
    public static final int START_CONDITION__SIGNAL_STATES = 5;
    public static final int START_CONDITION__SYSTEM_STATES = 6;
    public static final int START_CONDITION_FEATURE_COUNT = 7;
    public static final int EVENT_CONTROLLED_TIMING = 15;
    public static final int EVENT_CONTROLLED_TIMING__GCHECKSUM = 0;
    public static final int EVENT_CONTROLLED_TIMING__GTIMESTAMP = 1;
    public static final int EVENT_CONTROLLED_TIMING__CHECKSUM = 2;
    public static final int EVENT_CONTROLLED_TIMING__TIMESTAMP = 3;
    public static final int EVENT_CONTROLLED_TIMING__FREE_TEXT_CONDITIONS = 4;
    public static final int EVENT_CONTROLLED_TIMING__ACTIVE_CONDITION = 5;
    public static final int EVENT_CONTROLLED_TIMING__DEBOUNCE_TIME = 6;
    public static final int EVENT_CONTROLLED_TIMING__NUMBER_OF_REPEATS = 7;
    public static final int EVENT_CONTROLLED_TIMING__REPEAT_CYCLE_TIME = 8;
    public static final int EVENT_CONTROLLED_TIMING__SEND_CONDITION = 9;
    public static final int EVENT_CONTROLLED_TIMING_FEATURE_COUNT = 10;
    public static final int SEND_CONDITION = 16;
    public static final int SEND_CONDITION__GCHECKSUM = 0;
    public static final int SEND_CONDITION__GTIMESTAMP = 1;
    public static final int SEND_CONDITION__CHECKSUM = 2;
    public static final int SEND_CONDITION__TIMESTAMP = 3;
    public static final int SEND_CONDITION__EVENT_CONTROLLED_TIMING = 4;
    public static final int SEND_CONDITION__SIGNAL_STATES = 5;
    public static final int SEND_CONDITION__SYSTEM_STATES = 6;
    public static final int SEND_CONDITION_FEATURE_COUNT = 7;
    public static final int EVENT_TRIGGERED_FRAME_SLOT = 17;
    public static final int EVENT_TRIGGERED_FRAME_SLOT__GCHECKSUM = 0;
    public static final int EVENT_TRIGGERED_FRAME_SLOT__GTIMESTAMP = 1;
    public static final int EVENT_TRIGGERED_FRAME_SLOT__CHECKSUM = 2;
    public static final int EVENT_TRIGGERED_FRAME_SLOT__TIMESTAMP = 3;
    public static final int EVENT_TRIGGERED_FRAME_SLOT__LIN_SCHEDULING_TABLE = 4;
    public static final int EVENT_TRIGGERED_FRAME_SLOT__DELAY_TO_NEXT_FRAME = 5;
    public static final int EVENT_TRIGGERED_FRAME_SLOT__EVENT_TRIGGERED_FRAME_ID = 6;
    public static final int EVENT_TRIGGERED_FRAME_SLOT__UNCONDITIONAL_FRAMES = 7;
    public static final int EVENT_TRIGGERED_FRAME_SLOT_FEATURE_COUNT = 8;
    public static final int LIN_FRAME = 18;
    public static final int LIN_FRAME__GCHECKSUM = 0;
    public static final int LIN_FRAME__GTIMESTAMP = 1;
    public static final int LIN_FRAME__CHECKSUM = 2;
    public static final int LIN_FRAME__TIMESTAMP = 3;
    public static final int LIN_FRAME__GSHORT_NAME = 4;
    public static final int LIN_FRAME__GUUID = 5;
    public static final int LIN_FRAME__GCATEGORY = 6;
    public static final int LIN_FRAME__GDESC = 7;
    public static final int LIN_FRAME__SHORT_NAME = 8;
    public static final int LIN_FRAME__LONG_NAME = 9;
    public static final int LIN_FRAME__DESC = 10;
    public static final int LIN_FRAME__CATEGORY = 11;
    public static final int LIN_FRAME__ADMIN_DATA = 12;
    public static final int LIN_FRAME__UUID = 13;
    public static final int LIN_FRAME__ALL_EXTENSIONS = 14;
    public static final int LIN_FRAME__CONTAINED_EXTENSIONS = 15;
    public static final int LIN_FRAME__COMMUNICATION_MATRIX_TYPE = 16;
    public static final int LIN_FRAME__FRAME_ID = 17;
    public static final int LIN_FRAME__FRAME_LENGTH = 18;
    public static final int LIN_FRAME__FRAME_TIMINGS = 19;
    public static final int LIN_FRAME__MINIMUM_DELAY_TIME = 20;
    public static final int LIN_FRAME__PDU_PROTOTYPES = 21;
    public static final int LIN_FRAME__RECEIVERS = 22;
    public static final int LIN_FRAME__TRANSMITTER = 23;
    public static final int LIN_FRAME__USED_PHYSICAL_CHANNEL = 24;
    public static final int LIN_FRAME__RESPONSE_ERROR_SIGNAL = 25;
    public static final int LIN_FRAME_FEATURE_COUNT = 26;
    public static final int FLEXRAY_FRAME = 19;
    public static final int FLEXRAY_FRAME__GCHECKSUM = 0;
    public static final int FLEXRAY_FRAME__GTIMESTAMP = 1;
    public static final int FLEXRAY_FRAME__CHECKSUM = 2;
    public static final int FLEXRAY_FRAME__TIMESTAMP = 3;
    public static final int FLEXRAY_FRAME__GSHORT_NAME = 4;
    public static final int FLEXRAY_FRAME__GUUID = 5;
    public static final int FLEXRAY_FRAME__GCATEGORY = 6;
    public static final int FLEXRAY_FRAME__GDESC = 7;
    public static final int FLEXRAY_FRAME__SHORT_NAME = 8;
    public static final int FLEXRAY_FRAME__LONG_NAME = 9;
    public static final int FLEXRAY_FRAME__DESC = 10;
    public static final int FLEXRAY_FRAME__CATEGORY = 11;
    public static final int FLEXRAY_FRAME__ADMIN_DATA = 12;
    public static final int FLEXRAY_FRAME__UUID = 13;
    public static final int FLEXRAY_FRAME__ALL_EXTENSIONS = 14;
    public static final int FLEXRAY_FRAME__CONTAINED_EXTENSIONS = 15;
    public static final int FLEXRAY_FRAME__COMMUNICATION_MATRIX_TYPE = 16;
    public static final int FLEXRAY_FRAME__FRAME_ID = 17;
    public static final int FLEXRAY_FRAME__FRAME_LENGTH = 18;
    public static final int FLEXRAY_FRAME__FRAME_TIMINGS = 19;
    public static final int FLEXRAY_FRAME__MINIMUM_DELAY_TIME = 20;
    public static final int FLEXRAY_FRAME__PDU_PROTOTYPES = 21;
    public static final int FLEXRAY_FRAME__RECEIVERS = 22;
    public static final int FLEXRAY_FRAME__TRANSMITTER = 23;
    public static final int FLEXRAY_FRAME__USED_PHYSICAL_CHANNEL = 24;
    public static final int FLEXRAY_FRAME_FEATURE_COUNT = 25;
    public static final int GATEWAY_ENTRY = 20;
    public static final int GATEWAY_ENTRY__GCHECKSUM = 0;
    public static final int GATEWAY_ENTRY__GTIMESTAMP = 1;
    public static final int GATEWAY_ENTRY__CHECKSUM = 2;
    public static final int GATEWAY_ENTRY__TIMESTAMP = 3;
    public static final int GATEWAY_ENTRY__GATEWAY_TYPE = 4;
    public static final int GATEWAY_ENTRY__GATEWAY_ENTRY_ID = 5;
    public static final int GATEWAY_ENTRY_FEATURE_COUNT = 6;
    public static final int GATEWAY_TYPE = 21;
    public static final int GATEWAY_TYPE__GCHECKSUM = 0;
    public static final int GATEWAY_TYPE__GTIMESTAMP = 1;
    public static final int GATEWAY_TYPE__CHECKSUM = 2;
    public static final int GATEWAY_TYPE__TIMESTAMP = 3;
    public static final int GATEWAY_TYPE__GSHORT_NAME = 4;
    public static final int GATEWAY_TYPE__GUUID = 5;
    public static final int GATEWAY_TYPE__GCATEGORY = 6;
    public static final int GATEWAY_TYPE__GDESC = 7;
    public static final int GATEWAY_TYPE__SHORT_NAME = 8;
    public static final int GATEWAY_TYPE__LONG_NAME = 9;
    public static final int GATEWAY_TYPE__DESC = 10;
    public static final int GATEWAY_TYPE__CATEGORY = 11;
    public static final int GATEWAY_TYPE__ADMIN_DATA = 12;
    public static final int GATEWAY_TYPE__UUID = 13;
    public static final int GATEWAY_TYPE__ALL_EXTENSIONS = 14;
    public static final int GATEWAY_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int GATEWAY_TYPE__GAR_PACKAGE = 16;
    public static final int GATEWAY_TYPE__AR_PACKAGE = 17;
    public static final int GATEWAY_TYPE__GATEWAY_ENTRIES = 18;
    public static final int GATEWAY_TYPE__GATEWAY_LOCATION = 19;
    public static final int GATEWAY_TYPE_FEATURE_COUNT = 20;
    public static final int PDU_GATEWAY_ENTRY = 22;
    public static final int PDU_GATEWAY_ENTRY__GCHECKSUM = 0;
    public static final int PDU_GATEWAY_ENTRY__GTIMESTAMP = 1;
    public static final int PDU_GATEWAY_ENTRY__CHECKSUM = 2;
    public static final int PDU_GATEWAY_ENTRY__TIMESTAMP = 3;
    public static final int PDU_GATEWAY_ENTRY__GATEWAY_TYPE = 4;
    public static final int PDU_GATEWAY_ENTRY__GATEWAY_ENTRY_ID = 5;
    public static final int PDU_GATEWAY_ENTRY__ACTION_ON_TIMEOUT = 6;
    public static final int PDU_GATEWAY_ENTRY__DESTINATION_PDU = 7;
    public static final int PDU_GATEWAY_ENTRY__SOURCE_PDU = 8;
    public static final int PDU_GATEWAY_ENTRY__TIME_OUT_CYCLE = 9;
    public static final int PDU_GATEWAY_ENTRY_FEATURE_COUNT = 10;
    public static final int RELATIVELY_SCHEDULED_TIMING = 23;
    public static final int RELATIVELY_SCHEDULED_TIMING__GCHECKSUM = 0;
    public static final int RELATIVELY_SCHEDULED_TIMING__GTIMESTAMP = 1;
    public static final int RELATIVELY_SCHEDULED_TIMING__CHECKSUM = 2;
    public static final int RELATIVELY_SCHEDULED_TIMING__TIMESTAMP = 3;
    public static final int RELATIVELY_SCHEDULED_TIMING__FREE_TEXT_CONDITIONS = 4;
    public static final int RELATIVELY_SCHEDULED_TIMING__DELAY = 5;
    public static final int RELATIVELY_SCHEDULED_TIMING__POSITION_IN_TABLE = 6;
    public static final int RELATIVELY_SCHEDULED_TIMING__SCHEDULE_TABLE_NAME = 7;
    public static final int RELATIVELY_SCHEDULED_TIMING_FEATURE_COUNT = 8;
    public static final int REQUEST_CONTROLLED_TIMING = 24;
    public static final int REQUEST_CONTROLLED_TIMING__GCHECKSUM = 0;
    public static final int REQUEST_CONTROLLED_TIMING__GTIMESTAMP = 1;
    public static final int REQUEST_CONTROLLED_TIMING__CHECKSUM = 2;
    public static final int REQUEST_CONTROLLED_TIMING__TIMESTAMP = 3;
    public static final int REQUEST_CONTROLLED_TIMING__FREE_TEXT_CONDITIONS = 4;
    public static final int REQUEST_CONTROLLED_TIMING__ACTIVE_CONDITION = 5;
    public static final int REQUEST_CONTROLLED_TIMING__REQUESTING_FRAME = 6;
    public static final int REQUEST_CONTROLLED_TIMING__RESPONSE_TIME = 7;
    public static final int REQUEST_CONTROLLED_TIMING_FEATURE_COUNT = 8;
    public static final int SIGNAL_GATEWAY_ENTRY = 25;
    public static final int SIGNAL_GATEWAY_ENTRY__GCHECKSUM = 0;
    public static final int SIGNAL_GATEWAY_ENTRY__GTIMESTAMP = 1;
    public static final int SIGNAL_GATEWAY_ENTRY__CHECKSUM = 2;
    public static final int SIGNAL_GATEWAY_ENTRY__TIMESTAMP = 3;
    public static final int SIGNAL_GATEWAY_ENTRY__GATEWAY_TYPE = 4;
    public static final int SIGNAL_GATEWAY_ENTRY__GATEWAY_ENTRY_ID = 5;
    public static final int SIGNAL_GATEWAY_ENTRY__ACTION_ON_TIMEOUT = 6;
    public static final int SIGNAL_GATEWAY_ENTRY__DESTINATION_CLUSTER_SIGNAL = 7;
    public static final int SIGNAL_GATEWAY_ENTRY__SOURCE_CLUSTER_SIGNAL = 8;
    public static final int SIGNAL_GATEWAY_ENTRY__TIME_OUT_CYCLE = 9;
    public static final int SIGNAL_GATEWAY_ENTRY_FEATURE_COUNT = 10;
    public static final int SPORADIC_FRAME_SLOT = 26;
    public static final int SPORADIC_FRAME_SLOT__GCHECKSUM = 0;
    public static final int SPORADIC_FRAME_SLOT__GTIMESTAMP = 1;
    public static final int SPORADIC_FRAME_SLOT__CHECKSUM = 2;
    public static final int SPORADIC_FRAME_SLOT__TIMESTAMP = 3;
    public static final int SPORADIC_FRAME_SLOT__LIN_SCHEDULING_TABLE = 4;
    public static final int SPORADIC_FRAME_SLOT__DELAY_TO_NEXT_FRAME = 5;
    public static final int SPORADIC_FRAME_SLOT__SPORADIC_FRAMES = 6;
    public static final int SPORADIC_FRAME_SLOT_FEATURE_COUNT = 7;
    public static final int UNCONDITIONAL_FRAME_SLOT = 27;
    public static final int UNCONDITIONAL_FRAME_SLOT__GCHECKSUM = 0;
    public static final int UNCONDITIONAL_FRAME_SLOT__GTIMESTAMP = 1;
    public static final int UNCONDITIONAL_FRAME_SLOT__CHECKSUM = 2;
    public static final int UNCONDITIONAL_FRAME_SLOT__TIMESTAMP = 3;
    public static final int UNCONDITIONAL_FRAME_SLOT__LIN_SCHEDULING_TABLE = 4;
    public static final int UNCONDITIONAL_FRAME_SLOT__DELAY_TO_NEXT_FRAME = 5;
    public static final int UNCONDITIONAL_FRAME_SLOT__UNCONDITIONAL_FRAME = 6;
    public static final int UNCONDITIONAL_FRAME_SLOT_FEATURE_COUNT = 7;
    public static final int ABSOLUTELY_SCHEDULED_TIMING_CYCLE_REPETITION_ENUM = 28;
    public static final int SIGNAL_TRIGGER_DATA_EVENT_CONDITION_ENUM = 29;
    public static final int PDU_GATEWAY_ENTRY_ACTION_ON_TIMEOUT_ENUM = 30;
    public static final int SIGNAL_GATEWAY_ENTRY_ACTION_ON_TIMEOUT_ENUM = 31;

    public EClass getPDUPrototype();

    public EReference getPDUPrototype_Frame();

    public EReference getPDUPrototype_IncludedClusterSignals();

    public EReference getPDUPrototype_PduType();

    public EAttribute getPDUPrototype_StartPosition();

    public EAttribute getPDUPrototype_UpdateIndicationBitPosition();

    public EClass getTiming();

    public EReference getTiming_FreeTextConditions();

    public EClass getFreeTextCondition();

    public EReference getFreeTextCondition_Timing();

    public EAttribute getFreeTextCondition_Condition();

    public EClass getCommunicationMatrixType();

    public EReference getCommunicationMatrixType_CommunicationCluster();

    public EReference getCommunicationMatrixType_Frames();

    public EReference getCommunicationMatrixType_LinSchedulingTables();

    public EReference getCommunicationMatrixType_SystemTopologyType();

    public EClass getLinSchedulingTable();

    public EReference getLinSchedulingTable_CommunicationMatrixType();

    public EReference getLinSchedulingTable_Entries();

    public EClass getLinSchedulingTableEntry();

    public EReference getLinSchedulingTableEntry_LinSchedulingTable();

    public EAttribute getLinSchedulingTableEntry_DelayToNextFrame();

    public EClass getFrame();

    public EReference getFrame_CommunicationMatrixType();

    public EAttribute getFrame_FrameID();

    public EAttribute getFrame_FrameLength();

    public EReference getFrame_FrameTimings();

    public EAttribute getFrame_MinimumDelayTime();

    public EReference getFrame_PduPrototypes();

    public EReference getFrame_Receivers();

    public EReference getFrame_Transmitter();

    public EReference getFrame_UsedPhysicalChannel();

    public EClass getAbsolutelyScheduledTiming();

    public EAttribute getAbsolutelyScheduledTiming_BaseCycle();

    public EAttribute getAbsolutelyScheduledTiming_CycleRepetition();

    public EAttribute getAbsolutelyScheduledTiming_SlotID();

    public EClass getActiveCondition();

    public EReference getActiveCondition_SystemStates();

    public EClass getSystemStateTrigger();

    public EAttribute getSystemStateTrigger_SystemStateConditions();

    public EClass getCanFrame();

    public EClass getCyclicTiming();

    public EReference getCyclicTiming_ActiveCondition();

    public EAttribute getCyclicTiming_CycleTime();

    public EReference getCyclicTiming_StartCondition();

    public EAttribute getCyclicTiming_StartingTime();

    public EReference getCyclicTiming_StopCondition();

    public EClass getStopCondition();

    public EReference getStopCondition_CyclicTiming();

    public EReference getStopCondition_SignalStates();

    public EReference getStopCondition_SystemStates();

    public EClass getSignalTrigger();

    public EReference getSignalTrigger_ComparedSignal();

    public EAttribute getSignalTrigger_DataEventCondition();

    public EClass getStartCondition();

    public EReference getStartCondition_CyclicTiming();

    public EReference getStartCondition_SignalStates();

    public EReference getStartCondition_SystemStates();

    public EClass getEventControlledTiming();

    public EReference getEventControlledTiming_ActiveCondition();

    public EAttribute getEventControlledTiming_DebounceTime();

    public EAttribute getEventControlledTiming_NumberOfRepeats();

    public EAttribute getEventControlledTiming_RepeatCycleTime();

    public EReference getEventControlledTiming_SendCondition();

    public EClass getSendCondition();

    public EReference getSendCondition_EventControlledTiming();

    public EReference getSendCondition_SignalStates();

    public EReference getSendCondition_SystemStates();

    public EClass getEventTriggeredFrameSlot();

    public EAttribute getEventTriggeredFrameSlot_EventTriggeredFrameID();

    public EReference getEventTriggeredFrameSlot_UnconditionalFrames();

    public EClass getLinFrame();

    public EReference getLinFrame_ResponseErrorSignal();

    public EClass getFlexrayFrame();

    public EClass getGatewayEntry();

    public EReference getGatewayEntry_GatewayType();

    public EAttribute getGatewayEntry_GatewayEntryId();

    public EClass getGatewayType();

    public EReference getGatewayType_GatewayEntries();

    public EReference getGatewayType_GatewayLocation();

    public EClass getPDUGatewayEntry();

    public EAttribute getPDUGatewayEntry_ActionOnTimeout();

    public EReference getPDUGatewayEntry_DestinationPDU();

    public EReference getPDUGatewayEntry_SourcePDU();

    public EAttribute getPDUGatewayEntry_TimeOutCycle();

    public EClass getRelativelyScheduledTiming();

    public EAttribute getRelativelyScheduledTiming_Delay();

    public EAttribute getRelativelyScheduledTiming_PositionInTable();

    public EAttribute getRelativelyScheduledTiming_ScheduleTableName();

    public EClass getRequestControlledTiming();

    public EReference getRequestControlledTiming_ActiveCondition();

    public EReference getRequestControlledTiming_RequestingFrame();

    public EAttribute getRequestControlledTiming_ResponseTime();

    public EClass getSignalGatewayEntry();

    public EAttribute getSignalGatewayEntry_ActionOnTimeout();

    public EReference getSignalGatewayEntry_DestinationClusterSignal();

    public EReference getSignalGatewayEntry_SourceClusterSignal();

    public EAttribute getSignalGatewayEntry_TimeOutCycle();

    public EClass getSporadicFrameSlot();

    public EReference getSporadicFrameSlot_SporadicFrames();

    public EClass getUnconditionalFrameSlot();

    public EReference getUnconditionalFrameSlot_UnconditionalFrame();

    public EEnum getAbsolutelyScheduledTimingCycleRepetitionEnum();

    public EEnum getSignalTriggerDataEventConditionEnum();

    public EEnum getPDUGatewayEntryActionOnTimeoutEnum();

    public EEnum getSignalGatewayEntryActionOnTimeoutEnum();

    public CommunicationFactory getCommunicationFactory();

    public static interface Literals {
        public static final EClass PDU_PROTOTYPE = eINSTANCE.getPDUPrototype();
        public static final EReference PDU_PROTOTYPE__FRAME = eINSTANCE.getPDUPrototype_Frame();
        public static final EReference PDU_PROTOTYPE__INCLUDED_CLUSTER_SIGNALS = eINSTANCE.getPDUPrototype_IncludedClusterSignals();
        public static final EReference PDU_PROTOTYPE__PDU_TYPE = eINSTANCE.getPDUPrototype_PduType();
        public static final EAttribute PDU_PROTOTYPE__START_POSITION = eINSTANCE.getPDUPrototype_StartPosition();
        public static final EAttribute PDU_PROTOTYPE__UPDATE_INDICATION_BIT_POSITION = eINSTANCE.getPDUPrototype_UpdateIndicationBitPosition();
        public static final EClass TIMING = eINSTANCE.getTiming();
        public static final EReference TIMING__FREE_TEXT_CONDITIONS = eINSTANCE.getTiming_FreeTextConditions();
        public static final EClass FREE_TEXT_CONDITION = eINSTANCE.getFreeTextCondition();
        public static final EReference FREE_TEXT_CONDITION__TIMING = eINSTANCE.getFreeTextCondition_Timing();
        public static final EAttribute FREE_TEXT_CONDITION__CONDITION = eINSTANCE.getFreeTextCondition_Condition();
        public static final EClass COMMUNICATION_MATRIX_TYPE = eINSTANCE.getCommunicationMatrixType();
        public static final EReference COMMUNICATION_MATRIX_TYPE__COMMUNICATION_CLUSTER = eINSTANCE.getCommunicationMatrixType_CommunicationCluster();
        public static final EReference COMMUNICATION_MATRIX_TYPE__FRAMES = eINSTANCE.getCommunicationMatrixType_Frames();
        public static final EReference COMMUNICATION_MATRIX_TYPE__LIN_SCHEDULING_TABLES = eINSTANCE.getCommunicationMatrixType_LinSchedulingTables();
        public static final EReference COMMUNICATION_MATRIX_TYPE__SYSTEM_TOPOLOGY_TYPE = eINSTANCE.getCommunicationMatrixType_SystemTopologyType();
        public static final EClass LIN_SCHEDULING_TABLE = eINSTANCE.getLinSchedulingTable();
        public static final EReference LIN_SCHEDULING_TABLE__COMMUNICATION_MATRIX_TYPE = eINSTANCE.getLinSchedulingTable_CommunicationMatrixType();
        public static final EReference LIN_SCHEDULING_TABLE__ENTRIES = eINSTANCE.getLinSchedulingTable_Entries();
        public static final EClass LIN_SCHEDULING_TABLE_ENTRY = eINSTANCE.getLinSchedulingTableEntry();
        public static final EReference LIN_SCHEDULING_TABLE_ENTRY__LIN_SCHEDULING_TABLE = eINSTANCE.getLinSchedulingTableEntry_LinSchedulingTable();
        public static final EAttribute LIN_SCHEDULING_TABLE_ENTRY__DELAY_TO_NEXT_FRAME = eINSTANCE.getLinSchedulingTableEntry_DelayToNextFrame();
        public static final EClass FRAME = eINSTANCE.getFrame();
        public static final EReference FRAME__COMMUNICATION_MATRIX_TYPE = eINSTANCE.getFrame_CommunicationMatrixType();
        public static final EAttribute FRAME__FRAME_ID = eINSTANCE.getFrame_FrameID();
        public static final EAttribute FRAME__FRAME_LENGTH = eINSTANCE.getFrame_FrameLength();
        public static final EReference FRAME__FRAME_TIMINGS = eINSTANCE.getFrame_FrameTimings();
        public static final EAttribute FRAME__MINIMUM_DELAY_TIME = eINSTANCE.getFrame_MinimumDelayTime();
        public static final EReference FRAME__PDU_PROTOTYPES = eINSTANCE.getFrame_PduPrototypes();
        public static final EReference FRAME__RECEIVERS = eINSTANCE.getFrame_Receivers();
        public static final EReference FRAME__TRANSMITTER = eINSTANCE.getFrame_Transmitter();
        public static final EReference FRAME__USED_PHYSICAL_CHANNEL = eINSTANCE.getFrame_UsedPhysicalChannel();
        public static final EClass ABSOLUTELY_SCHEDULED_TIMING = eINSTANCE.getAbsolutelyScheduledTiming();
        public static final EAttribute ABSOLUTELY_SCHEDULED_TIMING__BASE_CYCLE = eINSTANCE.getAbsolutelyScheduledTiming_BaseCycle();
        public static final EAttribute ABSOLUTELY_SCHEDULED_TIMING__CYCLE_REPETITION = eINSTANCE.getAbsolutelyScheduledTiming_CycleRepetition();
        public static final EAttribute ABSOLUTELY_SCHEDULED_TIMING__SLOT_ID = eINSTANCE.getAbsolutelyScheduledTiming_SlotID();
        public static final EClass ACTIVE_CONDITION = eINSTANCE.getActiveCondition();
        public static final EReference ACTIVE_CONDITION__SYSTEM_STATES = eINSTANCE.getActiveCondition_SystemStates();
        public static final EClass SYSTEM_STATE_TRIGGER = eINSTANCE.getSystemStateTrigger();
        public static final EAttribute SYSTEM_STATE_TRIGGER__SYSTEM_STATE_CONDITIONS = eINSTANCE.getSystemStateTrigger_SystemStateConditions();
        public static final EClass CAN_FRAME = eINSTANCE.getCanFrame();
        public static final EClass CYCLIC_TIMING = eINSTANCE.getCyclicTiming();
        public static final EReference CYCLIC_TIMING__ACTIVE_CONDITION = eINSTANCE.getCyclicTiming_ActiveCondition();
        public static final EAttribute CYCLIC_TIMING__CYCLE_TIME = eINSTANCE.getCyclicTiming_CycleTime();
        public static final EReference CYCLIC_TIMING__START_CONDITION = eINSTANCE.getCyclicTiming_StartCondition();
        public static final EAttribute CYCLIC_TIMING__STARTING_TIME = eINSTANCE.getCyclicTiming_StartingTime();
        public static final EReference CYCLIC_TIMING__STOP_CONDITION = eINSTANCE.getCyclicTiming_StopCondition();
        public static final EClass STOP_CONDITION = eINSTANCE.getStopCondition();
        public static final EReference STOP_CONDITION__CYCLIC_TIMING = eINSTANCE.getStopCondition_CyclicTiming();
        public static final EReference STOP_CONDITION__SIGNAL_STATES = eINSTANCE.getStopCondition_SignalStates();
        public static final EReference STOP_CONDITION__SYSTEM_STATES = eINSTANCE.getStopCondition_SystemStates();
        public static final EClass SIGNAL_TRIGGER = eINSTANCE.getSignalTrigger();
        public static final EReference SIGNAL_TRIGGER__COMPARED_SIGNAL = eINSTANCE.getSignalTrigger_ComparedSignal();
        public static final EAttribute SIGNAL_TRIGGER__DATA_EVENT_CONDITION = eINSTANCE.getSignalTrigger_DataEventCondition();
        public static final EClass START_CONDITION = eINSTANCE.getStartCondition();
        public static final EReference START_CONDITION__CYCLIC_TIMING = eINSTANCE.getStartCondition_CyclicTiming();
        public static final EReference START_CONDITION__SIGNAL_STATES = eINSTANCE.getStartCondition_SignalStates();
        public static final EReference START_CONDITION__SYSTEM_STATES = eINSTANCE.getStartCondition_SystemStates();
        public static final EClass EVENT_CONTROLLED_TIMING = eINSTANCE.getEventControlledTiming();
        public static final EReference EVENT_CONTROLLED_TIMING__ACTIVE_CONDITION = eINSTANCE.getEventControlledTiming_ActiveCondition();
        public static final EAttribute EVENT_CONTROLLED_TIMING__DEBOUNCE_TIME = eINSTANCE.getEventControlledTiming_DebounceTime();
        public static final EAttribute EVENT_CONTROLLED_TIMING__NUMBER_OF_REPEATS = eINSTANCE.getEventControlledTiming_NumberOfRepeats();
        public static final EAttribute EVENT_CONTROLLED_TIMING__REPEAT_CYCLE_TIME = eINSTANCE.getEventControlledTiming_RepeatCycleTime();
        public static final EReference EVENT_CONTROLLED_TIMING__SEND_CONDITION = eINSTANCE.getEventControlledTiming_SendCondition();
        public static final EClass SEND_CONDITION = eINSTANCE.getSendCondition();
        public static final EReference SEND_CONDITION__EVENT_CONTROLLED_TIMING = eINSTANCE.getSendCondition_EventControlledTiming();
        public static final EReference SEND_CONDITION__SIGNAL_STATES = eINSTANCE.getSendCondition_SignalStates();
        public static final EReference SEND_CONDITION__SYSTEM_STATES = eINSTANCE.getSendCondition_SystemStates();
        public static final EClass EVENT_TRIGGERED_FRAME_SLOT = eINSTANCE.getEventTriggeredFrameSlot();
        public static final EAttribute EVENT_TRIGGERED_FRAME_SLOT__EVENT_TRIGGERED_FRAME_ID = eINSTANCE.getEventTriggeredFrameSlot_EventTriggeredFrameID();
        public static final EReference EVENT_TRIGGERED_FRAME_SLOT__UNCONDITIONAL_FRAMES = eINSTANCE.getEventTriggeredFrameSlot_UnconditionalFrames();
        public static final EClass LIN_FRAME = eINSTANCE.getLinFrame();
        public static final EReference LIN_FRAME__RESPONSE_ERROR_SIGNAL = eINSTANCE.getLinFrame_ResponseErrorSignal();
        public static final EClass FLEXRAY_FRAME = eINSTANCE.getFlexrayFrame();
        public static final EClass GATEWAY_ENTRY = eINSTANCE.getGatewayEntry();
        public static final EReference GATEWAY_ENTRY__GATEWAY_TYPE = eINSTANCE.getGatewayEntry_GatewayType();
        public static final EAttribute GATEWAY_ENTRY__GATEWAY_ENTRY_ID = eINSTANCE.getGatewayEntry_GatewayEntryId();
        public static final EClass GATEWAY_TYPE = eINSTANCE.getGatewayType();
        public static final EReference GATEWAY_TYPE__GATEWAY_ENTRIES = eINSTANCE.getGatewayType_GatewayEntries();
        public static final EReference GATEWAY_TYPE__GATEWAY_LOCATION = eINSTANCE.getGatewayType_GatewayLocation();
        public static final EClass PDU_GATEWAY_ENTRY = eINSTANCE.getPDUGatewayEntry();
        public static final EAttribute PDU_GATEWAY_ENTRY__ACTION_ON_TIMEOUT = eINSTANCE.getPDUGatewayEntry_ActionOnTimeout();
        public static final EReference PDU_GATEWAY_ENTRY__DESTINATION_PDU = eINSTANCE.getPDUGatewayEntry_DestinationPDU();
        public static final EReference PDU_GATEWAY_ENTRY__SOURCE_PDU = eINSTANCE.getPDUGatewayEntry_SourcePDU();
        public static final EAttribute PDU_GATEWAY_ENTRY__TIME_OUT_CYCLE = eINSTANCE.getPDUGatewayEntry_TimeOutCycle();
        public static final EClass RELATIVELY_SCHEDULED_TIMING = eINSTANCE.getRelativelyScheduledTiming();
        public static final EAttribute RELATIVELY_SCHEDULED_TIMING__DELAY = eINSTANCE.getRelativelyScheduledTiming_Delay();
        public static final EAttribute RELATIVELY_SCHEDULED_TIMING__POSITION_IN_TABLE = eINSTANCE.getRelativelyScheduledTiming_PositionInTable();
        public static final EAttribute RELATIVELY_SCHEDULED_TIMING__SCHEDULE_TABLE_NAME = eINSTANCE.getRelativelyScheduledTiming_ScheduleTableName();
        public static final EClass REQUEST_CONTROLLED_TIMING = eINSTANCE.getRequestControlledTiming();
        public static final EReference REQUEST_CONTROLLED_TIMING__ACTIVE_CONDITION = eINSTANCE.getRequestControlledTiming_ActiveCondition();
        public static final EReference REQUEST_CONTROLLED_TIMING__REQUESTING_FRAME = eINSTANCE.getRequestControlledTiming_RequestingFrame();
        public static final EAttribute REQUEST_CONTROLLED_TIMING__RESPONSE_TIME = eINSTANCE.getRequestControlledTiming_ResponseTime();
        public static final EClass SIGNAL_GATEWAY_ENTRY = eINSTANCE.getSignalGatewayEntry();
        public static final EAttribute SIGNAL_GATEWAY_ENTRY__ACTION_ON_TIMEOUT = eINSTANCE.getSignalGatewayEntry_ActionOnTimeout();
        public static final EReference SIGNAL_GATEWAY_ENTRY__DESTINATION_CLUSTER_SIGNAL = eINSTANCE.getSignalGatewayEntry_DestinationClusterSignal();
        public static final EReference SIGNAL_GATEWAY_ENTRY__SOURCE_CLUSTER_SIGNAL = eINSTANCE.getSignalGatewayEntry_SourceClusterSignal();
        public static final EAttribute SIGNAL_GATEWAY_ENTRY__TIME_OUT_CYCLE = eINSTANCE.getSignalGatewayEntry_TimeOutCycle();
        public static final EClass SPORADIC_FRAME_SLOT = eINSTANCE.getSporadicFrameSlot();
        public static final EReference SPORADIC_FRAME_SLOT__SPORADIC_FRAMES = eINSTANCE.getSporadicFrameSlot_SporadicFrames();
        public static final EClass UNCONDITIONAL_FRAME_SLOT = eINSTANCE.getUnconditionalFrameSlot();
        public static final EReference UNCONDITIONAL_FRAME_SLOT__UNCONDITIONAL_FRAME = eINSTANCE.getUnconditionalFrameSlot_UnconditionalFrame();
        public static final EEnum ABSOLUTELY_SCHEDULED_TIMING_CYCLE_REPETITION_ENUM = eINSTANCE.getAbsolutelyScheduledTimingCycleRepetitionEnum();
        public static final EEnum SIGNAL_TRIGGER_DATA_EVENT_CONDITION_ENUM = eINSTANCE.getSignalTriggerDataEventConditionEnum();
        public static final EEnum PDU_GATEWAY_ENTRY_ACTION_ON_TIMEOUT_ENUM = eINSTANCE.getPDUGatewayEntryActionOnTimeoutEnum();
        public static final EEnum SIGNAL_GATEWAY_ENTRY_ACTION_ON_TIMEOUT_ENUM = eINSTANCE.getSignalGatewayEntryActionOnTimeoutEnum();
    }
}

