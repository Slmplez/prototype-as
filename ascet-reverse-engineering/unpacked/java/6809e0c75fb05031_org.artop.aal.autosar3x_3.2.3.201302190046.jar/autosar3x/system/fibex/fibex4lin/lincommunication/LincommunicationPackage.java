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
package autosar3x.system.fibex.fibex4lin.lincommunication;

import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationFactory;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.LincommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface LincommunicationPackage
extends EPackage {
    public static final String eNAME = "lincommunication";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/f/fl/lc";
    public static final String eNS_PREFIX = "";
    public static final LincommunicationPackage eINSTANCE = LincommunicationPackageImpl.init();
    public static final int RELATIVELY_SCHEDULED_TIMING = 2;
    public static final int RELATIVELY_SCHEDULED_TIMING__GCHECKSUM = 0;
    public static final int RELATIVELY_SCHEDULED_TIMING__GTIMESTAMP = 1;
    public static final int RELATIVELY_SCHEDULED_TIMING__CHECKSUM = 2;
    public static final int RELATIVELY_SCHEDULED_TIMING__TIMESTAMP = 3;
    public static final int RELATIVELY_SCHEDULED_TIMING__LIN_FRAME_TRIGGERING = 4;
    public static final int RELATIVELY_SCHEDULED_TIMING__DELAY = 5;
    public static final int RELATIVELY_SCHEDULED_TIMING__POSITION_IN_TABLE = 6;
    public static final int RELATIVELY_SCHEDULED_TIMING__SCHEDULE_TABLE = 7;
    public static final int RELATIVELY_SCHEDULED_TIMING_FEATURE_COUNT = 8;
    public static final int ASSIGNMENT_TIMING_TYPE = 1;
    public static final int ASSIGNMENT_TIMING_TYPE__GCHECKSUM = 0;
    public static final int ASSIGNMENT_TIMING_TYPE__GTIMESTAMP = 1;
    public static final int ASSIGNMENT_TIMING_TYPE__CHECKSUM = 2;
    public static final int ASSIGNMENT_TIMING_TYPE__TIMESTAMP = 3;
    public static final int ASSIGNMENT_TIMING_TYPE__LIN_FRAME_TRIGGERING = 4;
    public static final int ASSIGNMENT_TIMING_TYPE__DELAY = 5;
    public static final int ASSIGNMENT_TIMING_TYPE__POSITION_IN_TABLE = 6;
    public static final int ASSIGNMENT_TIMING_TYPE__SCHEDULE_TABLE = 7;
    public static final int ASSIGNMENT_TIMING_TYPE__ASSIGNED_CONTROLLER = 8;
    public static final int ASSIGNMENT_TIMING_TYPE_FEATURE_COUNT = 9;
    public static final int ASSIGN_FRAME_ID_TIMING = 0;
    public static final int ASSIGN_FRAME_ID_TIMING__GCHECKSUM = 0;
    public static final int ASSIGN_FRAME_ID_TIMING__GTIMESTAMP = 1;
    public static final int ASSIGN_FRAME_ID_TIMING__CHECKSUM = 2;
    public static final int ASSIGN_FRAME_ID_TIMING__TIMESTAMP = 3;
    public static final int ASSIGN_FRAME_ID_TIMING__LIN_FRAME_TRIGGERING = 4;
    public static final int ASSIGN_FRAME_ID_TIMING__DELAY = 5;
    public static final int ASSIGN_FRAME_ID_TIMING__POSITION_IN_TABLE = 6;
    public static final int ASSIGN_FRAME_ID_TIMING__SCHEDULE_TABLE = 7;
    public static final int ASSIGN_FRAME_ID_TIMING__ASSIGNED_CONTROLLER = 8;
    public static final int ASSIGN_FRAME_ID_TIMING__ASSIGNED_FRAME_TRIGGERING = 9;
    public static final int ASSIGN_FRAME_ID_TIMING_FEATURE_COUNT = 10;
    public static final int LIN_SCHEDULE_TABLE = 3;
    public static final int LIN_SCHEDULE_TABLE__GCHECKSUM = 0;
    public static final int LIN_SCHEDULE_TABLE__GTIMESTAMP = 1;
    public static final int LIN_SCHEDULE_TABLE__CHECKSUM = 2;
    public static final int LIN_SCHEDULE_TABLE__TIMESTAMP = 3;
    public static final int LIN_SCHEDULE_TABLE__GSHORT_NAME = 4;
    public static final int LIN_SCHEDULE_TABLE__GUUID = 5;
    public static final int LIN_SCHEDULE_TABLE__GCATEGORY = 6;
    public static final int LIN_SCHEDULE_TABLE__GDESC = 7;
    public static final int LIN_SCHEDULE_TABLE__SHORT_NAME = 8;
    public static final int LIN_SCHEDULE_TABLE__LONG_NAME = 9;
    public static final int LIN_SCHEDULE_TABLE__DESC = 10;
    public static final int LIN_SCHEDULE_TABLE__CATEGORY = 11;
    public static final int LIN_SCHEDULE_TABLE__ADMIN_DATA = 12;
    public static final int LIN_SCHEDULE_TABLE__INTRODUCTION = 13;
    public static final int LIN_SCHEDULE_TABLE__UUID = 14;
    public static final int LIN_SCHEDULE_TABLE__ALL_EXTENSIONS = 15;
    public static final int LIN_SCHEDULE_TABLE__CONTAINED_EXTENSIONS = 16;
    public static final int LIN_SCHEDULE_TABLE__LIN_CLUSTER = 17;
    public static final int LIN_SCHEDULE_TABLE__PRIORITY = 18;
    public static final int LIN_SCHEDULE_TABLE__RUN_MODE = 19;
    public static final int LIN_SCHEDULE_TABLE_FEATURE_COUNT = 20;
    public static final int LIN_ERROR_RESPONSE = 4;
    public static final int LIN_ERROR_RESPONSE__GCHECKSUM = 0;
    public static final int LIN_ERROR_RESPONSE__GTIMESTAMP = 1;
    public static final int LIN_ERROR_RESPONSE__CHECKSUM = 2;
    public static final int LIN_ERROR_RESPONSE__TIMESTAMP = 3;
    public static final int LIN_ERROR_RESPONSE__LIN_SLAVE = 4;
    public static final int LIN_ERROR_RESPONSE__FRAME_TRIGGERING = 5;
    public static final int LIN_ERROR_RESPONSE__RESPONSE_ERROR_POSITION = 6;
    public static final int LIN_ERROR_RESPONSE_FEATURE_COUNT = 7;
    public static final int LIN_FRAME_TRIGGERING = 5;
    public static final int LIN_FRAME_TRIGGERING__GCHECKSUM = 0;
    public static final int LIN_FRAME_TRIGGERING__GTIMESTAMP = 1;
    public static final int LIN_FRAME_TRIGGERING__CHECKSUM = 2;
    public static final int LIN_FRAME_TRIGGERING__TIMESTAMP = 3;
    public static final int LIN_FRAME_TRIGGERING__GSHORT_NAME = 4;
    public static final int LIN_FRAME_TRIGGERING__GUUID = 5;
    public static final int LIN_FRAME_TRIGGERING__GCATEGORY = 6;
    public static final int LIN_FRAME_TRIGGERING__GDESC = 7;
    public static final int LIN_FRAME_TRIGGERING__SHORT_NAME = 8;
    public static final int LIN_FRAME_TRIGGERING__LONG_NAME = 9;
    public static final int LIN_FRAME_TRIGGERING__DESC = 10;
    public static final int LIN_FRAME_TRIGGERING__CATEGORY = 11;
    public static final int LIN_FRAME_TRIGGERING__ADMIN_DATA = 12;
    public static final int LIN_FRAME_TRIGGERING__INTRODUCTION = 13;
    public static final int LIN_FRAME_TRIGGERING__UUID = 14;
    public static final int LIN_FRAME_TRIGGERING__ALL_EXTENSIONS = 15;
    public static final int LIN_FRAME_TRIGGERING__CONTAINED_EXTENSIONS = 16;
    public static final int LIN_FRAME_TRIGGERING__PHYSICAL_CHANNEL = 17;
    public static final int LIN_FRAME_TRIGGERING__FRAME_PORTS = 18;
    public static final int LIN_FRAME_TRIGGERING__FRAME = 19;
    public static final int LIN_FRAME_TRIGGERING__IPDU_TRIGGERINGS = 20;
    public static final int LIN_FRAME_TRIGGERING__CHECKSUM_TYPE = 21;
    public static final int LIN_FRAME_TRIGGERING__IDENTIFIER = 22;
    public static final int LIN_FRAME_TRIGGERING__RELATIVELY_SCHEDULED_TIMINGS = 23;
    public static final int LIN_FRAME_TRIGGERING_FEATURE_COUNT = 24;
    public static final int ASSIGN_NAD_TIMING = 6;
    public static final int ASSIGN_NAD_TIMING__GCHECKSUM = 0;
    public static final int ASSIGN_NAD_TIMING__GTIMESTAMP = 1;
    public static final int ASSIGN_NAD_TIMING__CHECKSUM = 2;
    public static final int ASSIGN_NAD_TIMING__TIMESTAMP = 3;
    public static final int ASSIGN_NAD_TIMING__LIN_FRAME_TRIGGERING = 4;
    public static final int ASSIGN_NAD_TIMING__DELAY = 5;
    public static final int ASSIGN_NAD_TIMING__POSITION_IN_TABLE = 6;
    public static final int ASSIGN_NAD_TIMING__SCHEDULE_TABLE = 7;
    public static final int ASSIGN_NAD_TIMING__ASSIGNED_CONTROLLER = 8;
    public static final int ASSIGN_NAD_TIMING__NEW_NAD = 9;
    public static final int ASSIGN_NAD_TIMING_FEATURE_COUNT = 10;
    public static final int DATA_TIMING = 7;
    public static final int DATA_TIMING__GCHECKSUM = 0;
    public static final int DATA_TIMING__GTIMESTAMP = 1;
    public static final int DATA_TIMING__CHECKSUM = 2;
    public static final int DATA_TIMING__TIMESTAMP = 3;
    public static final int DATA_TIMING__LIN_FRAME_TRIGGERING = 4;
    public static final int DATA_TIMING__DELAY = 5;
    public static final int DATA_TIMING__POSITION_IN_TABLE = 6;
    public static final int DATA_TIMING__SCHEDULE_TABLE = 7;
    public static final int DATA_TIMING__FREE_FORMAT = 8;
    public static final int DATA_TIMING_FEATURE_COUNT = 9;
    public static final int FREE_FORMAT = 8;
    public static final int FREE_FORMAT__GCHECKSUM = 0;
    public static final int FREE_FORMAT__GTIMESTAMP = 1;
    public static final int FREE_FORMAT__CHECKSUM = 2;
    public static final int FREE_FORMAT__TIMESTAMP = 3;
    public static final int FREE_FORMAT__DATA_TIMING = 4;
    public static final int FREE_FORMAT__BYTE_VALUES = 5;
    public static final int FREE_FORMAT_FEATURE_COUNT = 6;
    public static final int SUBSTITUTION_FRAME = 9;
    public static final int SUBSTITUTION_FRAME__GCHECKSUM = 0;
    public static final int SUBSTITUTION_FRAME__GTIMESTAMP = 1;
    public static final int SUBSTITUTION_FRAME__CHECKSUM = 2;
    public static final int SUBSTITUTION_FRAME__TIMESTAMP = 3;
    public static final int SUBSTITUTION_FRAME__GSHORT_NAME = 4;
    public static final int SUBSTITUTION_FRAME__GUUID = 5;
    public static final int SUBSTITUTION_FRAME__GCATEGORY = 6;
    public static final int SUBSTITUTION_FRAME__GDESC = 7;
    public static final int SUBSTITUTION_FRAME__SHORT_NAME = 8;
    public static final int SUBSTITUTION_FRAME__LONG_NAME = 9;
    public static final int SUBSTITUTION_FRAME__DESC = 10;
    public static final int SUBSTITUTION_FRAME__CATEGORY = 11;
    public static final int SUBSTITUTION_FRAME__ADMIN_DATA = 12;
    public static final int SUBSTITUTION_FRAME__INTRODUCTION = 13;
    public static final int SUBSTITUTION_FRAME__UUID = 14;
    public static final int SUBSTITUTION_FRAME__ALL_EXTENSIONS = 15;
    public static final int SUBSTITUTION_FRAME__CONTAINED_EXTENSIONS = 16;
    public static final int SUBSTITUTION_FRAME__GAR_PACKAGE = 17;
    public static final int SUBSTITUTION_FRAME__AR_PACKAGE = 18;
    public static final int SUBSTITUTION_FRAME__FRAME_LENGTH = 19;
    public static final int SUBSTITUTION_FRAME__PDU_TO_FRAME_MAPPINGS = 20;
    public static final int SUBSTITUTION_FRAME__SUBSTITUTED_FRAMES = 21;
    public static final int SUBSTITUTION_FRAME__SUBSTITUTION_TYPE = 22;
    public static final int SUBSTITUTION_FRAME_FEATURE_COUNT = 23;
    public static final int UNASSIGN_FRAME_ID_TIMING = 10;
    public static final int UNASSIGN_FRAME_ID_TIMING__GCHECKSUM = 0;
    public static final int UNASSIGN_FRAME_ID_TIMING__GTIMESTAMP = 1;
    public static final int UNASSIGN_FRAME_ID_TIMING__CHECKSUM = 2;
    public static final int UNASSIGN_FRAME_ID_TIMING__TIMESTAMP = 3;
    public static final int UNASSIGN_FRAME_ID_TIMING__LIN_FRAME_TRIGGERING = 4;
    public static final int UNASSIGN_FRAME_ID_TIMING__DELAY = 5;
    public static final int UNASSIGN_FRAME_ID_TIMING__POSITION_IN_TABLE = 6;
    public static final int UNASSIGN_FRAME_ID_TIMING__SCHEDULE_TABLE = 7;
    public static final int UNASSIGN_FRAME_ID_TIMING__ASSIGNED_CONTROLLER = 8;
    public static final int UNASSIGN_FRAME_ID_TIMING__UNASSIGNED_FRAME_TRIGGERING = 9;
    public static final int UNASSIGN_FRAME_ID_TIMING_FEATURE_COUNT = 10;
    public static final int RUN_MODE = 11;
    public static final int LIN_CHECKSUM_TYPE = 12;
    public static final int SUBSTITUTION_TYPE = 13;

    public EClass getAssignFrameIdTiming();

    public EReference getAssignFrameIdTiming_AssignedFrameTriggering();

    public EClass getAssignmentTimingType();

    public EReference getAssignmentTimingType_AssignedController();

    public EClass getRelativelyScheduledTiming();

    public EReference getRelativelyScheduledTiming_LinFrameTriggering();

    public EAttribute getRelativelyScheduledTiming_Delay();

    public EAttribute getRelativelyScheduledTiming_PositionInTable();

    public EReference getRelativelyScheduledTiming_ScheduleTable();

    public EClass getLinScheduleTable();

    public EReference getLinScheduleTable_LinCluster();

    public EAttribute getLinScheduleTable_Priority();

    public EAttribute getLinScheduleTable_RunMode();

    public EClass getLinErrorResponse();

    public EReference getLinErrorResponse_LinSlave();

    public EReference getLinErrorResponse_FrameTriggering();

    public EAttribute getLinErrorResponse_ResponseErrorPosition();

    public EClass getLinFrameTriggering();

    public EAttribute getLinFrameTriggering_ChecksumType();

    public EAttribute getLinFrameTriggering_Identifier();

    public EReference getLinFrameTriggering_RelativelyScheduledTimings();

    public EClass getAssignNadTiming();

    public EAttribute getAssignNadTiming_NewNad();

    public EClass getDataTiming();

    public EReference getDataTiming_FreeFormat();

    public EClass getFreeFormat();

    public EReference getFreeFormat_DataTiming();

    public EAttribute getFreeFormat_ByteValues();

    public EClass getSubstitutionFrame();

    public EReference getSubstitutionFrame_SubstitutedFrames();

    public EAttribute getSubstitutionFrame_SubstitutionType();

    public EClass getUnassignFrameIdTiming();

    public EReference getUnassignFrameIdTiming_UnassignedFrameTriggering();

    public EEnum getRunMode();

    public EEnum getLinChecksumType();

    public EEnum getSubstitutionType();

    public LincommunicationFactory getLincommunicationFactory();

    public static interface Literals {
        public static final EClass ASSIGN_FRAME_ID_TIMING = eINSTANCE.getAssignFrameIdTiming();
        public static final EReference ASSIGN_FRAME_ID_TIMING__ASSIGNED_FRAME_TRIGGERING = eINSTANCE.getAssignFrameIdTiming_AssignedFrameTriggering();
        public static final EClass ASSIGNMENT_TIMING_TYPE = eINSTANCE.getAssignmentTimingType();
        public static final EReference ASSIGNMENT_TIMING_TYPE__ASSIGNED_CONTROLLER = eINSTANCE.getAssignmentTimingType_AssignedController();
        public static final EClass RELATIVELY_SCHEDULED_TIMING = eINSTANCE.getRelativelyScheduledTiming();
        public static final EReference RELATIVELY_SCHEDULED_TIMING__LIN_FRAME_TRIGGERING = eINSTANCE.getRelativelyScheduledTiming_LinFrameTriggering();
        public static final EAttribute RELATIVELY_SCHEDULED_TIMING__DELAY = eINSTANCE.getRelativelyScheduledTiming_Delay();
        public static final EAttribute RELATIVELY_SCHEDULED_TIMING__POSITION_IN_TABLE = eINSTANCE.getRelativelyScheduledTiming_PositionInTable();
        public static final EReference RELATIVELY_SCHEDULED_TIMING__SCHEDULE_TABLE = eINSTANCE.getRelativelyScheduledTiming_ScheduleTable();
        public static final EClass LIN_SCHEDULE_TABLE = eINSTANCE.getLinScheduleTable();
        public static final EReference LIN_SCHEDULE_TABLE__LIN_CLUSTER = eINSTANCE.getLinScheduleTable_LinCluster();
        public static final EAttribute LIN_SCHEDULE_TABLE__PRIORITY = eINSTANCE.getLinScheduleTable_Priority();
        public static final EAttribute LIN_SCHEDULE_TABLE__RUN_MODE = eINSTANCE.getLinScheduleTable_RunMode();
        public static final EClass LIN_ERROR_RESPONSE = eINSTANCE.getLinErrorResponse();
        public static final EReference LIN_ERROR_RESPONSE__LIN_SLAVE = eINSTANCE.getLinErrorResponse_LinSlave();
        public static final EReference LIN_ERROR_RESPONSE__FRAME_TRIGGERING = eINSTANCE.getLinErrorResponse_FrameTriggering();
        public static final EAttribute LIN_ERROR_RESPONSE__RESPONSE_ERROR_POSITION = eINSTANCE.getLinErrorResponse_ResponseErrorPosition();
        public static final EClass LIN_FRAME_TRIGGERING = eINSTANCE.getLinFrameTriggering();
        public static final EAttribute LIN_FRAME_TRIGGERING__CHECKSUM_TYPE = eINSTANCE.getLinFrameTriggering_ChecksumType();
        public static final EAttribute LIN_FRAME_TRIGGERING__IDENTIFIER = eINSTANCE.getLinFrameTriggering_Identifier();
        public static final EReference LIN_FRAME_TRIGGERING__RELATIVELY_SCHEDULED_TIMINGS = eINSTANCE.getLinFrameTriggering_RelativelyScheduledTimings();
        public static final EClass ASSIGN_NAD_TIMING = eINSTANCE.getAssignNadTiming();
        public static final EAttribute ASSIGN_NAD_TIMING__NEW_NAD = eINSTANCE.getAssignNadTiming_NewNad();
        public static final EClass DATA_TIMING = eINSTANCE.getDataTiming();
        public static final EReference DATA_TIMING__FREE_FORMAT = eINSTANCE.getDataTiming_FreeFormat();
        public static final EClass FREE_FORMAT = eINSTANCE.getFreeFormat();
        public static final EReference FREE_FORMAT__DATA_TIMING = eINSTANCE.getFreeFormat_DataTiming();
        public static final EAttribute FREE_FORMAT__BYTE_VALUES = eINSTANCE.getFreeFormat_ByteValues();
        public static final EClass SUBSTITUTION_FRAME = eINSTANCE.getSubstitutionFrame();
        public static final EReference SUBSTITUTION_FRAME__SUBSTITUTED_FRAMES = eINSTANCE.getSubstitutionFrame_SubstitutedFrames();
        public static final EAttribute SUBSTITUTION_FRAME__SUBSTITUTION_TYPE = eINSTANCE.getSubstitutionFrame_SubstitutionType();
        public static final EClass UNASSIGN_FRAME_ID_TIMING = eINSTANCE.getUnassignFrameIdTiming();
        public static final EReference UNASSIGN_FRAME_ID_TIMING__UNASSIGNED_FRAME_TRIGGERING = eINSTANCE.getUnassignFrameIdTiming_UnassignedFrameTriggering();
        public static final EEnum RUN_MODE = eINSTANCE.getRunMode();
        public static final EEnum LIN_CHECKSUM_TYPE = eINSTANCE.getLinChecksumType();
        public static final EEnum SUBSTITUTION_TYPE = eINSTANCE.getSubstitutionType();
    }
}

