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
package autosar40.system.fibex.fibex4lin.lincommunication;

import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationFactory;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LincommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface LincommunicationPackage
extends EPackage {
    public static final String eNAME = "lincommunication";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/fl/lc";
    public static final String eNS_PREFIX = "";
    public static final LincommunicationPackage eINSTANCE = LincommunicationPackageImpl.init();
    public static final int SCHEDULE_TABLE_ENTRY = 1;
    public static final int SCHEDULE_TABLE_ENTRY__GCHECKSUM = 0;
    public static final int SCHEDULE_TABLE_ENTRY__GTIMESTAMP = 1;
    public static final int SCHEDULE_TABLE_ENTRY__CHECKSUM = 2;
    public static final int SCHEDULE_TABLE_ENTRY__TIMESTAMP = 3;
    public static final int SCHEDULE_TABLE_ENTRY__LIN_SCHEDULE_TABLE = 4;
    public static final int SCHEDULE_TABLE_ENTRY__INTRODUCTION = 5;
    public static final int SCHEDULE_TABLE_ENTRY__DELAY = 6;
    public static final int SCHEDULE_TABLE_ENTRY__POSITION_IN_TABLE = 7;
    public static final int SCHEDULE_TABLE_ENTRY_FEATURE_COUNT = 8;
    public static final int APPLICATION_ENTRY = 0;
    public static final int APPLICATION_ENTRY__GCHECKSUM = 0;
    public static final int APPLICATION_ENTRY__GTIMESTAMP = 1;
    public static final int APPLICATION_ENTRY__CHECKSUM = 2;
    public static final int APPLICATION_ENTRY__TIMESTAMP = 3;
    public static final int APPLICATION_ENTRY__LIN_SCHEDULE_TABLE = 4;
    public static final int APPLICATION_ENTRY__INTRODUCTION = 5;
    public static final int APPLICATION_ENTRY__DELAY = 6;
    public static final int APPLICATION_ENTRY__POSITION_IN_TABLE = 7;
    public static final int APPLICATION_ENTRY__FRAME_TRIGGERING = 8;
    public static final int APPLICATION_ENTRY_FEATURE_COUNT = 9;
    public static final int LIN_FRAME_TRIGGERING = 2;
    public static final int LIN_FRAME_TRIGGERING__GCHECKSUM = 0;
    public static final int LIN_FRAME_TRIGGERING__GTIMESTAMP = 1;
    public static final int LIN_FRAME_TRIGGERING__CHECKSUM = 2;
    public static final int LIN_FRAME_TRIGGERING__TIMESTAMP = 3;
    public static final int LIN_FRAME_TRIGGERING__GSHORT_NAME = 4;
    public static final int LIN_FRAME_TRIGGERING__SHORT_NAME = 5;
    public static final int LIN_FRAME_TRIGGERING__LONG_NAME = 6;
    public static final int LIN_FRAME_TRIGGERING__GUUID = 7;
    public static final int LIN_FRAME_TRIGGERING__GCATEGORY = 8;
    public static final int LIN_FRAME_TRIGGERING__GDESC = 9;
    public static final int LIN_FRAME_TRIGGERING__DESC = 10;
    public static final int LIN_FRAME_TRIGGERING__CATEGORY = 11;
    public static final int LIN_FRAME_TRIGGERING__ADMIN_DATA = 12;
    public static final int LIN_FRAME_TRIGGERING__INTRODUCTION = 13;
    public static final int LIN_FRAME_TRIGGERING__ANNOTATIONS = 14;
    public static final int LIN_FRAME_TRIGGERING__UUID = 15;
    public static final int LIN_FRAME_TRIGGERING__ALL_EXTENSIONS = 16;
    public static final int LIN_FRAME_TRIGGERING__CONTAINED_EXTENSIONS = 17;
    public static final int LIN_FRAME_TRIGGERING__PHYSICAL_CHANNEL = 18;
    public static final int LIN_FRAME_TRIGGERING__FRAME_PORTS = 19;
    public static final int LIN_FRAME_TRIGGERING__FRAME = 20;
    public static final int LIN_FRAME_TRIGGERING__PDU_TRIGGERINGS = 21;
    public static final int LIN_FRAME_TRIGGERING__VARIATION_POINT = 22;
    public static final int LIN_FRAME_TRIGGERING__IDENTIFIER = 23;
    public static final int LIN_FRAME_TRIGGERING__LIN_CHECKSUM = 24;
    public static final int LIN_FRAME_TRIGGERING_FEATURE_COUNT = 25;
    public static final int LIN_CONFIGURATION_ENTRY = 4;
    public static final int LIN_CONFIGURATION_ENTRY__GCHECKSUM = 0;
    public static final int LIN_CONFIGURATION_ENTRY__GTIMESTAMP = 1;
    public static final int LIN_CONFIGURATION_ENTRY__CHECKSUM = 2;
    public static final int LIN_CONFIGURATION_ENTRY__TIMESTAMP = 3;
    public static final int LIN_CONFIGURATION_ENTRY__LIN_SCHEDULE_TABLE = 4;
    public static final int LIN_CONFIGURATION_ENTRY__INTRODUCTION = 5;
    public static final int LIN_CONFIGURATION_ENTRY__DELAY = 6;
    public static final int LIN_CONFIGURATION_ENTRY__POSITION_IN_TABLE = 7;
    public static final int LIN_CONFIGURATION_ENTRY__ASSIGNED_CONTROLLER = 8;
    public static final int LIN_CONFIGURATION_ENTRY_FEATURE_COUNT = 9;
    public static final int ASSIGN_FRAME_ID = 3;
    public static final int ASSIGN_FRAME_ID__GCHECKSUM = 0;
    public static final int ASSIGN_FRAME_ID__GTIMESTAMP = 1;
    public static final int ASSIGN_FRAME_ID__CHECKSUM = 2;
    public static final int ASSIGN_FRAME_ID__TIMESTAMP = 3;
    public static final int ASSIGN_FRAME_ID__LIN_SCHEDULE_TABLE = 4;
    public static final int ASSIGN_FRAME_ID__INTRODUCTION = 5;
    public static final int ASSIGN_FRAME_ID__DELAY = 6;
    public static final int ASSIGN_FRAME_ID__POSITION_IN_TABLE = 7;
    public static final int ASSIGN_FRAME_ID__ASSIGNED_CONTROLLER = 8;
    public static final int ASSIGN_FRAME_ID__ASSIGNED_FRAME_TRIGGERING = 9;
    public static final int ASSIGN_FRAME_ID_FEATURE_COUNT = 10;
    public static final int LIN_FRAME = 5;
    public static final int LIN_FRAME__GCHECKSUM = 0;
    public static final int LIN_FRAME__GTIMESTAMP = 1;
    public static final int LIN_FRAME__CHECKSUM = 2;
    public static final int LIN_FRAME__TIMESTAMP = 3;
    public static final int LIN_FRAME__GSHORT_NAME = 4;
    public static final int LIN_FRAME__SHORT_NAME = 5;
    public static final int LIN_FRAME__LONG_NAME = 6;
    public static final int LIN_FRAME__GUUID = 7;
    public static final int LIN_FRAME__GCATEGORY = 8;
    public static final int LIN_FRAME__GDESC = 9;
    public static final int LIN_FRAME__DESC = 10;
    public static final int LIN_FRAME__CATEGORY = 11;
    public static final int LIN_FRAME__ADMIN_DATA = 12;
    public static final int LIN_FRAME__INTRODUCTION = 13;
    public static final int LIN_FRAME__ANNOTATIONS = 14;
    public static final int LIN_FRAME__UUID = 15;
    public static final int LIN_FRAME__ALL_EXTENSIONS = 16;
    public static final int LIN_FRAME__CONTAINED_EXTENSIONS = 17;
    public static final int LIN_FRAME__GAR_PACKAGE = 18;
    public static final int LIN_FRAME__AR_PACKAGE = 19;
    public static final int LIN_FRAME__VARIATION_POINT = 20;
    public static final int LIN_FRAME__FRAME_LENGTH = 21;
    public static final int LIN_FRAME__PDU_TO_FRAME_MAPPINGS = 22;
    public static final int LIN_FRAME_FEATURE_COUNT = 23;
    public static final int LIN_SCHEDULE_TABLE = 6;
    public static final int LIN_SCHEDULE_TABLE__GCHECKSUM = 0;
    public static final int LIN_SCHEDULE_TABLE__GTIMESTAMP = 1;
    public static final int LIN_SCHEDULE_TABLE__CHECKSUM = 2;
    public static final int LIN_SCHEDULE_TABLE__TIMESTAMP = 3;
    public static final int LIN_SCHEDULE_TABLE__GSHORT_NAME = 4;
    public static final int LIN_SCHEDULE_TABLE__SHORT_NAME = 5;
    public static final int LIN_SCHEDULE_TABLE__LONG_NAME = 6;
    public static final int LIN_SCHEDULE_TABLE__GUUID = 7;
    public static final int LIN_SCHEDULE_TABLE__GCATEGORY = 8;
    public static final int LIN_SCHEDULE_TABLE__GDESC = 9;
    public static final int LIN_SCHEDULE_TABLE__DESC = 10;
    public static final int LIN_SCHEDULE_TABLE__CATEGORY = 11;
    public static final int LIN_SCHEDULE_TABLE__ADMIN_DATA = 12;
    public static final int LIN_SCHEDULE_TABLE__INTRODUCTION = 13;
    public static final int LIN_SCHEDULE_TABLE__ANNOTATIONS = 14;
    public static final int LIN_SCHEDULE_TABLE__UUID = 15;
    public static final int LIN_SCHEDULE_TABLE__ALL_EXTENSIONS = 16;
    public static final int LIN_SCHEDULE_TABLE__CONTAINED_EXTENSIONS = 17;
    public static final int LIN_SCHEDULE_TABLE__LIN_PHYSICAL_CHANNEL = 18;
    public static final int LIN_SCHEDULE_TABLE__RESUME_POSITION = 19;
    public static final int LIN_SCHEDULE_TABLE__RUN_MODE = 20;
    public static final int LIN_SCHEDULE_TABLE__TABLE_ENTRIES = 21;
    public static final int LIN_SCHEDULE_TABLE__VARIATION_POINT = 22;
    public static final int LIN_SCHEDULE_TABLE_FEATURE_COUNT = 23;
    public static final int LIN_ERROR_RESPONSE = 7;
    public static final int LIN_ERROR_RESPONSE__GCHECKSUM = 0;
    public static final int LIN_ERROR_RESPONSE__GTIMESTAMP = 1;
    public static final int LIN_ERROR_RESPONSE__CHECKSUM = 2;
    public static final int LIN_ERROR_RESPONSE__TIMESTAMP = 3;
    public static final int LIN_ERROR_RESPONSE__LIN_SLAVE_CONTENT = 4;
    public static final int LIN_ERROR_RESPONSE__FRAME_TRIGGERING = 5;
    public static final int LIN_ERROR_RESPONSE__RESPONSE_ERROR_POSITION = 6;
    public static final int LIN_ERROR_RESPONSE_FEATURE_COUNT = 7;
    public static final int ASSIGN_FRAME_ID_RANGE = 8;
    public static final int ASSIGN_FRAME_ID_RANGE__GCHECKSUM = 0;
    public static final int ASSIGN_FRAME_ID_RANGE__GTIMESTAMP = 1;
    public static final int ASSIGN_FRAME_ID_RANGE__CHECKSUM = 2;
    public static final int ASSIGN_FRAME_ID_RANGE__TIMESTAMP = 3;
    public static final int ASSIGN_FRAME_ID_RANGE__LIN_SCHEDULE_TABLE = 4;
    public static final int ASSIGN_FRAME_ID_RANGE__INTRODUCTION = 5;
    public static final int ASSIGN_FRAME_ID_RANGE__DELAY = 6;
    public static final int ASSIGN_FRAME_ID_RANGE__POSITION_IN_TABLE = 7;
    public static final int ASSIGN_FRAME_ID_RANGE__ASSIGNED_CONTROLLER = 8;
    public static final int ASSIGN_FRAME_ID_RANGE__FRAME_PIDS = 9;
    public static final int ASSIGN_FRAME_ID_RANGE__START_INDEX = 10;
    public static final int ASSIGN_FRAME_ID_RANGE_FEATURE_COUNT = 11;
    public static final int FRAME_PID = 9;
    public static final int FRAME_PID__GCHECKSUM = 0;
    public static final int FRAME_PID__GTIMESTAMP = 1;
    public static final int FRAME_PID__CHECKSUM = 2;
    public static final int FRAME_PID__TIMESTAMP = 3;
    public static final int FRAME_PID__ASSIGN_FRAME_ID_RANGE = 4;
    public static final int FRAME_PID__INDEX = 5;
    public static final int FRAME_PID__PID = 6;
    public static final int FRAME_PID_FEATURE_COUNT = 7;
    public static final int ASSIGN_NAD = 10;
    public static final int ASSIGN_NAD__GCHECKSUM = 0;
    public static final int ASSIGN_NAD__GTIMESTAMP = 1;
    public static final int ASSIGN_NAD__CHECKSUM = 2;
    public static final int ASSIGN_NAD__TIMESTAMP = 3;
    public static final int ASSIGN_NAD__LIN_SCHEDULE_TABLE = 4;
    public static final int ASSIGN_NAD__INTRODUCTION = 5;
    public static final int ASSIGN_NAD__DELAY = 6;
    public static final int ASSIGN_NAD__POSITION_IN_TABLE = 7;
    public static final int ASSIGN_NAD__ASSIGNED_CONTROLLER = 8;
    public static final int ASSIGN_NAD__NEW_NAD = 9;
    public static final int ASSIGN_NAD_FEATURE_COUNT = 10;
    public static final int CONDITIONAL_CHANGE_NAD = 11;
    public static final int CONDITIONAL_CHANGE_NAD__GCHECKSUM = 0;
    public static final int CONDITIONAL_CHANGE_NAD__GTIMESTAMP = 1;
    public static final int CONDITIONAL_CHANGE_NAD__CHECKSUM = 2;
    public static final int CONDITIONAL_CHANGE_NAD__TIMESTAMP = 3;
    public static final int CONDITIONAL_CHANGE_NAD__LIN_SCHEDULE_TABLE = 4;
    public static final int CONDITIONAL_CHANGE_NAD__INTRODUCTION = 5;
    public static final int CONDITIONAL_CHANGE_NAD__DELAY = 6;
    public static final int CONDITIONAL_CHANGE_NAD__POSITION_IN_TABLE = 7;
    public static final int CONDITIONAL_CHANGE_NAD__ASSIGNED_CONTROLLER = 8;
    public static final int CONDITIONAL_CHANGE_NAD__BYTE = 9;
    public static final int CONDITIONAL_CHANGE_NAD__ID = 10;
    public static final int CONDITIONAL_CHANGE_NAD__INVERT = 11;
    public static final int CONDITIONAL_CHANGE_NAD__MASK = 12;
    public static final int CONDITIONAL_CHANGE_NAD__NEW_NAD = 13;
    public static final int CONDITIONAL_CHANGE_NAD_FEATURE_COUNT = 14;
    public static final int DATA_DUMP_ENTRY = 12;
    public static final int DATA_DUMP_ENTRY__GCHECKSUM = 0;
    public static final int DATA_DUMP_ENTRY__GTIMESTAMP = 1;
    public static final int DATA_DUMP_ENTRY__CHECKSUM = 2;
    public static final int DATA_DUMP_ENTRY__TIMESTAMP = 3;
    public static final int DATA_DUMP_ENTRY__LIN_SCHEDULE_TABLE = 4;
    public static final int DATA_DUMP_ENTRY__INTRODUCTION = 5;
    public static final int DATA_DUMP_ENTRY__DELAY = 6;
    public static final int DATA_DUMP_ENTRY__POSITION_IN_TABLE = 7;
    public static final int DATA_DUMP_ENTRY__ASSIGNED_CONTROLLER = 8;
    public static final int DATA_DUMP_ENTRY__BYTE_VALUES = 9;
    public static final int DATA_DUMP_ENTRY_FEATURE_COUNT = 10;
    public static final int FREE_FORMAT_ENTRY = 14;
    public static final int FREE_FORMAT_ENTRY__GCHECKSUM = 0;
    public static final int FREE_FORMAT_ENTRY__GTIMESTAMP = 1;
    public static final int FREE_FORMAT_ENTRY__CHECKSUM = 2;
    public static final int FREE_FORMAT_ENTRY__TIMESTAMP = 3;
    public static final int FREE_FORMAT_ENTRY__LIN_SCHEDULE_TABLE = 4;
    public static final int FREE_FORMAT_ENTRY__INTRODUCTION = 5;
    public static final int FREE_FORMAT_ENTRY__DELAY = 6;
    public static final int FREE_FORMAT_ENTRY__POSITION_IN_TABLE = 7;
    public static final int FREE_FORMAT_ENTRY_FEATURE_COUNT = 8;
    public static final int FREE_FORMAT = 13;
    public static final int FREE_FORMAT__GCHECKSUM = 0;
    public static final int FREE_FORMAT__GTIMESTAMP = 1;
    public static final int FREE_FORMAT__CHECKSUM = 2;
    public static final int FREE_FORMAT__TIMESTAMP = 3;
    public static final int FREE_FORMAT__LIN_SCHEDULE_TABLE = 4;
    public static final int FREE_FORMAT__INTRODUCTION = 5;
    public static final int FREE_FORMAT__DELAY = 6;
    public static final int FREE_FORMAT__POSITION_IN_TABLE = 7;
    public static final int FREE_FORMAT__BYTE_VALUES = 8;
    public static final int FREE_FORMAT_FEATURE_COUNT = 9;
    public static final int LIN_EVENT_TRIGGERED_FRAME = 15;
    public static final int LIN_EVENT_TRIGGERED_FRAME__GCHECKSUM = 0;
    public static final int LIN_EVENT_TRIGGERED_FRAME__GTIMESTAMP = 1;
    public static final int LIN_EVENT_TRIGGERED_FRAME__CHECKSUM = 2;
    public static final int LIN_EVENT_TRIGGERED_FRAME__TIMESTAMP = 3;
    public static final int LIN_EVENT_TRIGGERED_FRAME__GSHORT_NAME = 4;
    public static final int LIN_EVENT_TRIGGERED_FRAME__SHORT_NAME = 5;
    public static final int LIN_EVENT_TRIGGERED_FRAME__LONG_NAME = 6;
    public static final int LIN_EVENT_TRIGGERED_FRAME__GUUID = 7;
    public static final int LIN_EVENT_TRIGGERED_FRAME__GCATEGORY = 8;
    public static final int LIN_EVENT_TRIGGERED_FRAME__GDESC = 9;
    public static final int LIN_EVENT_TRIGGERED_FRAME__DESC = 10;
    public static final int LIN_EVENT_TRIGGERED_FRAME__CATEGORY = 11;
    public static final int LIN_EVENT_TRIGGERED_FRAME__ADMIN_DATA = 12;
    public static final int LIN_EVENT_TRIGGERED_FRAME__INTRODUCTION = 13;
    public static final int LIN_EVENT_TRIGGERED_FRAME__ANNOTATIONS = 14;
    public static final int LIN_EVENT_TRIGGERED_FRAME__UUID = 15;
    public static final int LIN_EVENT_TRIGGERED_FRAME__ALL_EXTENSIONS = 16;
    public static final int LIN_EVENT_TRIGGERED_FRAME__CONTAINED_EXTENSIONS = 17;
    public static final int LIN_EVENT_TRIGGERED_FRAME__GAR_PACKAGE = 18;
    public static final int LIN_EVENT_TRIGGERED_FRAME__AR_PACKAGE = 19;
    public static final int LIN_EVENT_TRIGGERED_FRAME__VARIATION_POINT = 20;
    public static final int LIN_EVENT_TRIGGERED_FRAME__FRAME_LENGTH = 21;
    public static final int LIN_EVENT_TRIGGERED_FRAME__PDU_TO_FRAME_MAPPINGS = 22;
    public static final int LIN_EVENT_TRIGGERED_FRAME__COLLISION_RESOLVING_SCHEDULE = 23;
    public static final int LIN_EVENT_TRIGGERED_FRAME__LIN_UNCONDITIONAL_FRAMES = 24;
    public static final int LIN_EVENT_TRIGGERED_FRAME_FEATURE_COUNT = 25;
    public static final int LIN_UNCONDITIONAL_FRAME = 16;
    public static final int LIN_UNCONDITIONAL_FRAME__GCHECKSUM = 0;
    public static final int LIN_UNCONDITIONAL_FRAME__GTIMESTAMP = 1;
    public static final int LIN_UNCONDITIONAL_FRAME__CHECKSUM = 2;
    public static final int LIN_UNCONDITIONAL_FRAME__TIMESTAMP = 3;
    public static final int LIN_UNCONDITIONAL_FRAME__GSHORT_NAME = 4;
    public static final int LIN_UNCONDITIONAL_FRAME__SHORT_NAME = 5;
    public static final int LIN_UNCONDITIONAL_FRAME__LONG_NAME = 6;
    public static final int LIN_UNCONDITIONAL_FRAME__GUUID = 7;
    public static final int LIN_UNCONDITIONAL_FRAME__GCATEGORY = 8;
    public static final int LIN_UNCONDITIONAL_FRAME__GDESC = 9;
    public static final int LIN_UNCONDITIONAL_FRAME__DESC = 10;
    public static final int LIN_UNCONDITIONAL_FRAME__CATEGORY = 11;
    public static final int LIN_UNCONDITIONAL_FRAME__ADMIN_DATA = 12;
    public static final int LIN_UNCONDITIONAL_FRAME__INTRODUCTION = 13;
    public static final int LIN_UNCONDITIONAL_FRAME__ANNOTATIONS = 14;
    public static final int LIN_UNCONDITIONAL_FRAME__UUID = 15;
    public static final int LIN_UNCONDITIONAL_FRAME__ALL_EXTENSIONS = 16;
    public static final int LIN_UNCONDITIONAL_FRAME__CONTAINED_EXTENSIONS = 17;
    public static final int LIN_UNCONDITIONAL_FRAME__GAR_PACKAGE = 18;
    public static final int LIN_UNCONDITIONAL_FRAME__AR_PACKAGE = 19;
    public static final int LIN_UNCONDITIONAL_FRAME__VARIATION_POINT = 20;
    public static final int LIN_UNCONDITIONAL_FRAME__FRAME_LENGTH = 21;
    public static final int LIN_UNCONDITIONAL_FRAME__PDU_TO_FRAME_MAPPINGS = 22;
    public static final int LIN_UNCONDITIONAL_FRAME_FEATURE_COUNT = 23;
    public static final int LIN_SPORADIC_FRAME = 17;
    public static final int LIN_SPORADIC_FRAME__GCHECKSUM = 0;
    public static final int LIN_SPORADIC_FRAME__GTIMESTAMP = 1;
    public static final int LIN_SPORADIC_FRAME__CHECKSUM = 2;
    public static final int LIN_SPORADIC_FRAME__TIMESTAMP = 3;
    public static final int LIN_SPORADIC_FRAME__GSHORT_NAME = 4;
    public static final int LIN_SPORADIC_FRAME__SHORT_NAME = 5;
    public static final int LIN_SPORADIC_FRAME__LONG_NAME = 6;
    public static final int LIN_SPORADIC_FRAME__GUUID = 7;
    public static final int LIN_SPORADIC_FRAME__GCATEGORY = 8;
    public static final int LIN_SPORADIC_FRAME__GDESC = 9;
    public static final int LIN_SPORADIC_FRAME__DESC = 10;
    public static final int LIN_SPORADIC_FRAME__CATEGORY = 11;
    public static final int LIN_SPORADIC_FRAME__ADMIN_DATA = 12;
    public static final int LIN_SPORADIC_FRAME__INTRODUCTION = 13;
    public static final int LIN_SPORADIC_FRAME__ANNOTATIONS = 14;
    public static final int LIN_SPORADIC_FRAME__UUID = 15;
    public static final int LIN_SPORADIC_FRAME__ALL_EXTENSIONS = 16;
    public static final int LIN_SPORADIC_FRAME__CONTAINED_EXTENSIONS = 17;
    public static final int LIN_SPORADIC_FRAME__GAR_PACKAGE = 18;
    public static final int LIN_SPORADIC_FRAME__AR_PACKAGE = 19;
    public static final int LIN_SPORADIC_FRAME__VARIATION_POINT = 20;
    public static final int LIN_SPORADIC_FRAME__FRAME_LENGTH = 21;
    public static final int LIN_SPORADIC_FRAME__PDU_TO_FRAME_MAPPINGS = 22;
    public static final int LIN_SPORADIC_FRAME__SUBSTITUTED_FRAMES = 23;
    public static final int LIN_SPORADIC_FRAME_FEATURE_COUNT = 24;
    public static final int SAVE_CONFIGURATION_ENTRY = 18;
    public static final int SAVE_CONFIGURATION_ENTRY__GCHECKSUM = 0;
    public static final int SAVE_CONFIGURATION_ENTRY__GTIMESTAMP = 1;
    public static final int SAVE_CONFIGURATION_ENTRY__CHECKSUM = 2;
    public static final int SAVE_CONFIGURATION_ENTRY__TIMESTAMP = 3;
    public static final int SAVE_CONFIGURATION_ENTRY__LIN_SCHEDULE_TABLE = 4;
    public static final int SAVE_CONFIGURATION_ENTRY__INTRODUCTION = 5;
    public static final int SAVE_CONFIGURATION_ENTRY__DELAY = 6;
    public static final int SAVE_CONFIGURATION_ENTRY__POSITION_IN_TABLE = 7;
    public static final int SAVE_CONFIGURATION_ENTRY__ASSIGNED_CONTROLLER = 8;
    public static final int SAVE_CONFIGURATION_ENTRY_FEATURE_COUNT = 9;
    public static final int UNASSIGN_FRAME_ID = 19;
    public static final int UNASSIGN_FRAME_ID__GCHECKSUM = 0;
    public static final int UNASSIGN_FRAME_ID__GTIMESTAMP = 1;
    public static final int UNASSIGN_FRAME_ID__CHECKSUM = 2;
    public static final int UNASSIGN_FRAME_ID__TIMESTAMP = 3;
    public static final int UNASSIGN_FRAME_ID__LIN_SCHEDULE_TABLE = 4;
    public static final int UNASSIGN_FRAME_ID__INTRODUCTION = 5;
    public static final int UNASSIGN_FRAME_ID__DELAY = 6;
    public static final int UNASSIGN_FRAME_ID__POSITION_IN_TABLE = 7;
    public static final int UNASSIGN_FRAME_ID__ASSIGNED_CONTROLLER = 8;
    public static final int UNASSIGN_FRAME_ID__UNASSIGNED_FRAME_TRIGGERING = 9;
    public static final int UNASSIGN_FRAME_ID_FEATURE_COUNT = 10;
    public static final int LIN_CHECKSUM_TYPE = 20;
    public static final int RESUME_POSITION = 21;
    public static final int RUN_MODE = 22;

    public EClass getApplicationEntry();

    public EReference getApplicationEntry_FrameTriggering();

    public EClass getScheduleTableEntry();

    public EReference getScheduleTableEntry_LinScheduleTable();

    public EReference getScheduleTableEntry_Introduction();

    public EAttribute getScheduleTableEntry_Delay();

    public EAttribute getScheduleTableEntry_PositionInTable();

    public EClass getLinFrameTriggering();

    public EAttribute getLinFrameTriggering_Identifier();

    public EAttribute getLinFrameTriggering_LinChecksum();

    public EClass getAssignFrameId();

    public EReference getAssignFrameId_AssignedFrameTriggering();

    public EClass getLinConfigurationEntry();

    public EReference getLinConfigurationEntry_AssignedController();

    public EClass getLinFrame();

    public EClass getLinScheduleTable();

    public EReference getLinScheduleTable_LinPhysicalChannel();

    public EAttribute getLinScheduleTable_ResumePosition();

    public EAttribute getLinScheduleTable_RunMode();

    public EReference getLinScheduleTable_TableEntries();

    public EReference getLinScheduleTable_VariationPoint();

    public EClass getLinErrorResponse();

    public EReference getLinErrorResponse_LinSlaveContent();

    public EReference getLinErrorResponse_FrameTriggering();

    public EAttribute getLinErrorResponse_ResponseErrorPosition();

    public EClass getAssignFrameIdRange();

    public EReference getAssignFrameIdRange_FramePids();

    public EAttribute getAssignFrameIdRange_StartIndex();

    public EClass getFramePid();

    public EReference getFramePid_AssignFrameIdRange();

    public EAttribute getFramePid_Index();

    public EAttribute getFramePid_Pid();

    public EClass getAssignNad();

    public EAttribute getAssignNad_NewNad();

    public EClass getConditionalChangeNad();

    public EAttribute getConditionalChangeNad_Byte();

    public EAttribute getConditionalChangeNad_Id();

    public EAttribute getConditionalChangeNad_Invert();

    public EAttribute getConditionalChangeNad_Mask();

    public EAttribute getConditionalChangeNad_NewNad();

    public EClass getDataDumpEntry();

    public EAttribute getDataDumpEntry_ByteValues();

    public EClass getFreeFormat();

    public EAttribute getFreeFormat_ByteValues();

    public EClass getFreeFormatEntry();

    public EClass getLinEventTriggeredFrame();

    public EReference getLinEventTriggeredFrame_CollisionResolvingSchedule();

    public EReference getLinEventTriggeredFrame_LinUnconditionalFrames();

    public EClass getLinUnconditionalFrame();

    public EClass getLinSporadicFrame();

    public EReference getLinSporadicFrame_SubstitutedFrames();

    public EClass getSaveConfigurationEntry();

    public EClass getUnassignFrameId();

    public EReference getUnassignFrameId_UnassignedFrameTriggering();

    public EEnum getLinChecksumType();

    public EEnum getResumePosition();

    public EEnum getRunMode();

    public LincommunicationFactory getLincommunicationFactory();

    public static interface Literals {
        public static final EClass APPLICATION_ENTRY = eINSTANCE.getApplicationEntry();
        public static final EReference APPLICATION_ENTRY__FRAME_TRIGGERING = eINSTANCE.getApplicationEntry_FrameTriggering();
        public static final EClass SCHEDULE_TABLE_ENTRY = eINSTANCE.getScheduleTableEntry();
        public static final EReference SCHEDULE_TABLE_ENTRY__LIN_SCHEDULE_TABLE = eINSTANCE.getScheduleTableEntry_LinScheduleTable();
        public static final EReference SCHEDULE_TABLE_ENTRY__INTRODUCTION = eINSTANCE.getScheduleTableEntry_Introduction();
        public static final EAttribute SCHEDULE_TABLE_ENTRY__DELAY = eINSTANCE.getScheduleTableEntry_Delay();
        public static final EAttribute SCHEDULE_TABLE_ENTRY__POSITION_IN_TABLE = eINSTANCE.getScheduleTableEntry_PositionInTable();
        public static final EClass LIN_FRAME_TRIGGERING = eINSTANCE.getLinFrameTriggering();
        public static final EAttribute LIN_FRAME_TRIGGERING__IDENTIFIER = eINSTANCE.getLinFrameTriggering_Identifier();
        public static final EAttribute LIN_FRAME_TRIGGERING__LIN_CHECKSUM = eINSTANCE.getLinFrameTriggering_LinChecksum();
        public static final EClass ASSIGN_FRAME_ID = eINSTANCE.getAssignFrameId();
        public static final EReference ASSIGN_FRAME_ID__ASSIGNED_FRAME_TRIGGERING = eINSTANCE.getAssignFrameId_AssignedFrameTriggering();
        public static final EClass LIN_CONFIGURATION_ENTRY = eINSTANCE.getLinConfigurationEntry();
        public static final EReference LIN_CONFIGURATION_ENTRY__ASSIGNED_CONTROLLER = eINSTANCE.getLinConfigurationEntry_AssignedController();
        public static final EClass LIN_FRAME = eINSTANCE.getLinFrame();
        public static final EClass LIN_SCHEDULE_TABLE = eINSTANCE.getLinScheduleTable();
        public static final EReference LIN_SCHEDULE_TABLE__LIN_PHYSICAL_CHANNEL = eINSTANCE.getLinScheduleTable_LinPhysicalChannel();
        public static final EAttribute LIN_SCHEDULE_TABLE__RESUME_POSITION = eINSTANCE.getLinScheduleTable_ResumePosition();
        public static final EAttribute LIN_SCHEDULE_TABLE__RUN_MODE = eINSTANCE.getLinScheduleTable_RunMode();
        public static final EReference LIN_SCHEDULE_TABLE__TABLE_ENTRIES = eINSTANCE.getLinScheduleTable_TableEntries();
        public static final EReference LIN_SCHEDULE_TABLE__VARIATION_POINT = eINSTANCE.getLinScheduleTable_VariationPoint();
        public static final EClass LIN_ERROR_RESPONSE = eINSTANCE.getLinErrorResponse();
        public static final EReference LIN_ERROR_RESPONSE__LIN_SLAVE_CONTENT = eINSTANCE.getLinErrorResponse_LinSlaveContent();
        public static final EReference LIN_ERROR_RESPONSE__FRAME_TRIGGERING = eINSTANCE.getLinErrorResponse_FrameTriggering();
        public static final EAttribute LIN_ERROR_RESPONSE__RESPONSE_ERROR_POSITION = eINSTANCE.getLinErrorResponse_ResponseErrorPosition();
        public static final EClass ASSIGN_FRAME_ID_RANGE = eINSTANCE.getAssignFrameIdRange();
        public static final EReference ASSIGN_FRAME_ID_RANGE__FRAME_PIDS = eINSTANCE.getAssignFrameIdRange_FramePids();
        public static final EAttribute ASSIGN_FRAME_ID_RANGE__START_INDEX = eINSTANCE.getAssignFrameIdRange_StartIndex();
        public static final EClass FRAME_PID = eINSTANCE.getFramePid();
        public static final EReference FRAME_PID__ASSIGN_FRAME_ID_RANGE = eINSTANCE.getFramePid_AssignFrameIdRange();
        public static final EAttribute FRAME_PID__INDEX = eINSTANCE.getFramePid_Index();
        public static final EAttribute FRAME_PID__PID = eINSTANCE.getFramePid_Pid();
        public static final EClass ASSIGN_NAD = eINSTANCE.getAssignNad();
        public static final EAttribute ASSIGN_NAD__NEW_NAD = eINSTANCE.getAssignNad_NewNad();
        public static final EClass CONDITIONAL_CHANGE_NAD = eINSTANCE.getConditionalChangeNad();
        public static final EAttribute CONDITIONAL_CHANGE_NAD__BYTE = eINSTANCE.getConditionalChangeNad_Byte();
        public static final EAttribute CONDITIONAL_CHANGE_NAD__ID = eINSTANCE.getConditionalChangeNad_Id();
        public static final EAttribute CONDITIONAL_CHANGE_NAD__INVERT = eINSTANCE.getConditionalChangeNad_Invert();
        public static final EAttribute CONDITIONAL_CHANGE_NAD__MASK = eINSTANCE.getConditionalChangeNad_Mask();
        public static final EAttribute CONDITIONAL_CHANGE_NAD__NEW_NAD = eINSTANCE.getConditionalChangeNad_NewNad();
        public static final EClass DATA_DUMP_ENTRY = eINSTANCE.getDataDumpEntry();
        public static final EAttribute DATA_DUMP_ENTRY__BYTE_VALUES = eINSTANCE.getDataDumpEntry_ByteValues();
        public static final EClass FREE_FORMAT = eINSTANCE.getFreeFormat();
        public static final EAttribute FREE_FORMAT__BYTE_VALUES = eINSTANCE.getFreeFormat_ByteValues();
        public static final EClass FREE_FORMAT_ENTRY = eINSTANCE.getFreeFormatEntry();
        public static final EClass LIN_EVENT_TRIGGERED_FRAME = eINSTANCE.getLinEventTriggeredFrame();
        public static final EReference LIN_EVENT_TRIGGERED_FRAME__COLLISION_RESOLVING_SCHEDULE = eINSTANCE.getLinEventTriggeredFrame_CollisionResolvingSchedule();
        public static final EReference LIN_EVENT_TRIGGERED_FRAME__LIN_UNCONDITIONAL_FRAMES = eINSTANCE.getLinEventTriggeredFrame_LinUnconditionalFrames();
        public static final EClass LIN_UNCONDITIONAL_FRAME = eINSTANCE.getLinUnconditionalFrame();
        public static final EClass LIN_SPORADIC_FRAME = eINSTANCE.getLinSporadicFrame();
        public static final EReference LIN_SPORADIC_FRAME__SUBSTITUTED_FRAMES = eINSTANCE.getLinSporadicFrame_SubstitutedFrames();
        public static final EClass SAVE_CONFIGURATION_ENTRY = eINSTANCE.getSaveConfigurationEntry();
        public static final EClass UNASSIGN_FRAME_ID = eINSTANCE.getUnassignFrameId();
        public static final EReference UNASSIGN_FRAME_ID__UNASSIGNED_FRAME_TRIGGERING = eINSTANCE.getUnassignFrameId_UnassignedFrameTriggering();
        public static final EEnum LIN_CHECKSUM_TYPE = eINSTANCE.getLinChecksumType();
        public static final EEnum RESUME_POSITION = eINSTANCE.getResumePosition();
        public static final EEnum RUN_MODE = eINSTANCE.getRunMode();
    }
}

