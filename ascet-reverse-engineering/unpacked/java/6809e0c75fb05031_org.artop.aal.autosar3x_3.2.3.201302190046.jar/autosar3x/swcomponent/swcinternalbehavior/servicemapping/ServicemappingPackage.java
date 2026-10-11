/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.swcinternalbehavior.servicemapping;

import autosar3x.swcomponent.swcinternalbehavior.servicemapping.ServicemappingFactory;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.ServicemappingPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ServicemappingPackage
extends EPackage {
    public static final String eNAME = "servicemapping";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/sib/sm";
    public static final String eNS_PREFIX = "";
    public static final ServicemappingPackage eINSTANCE = ServicemappingPackageImpl.init();
    public static final int ROLE_BASED_PPORT_ASSIGNMENT = 0;
    public static final int ROLE_BASED_PPORT_ASSIGNMENT__GCHECKSUM = 0;
    public static final int ROLE_BASED_PPORT_ASSIGNMENT__GTIMESTAMP = 1;
    public static final int ROLE_BASED_PPORT_ASSIGNMENT__CHECKSUM = 2;
    public static final int ROLE_BASED_PPORT_ASSIGNMENT__TIMESTAMP = 3;
    public static final int ROLE_BASED_PPORT_ASSIGNMENT__PPORT_PROTOTYPE = 4;
    public static final int ROLE_BASED_PPORT_ASSIGNMENT__ROLE = 5;
    public static final int ROLE_BASED_PPORT_ASSIGNMENT_FEATURE_COUNT = 6;
    public static final int ROLE_BASED_RPORT_ASSIGNMENT = 1;
    public static final int ROLE_BASED_RPORT_ASSIGNMENT__GCHECKSUM = 0;
    public static final int ROLE_BASED_RPORT_ASSIGNMENT__GTIMESTAMP = 1;
    public static final int ROLE_BASED_RPORT_ASSIGNMENT__CHECKSUM = 2;
    public static final int ROLE_BASED_RPORT_ASSIGNMENT__TIMESTAMP = 3;
    public static final int ROLE_BASED_RPORT_ASSIGNMENT__RPORT_PROTOTYPE = 4;
    public static final int ROLE_BASED_RPORT_ASSIGNMENT__ROLE = 5;
    public static final int ROLE_BASED_RPORT_ASSIGNMENT_FEATURE_COUNT = 6;
    public static final int SWC_COM_MGR_USER_NEEDS = 2;
    public static final int SWC_COM_MGR_USER_NEEDS__GCHECKSUM = 0;
    public static final int SWC_COM_MGR_USER_NEEDS__GTIMESTAMP = 1;
    public static final int SWC_COM_MGR_USER_NEEDS__CHECKSUM = 2;
    public static final int SWC_COM_MGR_USER_NEEDS__TIMESTAMP = 3;
    public static final int SWC_COM_MGR_USER_NEEDS__GSHORT_NAME = 4;
    public static final int SWC_COM_MGR_USER_NEEDS__GUUID = 5;
    public static final int SWC_COM_MGR_USER_NEEDS__GCATEGORY = 6;
    public static final int SWC_COM_MGR_USER_NEEDS__GDESC = 7;
    public static final int SWC_COM_MGR_USER_NEEDS__SHORT_NAME = 8;
    public static final int SWC_COM_MGR_USER_NEEDS__LONG_NAME = 9;
    public static final int SWC_COM_MGR_USER_NEEDS__DESC = 10;
    public static final int SWC_COM_MGR_USER_NEEDS__CATEGORY = 11;
    public static final int SWC_COM_MGR_USER_NEEDS__ADMIN_DATA = 12;
    public static final int SWC_COM_MGR_USER_NEEDS__INTRODUCTION = 13;
    public static final int SWC_COM_MGR_USER_NEEDS__UUID = 14;
    public static final int SWC_COM_MGR_USER_NEEDS__ALL_EXTENSIONS = 15;
    public static final int SWC_COM_MGR_USER_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_COM_MGR_USER_NEEDS__MAX_COMM_MODE = 17;
    public static final int SWC_COM_MGR_USER_NEEDS__CALLBACK_PORTS = 18;
    public static final int SWC_COM_MGR_USER_NEEDS__SERVICE_CALL_PORTS = 19;
    public static final int SWC_COM_MGR_USER_NEEDS_FEATURE_COUNT = 20;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS = 3;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__GCHECKSUM = 0;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__GTIMESTAMP = 1;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__CHECKSUM = 2;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__TIMESTAMP = 3;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__GSHORT_NAME = 4;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__GUUID = 5;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__GCATEGORY = 6;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__GDESC = 7;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__SHORT_NAME = 8;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__LONG_NAME = 9;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__DESC = 10;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__CATEGORY = 11;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__ADMIN_DATA = 12;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__INTRODUCTION = 13;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__UUID = 14;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__ALL_EXTENSIONS = 15;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__CALLBACK_PORTS = 17;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__SERVICE_CALL_PORT = 18;
    public static final int SWC_DIAGNOSTIC_COMMUNICATION_NEEDS_FEATURE_COUNT = 19;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS = 4;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__GCHECKSUM = 0;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__GTIMESTAMP = 1;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__CHECKSUM = 2;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__TIMESTAMP = 3;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__GSHORT_NAME = 4;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__GUUID = 5;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__GCATEGORY = 6;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__GDESC = 7;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__SHORT_NAME = 8;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__LONG_NAME = 9;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__DESC = 10;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__CATEGORY = 11;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__ADMIN_DATA = 12;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__INTRODUCTION = 13;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__UUID = 14;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__ALL_EXTENSIONS = 15;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__CALLBACK_PORTS = 17;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS__SERVICE_CALL_PORTS = 18;
    public static final int SWC_DIAGNOSTIC_EVENT_NEEDS_FEATURE_COUNT = 19;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS = 5;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__GCHECKSUM = 0;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__GTIMESTAMP = 1;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__CHECKSUM = 2;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__TIMESTAMP = 3;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__GSHORT_NAME = 4;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__GUUID = 5;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__GCATEGORY = 6;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__GDESC = 7;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__SHORT_NAME = 8;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__LONG_NAME = 9;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__DESC = 10;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__CATEGORY = 11;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__ADMIN_DATA = 12;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__INTRODUCTION = 13;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__UUID = 14;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__ALL_EXTENSIONS = 15;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS__SERVICE_CALL_PORTS = 17;
    public static final int SWC_ECU_STATE_MGR_USER_NEEDS_FEATURE_COUNT = 18;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS = 6;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__GCHECKSUM = 0;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__GTIMESTAMP = 1;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__CHECKSUM = 2;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__TIMESTAMP = 3;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__GSHORT_NAME = 4;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__GUUID = 5;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__GCATEGORY = 6;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__GDESC = 7;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__SHORT_NAME = 8;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__LONG_NAME = 9;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__DESC = 10;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__CATEGORY = 11;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__ADMIN_DATA = 12;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__INTRODUCTION = 13;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__UUID = 14;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__ALL_EXTENSIONS = 15;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS__SERVICE_CALL_PORTS = 17;
    public static final int SWC_FUNCTION_INHIBITION_NEEDS_FEATURE_COUNT = 18;
    public static final int SWC_NV_BLOCK_NEEDS = 7;
    public static final int SWC_NV_BLOCK_NEEDS__GCHECKSUM = 0;
    public static final int SWC_NV_BLOCK_NEEDS__GTIMESTAMP = 1;
    public static final int SWC_NV_BLOCK_NEEDS__CHECKSUM = 2;
    public static final int SWC_NV_BLOCK_NEEDS__TIMESTAMP = 3;
    public static final int SWC_NV_BLOCK_NEEDS__GSHORT_NAME = 4;
    public static final int SWC_NV_BLOCK_NEEDS__GUUID = 5;
    public static final int SWC_NV_BLOCK_NEEDS__GCATEGORY = 6;
    public static final int SWC_NV_BLOCK_NEEDS__GDESC = 7;
    public static final int SWC_NV_BLOCK_NEEDS__SHORT_NAME = 8;
    public static final int SWC_NV_BLOCK_NEEDS__LONG_NAME = 9;
    public static final int SWC_NV_BLOCK_NEEDS__DESC = 10;
    public static final int SWC_NV_BLOCK_NEEDS__CATEGORY = 11;
    public static final int SWC_NV_BLOCK_NEEDS__ADMIN_DATA = 12;
    public static final int SWC_NV_BLOCK_NEEDS__INTRODUCTION = 13;
    public static final int SWC_NV_BLOCK_NEEDS__UUID = 14;
    public static final int SWC_NV_BLOCK_NEEDS__ALL_EXTENSIONS = 15;
    public static final int SWC_NV_BLOCK_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_NV_BLOCK_NEEDS__NDATA_SETS = 17;
    public static final int SWC_NV_BLOCK_NEEDS__READONLY = 18;
    public static final int SWC_NV_BLOCK_NEEDS__RELIABILITY = 19;
    public static final int SWC_NV_BLOCK_NEEDS__RESISTANT_TO_CHANGED_SW = 20;
    public static final int SWC_NV_BLOCK_NEEDS__RESTORE_AT_START = 21;
    public static final int SWC_NV_BLOCK_NEEDS__WRITE_ONLY_ONCE = 22;
    public static final int SWC_NV_BLOCK_NEEDS__WRITING_FREQUENCY = 23;
    public static final int SWC_NV_BLOCK_NEEDS__WRITING_PRIORITY = 24;
    public static final int SWC_NV_BLOCK_NEEDS__CALL_BACK_PORTS = 25;
    public static final int SWC_NV_BLOCK_NEEDS__DEFAULT_BLOCK = 26;
    public static final int SWC_NV_BLOCK_NEEDS__MIRROR_BLOCK = 27;
    public static final int SWC_NV_BLOCK_NEEDS__SERVICE_CALL_PORTS = 28;
    public static final int SWC_NV_BLOCK_NEEDS_FEATURE_COUNT = 29;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS = 8;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__GUUID = 5;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__GCATEGORY = 6;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__GDESC = 7;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__SHORT_NAME = 8;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__LONG_NAME = 9;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__DESC = 10;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__CATEGORY = 11;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__UUID = 14;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__ALL_EXTENSIONS = 15;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__TEST_ID = 17;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS__CALLBACK_PORT = 18;
    public static final int SWC_OBD_CONTROL_SERVICE_NEEDS_FEATURE_COUNT = 19;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS = 9;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__GUUID = 5;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__GCATEGORY = 6;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__GDESC = 7;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__SHORT_NAME = 8;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__LONG_NAME = 9;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__DESC = 10;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__CATEGORY = 11;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__UUID = 14;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__ALL_EXTENSIONS = 15;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__DATA_LENGTH = 17;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__INFO_TYPE = 18;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS__CALLBACK_PORT = 19;
    public static final int SWC_OBD_INFO_SERVICE_NEEDS_FEATURE_COUNT = 20;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS = 10;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__GUUID = 5;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__GCATEGORY = 6;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__GDESC = 7;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__SHORT_NAME = 8;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__LONG_NAME = 9;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__DESC = 10;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__CATEGORY = 11;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__UUID = 14;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__ALL_EXTENSIONS = 15;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__ON_BOARD_MONITOR_ID = 17;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__TEST_ID = 18;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__UNIT_AND_SCALING_ID = 19;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS__CALLBACK_PORT = 20;
    public static final int SWC_OBD_MONITOR_SERVICE_NEEDS_FEATURE_COUNT = 21;
    public static final int SWC_OBD_PID_SERVICE_NEEDS = 11;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__GUUID = 5;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__GCATEGORY = 6;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__GDESC = 7;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__SHORT_NAME = 8;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__LONG_NAME = 9;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__DESC = 10;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__CATEGORY = 11;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__UUID = 14;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__ALL_EXTENSIONS = 15;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__DATA_LENGTH = 17;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__PARAMETER_ID = 18;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__STANDARD = 19;
    public static final int SWC_OBD_PID_SERVICE_NEEDS__CALLBACK_PORT = 20;
    public static final int SWC_OBD_PID_SERVICE_NEEDS_FEATURE_COUNT = 21;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS = 12;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__GUUID = 5;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__GCATEGORY = 6;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__GDESC = 7;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__SHORT_NAME = 8;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__LONG_NAME = 9;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__DESC = 10;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__CATEGORY = 11;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__UUID = 14;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__ALL_EXTENSIONS = 15;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__CONNECTION_TYPE = 17;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__IUMPR_GROUP = 18;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__RATE_BASED_MONITORED_EVENT = 19;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__USED_FID = 20;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS__SERVICE_CALL_PORT = 21;
    public static final int SWC_OBD_RATIO_SERVICE_NEEDS_FEATURE_COUNT = 22;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS = 13;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__GCHECKSUM = 0;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__GTIMESTAMP = 1;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__CHECKSUM = 2;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__TIMESTAMP = 3;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__GSHORT_NAME = 4;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__GUUID = 5;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__GCATEGORY = 6;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__GDESC = 7;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__SHORT_NAME = 8;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__LONG_NAME = 9;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__DESC = 10;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__CATEGORY = 11;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__ADMIN_DATA = 12;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__INTRODUCTION = 13;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__UUID = 14;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__ALL_EXTENSIONS = 15;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__ACTIVATE_AT_START = 17;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__ENABLE_DEACTIVATION = 18;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__EXPECTED_ALIVE_CYCLE = 19;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__MAX_ALIVE_CYCLE = 20;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__MIN_ALIVE_CYCLE = 21;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__TOLERATED_FAILED_CYCLES = 22;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS__SERVICE_CALL_PORTS = 23;
    public static final int SWC_SUPERVISED_ENTITY_NEEDS_FEATURE_COUNT = 24;

    public EClass getRoleBasedPPortAssignment();

    public EReference getRoleBasedPPortAssignment_PPortPrototype();

    public EAttribute getRoleBasedPPortAssignment_Role();

    public EClass getRoleBasedRPortAssignment();

    public EReference getRoleBasedRPortAssignment_RPortPrototype();

    public EAttribute getRoleBasedRPortAssignment_Role();

    public EClass getSwcComMgrUserNeeds();

    public EReference getSwcComMgrUserNeeds_CallbackPorts();

    public EReference getSwcComMgrUserNeeds_ServiceCallPorts();

    public EClass getSwcDiagnosticCommunicationNeeds();

    public EReference getSwcDiagnosticCommunicationNeeds_CallbackPorts();

    public EReference getSwcDiagnosticCommunicationNeeds_ServiceCallPort();

    public EClass getSwcDiagnosticEventNeeds();

    public EReference getSwcDiagnosticEventNeeds_CallbackPorts();

    public EReference getSwcDiagnosticEventNeeds_ServiceCallPorts();

    public EClass getSwcEcuStateMgrUserNeeds();

    public EReference getSwcEcuStateMgrUserNeeds_ServiceCallPorts();

    public EClass getSwcFunctionInhibitionNeeds();

    public EReference getSwcFunctionInhibitionNeeds_ServiceCallPorts();

    public EClass getSwcNvBlockNeeds();

    public EReference getSwcNvBlockNeeds_CallBackPorts();

    public EReference getSwcNvBlockNeeds_DefaultBlock();

    public EReference getSwcNvBlockNeeds_MirrorBlock();

    public EReference getSwcNvBlockNeeds_ServiceCallPorts();

    public EClass getSwcObdControlServiceNeeds();

    public EReference getSwcObdControlServiceNeeds_CallbackPort();

    public EClass getSwcObdInfoServiceNeeds();

    public EReference getSwcObdInfoServiceNeeds_CallbackPort();

    public EClass getSwcObdMonitorServiceNeeds();

    public EReference getSwcObdMonitorServiceNeeds_CallbackPort();

    public EClass getSwcObdPidServiceNeeds();

    public EReference getSwcObdPidServiceNeeds_CallbackPort();

    public EClass getSwcObdRatioServiceNeeds();

    public EReference getSwcObdRatioServiceNeeds_ServiceCallPort();

    public EClass getSwcSupervisedEntityNeeds();

    public EReference getSwcSupervisedEntityNeeds_ServiceCallPorts();

    public ServicemappingFactory getServicemappingFactory();

    public static interface Literals {
        public static final EClass ROLE_BASED_PPORT_ASSIGNMENT = eINSTANCE.getRoleBasedPPortAssignment();
        public static final EReference ROLE_BASED_PPORT_ASSIGNMENT__PPORT_PROTOTYPE = eINSTANCE.getRoleBasedPPortAssignment_PPortPrototype();
        public static final EAttribute ROLE_BASED_PPORT_ASSIGNMENT__ROLE = eINSTANCE.getRoleBasedPPortAssignment_Role();
        public static final EClass ROLE_BASED_RPORT_ASSIGNMENT = eINSTANCE.getRoleBasedRPortAssignment();
        public static final EReference ROLE_BASED_RPORT_ASSIGNMENT__RPORT_PROTOTYPE = eINSTANCE.getRoleBasedRPortAssignment_RPortPrototype();
        public static final EAttribute ROLE_BASED_RPORT_ASSIGNMENT__ROLE = eINSTANCE.getRoleBasedRPortAssignment_Role();
        public static final EClass SWC_COM_MGR_USER_NEEDS = eINSTANCE.getSwcComMgrUserNeeds();
        public static final EReference SWC_COM_MGR_USER_NEEDS__CALLBACK_PORTS = eINSTANCE.getSwcComMgrUserNeeds_CallbackPorts();
        public static final EReference SWC_COM_MGR_USER_NEEDS__SERVICE_CALL_PORTS = eINSTANCE.getSwcComMgrUserNeeds_ServiceCallPorts();
        public static final EClass SWC_DIAGNOSTIC_COMMUNICATION_NEEDS = eINSTANCE.getSwcDiagnosticCommunicationNeeds();
        public static final EReference SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__CALLBACK_PORTS = eINSTANCE.getSwcDiagnosticCommunicationNeeds_CallbackPorts();
        public static final EReference SWC_DIAGNOSTIC_COMMUNICATION_NEEDS__SERVICE_CALL_PORT = eINSTANCE.getSwcDiagnosticCommunicationNeeds_ServiceCallPort();
        public static final EClass SWC_DIAGNOSTIC_EVENT_NEEDS = eINSTANCE.getSwcDiagnosticEventNeeds();
        public static final EReference SWC_DIAGNOSTIC_EVENT_NEEDS__CALLBACK_PORTS = eINSTANCE.getSwcDiagnosticEventNeeds_CallbackPorts();
        public static final EReference SWC_DIAGNOSTIC_EVENT_NEEDS__SERVICE_CALL_PORTS = eINSTANCE.getSwcDiagnosticEventNeeds_ServiceCallPorts();
        public static final EClass SWC_ECU_STATE_MGR_USER_NEEDS = eINSTANCE.getSwcEcuStateMgrUserNeeds();
        public static final EReference SWC_ECU_STATE_MGR_USER_NEEDS__SERVICE_CALL_PORTS = eINSTANCE.getSwcEcuStateMgrUserNeeds_ServiceCallPorts();
        public static final EClass SWC_FUNCTION_INHIBITION_NEEDS = eINSTANCE.getSwcFunctionInhibitionNeeds();
        public static final EReference SWC_FUNCTION_INHIBITION_NEEDS__SERVICE_CALL_PORTS = eINSTANCE.getSwcFunctionInhibitionNeeds_ServiceCallPorts();
        public static final EClass SWC_NV_BLOCK_NEEDS = eINSTANCE.getSwcNvBlockNeeds();
        public static final EReference SWC_NV_BLOCK_NEEDS__CALL_BACK_PORTS = eINSTANCE.getSwcNvBlockNeeds_CallBackPorts();
        public static final EReference SWC_NV_BLOCK_NEEDS__DEFAULT_BLOCK = eINSTANCE.getSwcNvBlockNeeds_DefaultBlock();
        public static final EReference SWC_NV_BLOCK_NEEDS__MIRROR_BLOCK = eINSTANCE.getSwcNvBlockNeeds_MirrorBlock();
        public static final EReference SWC_NV_BLOCK_NEEDS__SERVICE_CALL_PORTS = eINSTANCE.getSwcNvBlockNeeds_ServiceCallPorts();
        public static final EClass SWC_OBD_CONTROL_SERVICE_NEEDS = eINSTANCE.getSwcObdControlServiceNeeds();
        public static final EReference SWC_OBD_CONTROL_SERVICE_NEEDS__CALLBACK_PORT = eINSTANCE.getSwcObdControlServiceNeeds_CallbackPort();
        public static final EClass SWC_OBD_INFO_SERVICE_NEEDS = eINSTANCE.getSwcObdInfoServiceNeeds();
        public static final EReference SWC_OBD_INFO_SERVICE_NEEDS__CALLBACK_PORT = eINSTANCE.getSwcObdInfoServiceNeeds_CallbackPort();
        public static final EClass SWC_OBD_MONITOR_SERVICE_NEEDS = eINSTANCE.getSwcObdMonitorServiceNeeds();
        public static final EReference SWC_OBD_MONITOR_SERVICE_NEEDS__CALLBACK_PORT = eINSTANCE.getSwcObdMonitorServiceNeeds_CallbackPort();
        public static final EClass SWC_OBD_PID_SERVICE_NEEDS = eINSTANCE.getSwcObdPidServiceNeeds();
        public static final EReference SWC_OBD_PID_SERVICE_NEEDS__CALLBACK_PORT = eINSTANCE.getSwcObdPidServiceNeeds_CallbackPort();
        public static final EClass SWC_OBD_RATIO_SERVICE_NEEDS = eINSTANCE.getSwcObdRatioServiceNeeds();
        public static final EReference SWC_OBD_RATIO_SERVICE_NEEDS__SERVICE_CALL_PORT = eINSTANCE.getSwcObdRatioServiceNeeds_ServiceCallPort();
        public static final EClass SWC_SUPERVISED_ENTITY_NEEDS = eINSTANCE.getSwcSupervisedEntityNeeds();
        public static final EReference SWC_SUPERVISED_ENTITY_NEEDS__SERVICE_CALL_PORTS = eINSTANCE.getSwcSupervisedEntityNeeds_ServiceCallPorts();
    }
}

