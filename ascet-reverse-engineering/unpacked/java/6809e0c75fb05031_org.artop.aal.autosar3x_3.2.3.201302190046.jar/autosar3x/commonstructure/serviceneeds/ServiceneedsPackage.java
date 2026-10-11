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
package autosar3x.commonstructure.serviceneeds;

import autosar3x.commonstructure.serviceneeds.ServiceneedsFactory;
import autosar3x.commonstructure.serviceneeds.impl.ServiceneedsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ServiceneedsPackage
extends EPackage {
    public static final String eNAME = "serviceneeds";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/cs/sn";
    public static final String eNS_PREFIX = "";
    public static final ServiceneedsPackage eINSTANCE = ServiceneedsPackageImpl.init();
    public static final int SERVICE_NEEDS = 1;
    public static final int SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int SERVICE_NEEDS__CHECKSUM = 2;
    public static final int SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int SERVICE_NEEDS__GUUID = 5;
    public static final int SERVICE_NEEDS__GCATEGORY = 6;
    public static final int SERVICE_NEEDS__GDESC = 7;
    public static final int SERVICE_NEEDS__SHORT_NAME = 8;
    public static final int SERVICE_NEEDS__LONG_NAME = 9;
    public static final int SERVICE_NEEDS__DESC = 10;
    public static final int SERVICE_NEEDS__CATEGORY = 11;
    public static final int SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int SERVICE_NEEDS__UUID = 14;
    public static final int SERVICE_NEEDS__ALL_EXTENSIONS = 15;
    public static final int SERVICE_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int SERVICE_NEEDS_FEATURE_COUNT = 17;
    public static final int COM_MGR_USER_NEEDS = 0;
    public static final int COM_MGR_USER_NEEDS__GCHECKSUM = 0;
    public static final int COM_MGR_USER_NEEDS__GTIMESTAMP = 1;
    public static final int COM_MGR_USER_NEEDS__CHECKSUM = 2;
    public static final int COM_MGR_USER_NEEDS__TIMESTAMP = 3;
    public static final int COM_MGR_USER_NEEDS__GSHORT_NAME = 4;
    public static final int COM_MGR_USER_NEEDS__GUUID = 5;
    public static final int COM_MGR_USER_NEEDS__GCATEGORY = 6;
    public static final int COM_MGR_USER_NEEDS__GDESC = 7;
    public static final int COM_MGR_USER_NEEDS__SHORT_NAME = 8;
    public static final int COM_MGR_USER_NEEDS__LONG_NAME = 9;
    public static final int COM_MGR_USER_NEEDS__DESC = 10;
    public static final int COM_MGR_USER_NEEDS__CATEGORY = 11;
    public static final int COM_MGR_USER_NEEDS__ADMIN_DATA = 12;
    public static final int COM_MGR_USER_NEEDS__INTRODUCTION = 13;
    public static final int COM_MGR_USER_NEEDS__UUID = 14;
    public static final int COM_MGR_USER_NEEDS__ALL_EXTENSIONS = 15;
    public static final int COM_MGR_USER_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int COM_MGR_USER_NEEDS__MAX_COMM_MODE = 17;
    public static final int COM_MGR_USER_NEEDS_FEATURE_COUNT = 18;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS = 2;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__GCHECKSUM = 0;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__GTIMESTAMP = 1;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__CHECKSUM = 2;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__TIMESTAMP = 3;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__GSHORT_NAME = 4;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__GUUID = 5;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__GCATEGORY = 6;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__GDESC = 7;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__SHORT_NAME = 8;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__LONG_NAME = 9;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__DESC = 10;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__CATEGORY = 11;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__ADMIN_DATA = 12;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__INTRODUCTION = 13;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__UUID = 14;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__ALL_EXTENSIONS = 15;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int DIAGNOSTIC_COMMUNICATION_NEEDS_FEATURE_COUNT = 17;
    public static final int DIAGNOSTIC_EVENT_NEEDS = 3;
    public static final int DIAGNOSTIC_EVENT_NEEDS__GCHECKSUM = 0;
    public static final int DIAGNOSTIC_EVENT_NEEDS__GTIMESTAMP = 1;
    public static final int DIAGNOSTIC_EVENT_NEEDS__CHECKSUM = 2;
    public static final int DIAGNOSTIC_EVENT_NEEDS__TIMESTAMP = 3;
    public static final int DIAGNOSTIC_EVENT_NEEDS__GSHORT_NAME = 4;
    public static final int DIAGNOSTIC_EVENT_NEEDS__GUUID = 5;
    public static final int DIAGNOSTIC_EVENT_NEEDS__GCATEGORY = 6;
    public static final int DIAGNOSTIC_EVENT_NEEDS__GDESC = 7;
    public static final int DIAGNOSTIC_EVENT_NEEDS__SHORT_NAME = 8;
    public static final int DIAGNOSTIC_EVENT_NEEDS__LONG_NAME = 9;
    public static final int DIAGNOSTIC_EVENT_NEEDS__DESC = 10;
    public static final int DIAGNOSTIC_EVENT_NEEDS__CATEGORY = 11;
    public static final int DIAGNOSTIC_EVENT_NEEDS__ADMIN_DATA = 12;
    public static final int DIAGNOSTIC_EVENT_NEEDS__INTRODUCTION = 13;
    public static final int DIAGNOSTIC_EVENT_NEEDS__UUID = 14;
    public static final int DIAGNOSTIC_EVENT_NEEDS__ALL_EXTENSIONS = 15;
    public static final int DIAGNOSTIC_EVENT_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int DIAGNOSTIC_EVENT_NEEDS_FEATURE_COUNT = 17;
    public static final int ECU_STATE_MGR_USER_NEEDS = 4;
    public static final int ECU_STATE_MGR_USER_NEEDS__GCHECKSUM = 0;
    public static final int ECU_STATE_MGR_USER_NEEDS__GTIMESTAMP = 1;
    public static final int ECU_STATE_MGR_USER_NEEDS__CHECKSUM = 2;
    public static final int ECU_STATE_MGR_USER_NEEDS__TIMESTAMP = 3;
    public static final int ECU_STATE_MGR_USER_NEEDS__GSHORT_NAME = 4;
    public static final int ECU_STATE_MGR_USER_NEEDS__GUUID = 5;
    public static final int ECU_STATE_MGR_USER_NEEDS__GCATEGORY = 6;
    public static final int ECU_STATE_MGR_USER_NEEDS__GDESC = 7;
    public static final int ECU_STATE_MGR_USER_NEEDS__SHORT_NAME = 8;
    public static final int ECU_STATE_MGR_USER_NEEDS__LONG_NAME = 9;
    public static final int ECU_STATE_MGR_USER_NEEDS__DESC = 10;
    public static final int ECU_STATE_MGR_USER_NEEDS__CATEGORY = 11;
    public static final int ECU_STATE_MGR_USER_NEEDS__ADMIN_DATA = 12;
    public static final int ECU_STATE_MGR_USER_NEEDS__INTRODUCTION = 13;
    public static final int ECU_STATE_MGR_USER_NEEDS__UUID = 14;
    public static final int ECU_STATE_MGR_USER_NEEDS__ALL_EXTENSIONS = 15;
    public static final int ECU_STATE_MGR_USER_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int ECU_STATE_MGR_USER_NEEDS_FEATURE_COUNT = 17;
    public static final int FUNCTION_INHIBITION_NEEDS = 5;
    public static final int FUNCTION_INHIBITION_NEEDS__GCHECKSUM = 0;
    public static final int FUNCTION_INHIBITION_NEEDS__GTIMESTAMP = 1;
    public static final int FUNCTION_INHIBITION_NEEDS__CHECKSUM = 2;
    public static final int FUNCTION_INHIBITION_NEEDS__TIMESTAMP = 3;
    public static final int FUNCTION_INHIBITION_NEEDS__GSHORT_NAME = 4;
    public static final int FUNCTION_INHIBITION_NEEDS__GUUID = 5;
    public static final int FUNCTION_INHIBITION_NEEDS__GCATEGORY = 6;
    public static final int FUNCTION_INHIBITION_NEEDS__GDESC = 7;
    public static final int FUNCTION_INHIBITION_NEEDS__SHORT_NAME = 8;
    public static final int FUNCTION_INHIBITION_NEEDS__LONG_NAME = 9;
    public static final int FUNCTION_INHIBITION_NEEDS__DESC = 10;
    public static final int FUNCTION_INHIBITION_NEEDS__CATEGORY = 11;
    public static final int FUNCTION_INHIBITION_NEEDS__ADMIN_DATA = 12;
    public static final int FUNCTION_INHIBITION_NEEDS__INTRODUCTION = 13;
    public static final int FUNCTION_INHIBITION_NEEDS__UUID = 14;
    public static final int FUNCTION_INHIBITION_NEEDS__ALL_EXTENSIONS = 15;
    public static final int FUNCTION_INHIBITION_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int FUNCTION_INHIBITION_NEEDS_FEATURE_COUNT = 17;
    public static final int NV_BLOCK_NEEDS = 6;
    public static final int NV_BLOCK_NEEDS__GCHECKSUM = 0;
    public static final int NV_BLOCK_NEEDS__GTIMESTAMP = 1;
    public static final int NV_BLOCK_NEEDS__CHECKSUM = 2;
    public static final int NV_BLOCK_NEEDS__TIMESTAMP = 3;
    public static final int NV_BLOCK_NEEDS__GSHORT_NAME = 4;
    public static final int NV_BLOCK_NEEDS__GUUID = 5;
    public static final int NV_BLOCK_NEEDS__GCATEGORY = 6;
    public static final int NV_BLOCK_NEEDS__GDESC = 7;
    public static final int NV_BLOCK_NEEDS__SHORT_NAME = 8;
    public static final int NV_BLOCK_NEEDS__LONG_NAME = 9;
    public static final int NV_BLOCK_NEEDS__DESC = 10;
    public static final int NV_BLOCK_NEEDS__CATEGORY = 11;
    public static final int NV_BLOCK_NEEDS__ADMIN_DATA = 12;
    public static final int NV_BLOCK_NEEDS__INTRODUCTION = 13;
    public static final int NV_BLOCK_NEEDS__UUID = 14;
    public static final int NV_BLOCK_NEEDS__ALL_EXTENSIONS = 15;
    public static final int NV_BLOCK_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int NV_BLOCK_NEEDS__NDATA_SETS = 17;
    public static final int NV_BLOCK_NEEDS__READONLY = 18;
    public static final int NV_BLOCK_NEEDS__RELIABILITY = 19;
    public static final int NV_BLOCK_NEEDS__RESISTANT_TO_CHANGED_SW = 20;
    public static final int NV_BLOCK_NEEDS__RESTORE_AT_START = 21;
    public static final int NV_BLOCK_NEEDS__WRITE_ONLY_ONCE = 22;
    public static final int NV_BLOCK_NEEDS__WRITING_FREQUENCY = 23;
    public static final int NV_BLOCK_NEEDS__WRITING_PRIORITY = 24;
    public static final int NV_BLOCK_NEEDS_FEATURE_COUNT = 25;
    public static final int OBD_CONTROL_SERVICE_NEEDS = 7;
    public static final int OBD_CONTROL_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int OBD_CONTROL_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int OBD_CONTROL_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int OBD_CONTROL_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int OBD_CONTROL_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int OBD_CONTROL_SERVICE_NEEDS__GUUID = 5;
    public static final int OBD_CONTROL_SERVICE_NEEDS__GCATEGORY = 6;
    public static final int OBD_CONTROL_SERVICE_NEEDS__GDESC = 7;
    public static final int OBD_CONTROL_SERVICE_NEEDS__SHORT_NAME = 8;
    public static final int OBD_CONTROL_SERVICE_NEEDS__LONG_NAME = 9;
    public static final int OBD_CONTROL_SERVICE_NEEDS__DESC = 10;
    public static final int OBD_CONTROL_SERVICE_NEEDS__CATEGORY = 11;
    public static final int OBD_CONTROL_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int OBD_CONTROL_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int OBD_CONTROL_SERVICE_NEEDS__UUID = 14;
    public static final int OBD_CONTROL_SERVICE_NEEDS__ALL_EXTENSIONS = 15;
    public static final int OBD_CONTROL_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int OBD_CONTROL_SERVICE_NEEDS__TEST_ID = 17;
    public static final int OBD_CONTROL_SERVICE_NEEDS_FEATURE_COUNT = 18;
    public static final int OBD_INFO_SERVICE_NEEDS = 8;
    public static final int OBD_INFO_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int OBD_INFO_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int OBD_INFO_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int OBD_INFO_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int OBD_INFO_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int OBD_INFO_SERVICE_NEEDS__GUUID = 5;
    public static final int OBD_INFO_SERVICE_NEEDS__GCATEGORY = 6;
    public static final int OBD_INFO_SERVICE_NEEDS__GDESC = 7;
    public static final int OBD_INFO_SERVICE_NEEDS__SHORT_NAME = 8;
    public static final int OBD_INFO_SERVICE_NEEDS__LONG_NAME = 9;
    public static final int OBD_INFO_SERVICE_NEEDS__DESC = 10;
    public static final int OBD_INFO_SERVICE_NEEDS__CATEGORY = 11;
    public static final int OBD_INFO_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int OBD_INFO_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int OBD_INFO_SERVICE_NEEDS__UUID = 14;
    public static final int OBD_INFO_SERVICE_NEEDS__ALL_EXTENSIONS = 15;
    public static final int OBD_INFO_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int OBD_INFO_SERVICE_NEEDS__DATA_LENGTH = 17;
    public static final int OBD_INFO_SERVICE_NEEDS__INFO_TYPE = 18;
    public static final int OBD_INFO_SERVICE_NEEDS_FEATURE_COUNT = 19;
    public static final int OBD_MONITOR_SERVICE_NEEDS = 9;
    public static final int OBD_MONITOR_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int OBD_MONITOR_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int OBD_MONITOR_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int OBD_MONITOR_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int OBD_MONITOR_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int OBD_MONITOR_SERVICE_NEEDS__GUUID = 5;
    public static final int OBD_MONITOR_SERVICE_NEEDS__GCATEGORY = 6;
    public static final int OBD_MONITOR_SERVICE_NEEDS__GDESC = 7;
    public static final int OBD_MONITOR_SERVICE_NEEDS__SHORT_NAME = 8;
    public static final int OBD_MONITOR_SERVICE_NEEDS__LONG_NAME = 9;
    public static final int OBD_MONITOR_SERVICE_NEEDS__DESC = 10;
    public static final int OBD_MONITOR_SERVICE_NEEDS__CATEGORY = 11;
    public static final int OBD_MONITOR_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int OBD_MONITOR_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int OBD_MONITOR_SERVICE_NEEDS__UUID = 14;
    public static final int OBD_MONITOR_SERVICE_NEEDS__ALL_EXTENSIONS = 15;
    public static final int OBD_MONITOR_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int OBD_MONITOR_SERVICE_NEEDS__ON_BOARD_MONITOR_ID = 17;
    public static final int OBD_MONITOR_SERVICE_NEEDS__TEST_ID = 18;
    public static final int OBD_MONITOR_SERVICE_NEEDS__UNIT_AND_SCALING_ID = 19;
    public static final int OBD_MONITOR_SERVICE_NEEDS_FEATURE_COUNT = 20;
    public static final int OBD_PID_SERVICE_NEEDS = 10;
    public static final int OBD_PID_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int OBD_PID_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int OBD_PID_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int OBD_PID_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int OBD_PID_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int OBD_PID_SERVICE_NEEDS__GUUID = 5;
    public static final int OBD_PID_SERVICE_NEEDS__GCATEGORY = 6;
    public static final int OBD_PID_SERVICE_NEEDS__GDESC = 7;
    public static final int OBD_PID_SERVICE_NEEDS__SHORT_NAME = 8;
    public static final int OBD_PID_SERVICE_NEEDS__LONG_NAME = 9;
    public static final int OBD_PID_SERVICE_NEEDS__DESC = 10;
    public static final int OBD_PID_SERVICE_NEEDS__CATEGORY = 11;
    public static final int OBD_PID_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int OBD_PID_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int OBD_PID_SERVICE_NEEDS__UUID = 14;
    public static final int OBD_PID_SERVICE_NEEDS__ALL_EXTENSIONS = 15;
    public static final int OBD_PID_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int OBD_PID_SERVICE_NEEDS__DATA_LENGTH = 17;
    public static final int OBD_PID_SERVICE_NEEDS__PARAMETER_ID = 18;
    public static final int OBD_PID_SERVICE_NEEDS__STANDARD = 19;
    public static final int OBD_PID_SERVICE_NEEDS_FEATURE_COUNT = 20;
    public static final int OBD_RATIO_SERVICE_NEEDS = 11;
    public static final int OBD_RATIO_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int OBD_RATIO_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int OBD_RATIO_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int OBD_RATIO_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int OBD_RATIO_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int OBD_RATIO_SERVICE_NEEDS__GUUID = 5;
    public static final int OBD_RATIO_SERVICE_NEEDS__GCATEGORY = 6;
    public static final int OBD_RATIO_SERVICE_NEEDS__GDESC = 7;
    public static final int OBD_RATIO_SERVICE_NEEDS__SHORT_NAME = 8;
    public static final int OBD_RATIO_SERVICE_NEEDS__LONG_NAME = 9;
    public static final int OBD_RATIO_SERVICE_NEEDS__DESC = 10;
    public static final int OBD_RATIO_SERVICE_NEEDS__CATEGORY = 11;
    public static final int OBD_RATIO_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int OBD_RATIO_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int OBD_RATIO_SERVICE_NEEDS__UUID = 14;
    public static final int OBD_RATIO_SERVICE_NEEDS__ALL_EXTENSIONS = 15;
    public static final int OBD_RATIO_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int OBD_RATIO_SERVICE_NEEDS__CONNECTION_TYPE = 17;
    public static final int OBD_RATIO_SERVICE_NEEDS__IUMPR_GROUP = 18;
    public static final int OBD_RATIO_SERVICE_NEEDS__RATE_BASED_MONITORED_EVENT = 19;
    public static final int OBD_RATIO_SERVICE_NEEDS__USED_FID = 20;
    public static final int OBD_RATIO_SERVICE_NEEDS_FEATURE_COUNT = 21;
    public static final int SUPERVISED_ENTITY_NEEDS = 12;
    public static final int SUPERVISED_ENTITY_NEEDS__GCHECKSUM = 0;
    public static final int SUPERVISED_ENTITY_NEEDS__GTIMESTAMP = 1;
    public static final int SUPERVISED_ENTITY_NEEDS__CHECKSUM = 2;
    public static final int SUPERVISED_ENTITY_NEEDS__TIMESTAMP = 3;
    public static final int SUPERVISED_ENTITY_NEEDS__GSHORT_NAME = 4;
    public static final int SUPERVISED_ENTITY_NEEDS__GUUID = 5;
    public static final int SUPERVISED_ENTITY_NEEDS__GCATEGORY = 6;
    public static final int SUPERVISED_ENTITY_NEEDS__GDESC = 7;
    public static final int SUPERVISED_ENTITY_NEEDS__SHORT_NAME = 8;
    public static final int SUPERVISED_ENTITY_NEEDS__LONG_NAME = 9;
    public static final int SUPERVISED_ENTITY_NEEDS__DESC = 10;
    public static final int SUPERVISED_ENTITY_NEEDS__CATEGORY = 11;
    public static final int SUPERVISED_ENTITY_NEEDS__ADMIN_DATA = 12;
    public static final int SUPERVISED_ENTITY_NEEDS__INTRODUCTION = 13;
    public static final int SUPERVISED_ENTITY_NEEDS__UUID = 14;
    public static final int SUPERVISED_ENTITY_NEEDS__ALL_EXTENSIONS = 15;
    public static final int SUPERVISED_ENTITY_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int SUPERVISED_ENTITY_NEEDS__ACTIVATE_AT_START = 17;
    public static final int SUPERVISED_ENTITY_NEEDS__ENABLE_DEACTIVATION = 18;
    public static final int SUPERVISED_ENTITY_NEEDS__EXPECTED_ALIVE_CYCLE = 19;
    public static final int SUPERVISED_ENTITY_NEEDS__MAX_ALIVE_CYCLE = 20;
    public static final int SUPERVISED_ENTITY_NEEDS__MIN_ALIVE_CYCLE = 21;
    public static final int SUPERVISED_ENTITY_NEEDS__TOLERATED_FAILED_CYCLES = 22;
    public static final int SUPERVISED_ENTITY_NEEDS_FEATURE_COUNT = 23;
    public static final int MAX_COMM_MODE_ENUM = 13;
    public static final int NV_BLOCK_NEEDS_RELIABILITY_ENUM = 14;
    public static final int NV_BLOCK_NEEDS_WRITING_PRIORITY_ENUM = 15;
    public static final int OBD_RATIO_CONNECTION_KIND = 16;

    public EClass getComMgrUserNeeds();

    public EAttribute getComMgrUserNeeds_MaxCommMode();

    public EClass getServiceNeeds();

    public EClass getDiagnosticCommunicationNeeds();

    public EClass getDiagnosticEventNeeds();

    public EClass getEcuStateMgrUserNeeds();

    public EClass getFunctionInhibitionNeeds();

    public EClass getNvBlockNeeds();

    public EAttribute getNvBlockNeeds_NDataSets();

    public EAttribute getNvBlockNeeds_Readonly();

    public EAttribute getNvBlockNeeds_Reliability();

    public EAttribute getNvBlockNeeds_ResistantToChangedSw();

    public EAttribute getNvBlockNeeds_RestoreAtStart();

    public EAttribute getNvBlockNeeds_WriteOnlyOnce();

    public EAttribute getNvBlockNeeds_WritingFrequency();

    public EAttribute getNvBlockNeeds_WritingPriority();

    public EClass getObdControlServiceNeeds();

    public EAttribute getObdControlServiceNeeds_TestId();

    public EClass getObdInfoServiceNeeds();

    public EAttribute getObdInfoServiceNeeds_DataLength();

    public EAttribute getObdInfoServiceNeeds_InfoType();

    public EClass getObdMonitorServiceNeeds();

    public EAttribute getObdMonitorServiceNeeds_OnBoardMonitorId();

    public EAttribute getObdMonitorServiceNeeds_TestId();

    public EAttribute getObdMonitorServiceNeeds_UnitAndScalingId();

    public EClass getObdPidServiceNeeds();

    public EAttribute getObdPidServiceNeeds_DataLength();

    public EAttribute getObdPidServiceNeeds_ParameterId();

    public EAttribute getObdPidServiceNeeds_Standard();

    public EClass getObdRatioServiceNeeds();

    public EAttribute getObdRatioServiceNeeds_ConnectionType();

    public EAttribute getObdRatioServiceNeeds_IumprGroup();

    public EReference getObdRatioServiceNeeds_RateBasedMonitoredEvent();

    public EReference getObdRatioServiceNeeds_UsedFid();

    public EClass getSupervisedEntityNeeds();

    public EAttribute getSupervisedEntityNeeds_ActivateAtStart();

    public EAttribute getSupervisedEntityNeeds_EnableDeactivation();

    public EAttribute getSupervisedEntityNeeds_ExpectedAliveCycle();

    public EAttribute getSupervisedEntityNeeds_MaxAliveCycle();

    public EAttribute getSupervisedEntityNeeds_MinAliveCycle();

    public EAttribute getSupervisedEntityNeeds_ToleratedFailedCycles();

    public EEnum getMaxCommModeEnum();

    public EEnum getNvBlockNeedsReliabilityEnum();

    public EEnum getNvBlockNeedsWritingPriorityEnum();

    public EEnum getObdRatioConnectionKind();

    public ServiceneedsFactory getServiceneedsFactory();

    public static interface Literals {
        public static final EClass COM_MGR_USER_NEEDS = eINSTANCE.getComMgrUserNeeds();
        public static final EAttribute COM_MGR_USER_NEEDS__MAX_COMM_MODE = eINSTANCE.getComMgrUserNeeds_MaxCommMode();
        public static final EClass SERVICE_NEEDS = eINSTANCE.getServiceNeeds();
        public static final EClass DIAGNOSTIC_COMMUNICATION_NEEDS = eINSTANCE.getDiagnosticCommunicationNeeds();
        public static final EClass DIAGNOSTIC_EVENT_NEEDS = eINSTANCE.getDiagnosticEventNeeds();
        public static final EClass ECU_STATE_MGR_USER_NEEDS = eINSTANCE.getEcuStateMgrUserNeeds();
        public static final EClass FUNCTION_INHIBITION_NEEDS = eINSTANCE.getFunctionInhibitionNeeds();
        public static final EClass NV_BLOCK_NEEDS = eINSTANCE.getNvBlockNeeds();
        public static final EAttribute NV_BLOCK_NEEDS__NDATA_SETS = eINSTANCE.getNvBlockNeeds_NDataSets();
        public static final EAttribute NV_BLOCK_NEEDS__READONLY = eINSTANCE.getNvBlockNeeds_Readonly();
        public static final EAttribute NV_BLOCK_NEEDS__RELIABILITY = eINSTANCE.getNvBlockNeeds_Reliability();
        public static final EAttribute NV_BLOCK_NEEDS__RESISTANT_TO_CHANGED_SW = eINSTANCE.getNvBlockNeeds_ResistantToChangedSw();
        public static final EAttribute NV_BLOCK_NEEDS__RESTORE_AT_START = eINSTANCE.getNvBlockNeeds_RestoreAtStart();
        public static final EAttribute NV_BLOCK_NEEDS__WRITE_ONLY_ONCE = eINSTANCE.getNvBlockNeeds_WriteOnlyOnce();
        public static final EAttribute NV_BLOCK_NEEDS__WRITING_FREQUENCY = eINSTANCE.getNvBlockNeeds_WritingFrequency();
        public static final EAttribute NV_BLOCK_NEEDS__WRITING_PRIORITY = eINSTANCE.getNvBlockNeeds_WritingPriority();
        public static final EClass OBD_CONTROL_SERVICE_NEEDS = eINSTANCE.getObdControlServiceNeeds();
        public static final EAttribute OBD_CONTROL_SERVICE_NEEDS__TEST_ID = eINSTANCE.getObdControlServiceNeeds_TestId();
        public static final EClass OBD_INFO_SERVICE_NEEDS = eINSTANCE.getObdInfoServiceNeeds();
        public static final EAttribute OBD_INFO_SERVICE_NEEDS__DATA_LENGTH = eINSTANCE.getObdInfoServiceNeeds_DataLength();
        public static final EAttribute OBD_INFO_SERVICE_NEEDS__INFO_TYPE = eINSTANCE.getObdInfoServiceNeeds_InfoType();
        public static final EClass OBD_MONITOR_SERVICE_NEEDS = eINSTANCE.getObdMonitorServiceNeeds();
        public static final EAttribute OBD_MONITOR_SERVICE_NEEDS__ON_BOARD_MONITOR_ID = eINSTANCE.getObdMonitorServiceNeeds_OnBoardMonitorId();
        public static final EAttribute OBD_MONITOR_SERVICE_NEEDS__TEST_ID = eINSTANCE.getObdMonitorServiceNeeds_TestId();
        public static final EAttribute OBD_MONITOR_SERVICE_NEEDS__UNIT_AND_SCALING_ID = eINSTANCE.getObdMonitorServiceNeeds_UnitAndScalingId();
        public static final EClass OBD_PID_SERVICE_NEEDS = eINSTANCE.getObdPidServiceNeeds();
        public static final EAttribute OBD_PID_SERVICE_NEEDS__DATA_LENGTH = eINSTANCE.getObdPidServiceNeeds_DataLength();
        public static final EAttribute OBD_PID_SERVICE_NEEDS__PARAMETER_ID = eINSTANCE.getObdPidServiceNeeds_ParameterId();
        public static final EAttribute OBD_PID_SERVICE_NEEDS__STANDARD = eINSTANCE.getObdPidServiceNeeds_Standard();
        public static final EClass OBD_RATIO_SERVICE_NEEDS = eINSTANCE.getObdRatioServiceNeeds();
        public static final EAttribute OBD_RATIO_SERVICE_NEEDS__CONNECTION_TYPE = eINSTANCE.getObdRatioServiceNeeds_ConnectionType();
        public static final EAttribute OBD_RATIO_SERVICE_NEEDS__IUMPR_GROUP = eINSTANCE.getObdRatioServiceNeeds_IumprGroup();
        public static final EReference OBD_RATIO_SERVICE_NEEDS__RATE_BASED_MONITORED_EVENT = eINSTANCE.getObdRatioServiceNeeds_RateBasedMonitoredEvent();
        public static final EReference OBD_RATIO_SERVICE_NEEDS__USED_FID = eINSTANCE.getObdRatioServiceNeeds_UsedFid();
        public static final EClass SUPERVISED_ENTITY_NEEDS = eINSTANCE.getSupervisedEntityNeeds();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__ACTIVATE_AT_START = eINSTANCE.getSupervisedEntityNeeds_ActivateAtStart();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__ENABLE_DEACTIVATION = eINSTANCE.getSupervisedEntityNeeds_EnableDeactivation();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__EXPECTED_ALIVE_CYCLE = eINSTANCE.getSupervisedEntityNeeds_ExpectedAliveCycle();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__MAX_ALIVE_CYCLE = eINSTANCE.getSupervisedEntityNeeds_MaxAliveCycle();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__MIN_ALIVE_CYCLE = eINSTANCE.getSupervisedEntityNeeds_MinAliveCycle();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__TOLERATED_FAILED_CYCLES = eINSTANCE.getSupervisedEntityNeeds_ToleratedFailedCycles();
        public static final EEnum MAX_COMM_MODE_ENUM = eINSTANCE.getMaxCommModeEnum();
        public static final EEnum NV_BLOCK_NEEDS_RELIABILITY_ENUM = eINSTANCE.getNvBlockNeedsReliabilityEnum();
        public static final EEnum NV_BLOCK_NEEDS_WRITING_PRIORITY_ENUM = eINSTANCE.getNvBlockNeedsWritingPriorityEnum();
        public static final EEnum OBD_RATIO_CONNECTION_KIND = eINSTANCE.getObdRatioConnectionKind();
    }
}

