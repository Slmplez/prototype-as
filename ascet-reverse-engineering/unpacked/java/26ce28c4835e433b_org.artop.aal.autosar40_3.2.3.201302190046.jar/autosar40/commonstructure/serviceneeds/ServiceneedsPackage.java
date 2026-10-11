/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.ServiceneedsFactory;
import autosar40.commonstructure.serviceneeds.impl.ServiceneedsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ServiceneedsPackage
extends EPackage {
    public static final String eNAME = "serviceneeds";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/sn";
    public static final String eNS_PREFIX = "";
    public static final ServiceneedsPackage eINSTANCE = ServiceneedsPackageImpl.init();
    public static final int SERVICE_NEEDS = 1;
    public static final int SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int SERVICE_NEEDS__CHECKSUM = 2;
    public static final int SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int SERVICE_NEEDS__SHORT_NAME = 5;
    public static final int SERVICE_NEEDS__LONG_NAME = 6;
    public static final int SERVICE_NEEDS__GUUID = 7;
    public static final int SERVICE_NEEDS__GCATEGORY = 8;
    public static final int SERVICE_NEEDS__GDESC = 9;
    public static final int SERVICE_NEEDS__DESC = 10;
    public static final int SERVICE_NEEDS__CATEGORY = 11;
    public static final int SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int SERVICE_NEEDS__ANNOTATIONS = 14;
    public static final int SERVICE_NEEDS__UUID = 15;
    public static final int SERVICE_NEEDS__ALL_EXTENSIONS = 16;
    public static final int SERVICE_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int SERVICE_NEEDS_FEATURE_COUNT = 18;
    public static final int BSW_MGR_NEEDS = 0;
    public static final int BSW_MGR_NEEDS__GCHECKSUM = 0;
    public static final int BSW_MGR_NEEDS__GTIMESTAMP = 1;
    public static final int BSW_MGR_NEEDS__CHECKSUM = 2;
    public static final int BSW_MGR_NEEDS__TIMESTAMP = 3;
    public static final int BSW_MGR_NEEDS__GSHORT_NAME = 4;
    public static final int BSW_MGR_NEEDS__SHORT_NAME = 5;
    public static final int BSW_MGR_NEEDS__LONG_NAME = 6;
    public static final int BSW_MGR_NEEDS__GUUID = 7;
    public static final int BSW_MGR_NEEDS__GCATEGORY = 8;
    public static final int BSW_MGR_NEEDS__GDESC = 9;
    public static final int BSW_MGR_NEEDS__DESC = 10;
    public static final int BSW_MGR_NEEDS__CATEGORY = 11;
    public static final int BSW_MGR_NEEDS__ADMIN_DATA = 12;
    public static final int BSW_MGR_NEEDS__INTRODUCTION = 13;
    public static final int BSW_MGR_NEEDS__ANNOTATIONS = 14;
    public static final int BSW_MGR_NEEDS__UUID = 15;
    public static final int BSW_MGR_NEEDS__ALL_EXTENSIONS = 16;
    public static final int BSW_MGR_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_MGR_NEEDS_FEATURE_COUNT = 18;
    public static final int COM_MGR_USER_NEEDS = 2;
    public static final int COM_MGR_USER_NEEDS__GCHECKSUM = 0;
    public static final int COM_MGR_USER_NEEDS__GTIMESTAMP = 1;
    public static final int COM_MGR_USER_NEEDS__CHECKSUM = 2;
    public static final int COM_MGR_USER_NEEDS__TIMESTAMP = 3;
    public static final int COM_MGR_USER_NEEDS__GSHORT_NAME = 4;
    public static final int COM_MGR_USER_NEEDS__SHORT_NAME = 5;
    public static final int COM_MGR_USER_NEEDS__LONG_NAME = 6;
    public static final int COM_MGR_USER_NEEDS__GUUID = 7;
    public static final int COM_MGR_USER_NEEDS__GCATEGORY = 8;
    public static final int COM_MGR_USER_NEEDS__GDESC = 9;
    public static final int COM_MGR_USER_NEEDS__DESC = 10;
    public static final int COM_MGR_USER_NEEDS__CATEGORY = 11;
    public static final int COM_MGR_USER_NEEDS__ADMIN_DATA = 12;
    public static final int COM_MGR_USER_NEEDS__INTRODUCTION = 13;
    public static final int COM_MGR_USER_NEEDS__ANNOTATIONS = 14;
    public static final int COM_MGR_USER_NEEDS__UUID = 15;
    public static final int COM_MGR_USER_NEEDS__ALL_EXTENSIONS = 16;
    public static final int COM_MGR_USER_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int COM_MGR_USER_NEEDS__MAX_COMM_MODE = 18;
    public static final int COM_MGR_USER_NEEDS_FEATURE_COUNT = 19;
    public static final int CRYPTO_SERVICE_NEEDS = 3;
    public static final int CRYPTO_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int CRYPTO_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int CRYPTO_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int CRYPTO_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int CRYPTO_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int CRYPTO_SERVICE_NEEDS__SHORT_NAME = 5;
    public static final int CRYPTO_SERVICE_NEEDS__LONG_NAME = 6;
    public static final int CRYPTO_SERVICE_NEEDS__GUUID = 7;
    public static final int CRYPTO_SERVICE_NEEDS__GCATEGORY = 8;
    public static final int CRYPTO_SERVICE_NEEDS__GDESC = 9;
    public static final int CRYPTO_SERVICE_NEEDS__DESC = 10;
    public static final int CRYPTO_SERVICE_NEEDS__CATEGORY = 11;
    public static final int CRYPTO_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int CRYPTO_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int CRYPTO_SERVICE_NEEDS__ANNOTATIONS = 14;
    public static final int CRYPTO_SERVICE_NEEDS__UUID = 15;
    public static final int CRYPTO_SERVICE_NEEDS__ALL_EXTENSIONS = 16;
    public static final int CRYPTO_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int CRYPTO_SERVICE_NEEDS__MAXIMUM_KEY_LENGTH = 18;
    public static final int CRYPTO_SERVICE_NEEDS_FEATURE_COUNT = 19;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM = 4;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__GCHECKSUM = 0;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__GTIMESTAMP = 1;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__CHECKSUM = 2;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__TIMESTAMP = 3;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__GSHORT_NAME = 4;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__SHORT_NAME = 5;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__LONG_NAME = 6;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__GUUID = 7;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__GCATEGORY = 8;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__GDESC = 9;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__DESC = 10;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__CATEGORY = 11;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__ADMIN_DATA = 12;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__INTRODUCTION = 13;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__ANNOTATIONS = 14;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__UUID = 15;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__ALL_EXTENSIONS = 16;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__CONTAINED_EXTENSIONS = 17;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM__DIAGNOSTIC_EVENT_NEEDS = 18;
    public static final int DIAG_EVENT_DEBOUNCE_ALGORITHM_FEATURE_COUNT = 19;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED = 5;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__GCHECKSUM = 0;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__GTIMESTAMP = 1;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__CHECKSUM = 2;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__TIMESTAMP = 3;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__GSHORT_NAME = 4;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__SHORT_NAME = 5;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__LONG_NAME = 6;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__GUUID = 7;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__GCATEGORY = 8;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__GDESC = 9;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__DESC = 10;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__CATEGORY = 11;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__ADMIN_DATA = 12;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__INTRODUCTION = 13;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__ANNOTATIONS = 14;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__UUID = 15;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__ALL_EXTENSIONS = 16;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__CONTAINED_EXTENSIONS = 17;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__DIAGNOSTIC_EVENT_NEEDS = 18;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_DECREMENT_STEP_SIZE = 19;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_FAILED_THRESHOLD = 20;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_INCREMENT_STEP_SIZE = 21;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_JUMP_DOWN = 22;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_JUMP_DOWN_VALUE = 23;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_JUMP_UP = 24;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_JUMP_UP_VALUE = 25;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_PASSED_THRESHOLD = 26;
    public static final int DIAG_EVENT_DEBOUNCE_COUNTER_BASED_FEATURE_COUNT = 27;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL = 6;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__GCHECKSUM = 0;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__GTIMESTAMP = 1;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__CHECKSUM = 2;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__TIMESTAMP = 3;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__GSHORT_NAME = 4;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__SHORT_NAME = 5;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__LONG_NAME = 6;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__GUUID = 7;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__GCATEGORY = 8;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__GDESC = 9;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__DESC = 10;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__CATEGORY = 11;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__ADMIN_DATA = 12;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__INTRODUCTION = 13;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__ANNOTATIONS = 14;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__UUID = 15;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__ALL_EXTENSIONS = 16;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__CONTAINED_EXTENSIONS = 17;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL__DIAGNOSTIC_EVENT_NEEDS = 18;
    public static final int DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL_FEATURE_COUNT = 19;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED = 7;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__GCHECKSUM = 0;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__GTIMESTAMP = 1;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__CHECKSUM = 2;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__TIMESTAMP = 3;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__GSHORT_NAME = 4;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__SHORT_NAME = 5;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__LONG_NAME = 6;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__GUUID = 7;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__GCATEGORY = 8;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__GDESC = 9;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__DESC = 10;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__CATEGORY = 11;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__ADMIN_DATA = 12;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__INTRODUCTION = 13;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__ANNOTATIONS = 14;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__UUID = 15;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__ALL_EXTENSIONS = 16;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__CONTAINED_EXTENSIONS = 17;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__DIAGNOSTIC_EVENT_NEEDS = 18;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__TIME_FAILED_THRESHOLD = 19;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED__TIME_PASSED_THRESHOLD = 20;
    public static final int DIAG_EVENT_DEBOUNCE_TIME_BASED_FEATURE_COUNT = 21;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT = 8;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__GCHECKSUM = 0;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__GTIMESTAMP = 1;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__CHECKSUM = 2;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__TIMESTAMP = 3;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__GSHORT_NAME = 4;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__SHORT_NAME = 5;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__LONG_NAME = 6;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__GUUID = 7;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__GCATEGORY = 8;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__GDESC = 9;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__DESC = 10;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__CATEGORY = 11;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__ADMIN_DATA = 12;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__INTRODUCTION = 13;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__ANNOTATIONS = 14;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__UUID = 15;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__ALL_EXTENSIONS = 16;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__CONTAINED_EXTENSIONS = 17;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__AUDIENCES = 18;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__DIAG_REQUIREMENT = 19;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT__SECURITY_ACCESS_LEVEL = 20;
    public static final int DIAGNOSTIC_CAPABILITY_ELEMENT_FEATURE_COUNT = 21;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS = 9;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__GCHECKSUM = 0;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__GTIMESTAMP = 1;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__CHECKSUM = 2;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__TIMESTAMP = 3;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__GSHORT_NAME = 4;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__SHORT_NAME = 5;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__LONG_NAME = 6;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__GUUID = 7;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__GCATEGORY = 8;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__GDESC = 9;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__DESC = 10;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__CATEGORY = 11;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__ADMIN_DATA = 12;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__INTRODUCTION = 13;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__ANNOTATIONS = 14;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__UUID = 15;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__ALL_EXTENSIONS = 16;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__AUDIENCES = 18;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__DIAG_REQUIREMENT = 19;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS__SECURITY_ACCESS_LEVEL = 20;
    public static final int DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS_FEATURE_COUNT = 21;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS = 10;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__GCHECKSUM = 0;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__GTIMESTAMP = 1;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__CHECKSUM = 2;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__TIMESTAMP = 3;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__GSHORT_NAME = 4;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__SHORT_NAME = 5;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__LONG_NAME = 6;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__GUUID = 7;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__GCATEGORY = 8;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__GDESC = 9;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__DESC = 10;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__CATEGORY = 11;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__ADMIN_DATA = 12;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__INTRODUCTION = 13;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__ANNOTATIONS = 14;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__UUID = 15;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__ALL_EXTENSIONS = 16;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__AUDIENCES = 18;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__DIAG_REQUIREMENT = 19;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS__SECURITY_ACCESS_LEVEL = 20;
    public static final int DIAGNOSTIC_EVENT_MANAGER_NEEDS_FEATURE_COUNT = 21;
    public static final int DIAGNOSTIC_EVENT_NEEDS = 11;
    public static final int DIAGNOSTIC_EVENT_NEEDS__GCHECKSUM = 0;
    public static final int DIAGNOSTIC_EVENT_NEEDS__GTIMESTAMP = 1;
    public static final int DIAGNOSTIC_EVENT_NEEDS__CHECKSUM = 2;
    public static final int DIAGNOSTIC_EVENT_NEEDS__TIMESTAMP = 3;
    public static final int DIAGNOSTIC_EVENT_NEEDS__GSHORT_NAME = 4;
    public static final int DIAGNOSTIC_EVENT_NEEDS__SHORT_NAME = 5;
    public static final int DIAGNOSTIC_EVENT_NEEDS__LONG_NAME = 6;
    public static final int DIAGNOSTIC_EVENT_NEEDS__GUUID = 7;
    public static final int DIAGNOSTIC_EVENT_NEEDS__GCATEGORY = 8;
    public static final int DIAGNOSTIC_EVENT_NEEDS__GDESC = 9;
    public static final int DIAGNOSTIC_EVENT_NEEDS__DESC = 10;
    public static final int DIAGNOSTIC_EVENT_NEEDS__CATEGORY = 11;
    public static final int DIAGNOSTIC_EVENT_NEEDS__ADMIN_DATA = 12;
    public static final int DIAGNOSTIC_EVENT_NEEDS__INTRODUCTION = 13;
    public static final int DIAGNOSTIC_EVENT_NEEDS__ANNOTATIONS = 14;
    public static final int DIAGNOSTIC_EVENT_NEEDS__UUID = 15;
    public static final int DIAGNOSTIC_EVENT_NEEDS__ALL_EXTENSIONS = 16;
    public static final int DIAGNOSTIC_EVENT_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int DIAGNOSTIC_EVENT_NEEDS__AUDIENCES = 18;
    public static final int DIAGNOSTIC_EVENT_NEEDS__DIAG_REQUIREMENT = 19;
    public static final int DIAGNOSTIC_EVENT_NEEDS__SECURITY_ACCESS_LEVEL = 20;
    public static final int DIAGNOSTIC_EVENT_NEEDS__CONSIDER_PTO_STATUS = 21;
    public static final int DIAGNOSTIC_EVENT_NEEDS__DIAG_EVENT_DEBOUNCE_ALGORITHM = 22;
    public static final int DIAGNOSTIC_EVENT_NEEDS__DTC_KIND = 23;
    public static final int DIAGNOSTIC_EVENT_NEEDS__DTC_NUMBER = 24;
    public static final int DIAGNOSTIC_EVENT_NEEDS__INHIBITING_FID = 25;
    public static final int DIAGNOSTIC_EVENT_NEEDS__INHIBITING_SECONDARY_FIDS = 26;
    public static final int DIAGNOSTIC_EVENT_NEEDS_FEATURE_COUNT = 27;
    public static final int FUNCTION_INHIBITION_NEEDS = 12;
    public static final int FUNCTION_INHIBITION_NEEDS__GCHECKSUM = 0;
    public static final int FUNCTION_INHIBITION_NEEDS__GTIMESTAMP = 1;
    public static final int FUNCTION_INHIBITION_NEEDS__CHECKSUM = 2;
    public static final int FUNCTION_INHIBITION_NEEDS__TIMESTAMP = 3;
    public static final int FUNCTION_INHIBITION_NEEDS__GSHORT_NAME = 4;
    public static final int FUNCTION_INHIBITION_NEEDS__SHORT_NAME = 5;
    public static final int FUNCTION_INHIBITION_NEEDS__LONG_NAME = 6;
    public static final int FUNCTION_INHIBITION_NEEDS__GUUID = 7;
    public static final int FUNCTION_INHIBITION_NEEDS__GCATEGORY = 8;
    public static final int FUNCTION_INHIBITION_NEEDS__GDESC = 9;
    public static final int FUNCTION_INHIBITION_NEEDS__DESC = 10;
    public static final int FUNCTION_INHIBITION_NEEDS__CATEGORY = 11;
    public static final int FUNCTION_INHIBITION_NEEDS__ADMIN_DATA = 12;
    public static final int FUNCTION_INHIBITION_NEEDS__INTRODUCTION = 13;
    public static final int FUNCTION_INHIBITION_NEEDS__ANNOTATIONS = 14;
    public static final int FUNCTION_INHIBITION_NEEDS__UUID = 15;
    public static final int FUNCTION_INHIBITION_NEEDS__ALL_EXTENSIONS = 16;
    public static final int FUNCTION_INHIBITION_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int FUNCTION_INHIBITION_NEEDS_FEATURE_COUNT = 18;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS = 13;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__GCHECKSUM = 0;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__GTIMESTAMP = 1;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__CHECKSUM = 2;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__TIMESTAMP = 3;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__GSHORT_NAME = 4;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__SHORT_NAME = 5;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__LONG_NAME = 6;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__GUUID = 7;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__GCATEGORY = 8;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__GDESC = 9;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__DESC = 10;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__CATEGORY = 11;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__ADMIN_DATA = 12;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__INTRODUCTION = 13;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__ANNOTATIONS = 14;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__UUID = 15;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__ALL_EXTENSIONS = 16;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__AUDIENCES = 18;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__DIAG_REQUIREMENT = 19;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__SECURITY_ACCESS_LEVEL = 20;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__DID_NUMBER = 21;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__FREEZE_CURRENT_STATE_SUPPORTED = 22;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS__SHORT_TERM_ADJUSTMENT_SUPPORTED = 23;
    public static final int DIAGNOSTIC_IO_CONTROL_NEEDS_FEATURE_COUNT = 24;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS = 14;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__GCHECKSUM = 0;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__GTIMESTAMP = 1;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__CHECKSUM = 2;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__TIMESTAMP = 3;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__GSHORT_NAME = 4;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__SHORT_NAME = 5;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__LONG_NAME = 6;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__GUUID = 7;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__GCATEGORY = 8;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__GDESC = 9;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__DESC = 10;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__CATEGORY = 11;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__ADMIN_DATA = 12;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__INTRODUCTION = 13;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__ANNOTATIONS = 14;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__UUID = 15;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__ALL_EXTENSIONS = 16;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__AUDIENCES = 18;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__DIAG_REQUIREMENT = 19;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__SECURITY_ACCESS_LEVEL = 20;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__DIAG_ROUTINE_TYPE = 21;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS__RID_NUMBER = 22;
    public static final int DIAGNOSTIC_ROUTINE_NEEDS_FEATURE_COUNT = 23;
    public static final int DIAGNOSTIC_VALUE_NEEDS = 15;
    public static final int DIAGNOSTIC_VALUE_NEEDS__GCHECKSUM = 0;
    public static final int DIAGNOSTIC_VALUE_NEEDS__GTIMESTAMP = 1;
    public static final int DIAGNOSTIC_VALUE_NEEDS__CHECKSUM = 2;
    public static final int DIAGNOSTIC_VALUE_NEEDS__TIMESTAMP = 3;
    public static final int DIAGNOSTIC_VALUE_NEEDS__GSHORT_NAME = 4;
    public static final int DIAGNOSTIC_VALUE_NEEDS__SHORT_NAME = 5;
    public static final int DIAGNOSTIC_VALUE_NEEDS__LONG_NAME = 6;
    public static final int DIAGNOSTIC_VALUE_NEEDS__GUUID = 7;
    public static final int DIAGNOSTIC_VALUE_NEEDS__GCATEGORY = 8;
    public static final int DIAGNOSTIC_VALUE_NEEDS__GDESC = 9;
    public static final int DIAGNOSTIC_VALUE_NEEDS__DESC = 10;
    public static final int DIAGNOSTIC_VALUE_NEEDS__CATEGORY = 11;
    public static final int DIAGNOSTIC_VALUE_NEEDS__ADMIN_DATA = 12;
    public static final int DIAGNOSTIC_VALUE_NEEDS__INTRODUCTION = 13;
    public static final int DIAGNOSTIC_VALUE_NEEDS__ANNOTATIONS = 14;
    public static final int DIAGNOSTIC_VALUE_NEEDS__UUID = 15;
    public static final int DIAGNOSTIC_VALUE_NEEDS__ALL_EXTENSIONS = 16;
    public static final int DIAGNOSTIC_VALUE_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int DIAGNOSTIC_VALUE_NEEDS__AUDIENCES = 18;
    public static final int DIAGNOSTIC_VALUE_NEEDS__DIAG_REQUIREMENT = 19;
    public static final int DIAGNOSTIC_VALUE_NEEDS__SECURITY_ACCESS_LEVEL = 20;
    public static final int DIAGNOSTIC_VALUE_NEEDS__DATA_LENGTH = 21;
    public static final int DIAGNOSTIC_VALUE_NEEDS__DIAGNOSTIC_VALUE_ACCESS = 22;
    public static final int DIAGNOSTIC_VALUE_NEEDS__DID_NUMBER = 23;
    public static final int DIAGNOSTIC_VALUE_NEEDS_FEATURE_COUNT = 24;
    public static final int DLT_USER_NEEDS = 16;
    public static final int DLT_USER_NEEDS__GCHECKSUM = 0;
    public static final int DLT_USER_NEEDS__GTIMESTAMP = 1;
    public static final int DLT_USER_NEEDS__CHECKSUM = 2;
    public static final int DLT_USER_NEEDS__TIMESTAMP = 3;
    public static final int DLT_USER_NEEDS__GSHORT_NAME = 4;
    public static final int DLT_USER_NEEDS__SHORT_NAME = 5;
    public static final int DLT_USER_NEEDS__LONG_NAME = 6;
    public static final int DLT_USER_NEEDS__GUUID = 7;
    public static final int DLT_USER_NEEDS__GCATEGORY = 8;
    public static final int DLT_USER_NEEDS__GDESC = 9;
    public static final int DLT_USER_NEEDS__DESC = 10;
    public static final int DLT_USER_NEEDS__CATEGORY = 11;
    public static final int DLT_USER_NEEDS__ADMIN_DATA = 12;
    public static final int DLT_USER_NEEDS__INTRODUCTION = 13;
    public static final int DLT_USER_NEEDS__ANNOTATIONS = 14;
    public static final int DLT_USER_NEEDS__UUID = 15;
    public static final int DLT_USER_NEEDS__ALL_EXTENSIONS = 16;
    public static final int DLT_USER_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int DLT_USER_NEEDS_FEATURE_COUNT = 18;
    public static final int ECU_STATE_MGR_USER_NEEDS = 17;
    public static final int ECU_STATE_MGR_USER_NEEDS__GCHECKSUM = 0;
    public static final int ECU_STATE_MGR_USER_NEEDS__GTIMESTAMP = 1;
    public static final int ECU_STATE_MGR_USER_NEEDS__CHECKSUM = 2;
    public static final int ECU_STATE_MGR_USER_NEEDS__TIMESTAMP = 3;
    public static final int ECU_STATE_MGR_USER_NEEDS__GSHORT_NAME = 4;
    public static final int ECU_STATE_MGR_USER_NEEDS__SHORT_NAME = 5;
    public static final int ECU_STATE_MGR_USER_NEEDS__LONG_NAME = 6;
    public static final int ECU_STATE_MGR_USER_NEEDS__GUUID = 7;
    public static final int ECU_STATE_MGR_USER_NEEDS__GCATEGORY = 8;
    public static final int ECU_STATE_MGR_USER_NEEDS__GDESC = 9;
    public static final int ECU_STATE_MGR_USER_NEEDS__DESC = 10;
    public static final int ECU_STATE_MGR_USER_NEEDS__CATEGORY = 11;
    public static final int ECU_STATE_MGR_USER_NEEDS__ADMIN_DATA = 12;
    public static final int ECU_STATE_MGR_USER_NEEDS__INTRODUCTION = 13;
    public static final int ECU_STATE_MGR_USER_NEEDS__ANNOTATIONS = 14;
    public static final int ECU_STATE_MGR_USER_NEEDS__UUID = 15;
    public static final int ECU_STATE_MGR_USER_NEEDS__ALL_EXTENSIONS = 16;
    public static final int ECU_STATE_MGR_USER_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int ECU_STATE_MGR_USER_NEEDS_FEATURE_COUNT = 18;
    public static final int OBD_CONTROL_SERVICE_NEEDS = 18;
    public static final int OBD_CONTROL_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int OBD_CONTROL_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int OBD_CONTROL_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int OBD_CONTROL_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int OBD_CONTROL_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int OBD_CONTROL_SERVICE_NEEDS__SHORT_NAME = 5;
    public static final int OBD_CONTROL_SERVICE_NEEDS__LONG_NAME = 6;
    public static final int OBD_CONTROL_SERVICE_NEEDS__GUUID = 7;
    public static final int OBD_CONTROL_SERVICE_NEEDS__GCATEGORY = 8;
    public static final int OBD_CONTROL_SERVICE_NEEDS__GDESC = 9;
    public static final int OBD_CONTROL_SERVICE_NEEDS__DESC = 10;
    public static final int OBD_CONTROL_SERVICE_NEEDS__CATEGORY = 11;
    public static final int OBD_CONTROL_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int OBD_CONTROL_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int OBD_CONTROL_SERVICE_NEEDS__ANNOTATIONS = 14;
    public static final int OBD_CONTROL_SERVICE_NEEDS__UUID = 15;
    public static final int OBD_CONTROL_SERVICE_NEEDS__ALL_EXTENSIONS = 16;
    public static final int OBD_CONTROL_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int OBD_CONTROL_SERVICE_NEEDS__AUDIENCES = 18;
    public static final int OBD_CONTROL_SERVICE_NEEDS__DIAG_REQUIREMENT = 19;
    public static final int OBD_CONTROL_SERVICE_NEEDS__SECURITY_ACCESS_LEVEL = 20;
    public static final int OBD_CONTROL_SERVICE_NEEDS__TEST_ID = 21;
    public static final int OBD_CONTROL_SERVICE_NEEDS_FEATURE_COUNT = 22;
    public static final int OBD_INFO_SERVICE_NEEDS = 19;
    public static final int OBD_INFO_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int OBD_INFO_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int OBD_INFO_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int OBD_INFO_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int OBD_INFO_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int OBD_INFO_SERVICE_NEEDS__SHORT_NAME = 5;
    public static final int OBD_INFO_SERVICE_NEEDS__LONG_NAME = 6;
    public static final int OBD_INFO_SERVICE_NEEDS__GUUID = 7;
    public static final int OBD_INFO_SERVICE_NEEDS__GCATEGORY = 8;
    public static final int OBD_INFO_SERVICE_NEEDS__GDESC = 9;
    public static final int OBD_INFO_SERVICE_NEEDS__DESC = 10;
    public static final int OBD_INFO_SERVICE_NEEDS__CATEGORY = 11;
    public static final int OBD_INFO_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int OBD_INFO_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int OBD_INFO_SERVICE_NEEDS__ANNOTATIONS = 14;
    public static final int OBD_INFO_SERVICE_NEEDS__UUID = 15;
    public static final int OBD_INFO_SERVICE_NEEDS__ALL_EXTENSIONS = 16;
    public static final int OBD_INFO_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int OBD_INFO_SERVICE_NEEDS__AUDIENCES = 18;
    public static final int OBD_INFO_SERVICE_NEEDS__DIAG_REQUIREMENT = 19;
    public static final int OBD_INFO_SERVICE_NEEDS__SECURITY_ACCESS_LEVEL = 20;
    public static final int OBD_INFO_SERVICE_NEEDS__DATA_LENGTH = 21;
    public static final int OBD_INFO_SERVICE_NEEDS__INFO_TYPE = 22;
    public static final int OBD_INFO_SERVICE_NEEDS_FEATURE_COUNT = 23;
    public static final int OBD_MONITOR_SERVICE_NEEDS = 20;
    public static final int OBD_MONITOR_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int OBD_MONITOR_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int OBD_MONITOR_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int OBD_MONITOR_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int OBD_MONITOR_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int OBD_MONITOR_SERVICE_NEEDS__SHORT_NAME = 5;
    public static final int OBD_MONITOR_SERVICE_NEEDS__LONG_NAME = 6;
    public static final int OBD_MONITOR_SERVICE_NEEDS__GUUID = 7;
    public static final int OBD_MONITOR_SERVICE_NEEDS__GCATEGORY = 8;
    public static final int OBD_MONITOR_SERVICE_NEEDS__GDESC = 9;
    public static final int OBD_MONITOR_SERVICE_NEEDS__DESC = 10;
    public static final int OBD_MONITOR_SERVICE_NEEDS__CATEGORY = 11;
    public static final int OBD_MONITOR_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int OBD_MONITOR_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int OBD_MONITOR_SERVICE_NEEDS__ANNOTATIONS = 14;
    public static final int OBD_MONITOR_SERVICE_NEEDS__UUID = 15;
    public static final int OBD_MONITOR_SERVICE_NEEDS__ALL_EXTENSIONS = 16;
    public static final int OBD_MONITOR_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int OBD_MONITOR_SERVICE_NEEDS__AUDIENCES = 18;
    public static final int OBD_MONITOR_SERVICE_NEEDS__DIAG_REQUIREMENT = 19;
    public static final int OBD_MONITOR_SERVICE_NEEDS__SECURITY_ACCESS_LEVEL = 20;
    public static final int OBD_MONITOR_SERVICE_NEEDS__ON_BOARD_MONITOR_ID = 21;
    public static final int OBD_MONITOR_SERVICE_NEEDS__TEST_ID = 22;
    public static final int OBD_MONITOR_SERVICE_NEEDS__UNIT_AND_SCALING_ID = 23;
    public static final int OBD_MONITOR_SERVICE_NEEDS_FEATURE_COUNT = 24;
    public static final int OBD_PID_SERVICE_NEEDS = 21;
    public static final int OBD_PID_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int OBD_PID_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int OBD_PID_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int OBD_PID_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int OBD_PID_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int OBD_PID_SERVICE_NEEDS__SHORT_NAME = 5;
    public static final int OBD_PID_SERVICE_NEEDS__LONG_NAME = 6;
    public static final int OBD_PID_SERVICE_NEEDS__GUUID = 7;
    public static final int OBD_PID_SERVICE_NEEDS__GCATEGORY = 8;
    public static final int OBD_PID_SERVICE_NEEDS__GDESC = 9;
    public static final int OBD_PID_SERVICE_NEEDS__DESC = 10;
    public static final int OBD_PID_SERVICE_NEEDS__CATEGORY = 11;
    public static final int OBD_PID_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int OBD_PID_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int OBD_PID_SERVICE_NEEDS__ANNOTATIONS = 14;
    public static final int OBD_PID_SERVICE_NEEDS__UUID = 15;
    public static final int OBD_PID_SERVICE_NEEDS__ALL_EXTENSIONS = 16;
    public static final int OBD_PID_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int OBD_PID_SERVICE_NEEDS__AUDIENCES = 18;
    public static final int OBD_PID_SERVICE_NEEDS__DIAG_REQUIREMENT = 19;
    public static final int OBD_PID_SERVICE_NEEDS__SECURITY_ACCESS_LEVEL = 20;
    public static final int OBD_PID_SERVICE_NEEDS__DATA_LENGTH = 21;
    public static final int OBD_PID_SERVICE_NEEDS__PARAMETER_ID = 22;
    public static final int OBD_PID_SERVICE_NEEDS__STANDARD = 23;
    public static final int OBD_PID_SERVICE_NEEDS_FEATURE_COUNT = 24;
    public static final int OBD_RATIO_SERVICE_NEEDS = 22;
    public static final int OBD_RATIO_SERVICE_NEEDS__GCHECKSUM = 0;
    public static final int OBD_RATIO_SERVICE_NEEDS__GTIMESTAMP = 1;
    public static final int OBD_RATIO_SERVICE_NEEDS__CHECKSUM = 2;
    public static final int OBD_RATIO_SERVICE_NEEDS__TIMESTAMP = 3;
    public static final int OBD_RATIO_SERVICE_NEEDS__GSHORT_NAME = 4;
    public static final int OBD_RATIO_SERVICE_NEEDS__SHORT_NAME = 5;
    public static final int OBD_RATIO_SERVICE_NEEDS__LONG_NAME = 6;
    public static final int OBD_RATIO_SERVICE_NEEDS__GUUID = 7;
    public static final int OBD_RATIO_SERVICE_NEEDS__GCATEGORY = 8;
    public static final int OBD_RATIO_SERVICE_NEEDS__GDESC = 9;
    public static final int OBD_RATIO_SERVICE_NEEDS__DESC = 10;
    public static final int OBD_RATIO_SERVICE_NEEDS__CATEGORY = 11;
    public static final int OBD_RATIO_SERVICE_NEEDS__ADMIN_DATA = 12;
    public static final int OBD_RATIO_SERVICE_NEEDS__INTRODUCTION = 13;
    public static final int OBD_RATIO_SERVICE_NEEDS__ANNOTATIONS = 14;
    public static final int OBD_RATIO_SERVICE_NEEDS__UUID = 15;
    public static final int OBD_RATIO_SERVICE_NEEDS__ALL_EXTENSIONS = 16;
    public static final int OBD_RATIO_SERVICE_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int OBD_RATIO_SERVICE_NEEDS__AUDIENCES = 18;
    public static final int OBD_RATIO_SERVICE_NEEDS__DIAG_REQUIREMENT = 19;
    public static final int OBD_RATIO_SERVICE_NEEDS__SECURITY_ACCESS_LEVEL = 20;
    public static final int OBD_RATIO_SERVICE_NEEDS__CONNECTION_TYPE = 21;
    public static final int OBD_RATIO_SERVICE_NEEDS__IUMPR_GROUP = 22;
    public static final int OBD_RATIO_SERVICE_NEEDS__RATE_BASED_MONITORED_EVENT = 23;
    public static final int OBD_RATIO_SERVICE_NEEDS__USED_FID = 24;
    public static final int OBD_RATIO_SERVICE_NEEDS__USED_SECONDARY_FIDS = 25;
    public static final int OBD_RATIO_SERVICE_NEEDS_FEATURE_COUNT = 26;
    public static final int ROLE_BASED_DATA_ASSIGNMENT = 23;
    public static final int ROLE_BASED_DATA_ASSIGNMENT__GCHECKSUM = 0;
    public static final int ROLE_BASED_DATA_ASSIGNMENT__GTIMESTAMP = 1;
    public static final int ROLE_BASED_DATA_ASSIGNMENT__CHECKSUM = 2;
    public static final int ROLE_BASED_DATA_ASSIGNMENT__TIMESTAMP = 3;
    public static final int ROLE_BASED_DATA_ASSIGNMENT__ROLE = 4;
    public static final int ROLE_BASED_DATA_ASSIGNMENT__USED_DATA_ELEMENT = 5;
    public static final int ROLE_BASED_DATA_ASSIGNMENT__USED_PARAMETER_ELEMENT = 6;
    public static final int ROLE_BASED_DATA_ASSIGNMENT__USED_PIM = 7;
    public static final int ROLE_BASED_DATA_ASSIGNMENT_FEATURE_COUNT = 8;
    public static final int SERVICE_DEPENDENCY = 24;
    public static final int SERVICE_DEPENDENCY__GCHECKSUM = 0;
    public static final int SERVICE_DEPENDENCY__GTIMESTAMP = 1;
    public static final int SERVICE_DEPENDENCY__CHECKSUM = 2;
    public static final int SERVICE_DEPENDENCY__TIMESTAMP = 3;
    public static final int SERVICE_DEPENDENCY_FEATURE_COUNT = 4;
    public static final int SUPERVISED_ENTITY_NEEDS = 25;
    public static final int SUPERVISED_ENTITY_NEEDS__GCHECKSUM = 0;
    public static final int SUPERVISED_ENTITY_NEEDS__GTIMESTAMP = 1;
    public static final int SUPERVISED_ENTITY_NEEDS__CHECKSUM = 2;
    public static final int SUPERVISED_ENTITY_NEEDS__TIMESTAMP = 3;
    public static final int SUPERVISED_ENTITY_NEEDS__GSHORT_NAME = 4;
    public static final int SUPERVISED_ENTITY_NEEDS__SHORT_NAME = 5;
    public static final int SUPERVISED_ENTITY_NEEDS__LONG_NAME = 6;
    public static final int SUPERVISED_ENTITY_NEEDS__GUUID = 7;
    public static final int SUPERVISED_ENTITY_NEEDS__GCATEGORY = 8;
    public static final int SUPERVISED_ENTITY_NEEDS__GDESC = 9;
    public static final int SUPERVISED_ENTITY_NEEDS__DESC = 10;
    public static final int SUPERVISED_ENTITY_NEEDS__CATEGORY = 11;
    public static final int SUPERVISED_ENTITY_NEEDS__ADMIN_DATA = 12;
    public static final int SUPERVISED_ENTITY_NEEDS__INTRODUCTION = 13;
    public static final int SUPERVISED_ENTITY_NEEDS__ANNOTATIONS = 14;
    public static final int SUPERVISED_ENTITY_NEEDS__UUID = 15;
    public static final int SUPERVISED_ENTITY_NEEDS__ALL_EXTENSIONS = 16;
    public static final int SUPERVISED_ENTITY_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int SUPERVISED_ENTITY_NEEDS__ACTIVATE_AT_START = 18;
    public static final int SUPERVISED_ENTITY_NEEDS__ENABLE_DEACTIVATION = 19;
    public static final int SUPERVISED_ENTITY_NEEDS__EXPECTED_ALIVE_CYCLE = 20;
    public static final int SUPERVISED_ENTITY_NEEDS__MAX_ALIVE_CYCLE = 21;
    public static final int SUPERVISED_ENTITY_NEEDS__MIN_ALIVE_CYCLE = 22;
    public static final int SUPERVISED_ENTITY_NEEDS__TOLERATED_FAILED_CYCLES = 23;
    public static final int SUPERVISED_ENTITY_NEEDS_FEATURE_COUNT = 24;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS = 26;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__GCHECKSUM = 0;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__GTIMESTAMP = 1;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__CHECKSUM = 2;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__TIMESTAMP = 3;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__GSHORT_NAME = 4;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__SHORT_NAME = 5;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__LONG_NAME = 6;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__GUUID = 7;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__GCATEGORY = 8;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__GDESC = 9;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__DESC = 10;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__CATEGORY = 11;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__ADMIN_DATA = 12;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__INTRODUCTION = 13;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__ANNOTATIONS = 14;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__UUID = 15;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__ALL_EXTENSIONS = 16;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int SYNC_TIME_BASE_MGR_USER_NEEDS_FEATURE_COUNT = 18;
    public static final int NV_BLOCK_NEEDS = 27;
    public static final int NV_BLOCK_NEEDS__GCHECKSUM = 0;
    public static final int NV_BLOCK_NEEDS__GTIMESTAMP = 1;
    public static final int NV_BLOCK_NEEDS__CHECKSUM = 2;
    public static final int NV_BLOCK_NEEDS__TIMESTAMP = 3;
    public static final int NV_BLOCK_NEEDS__GSHORT_NAME = 4;
    public static final int NV_BLOCK_NEEDS__SHORT_NAME = 5;
    public static final int NV_BLOCK_NEEDS__LONG_NAME = 6;
    public static final int NV_BLOCK_NEEDS__GUUID = 7;
    public static final int NV_BLOCK_NEEDS__GCATEGORY = 8;
    public static final int NV_BLOCK_NEEDS__GDESC = 9;
    public static final int NV_BLOCK_NEEDS__DESC = 10;
    public static final int NV_BLOCK_NEEDS__CATEGORY = 11;
    public static final int NV_BLOCK_NEEDS__ADMIN_DATA = 12;
    public static final int NV_BLOCK_NEEDS__INTRODUCTION = 13;
    public static final int NV_BLOCK_NEEDS__ANNOTATIONS = 14;
    public static final int NV_BLOCK_NEEDS__UUID = 15;
    public static final int NV_BLOCK_NEEDS__ALL_EXTENSIONS = 16;
    public static final int NV_BLOCK_NEEDS__CONTAINED_EXTENSIONS = 17;
    public static final int NV_BLOCK_NEEDS__NV_BLOCK_DESCRIPTOR = 18;
    public static final int NV_BLOCK_NEEDS__CALC_RAM_BLOCK_CRC = 19;
    public static final int NV_BLOCK_NEEDS__CHECK_STATIC_BLOCK_ID = 20;
    public static final int NV_BLOCK_NEEDS__NDATA_SETS = 21;
    public static final int NV_BLOCK_NEEDS__NROM_BLOCKS = 22;
    public static final int NV_BLOCK_NEEDS__READONLY = 23;
    public static final int NV_BLOCK_NEEDS__RELIABILITY = 24;
    public static final int NV_BLOCK_NEEDS__RESISTANT_TO_CHANGED_SW = 25;
    public static final int NV_BLOCK_NEEDS__RESTORE_AT_START = 26;
    public static final int NV_BLOCK_NEEDS__STORE_AT_SHUTDOWN = 27;
    public static final int NV_BLOCK_NEEDS__WRITE_ONLY_ONCE = 28;
    public static final int NV_BLOCK_NEEDS__WRITE_VERIFICATION = 29;
    public static final int NV_BLOCK_NEEDS__WRITING_FREQUENCY = 30;
    public static final int NV_BLOCK_NEEDS__WRITING_PRIORITY = 31;
    public static final int NV_BLOCK_NEEDS_FEATURE_COUNT = 32;
    public static final int MAX_COMM_MODE_ENUM = 28;
    public static final int DIAGNOSTIC_AUDIENCE_ENUM = 29;
    public static final int DTC_KIND_ENUM = 30;
    public static final int DIAGNOSTIC_ROUTINE_TYPE_ENUM = 31;
    public static final int DIAGNOSTIC_VALUE_ACCESS_ENUM = 32;
    public static final int NV_BLOCK_NEEDS_RELIABILITY_ENUM = 33;
    public static final int NV_BLOCK_NEEDS_WRITING_PRIORITY_ENUM = 34;
    public static final int OBD_RATIO_CONNECTION_KIND_ENUM = 35;
    public static final int SERVICE_PROVIDER_ENUM = 36;
    public static final int DIAG_REQUIREMENT_ID_STRING = 37;

    public EClass getBswMgrNeeds();

    public EClass getServiceNeeds();

    public EClass getComMgrUserNeeds();

    public EAttribute getComMgrUserNeeds_MaxCommMode();

    public EClass getCryptoServiceNeeds();

    public EAttribute getCryptoServiceNeeds_MaximumKeyLength();

    public EClass getDiagEventDebounceAlgorithm();

    public EReference getDiagEventDebounceAlgorithm_DiagnosticEventNeeds();

    public EClass getDiagEventDebounceCounterBased();

    public EAttribute getDiagEventDebounceCounterBased_CounterDecrementStepSize();

    public EAttribute getDiagEventDebounceCounterBased_CounterFailedThreshold();

    public EAttribute getDiagEventDebounceCounterBased_CounterIncrementStepSize();

    public EAttribute getDiagEventDebounceCounterBased_CounterJumpDown();

    public EAttribute getDiagEventDebounceCounterBased_CounterJumpDownValue();

    public EAttribute getDiagEventDebounceCounterBased_CounterJumpUp();

    public EAttribute getDiagEventDebounceCounterBased_CounterJumpUpValue();

    public EAttribute getDiagEventDebounceCounterBased_CounterPassedThreshold();

    public EClass getDiagEventDebounceMonitorInternal();

    public EClass getDiagEventDebounceTimeBased();

    public EAttribute getDiagEventDebounceTimeBased_TimeFailedThreshold();

    public EAttribute getDiagEventDebounceTimeBased_TimePassedThreshold();

    public EClass getDiagnosticCapabilityElement();

    public EAttribute getDiagnosticCapabilityElement_Audiences();

    public EAttribute getDiagnosticCapabilityElement_DiagRequirement();

    public EAttribute getDiagnosticCapabilityElement_SecurityAccessLevel();

    public EClass getDiagnosticCommunicationManagerNeeds();

    public EClass getDiagnosticEventManagerNeeds();

    public EClass getDiagnosticEventNeeds();

    public EAttribute getDiagnosticEventNeeds_ConsiderPtoStatus();

    public EReference getDiagnosticEventNeeds_DiagEventDebounceAlgorithm();

    public EAttribute getDiagnosticEventNeeds_DtcKind();

    public EAttribute getDiagnosticEventNeeds_DtcNumber();

    public EReference getDiagnosticEventNeeds_InhibitingFid();

    public EReference getDiagnosticEventNeeds_InhibitingSecondaryFids();

    public EClass getFunctionInhibitionNeeds();

    public EClass getDiagnosticIoControlNeeds();

    public EAttribute getDiagnosticIoControlNeeds_DidNumber();

    public EAttribute getDiagnosticIoControlNeeds_FreezeCurrentStateSupported();

    public EAttribute getDiagnosticIoControlNeeds_ShortTermAdjustmentSupported();

    public EClass getDiagnosticRoutineNeeds();

    public EAttribute getDiagnosticRoutineNeeds_DiagRoutineType();

    public EAttribute getDiagnosticRoutineNeeds_RidNumber();

    public EClass getDiagnosticValueNeeds();

    public EAttribute getDiagnosticValueNeeds_DataLength();

    public EAttribute getDiagnosticValueNeeds_DiagnosticValueAccess();

    public EAttribute getDiagnosticValueNeeds_DidNumber();

    public EClass getDltUserNeeds();

    public EClass getEcuStateMgrUserNeeds();

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

    public EReference getObdRatioServiceNeeds_UsedSecondaryFids();

    public EClass getRoleBasedDataAssignment();

    public EAttribute getRoleBasedDataAssignment_Role();

    public EReference getRoleBasedDataAssignment_UsedDataElement();

    public EReference getRoleBasedDataAssignment_UsedParameterElement();

    public EReference getRoleBasedDataAssignment_UsedPim();

    public EClass getServiceDependency();

    public EClass getSupervisedEntityNeeds();

    public EAttribute getSupervisedEntityNeeds_ActivateAtStart();

    public EAttribute getSupervisedEntityNeeds_EnableDeactivation();

    public EAttribute getSupervisedEntityNeeds_ExpectedAliveCycle();

    public EAttribute getSupervisedEntityNeeds_MaxAliveCycle();

    public EAttribute getSupervisedEntityNeeds_MinAliveCycle();

    public EAttribute getSupervisedEntityNeeds_ToleratedFailedCycles();

    public EClass getSyncTimeBaseMgrUserNeeds();

    public EClass getNvBlockNeeds();

    public EReference getNvBlockNeeds_NvBlockDescriptor();

    public EAttribute getNvBlockNeeds_CalcRamBlockCrc();

    public EAttribute getNvBlockNeeds_CheckStaticBlockId();

    public EAttribute getNvBlockNeeds_NDataSets();

    public EAttribute getNvBlockNeeds_NRomBlocks();

    public EAttribute getNvBlockNeeds_Readonly();

    public EAttribute getNvBlockNeeds_Reliability();

    public EAttribute getNvBlockNeeds_ResistantToChangedSw();

    public EAttribute getNvBlockNeeds_RestoreAtStart();

    public EAttribute getNvBlockNeeds_StoreAtShutdown();

    public EAttribute getNvBlockNeeds_WriteOnlyOnce();

    public EAttribute getNvBlockNeeds_WriteVerification();

    public EAttribute getNvBlockNeeds_WritingFrequency();

    public EAttribute getNvBlockNeeds_WritingPriority();

    public EEnum getMaxCommModeEnum();

    public EEnum getDiagnosticAudienceEnum();

    public EEnum getDtcKindEnum();

    public EEnum getDiagnosticRoutineTypeEnum();

    public EEnum getDiagnosticValueAccessEnum();

    public EEnum getNvBlockNeedsReliabilityEnum();

    public EEnum getNvBlockNeedsWritingPriorityEnum();

    public EEnum getObdRatioConnectionKindEnum();

    public EEnum getServiceProviderEnum();

    public EDataType getDiagRequirementIdString();

    public ServiceneedsFactory getServiceneedsFactory();

    public static interface Literals {
        public static final EClass BSW_MGR_NEEDS = eINSTANCE.getBswMgrNeeds();
        public static final EClass SERVICE_NEEDS = eINSTANCE.getServiceNeeds();
        public static final EClass COM_MGR_USER_NEEDS = eINSTANCE.getComMgrUserNeeds();
        public static final EAttribute COM_MGR_USER_NEEDS__MAX_COMM_MODE = eINSTANCE.getComMgrUserNeeds_MaxCommMode();
        public static final EClass CRYPTO_SERVICE_NEEDS = eINSTANCE.getCryptoServiceNeeds();
        public static final EAttribute CRYPTO_SERVICE_NEEDS__MAXIMUM_KEY_LENGTH = eINSTANCE.getCryptoServiceNeeds_MaximumKeyLength();
        public static final EClass DIAG_EVENT_DEBOUNCE_ALGORITHM = eINSTANCE.getDiagEventDebounceAlgorithm();
        public static final EReference DIAG_EVENT_DEBOUNCE_ALGORITHM__DIAGNOSTIC_EVENT_NEEDS = eINSTANCE.getDiagEventDebounceAlgorithm_DiagnosticEventNeeds();
        public static final EClass DIAG_EVENT_DEBOUNCE_COUNTER_BASED = eINSTANCE.getDiagEventDebounceCounterBased();
        public static final EAttribute DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_DECREMENT_STEP_SIZE = eINSTANCE.getDiagEventDebounceCounterBased_CounterDecrementStepSize();
        public static final EAttribute DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_FAILED_THRESHOLD = eINSTANCE.getDiagEventDebounceCounterBased_CounterFailedThreshold();
        public static final EAttribute DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_INCREMENT_STEP_SIZE = eINSTANCE.getDiagEventDebounceCounterBased_CounterIncrementStepSize();
        public static final EAttribute DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_JUMP_DOWN = eINSTANCE.getDiagEventDebounceCounterBased_CounterJumpDown();
        public static final EAttribute DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_JUMP_DOWN_VALUE = eINSTANCE.getDiagEventDebounceCounterBased_CounterJumpDownValue();
        public static final EAttribute DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_JUMP_UP = eINSTANCE.getDiagEventDebounceCounterBased_CounterJumpUp();
        public static final EAttribute DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_JUMP_UP_VALUE = eINSTANCE.getDiagEventDebounceCounterBased_CounterJumpUpValue();
        public static final EAttribute DIAG_EVENT_DEBOUNCE_COUNTER_BASED__COUNTER_PASSED_THRESHOLD = eINSTANCE.getDiagEventDebounceCounterBased_CounterPassedThreshold();
        public static final EClass DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL = eINSTANCE.getDiagEventDebounceMonitorInternal();
        public static final EClass DIAG_EVENT_DEBOUNCE_TIME_BASED = eINSTANCE.getDiagEventDebounceTimeBased();
        public static final EAttribute DIAG_EVENT_DEBOUNCE_TIME_BASED__TIME_FAILED_THRESHOLD = eINSTANCE.getDiagEventDebounceTimeBased_TimeFailedThreshold();
        public static final EAttribute DIAG_EVENT_DEBOUNCE_TIME_BASED__TIME_PASSED_THRESHOLD = eINSTANCE.getDiagEventDebounceTimeBased_TimePassedThreshold();
        public static final EClass DIAGNOSTIC_CAPABILITY_ELEMENT = eINSTANCE.getDiagnosticCapabilityElement();
        public static final EAttribute DIAGNOSTIC_CAPABILITY_ELEMENT__AUDIENCES = eINSTANCE.getDiagnosticCapabilityElement_Audiences();
        public static final EAttribute DIAGNOSTIC_CAPABILITY_ELEMENT__DIAG_REQUIREMENT = eINSTANCE.getDiagnosticCapabilityElement_DiagRequirement();
        public static final EAttribute DIAGNOSTIC_CAPABILITY_ELEMENT__SECURITY_ACCESS_LEVEL = eINSTANCE.getDiagnosticCapabilityElement_SecurityAccessLevel();
        public static final EClass DIAGNOSTIC_COMMUNICATION_MANAGER_NEEDS = eINSTANCE.getDiagnosticCommunicationManagerNeeds();
        public static final EClass DIAGNOSTIC_EVENT_MANAGER_NEEDS = eINSTANCE.getDiagnosticEventManagerNeeds();
        public static final EClass DIAGNOSTIC_EVENT_NEEDS = eINSTANCE.getDiagnosticEventNeeds();
        public static final EAttribute DIAGNOSTIC_EVENT_NEEDS__CONSIDER_PTO_STATUS = eINSTANCE.getDiagnosticEventNeeds_ConsiderPtoStatus();
        public static final EReference DIAGNOSTIC_EVENT_NEEDS__DIAG_EVENT_DEBOUNCE_ALGORITHM = eINSTANCE.getDiagnosticEventNeeds_DiagEventDebounceAlgorithm();
        public static final EAttribute DIAGNOSTIC_EVENT_NEEDS__DTC_KIND = eINSTANCE.getDiagnosticEventNeeds_DtcKind();
        public static final EAttribute DIAGNOSTIC_EVENT_NEEDS__DTC_NUMBER = eINSTANCE.getDiagnosticEventNeeds_DtcNumber();
        public static final EReference DIAGNOSTIC_EVENT_NEEDS__INHIBITING_FID = eINSTANCE.getDiagnosticEventNeeds_InhibitingFid();
        public static final EReference DIAGNOSTIC_EVENT_NEEDS__INHIBITING_SECONDARY_FIDS = eINSTANCE.getDiagnosticEventNeeds_InhibitingSecondaryFids();
        public static final EClass FUNCTION_INHIBITION_NEEDS = eINSTANCE.getFunctionInhibitionNeeds();
        public static final EClass DIAGNOSTIC_IO_CONTROL_NEEDS = eINSTANCE.getDiagnosticIoControlNeeds();
        public static final EAttribute DIAGNOSTIC_IO_CONTROL_NEEDS__DID_NUMBER = eINSTANCE.getDiagnosticIoControlNeeds_DidNumber();
        public static final EAttribute DIAGNOSTIC_IO_CONTROL_NEEDS__FREEZE_CURRENT_STATE_SUPPORTED = eINSTANCE.getDiagnosticIoControlNeeds_FreezeCurrentStateSupported();
        public static final EAttribute DIAGNOSTIC_IO_CONTROL_NEEDS__SHORT_TERM_ADJUSTMENT_SUPPORTED = eINSTANCE.getDiagnosticIoControlNeeds_ShortTermAdjustmentSupported();
        public static final EClass DIAGNOSTIC_ROUTINE_NEEDS = eINSTANCE.getDiagnosticRoutineNeeds();
        public static final EAttribute DIAGNOSTIC_ROUTINE_NEEDS__DIAG_ROUTINE_TYPE = eINSTANCE.getDiagnosticRoutineNeeds_DiagRoutineType();
        public static final EAttribute DIAGNOSTIC_ROUTINE_NEEDS__RID_NUMBER = eINSTANCE.getDiagnosticRoutineNeeds_RidNumber();
        public static final EClass DIAGNOSTIC_VALUE_NEEDS = eINSTANCE.getDiagnosticValueNeeds();
        public static final EAttribute DIAGNOSTIC_VALUE_NEEDS__DATA_LENGTH = eINSTANCE.getDiagnosticValueNeeds_DataLength();
        public static final EAttribute DIAGNOSTIC_VALUE_NEEDS__DIAGNOSTIC_VALUE_ACCESS = eINSTANCE.getDiagnosticValueNeeds_DiagnosticValueAccess();
        public static final EAttribute DIAGNOSTIC_VALUE_NEEDS__DID_NUMBER = eINSTANCE.getDiagnosticValueNeeds_DidNumber();
        public static final EClass DLT_USER_NEEDS = eINSTANCE.getDltUserNeeds();
        public static final EClass ECU_STATE_MGR_USER_NEEDS = eINSTANCE.getEcuStateMgrUserNeeds();
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
        public static final EReference OBD_RATIO_SERVICE_NEEDS__USED_SECONDARY_FIDS = eINSTANCE.getObdRatioServiceNeeds_UsedSecondaryFids();
        public static final EClass ROLE_BASED_DATA_ASSIGNMENT = eINSTANCE.getRoleBasedDataAssignment();
        public static final EAttribute ROLE_BASED_DATA_ASSIGNMENT__ROLE = eINSTANCE.getRoleBasedDataAssignment_Role();
        public static final EReference ROLE_BASED_DATA_ASSIGNMENT__USED_DATA_ELEMENT = eINSTANCE.getRoleBasedDataAssignment_UsedDataElement();
        public static final EReference ROLE_BASED_DATA_ASSIGNMENT__USED_PARAMETER_ELEMENT = eINSTANCE.getRoleBasedDataAssignment_UsedParameterElement();
        public static final EReference ROLE_BASED_DATA_ASSIGNMENT__USED_PIM = eINSTANCE.getRoleBasedDataAssignment_UsedPim();
        public static final EClass SERVICE_DEPENDENCY = eINSTANCE.getServiceDependency();
        public static final EClass SUPERVISED_ENTITY_NEEDS = eINSTANCE.getSupervisedEntityNeeds();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__ACTIVATE_AT_START = eINSTANCE.getSupervisedEntityNeeds_ActivateAtStart();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__ENABLE_DEACTIVATION = eINSTANCE.getSupervisedEntityNeeds_EnableDeactivation();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__EXPECTED_ALIVE_CYCLE = eINSTANCE.getSupervisedEntityNeeds_ExpectedAliveCycle();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__MAX_ALIVE_CYCLE = eINSTANCE.getSupervisedEntityNeeds_MaxAliveCycle();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__MIN_ALIVE_CYCLE = eINSTANCE.getSupervisedEntityNeeds_MinAliveCycle();
        public static final EAttribute SUPERVISED_ENTITY_NEEDS__TOLERATED_FAILED_CYCLES = eINSTANCE.getSupervisedEntityNeeds_ToleratedFailedCycles();
        public static final EClass SYNC_TIME_BASE_MGR_USER_NEEDS = eINSTANCE.getSyncTimeBaseMgrUserNeeds();
        public static final EClass NV_BLOCK_NEEDS = eINSTANCE.getNvBlockNeeds();
        public static final EReference NV_BLOCK_NEEDS__NV_BLOCK_DESCRIPTOR = eINSTANCE.getNvBlockNeeds_NvBlockDescriptor();
        public static final EAttribute NV_BLOCK_NEEDS__CALC_RAM_BLOCK_CRC = eINSTANCE.getNvBlockNeeds_CalcRamBlockCrc();
        public static final EAttribute NV_BLOCK_NEEDS__CHECK_STATIC_BLOCK_ID = eINSTANCE.getNvBlockNeeds_CheckStaticBlockId();
        public static final EAttribute NV_BLOCK_NEEDS__NDATA_SETS = eINSTANCE.getNvBlockNeeds_NDataSets();
        public static final EAttribute NV_BLOCK_NEEDS__NROM_BLOCKS = eINSTANCE.getNvBlockNeeds_NRomBlocks();
        public static final EAttribute NV_BLOCK_NEEDS__READONLY = eINSTANCE.getNvBlockNeeds_Readonly();
        public static final EAttribute NV_BLOCK_NEEDS__RELIABILITY = eINSTANCE.getNvBlockNeeds_Reliability();
        public static final EAttribute NV_BLOCK_NEEDS__RESISTANT_TO_CHANGED_SW = eINSTANCE.getNvBlockNeeds_ResistantToChangedSw();
        public static final EAttribute NV_BLOCK_NEEDS__RESTORE_AT_START = eINSTANCE.getNvBlockNeeds_RestoreAtStart();
        public static final EAttribute NV_BLOCK_NEEDS__STORE_AT_SHUTDOWN = eINSTANCE.getNvBlockNeeds_StoreAtShutdown();
        public static final EAttribute NV_BLOCK_NEEDS__WRITE_ONLY_ONCE = eINSTANCE.getNvBlockNeeds_WriteOnlyOnce();
        public static final EAttribute NV_BLOCK_NEEDS__WRITE_VERIFICATION = eINSTANCE.getNvBlockNeeds_WriteVerification();
        public static final EAttribute NV_BLOCK_NEEDS__WRITING_FREQUENCY = eINSTANCE.getNvBlockNeeds_WritingFrequency();
        public static final EAttribute NV_BLOCK_NEEDS__WRITING_PRIORITY = eINSTANCE.getNvBlockNeeds_WritingPriority();
        public static final EEnum MAX_COMM_MODE_ENUM = eINSTANCE.getMaxCommModeEnum();
        public static final EEnum DIAGNOSTIC_AUDIENCE_ENUM = eINSTANCE.getDiagnosticAudienceEnum();
        public static final EEnum DTC_KIND_ENUM = eINSTANCE.getDtcKindEnum();
        public static final EEnum DIAGNOSTIC_ROUTINE_TYPE_ENUM = eINSTANCE.getDiagnosticRoutineTypeEnum();
        public static final EEnum DIAGNOSTIC_VALUE_ACCESS_ENUM = eINSTANCE.getDiagnosticValueAccessEnum();
        public static final EEnum NV_BLOCK_NEEDS_RELIABILITY_ENUM = eINSTANCE.getNvBlockNeedsReliabilityEnum();
        public static final EEnum NV_BLOCK_NEEDS_WRITING_PRIORITY_ENUM = eINSTANCE.getNvBlockNeedsWritingPriorityEnum();
        public static final EEnum OBD_RATIO_CONNECTION_KIND_ENUM = eINSTANCE.getObdRatioConnectionKindEnum();
        public static final EEnum SERVICE_PROVIDER_ENUM = eINSTANCE.getServiceProviderEnum();
        public static final EDataType DIAG_REQUIREMENT_ID_STRING = eINSTANCE.getDiagRequirementIdString();
    }
}

