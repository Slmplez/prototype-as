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
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswbehaviorFactory;
import autosar40.bswmodule.bswbehavior.impl.BswbehaviorPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface BswbehaviorPackage
extends EPackage {
    public static final String eNAME = "bswbehavior";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/bm/bb";
    public static final String eNS_PREFIX = "";
    public static final BswbehaviorPackage eINSTANCE = BswbehaviorPackageImpl.init();
    public static final int BSW_EVENT = 1;
    public static final int BSW_EVENT__GCHECKSUM = 0;
    public static final int BSW_EVENT__GTIMESTAMP = 1;
    public static final int BSW_EVENT__CHECKSUM = 2;
    public static final int BSW_EVENT__TIMESTAMP = 3;
    public static final int BSW_EVENT__GSHORT_NAME = 4;
    public static final int BSW_EVENT__SHORT_NAME = 5;
    public static final int BSW_EVENT__LONG_NAME = 6;
    public static final int BSW_EVENT__GUUID = 7;
    public static final int BSW_EVENT__GCATEGORY = 8;
    public static final int BSW_EVENT__GDESC = 9;
    public static final int BSW_EVENT__DESC = 10;
    public static final int BSW_EVENT__CATEGORY = 11;
    public static final int BSW_EVENT__ADMIN_DATA = 12;
    public static final int BSW_EVENT__INTRODUCTION = 13;
    public static final int BSW_EVENT__ANNOTATIONS = 14;
    public static final int BSW_EVENT__UUID = 15;
    public static final int BSW_EVENT__ALL_EXTENSIONS = 16;
    public static final int BSW_EVENT__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_EVENT__BSW_INTERNAL_BEHAVIOR = 18;
    public static final int BSW_EVENT__DISABLED_IN_MODES = 19;
    public static final int BSW_EVENT__STARTS_ON_EVENT = 20;
    public static final int BSW_EVENT__VARIATION_POINT = 21;
    public static final int BSW_EVENT_FEATURE_COUNT = 22;
    public static final int BSW_BACKGROUND_EVENT = 0;
    public static final int BSW_BACKGROUND_EVENT__GCHECKSUM = 0;
    public static final int BSW_BACKGROUND_EVENT__GTIMESTAMP = 1;
    public static final int BSW_BACKGROUND_EVENT__CHECKSUM = 2;
    public static final int BSW_BACKGROUND_EVENT__TIMESTAMP = 3;
    public static final int BSW_BACKGROUND_EVENT__GSHORT_NAME = 4;
    public static final int BSW_BACKGROUND_EVENT__SHORT_NAME = 5;
    public static final int BSW_BACKGROUND_EVENT__LONG_NAME = 6;
    public static final int BSW_BACKGROUND_EVENT__GUUID = 7;
    public static final int BSW_BACKGROUND_EVENT__GCATEGORY = 8;
    public static final int BSW_BACKGROUND_EVENT__GDESC = 9;
    public static final int BSW_BACKGROUND_EVENT__DESC = 10;
    public static final int BSW_BACKGROUND_EVENT__CATEGORY = 11;
    public static final int BSW_BACKGROUND_EVENT__ADMIN_DATA = 12;
    public static final int BSW_BACKGROUND_EVENT__INTRODUCTION = 13;
    public static final int BSW_BACKGROUND_EVENT__ANNOTATIONS = 14;
    public static final int BSW_BACKGROUND_EVENT__UUID = 15;
    public static final int BSW_BACKGROUND_EVENT__ALL_EXTENSIONS = 16;
    public static final int BSW_BACKGROUND_EVENT__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_BACKGROUND_EVENT__BSW_INTERNAL_BEHAVIOR = 18;
    public static final int BSW_BACKGROUND_EVENT__DISABLED_IN_MODES = 19;
    public static final int BSW_BACKGROUND_EVENT__STARTS_ON_EVENT = 20;
    public static final int BSW_BACKGROUND_EVENT__VARIATION_POINT = 21;
    public static final int BSW_BACKGROUND_EVENT_FEATURE_COUNT = 22;
    public static final int BSW_MODULE_ENTITY = 3;
    public static final int BSW_MODULE_ENTITY__GCHECKSUM = 0;
    public static final int BSW_MODULE_ENTITY__GTIMESTAMP = 1;
    public static final int BSW_MODULE_ENTITY__CHECKSUM = 2;
    public static final int BSW_MODULE_ENTITY__TIMESTAMP = 3;
    public static final int BSW_MODULE_ENTITY__GSHORT_NAME = 4;
    public static final int BSW_MODULE_ENTITY__SHORT_NAME = 5;
    public static final int BSW_MODULE_ENTITY__LONG_NAME = 6;
    public static final int BSW_MODULE_ENTITY__GUUID = 7;
    public static final int BSW_MODULE_ENTITY__GCATEGORY = 8;
    public static final int BSW_MODULE_ENTITY__GDESC = 9;
    public static final int BSW_MODULE_ENTITY__DESC = 10;
    public static final int BSW_MODULE_ENTITY__CATEGORY = 11;
    public static final int BSW_MODULE_ENTITY__ADMIN_DATA = 12;
    public static final int BSW_MODULE_ENTITY__INTRODUCTION = 13;
    public static final int BSW_MODULE_ENTITY__ANNOTATIONS = 14;
    public static final int BSW_MODULE_ENTITY__UUID = 15;
    public static final int BSW_MODULE_ENTITY__ALL_EXTENSIONS = 16;
    public static final int BSW_MODULE_ENTITY__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_MODULE_ENTITY__GRUNS_INSIDE_EXCLUSIVE_AREAS = 18;
    public static final int BSW_MODULE_ENTITY__GCAN_ENTER_EXCLUSIVE_AREAS = 19;
    public static final int BSW_MODULE_ENTITY__CAN_ENTER_EXCLUSIVE_AREAS = 20;
    public static final int BSW_MODULE_ENTITY__MINIMUM_START_INTERVAL = 21;
    public static final int BSW_MODULE_ENTITY__RUNS_INSIDE_EXCLUSIVE_AREAS = 22;
    public static final int BSW_MODULE_ENTITY__SW_ADDR_METHOD = 23;
    public static final int BSW_MODULE_ENTITY__BSW_INTERNAL_BEHAVIOR = 24;
    public static final int BSW_MODULE_ENTITY__ACCESSED_MODE_GROUPS = 25;
    public static final int BSW_MODULE_ENTITY__ACTIVATION_POINTS = 26;
    public static final int BSW_MODULE_ENTITY__CALLED_ENTRIES = 27;
    public static final int BSW_MODULE_ENTITY__IMPLEMENTED_ENTRY = 28;
    public static final int BSW_MODULE_ENTITY__ISSUED_TRIGGERS = 29;
    public static final int BSW_MODULE_ENTITY__MANAGED_MODE_GROUPS = 30;
    public static final int BSW_MODULE_ENTITY__SCHEDULER_NAME_PREFIX = 31;
    public static final int BSW_MODULE_ENTITY__VARIATION_POINT = 32;
    public static final int BSW_MODULE_ENTITY_FEATURE_COUNT = 33;
    public static final int BSW_SCHEDULABLE_ENTITY = 2;
    public static final int BSW_SCHEDULABLE_ENTITY__GCHECKSUM = 0;
    public static final int BSW_SCHEDULABLE_ENTITY__GTIMESTAMP = 1;
    public static final int BSW_SCHEDULABLE_ENTITY__CHECKSUM = 2;
    public static final int BSW_SCHEDULABLE_ENTITY__TIMESTAMP = 3;
    public static final int BSW_SCHEDULABLE_ENTITY__GSHORT_NAME = 4;
    public static final int BSW_SCHEDULABLE_ENTITY__SHORT_NAME = 5;
    public static final int BSW_SCHEDULABLE_ENTITY__LONG_NAME = 6;
    public static final int BSW_SCHEDULABLE_ENTITY__GUUID = 7;
    public static final int BSW_SCHEDULABLE_ENTITY__GCATEGORY = 8;
    public static final int BSW_SCHEDULABLE_ENTITY__GDESC = 9;
    public static final int BSW_SCHEDULABLE_ENTITY__DESC = 10;
    public static final int BSW_SCHEDULABLE_ENTITY__CATEGORY = 11;
    public static final int BSW_SCHEDULABLE_ENTITY__ADMIN_DATA = 12;
    public static final int BSW_SCHEDULABLE_ENTITY__INTRODUCTION = 13;
    public static final int BSW_SCHEDULABLE_ENTITY__ANNOTATIONS = 14;
    public static final int BSW_SCHEDULABLE_ENTITY__UUID = 15;
    public static final int BSW_SCHEDULABLE_ENTITY__ALL_EXTENSIONS = 16;
    public static final int BSW_SCHEDULABLE_ENTITY__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_SCHEDULABLE_ENTITY__GRUNS_INSIDE_EXCLUSIVE_AREAS = 18;
    public static final int BSW_SCHEDULABLE_ENTITY__GCAN_ENTER_EXCLUSIVE_AREAS = 19;
    public static final int BSW_SCHEDULABLE_ENTITY__CAN_ENTER_EXCLUSIVE_AREAS = 20;
    public static final int BSW_SCHEDULABLE_ENTITY__MINIMUM_START_INTERVAL = 21;
    public static final int BSW_SCHEDULABLE_ENTITY__RUNS_INSIDE_EXCLUSIVE_AREAS = 22;
    public static final int BSW_SCHEDULABLE_ENTITY__SW_ADDR_METHOD = 23;
    public static final int BSW_SCHEDULABLE_ENTITY__BSW_INTERNAL_BEHAVIOR = 24;
    public static final int BSW_SCHEDULABLE_ENTITY__ACCESSED_MODE_GROUPS = 25;
    public static final int BSW_SCHEDULABLE_ENTITY__ACTIVATION_POINTS = 26;
    public static final int BSW_SCHEDULABLE_ENTITY__CALLED_ENTRIES = 27;
    public static final int BSW_SCHEDULABLE_ENTITY__IMPLEMENTED_ENTRY = 28;
    public static final int BSW_SCHEDULABLE_ENTITY__ISSUED_TRIGGERS = 29;
    public static final int BSW_SCHEDULABLE_ENTITY__MANAGED_MODE_GROUPS = 30;
    public static final int BSW_SCHEDULABLE_ENTITY__SCHEDULER_NAME_PREFIX = 31;
    public static final int BSW_SCHEDULABLE_ENTITY__VARIATION_POINT = 32;
    public static final int BSW_SCHEDULABLE_ENTITY_FEATURE_COUNT = 33;
    public static final int BSW_INTERNAL_TRIGGERING_POINT_REF_CONDITIONAL = 4;
    public static final int BSW_INTERNAL_TRIGGERING_POINT_REF_CONDITIONAL__GCHECKSUM = 0;
    public static final int BSW_INTERNAL_TRIGGERING_POINT_REF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int BSW_INTERNAL_TRIGGERING_POINT_REF_CONDITIONAL__CHECKSUM = 2;
    public static final int BSW_INTERNAL_TRIGGERING_POINT_REF_CONDITIONAL__TIMESTAMP = 3;
    public static final int BSW_INTERNAL_TRIGGERING_POINT_REF_CONDITIONAL__BSW_MODULE_ENTITY = 4;
    public static final int BSW_INTERNAL_TRIGGERING_POINT_REF_CONDITIONAL__BSW_INTERNAL_TRIGGERING_POINT = 5;
    public static final int BSW_INTERNAL_TRIGGERING_POINT_REF_CONDITIONAL__VARIATION_POINT = 6;
    public static final int BSW_INTERNAL_TRIGGERING_POINT_REF_CONDITIONAL_FEATURE_COUNT = 7;
    public static final int BSW_INTERNAL_TRIGGERING_POINT = 5;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__GCHECKSUM = 0;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__GTIMESTAMP = 1;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__CHECKSUM = 2;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__TIMESTAMP = 3;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__GSHORT_NAME = 4;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__SHORT_NAME = 5;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__LONG_NAME = 6;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__GUUID = 7;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__GCATEGORY = 8;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__GDESC = 9;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__DESC = 10;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__CATEGORY = 11;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__ADMIN_DATA = 12;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__INTRODUCTION = 13;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__ANNOTATIONS = 14;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__UUID = 15;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__ALL_EXTENSIONS = 16;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__BSW_INTERNAL_BEHAVIOR = 18;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__SW_IMPL_POLICY = 19;
    public static final int BSW_INTERNAL_TRIGGERING_POINT__VARIATION_POINT = 20;
    public static final int BSW_INTERNAL_TRIGGERING_POINT_FEATURE_COUNT = 21;
    public static final int BSW_SCHEDULER_NAME_PREFIX = 6;
    public static final int BSW_SCHEDULER_NAME_PREFIX__GCHECKSUM = 0;
    public static final int BSW_SCHEDULER_NAME_PREFIX__GTIMESTAMP = 1;
    public static final int BSW_SCHEDULER_NAME_PREFIX__CHECKSUM = 2;
    public static final int BSW_SCHEDULER_NAME_PREFIX__TIMESTAMP = 3;
    public static final int BSW_SCHEDULER_NAME_PREFIX__GSHORT_NAME = 4;
    public static final int BSW_SCHEDULER_NAME_PREFIX__SHORT_NAME = 5;
    public static final int BSW_SCHEDULER_NAME_PREFIX__SYMBOL = 6;
    public static final int BSW_SCHEDULER_NAME_PREFIX__BSW_INTERNAL_BEHAVIOR = 7;
    public static final int BSW_SCHEDULER_NAME_PREFIX__VARIATION_POINT = 8;
    public static final int BSW_SCHEDULER_NAME_PREFIX_FEATURE_COUNT = 9;
    public static final int BSW_INTERNAL_BEHAVIOR = 7;
    public static final int BSW_INTERNAL_BEHAVIOR__GCHECKSUM = 0;
    public static final int BSW_INTERNAL_BEHAVIOR__GTIMESTAMP = 1;
    public static final int BSW_INTERNAL_BEHAVIOR__CHECKSUM = 2;
    public static final int BSW_INTERNAL_BEHAVIOR__TIMESTAMP = 3;
    public static final int BSW_INTERNAL_BEHAVIOR__GSHORT_NAME = 4;
    public static final int BSW_INTERNAL_BEHAVIOR__SHORT_NAME = 5;
    public static final int BSW_INTERNAL_BEHAVIOR__LONG_NAME = 6;
    public static final int BSW_INTERNAL_BEHAVIOR__GUUID = 7;
    public static final int BSW_INTERNAL_BEHAVIOR__GCATEGORY = 8;
    public static final int BSW_INTERNAL_BEHAVIOR__GDESC = 9;
    public static final int BSW_INTERNAL_BEHAVIOR__DESC = 10;
    public static final int BSW_INTERNAL_BEHAVIOR__CATEGORY = 11;
    public static final int BSW_INTERNAL_BEHAVIOR__ADMIN_DATA = 12;
    public static final int BSW_INTERNAL_BEHAVIOR__INTRODUCTION = 13;
    public static final int BSW_INTERNAL_BEHAVIOR__ANNOTATIONS = 14;
    public static final int BSW_INTERNAL_BEHAVIOR__UUID = 15;
    public static final int BSW_INTERNAL_BEHAVIOR__ALL_EXTENSIONS = 16;
    public static final int BSW_INTERNAL_BEHAVIOR__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_INTERNAL_BEHAVIOR__ATP_CLASSIFIER = 18;
    public static final int BSW_INTERNAL_BEHAVIOR__GEXCLUSIVE_AREAS = 19;
    public static final int BSW_INTERNAL_BEHAVIOR__CONSTANT_MEMORIES = 20;
    public static final int BSW_INTERNAL_BEHAVIOR__CONSTANT_VALUE_MAPPINGS = 21;
    public static final int BSW_INTERNAL_BEHAVIOR__DATA_TYPE_MAPPINGS = 22;
    public static final int BSW_INTERNAL_BEHAVIOR__EXCLUSIVE_AREAS = 23;
    public static final int BSW_INTERNAL_BEHAVIOR__STATIC_MEMORIES = 24;
    public static final int BSW_INTERNAL_BEHAVIOR__BSW_MODULE_DESCRIPTION = 25;
    public static final int BSW_INTERNAL_BEHAVIOR__INTERNAL_TRIGGERING_POINTS = 26;
    public static final int BSW_INTERNAL_BEHAVIOR__ENTITIES = 27;
    public static final int BSW_INTERNAL_BEHAVIOR__EVENTS = 28;
    public static final int BSW_INTERNAL_BEHAVIOR__TRIGGER_DIRECT_IMPLEMENTATIONS = 29;
    public static final int BSW_INTERNAL_BEHAVIOR__MODE_SENDER_POLICIES = 30;
    public static final int BSW_INTERNAL_BEHAVIOR__MODE_RECEIVER_POLICIES = 31;
    public static final int BSW_INTERNAL_BEHAVIOR__SERVICE_DEPENDENCIES = 32;
    public static final int BSW_INTERNAL_BEHAVIOR__PER_INSTANCE_PARAMETERS = 33;
    public static final int BSW_INTERNAL_BEHAVIOR__SCHEDULER_NAME_PREFIXS = 34;
    public static final int BSW_INTERNAL_BEHAVIOR_FEATURE_COUNT = 35;
    public static final int BSW_MODE_RECEIVER_POLICY = 8;
    public static final int BSW_MODE_RECEIVER_POLICY__GCHECKSUM = 0;
    public static final int BSW_MODE_RECEIVER_POLICY__GTIMESTAMP = 1;
    public static final int BSW_MODE_RECEIVER_POLICY__CHECKSUM = 2;
    public static final int BSW_MODE_RECEIVER_POLICY__TIMESTAMP = 3;
    public static final int BSW_MODE_RECEIVER_POLICY__BSW_INTERNAL_BEHAVIOR = 4;
    public static final int BSW_MODE_RECEIVER_POLICY__ENHANCED_MODE_API = 5;
    public static final int BSW_MODE_RECEIVER_POLICY__REQUIRED_MODE_GROUP = 6;
    public static final int BSW_MODE_RECEIVER_POLICY__SUPPORTS_ASYNCHRONOUS_MODE_SWITCH = 7;
    public static final int BSW_MODE_RECEIVER_POLICY__VARIATION_POINT = 8;
    public static final int BSW_MODE_RECEIVER_POLICY_FEATURE_COUNT = 9;
    public static final int BSW_TRIGGER_DIRECT_IMPLEMENTATION = 9;
    public static final int BSW_TRIGGER_DIRECT_IMPLEMENTATION__GCHECKSUM = 0;
    public static final int BSW_TRIGGER_DIRECT_IMPLEMENTATION__GTIMESTAMP = 1;
    public static final int BSW_TRIGGER_DIRECT_IMPLEMENTATION__CHECKSUM = 2;
    public static final int BSW_TRIGGER_DIRECT_IMPLEMENTATION__TIMESTAMP = 3;
    public static final int BSW_TRIGGER_DIRECT_IMPLEMENTATION__BSW_INTERNAL_BEHAVIOR = 4;
    public static final int BSW_TRIGGER_DIRECT_IMPLEMENTATION__MASTERED_TRIGGER = 5;
    public static final int BSW_TRIGGER_DIRECT_IMPLEMENTATION__TASK = 6;
    public static final int BSW_TRIGGER_DIRECT_IMPLEMENTATION__VARIATION_POINT = 7;
    public static final int BSW_TRIGGER_DIRECT_IMPLEMENTATION_FEATURE_COUNT = 8;
    public static final int BSW_SERVICE_DEPENDENCY = 10;
    public static final int BSW_SERVICE_DEPENDENCY__GCHECKSUM = 0;
    public static final int BSW_SERVICE_DEPENDENCY__GTIMESTAMP = 1;
    public static final int BSW_SERVICE_DEPENDENCY__CHECKSUM = 2;
    public static final int BSW_SERVICE_DEPENDENCY__TIMESTAMP = 3;
    public static final int BSW_SERVICE_DEPENDENCY__BSW_INTERNAL_BEHAVIOR = 4;
    public static final int BSW_SERVICE_DEPENDENCY__ASSIGNED_DATAS = 5;
    public static final int BSW_SERVICE_DEPENDENCY__ASSIGNED_ENTRY_ROLES = 6;
    public static final int BSW_SERVICE_DEPENDENCY__SERVICE_NEEDS = 7;
    public static final int BSW_SERVICE_DEPENDENCY__VARIATION_POINT = 8;
    public static final int BSW_SERVICE_DEPENDENCY_FEATURE_COUNT = 9;
    public static final int ROLE_BASED_BSW_MODULE_ENTRY_ASSIGNMENT = 11;
    public static final int ROLE_BASED_BSW_MODULE_ENTRY_ASSIGNMENT__GCHECKSUM = 0;
    public static final int ROLE_BASED_BSW_MODULE_ENTRY_ASSIGNMENT__GTIMESTAMP = 1;
    public static final int ROLE_BASED_BSW_MODULE_ENTRY_ASSIGNMENT__CHECKSUM = 2;
    public static final int ROLE_BASED_BSW_MODULE_ENTRY_ASSIGNMENT__TIMESTAMP = 3;
    public static final int ROLE_BASED_BSW_MODULE_ENTRY_ASSIGNMENT__BSW_SERVICE_DEPENDENCY = 4;
    public static final int ROLE_BASED_BSW_MODULE_ENTRY_ASSIGNMENT__ASSIGNED_ENTRY = 5;
    public static final int ROLE_BASED_BSW_MODULE_ENTRY_ASSIGNMENT__ROLE = 6;
    public static final int ROLE_BASED_BSW_MODULE_ENTRY_ASSIGNMENT_FEATURE_COUNT = 7;
    public static final int BSW_MODE_SENDER_POLICY = 12;
    public static final int BSW_MODE_SENDER_POLICY__GCHECKSUM = 0;
    public static final int BSW_MODE_SENDER_POLICY__GTIMESTAMP = 1;
    public static final int BSW_MODE_SENDER_POLICY__CHECKSUM = 2;
    public static final int BSW_MODE_SENDER_POLICY__TIMESTAMP = 3;
    public static final int BSW_MODE_SENDER_POLICY__BSW_INTERNAL_BEHAVIOR = 4;
    public static final int BSW_MODE_SENDER_POLICY__ACK_REQUEST = 5;
    public static final int BSW_MODE_SENDER_POLICY__ENHANCED_MODE_API = 6;
    public static final int BSW_MODE_SENDER_POLICY__PROVIDED_MODE_GROUP = 7;
    public static final int BSW_MODE_SENDER_POLICY__QUEUE_LENGTH = 8;
    public static final int BSW_MODE_SENDER_POLICY__VARIATION_POINT = 9;
    public static final int BSW_MODE_SENDER_POLICY_FEATURE_COUNT = 10;
    public static final int BSW_MODE_SWITCH_ACK_REQUEST = 13;
    public static final int BSW_MODE_SWITCH_ACK_REQUEST__GCHECKSUM = 0;
    public static final int BSW_MODE_SWITCH_ACK_REQUEST__GTIMESTAMP = 1;
    public static final int BSW_MODE_SWITCH_ACK_REQUEST__CHECKSUM = 2;
    public static final int BSW_MODE_SWITCH_ACK_REQUEST__TIMESTAMP = 3;
    public static final int BSW_MODE_SWITCH_ACK_REQUEST__BSW_MODE_SENDER_POLICY = 4;
    public static final int BSW_MODE_SWITCH_ACK_REQUEST__TIMEOUT = 5;
    public static final int BSW_MODE_SWITCH_ACK_REQUEST_FEATURE_COUNT = 6;
    public static final int BSW_CALLED_ENTITY = 14;
    public static final int BSW_CALLED_ENTITY__GCHECKSUM = 0;
    public static final int BSW_CALLED_ENTITY__GTIMESTAMP = 1;
    public static final int BSW_CALLED_ENTITY__CHECKSUM = 2;
    public static final int BSW_CALLED_ENTITY__TIMESTAMP = 3;
    public static final int BSW_CALLED_ENTITY__GSHORT_NAME = 4;
    public static final int BSW_CALLED_ENTITY__SHORT_NAME = 5;
    public static final int BSW_CALLED_ENTITY__LONG_NAME = 6;
    public static final int BSW_CALLED_ENTITY__GUUID = 7;
    public static final int BSW_CALLED_ENTITY__GCATEGORY = 8;
    public static final int BSW_CALLED_ENTITY__GDESC = 9;
    public static final int BSW_CALLED_ENTITY__DESC = 10;
    public static final int BSW_CALLED_ENTITY__CATEGORY = 11;
    public static final int BSW_CALLED_ENTITY__ADMIN_DATA = 12;
    public static final int BSW_CALLED_ENTITY__INTRODUCTION = 13;
    public static final int BSW_CALLED_ENTITY__ANNOTATIONS = 14;
    public static final int BSW_CALLED_ENTITY__UUID = 15;
    public static final int BSW_CALLED_ENTITY__ALL_EXTENSIONS = 16;
    public static final int BSW_CALLED_ENTITY__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_CALLED_ENTITY__GRUNS_INSIDE_EXCLUSIVE_AREAS = 18;
    public static final int BSW_CALLED_ENTITY__GCAN_ENTER_EXCLUSIVE_AREAS = 19;
    public static final int BSW_CALLED_ENTITY__CAN_ENTER_EXCLUSIVE_AREAS = 20;
    public static final int BSW_CALLED_ENTITY__MINIMUM_START_INTERVAL = 21;
    public static final int BSW_CALLED_ENTITY__RUNS_INSIDE_EXCLUSIVE_AREAS = 22;
    public static final int BSW_CALLED_ENTITY__SW_ADDR_METHOD = 23;
    public static final int BSW_CALLED_ENTITY__BSW_INTERNAL_BEHAVIOR = 24;
    public static final int BSW_CALLED_ENTITY__ACCESSED_MODE_GROUPS = 25;
    public static final int BSW_CALLED_ENTITY__ACTIVATION_POINTS = 26;
    public static final int BSW_CALLED_ENTITY__CALLED_ENTRIES = 27;
    public static final int BSW_CALLED_ENTITY__IMPLEMENTED_ENTRY = 28;
    public static final int BSW_CALLED_ENTITY__ISSUED_TRIGGERS = 29;
    public static final int BSW_CALLED_ENTITY__MANAGED_MODE_GROUPS = 30;
    public static final int BSW_CALLED_ENTITY__SCHEDULER_NAME_PREFIX = 31;
    public static final int BSW_CALLED_ENTITY__VARIATION_POINT = 32;
    public static final int BSW_CALLED_ENTITY_FEATURE_COUNT = 33;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT = 15;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__GCHECKSUM = 0;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__GTIMESTAMP = 1;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__CHECKSUM = 2;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__TIMESTAMP = 3;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__GSHORT_NAME = 4;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__SHORT_NAME = 5;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__LONG_NAME = 6;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__GUUID = 7;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__GCATEGORY = 8;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__GDESC = 9;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__DESC = 10;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__CATEGORY = 11;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__ADMIN_DATA = 12;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__INTRODUCTION = 13;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__ANNOTATIONS = 14;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__UUID = 15;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__ALL_EXTENSIONS = 16;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__BSW_INTERNAL_BEHAVIOR = 18;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__DISABLED_IN_MODES = 19;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__STARTS_ON_EVENT = 20;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__VARIATION_POINT = 21;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__TRIGGER = 22;
    public static final int BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT_FEATURE_COUNT = 23;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT = 16;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__GCHECKSUM = 0;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__GTIMESTAMP = 1;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__CHECKSUM = 2;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__TIMESTAMP = 3;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__GSHORT_NAME = 4;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__SHORT_NAME = 5;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__LONG_NAME = 6;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__GUUID = 7;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__GCATEGORY = 8;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__GDESC = 9;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__DESC = 10;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__CATEGORY = 11;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__ADMIN_DATA = 12;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__INTRODUCTION = 13;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__ANNOTATIONS = 14;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__UUID = 15;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__ALL_EXTENSIONS = 16;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__BSW_INTERNAL_BEHAVIOR = 18;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__DISABLED_IN_MODES = 19;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__STARTS_ON_EVENT = 20;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__VARIATION_POINT = 21;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__EVENT_SOURCE = 22;
    public static final int BSW_INTERNAL_TRIGGER_OCCURRED_EVENT_FEATURE_COUNT = 23;
    public static final int BSW_INTERRUPT_ENTITY = 17;
    public static final int BSW_INTERRUPT_ENTITY__GCHECKSUM = 0;
    public static final int BSW_INTERRUPT_ENTITY__GTIMESTAMP = 1;
    public static final int BSW_INTERRUPT_ENTITY__CHECKSUM = 2;
    public static final int BSW_INTERRUPT_ENTITY__TIMESTAMP = 3;
    public static final int BSW_INTERRUPT_ENTITY__GSHORT_NAME = 4;
    public static final int BSW_INTERRUPT_ENTITY__SHORT_NAME = 5;
    public static final int BSW_INTERRUPT_ENTITY__LONG_NAME = 6;
    public static final int BSW_INTERRUPT_ENTITY__GUUID = 7;
    public static final int BSW_INTERRUPT_ENTITY__GCATEGORY = 8;
    public static final int BSW_INTERRUPT_ENTITY__GDESC = 9;
    public static final int BSW_INTERRUPT_ENTITY__DESC = 10;
    public static final int BSW_INTERRUPT_ENTITY__CATEGORY = 11;
    public static final int BSW_INTERRUPT_ENTITY__ADMIN_DATA = 12;
    public static final int BSW_INTERRUPT_ENTITY__INTRODUCTION = 13;
    public static final int BSW_INTERRUPT_ENTITY__ANNOTATIONS = 14;
    public static final int BSW_INTERRUPT_ENTITY__UUID = 15;
    public static final int BSW_INTERRUPT_ENTITY__ALL_EXTENSIONS = 16;
    public static final int BSW_INTERRUPT_ENTITY__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_INTERRUPT_ENTITY__GRUNS_INSIDE_EXCLUSIVE_AREAS = 18;
    public static final int BSW_INTERRUPT_ENTITY__GCAN_ENTER_EXCLUSIVE_AREAS = 19;
    public static final int BSW_INTERRUPT_ENTITY__CAN_ENTER_EXCLUSIVE_AREAS = 20;
    public static final int BSW_INTERRUPT_ENTITY__MINIMUM_START_INTERVAL = 21;
    public static final int BSW_INTERRUPT_ENTITY__RUNS_INSIDE_EXCLUSIVE_AREAS = 22;
    public static final int BSW_INTERRUPT_ENTITY__SW_ADDR_METHOD = 23;
    public static final int BSW_INTERRUPT_ENTITY__BSW_INTERNAL_BEHAVIOR = 24;
    public static final int BSW_INTERRUPT_ENTITY__ACCESSED_MODE_GROUPS = 25;
    public static final int BSW_INTERRUPT_ENTITY__ACTIVATION_POINTS = 26;
    public static final int BSW_INTERRUPT_ENTITY__CALLED_ENTRIES = 27;
    public static final int BSW_INTERRUPT_ENTITY__IMPLEMENTED_ENTRY = 28;
    public static final int BSW_INTERRUPT_ENTITY__ISSUED_TRIGGERS = 29;
    public static final int BSW_INTERRUPT_ENTITY__MANAGED_MODE_GROUPS = 30;
    public static final int BSW_INTERRUPT_ENTITY__SCHEDULER_NAME_PREFIX = 31;
    public static final int BSW_INTERRUPT_ENTITY__VARIATION_POINT = 32;
    public static final int BSW_INTERRUPT_ENTITY__INTERRUPT_CATEGORY = 33;
    public static final int BSW_INTERRUPT_ENTITY__INTERRUPT_SOURCE = 34;
    public static final int BSW_INTERRUPT_ENTITY_FEATURE_COUNT = 35;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT = 18;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__GCHECKSUM = 0;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__GTIMESTAMP = 1;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__CHECKSUM = 2;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__TIMESTAMP = 3;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__GSHORT_NAME = 4;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__SHORT_NAME = 5;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__LONG_NAME = 6;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__GUUID = 7;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__GCATEGORY = 8;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__GDESC = 9;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__DESC = 10;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__CATEGORY = 11;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__ADMIN_DATA = 12;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__INTRODUCTION = 13;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__ANNOTATIONS = 14;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__UUID = 15;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__ALL_EXTENSIONS = 16;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__BSW_INTERNAL_BEHAVIOR = 18;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__DISABLED_IN_MODES = 19;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__STARTS_ON_EVENT = 20;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__VARIATION_POINT = 21;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT__MODE_GROUP = 22;
    public static final int BSW_MODE_SWITCHED_ACK_EVENT_FEATURE_COUNT = 23;
    public static final int BSW_MODE_SWITCH_EVENT = 19;
    public static final int BSW_MODE_SWITCH_EVENT__GCHECKSUM = 0;
    public static final int BSW_MODE_SWITCH_EVENT__GTIMESTAMP = 1;
    public static final int BSW_MODE_SWITCH_EVENT__CHECKSUM = 2;
    public static final int BSW_MODE_SWITCH_EVENT__TIMESTAMP = 3;
    public static final int BSW_MODE_SWITCH_EVENT__GSHORT_NAME = 4;
    public static final int BSW_MODE_SWITCH_EVENT__SHORT_NAME = 5;
    public static final int BSW_MODE_SWITCH_EVENT__LONG_NAME = 6;
    public static final int BSW_MODE_SWITCH_EVENT__GUUID = 7;
    public static final int BSW_MODE_SWITCH_EVENT__GCATEGORY = 8;
    public static final int BSW_MODE_SWITCH_EVENT__GDESC = 9;
    public static final int BSW_MODE_SWITCH_EVENT__DESC = 10;
    public static final int BSW_MODE_SWITCH_EVENT__CATEGORY = 11;
    public static final int BSW_MODE_SWITCH_EVENT__ADMIN_DATA = 12;
    public static final int BSW_MODE_SWITCH_EVENT__INTRODUCTION = 13;
    public static final int BSW_MODE_SWITCH_EVENT__ANNOTATIONS = 14;
    public static final int BSW_MODE_SWITCH_EVENT__UUID = 15;
    public static final int BSW_MODE_SWITCH_EVENT__ALL_EXTENSIONS = 16;
    public static final int BSW_MODE_SWITCH_EVENT__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_MODE_SWITCH_EVENT__BSW_INTERNAL_BEHAVIOR = 18;
    public static final int BSW_MODE_SWITCH_EVENT__DISABLED_IN_MODES = 19;
    public static final int BSW_MODE_SWITCH_EVENT__STARTS_ON_EVENT = 20;
    public static final int BSW_MODE_SWITCH_EVENT__VARIATION_POINT = 21;
    public static final int BSW_MODE_SWITCH_EVENT__ACTIVATION = 22;
    public static final int BSW_MODE_SWITCH_EVENT__MODES = 23;
    public static final int BSW_MODE_SWITCH_EVENT_FEATURE_COUNT = 24;
    public static final int BSW_TIMING_EVENT = 20;
    public static final int BSW_TIMING_EVENT__GCHECKSUM = 0;
    public static final int BSW_TIMING_EVENT__GTIMESTAMP = 1;
    public static final int BSW_TIMING_EVENT__CHECKSUM = 2;
    public static final int BSW_TIMING_EVENT__TIMESTAMP = 3;
    public static final int BSW_TIMING_EVENT__GSHORT_NAME = 4;
    public static final int BSW_TIMING_EVENT__SHORT_NAME = 5;
    public static final int BSW_TIMING_EVENT__LONG_NAME = 6;
    public static final int BSW_TIMING_EVENT__GUUID = 7;
    public static final int BSW_TIMING_EVENT__GCATEGORY = 8;
    public static final int BSW_TIMING_EVENT__GDESC = 9;
    public static final int BSW_TIMING_EVENT__DESC = 10;
    public static final int BSW_TIMING_EVENT__CATEGORY = 11;
    public static final int BSW_TIMING_EVENT__ADMIN_DATA = 12;
    public static final int BSW_TIMING_EVENT__INTRODUCTION = 13;
    public static final int BSW_TIMING_EVENT__ANNOTATIONS = 14;
    public static final int BSW_TIMING_EVENT__UUID = 15;
    public static final int BSW_TIMING_EVENT__ALL_EXTENSIONS = 16;
    public static final int BSW_TIMING_EVENT__CONTAINED_EXTENSIONS = 17;
    public static final int BSW_TIMING_EVENT__BSW_INTERNAL_BEHAVIOR = 18;
    public static final int BSW_TIMING_EVENT__DISABLED_IN_MODES = 19;
    public static final int BSW_TIMING_EVENT__STARTS_ON_EVENT = 20;
    public static final int BSW_TIMING_EVENT__VARIATION_POINT = 21;
    public static final int BSW_TIMING_EVENT__PERIOD = 22;
    public static final int BSW_TIMING_EVENT_FEATURE_COUNT = 23;
    public static final int BSW_INTERRUPT_CATEGORY = 21;

    public EClass getBswBackgroundEvent();

    public EClass getBswEvent();

    public EReference getBswEvent_BswInternalBehavior();

    public EReference getBswEvent_DisabledInModes();

    public EReference getBswEvent_StartsOnEvent();

    public EReference getBswEvent_VariationPoint();

    public EClass getBswSchedulableEntity();

    public EClass getBswModuleEntity();

    public EReference getBswModuleEntity_BswInternalBehavior();

    public EReference getBswModuleEntity_AccessedModeGroups();

    public EReference getBswModuleEntity_ActivationPoints();

    public EReference getBswModuleEntity_CalledEntries();

    public EReference getBswModuleEntity_ImplementedEntry();

    public EReference getBswModuleEntity_IssuedTriggers();

    public EReference getBswModuleEntity_ManagedModeGroups();

    public EReference getBswModuleEntity_SchedulerNamePrefix();

    public EReference getBswModuleEntity_VariationPoint();

    public EClass getBswInternalTriggeringPointRefConditional();

    public EReference getBswInternalTriggeringPointRefConditional_BswModuleEntity();

    public EReference getBswInternalTriggeringPointRefConditional_BswInternalTriggeringPoint();

    public EReference getBswInternalTriggeringPointRefConditional_VariationPoint();

    public EClass getBswInternalTriggeringPoint();

    public EReference getBswInternalTriggeringPoint_BswInternalBehavior();

    public EAttribute getBswInternalTriggeringPoint_SwImplPolicy();

    public EReference getBswInternalTriggeringPoint_VariationPoint();

    public EClass getBswSchedulerNamePrefix();

    public EReference getBswSchedulerNamePrefix_BswInternalBehavior();

    public EReference getBswSchedulerNamePrefix_VariationPoint();

    public EClass getBswInternalBehavior();

    public EReference getBswInternalBehavior_BswModuleDescription();

    public EReference getBswInternalBehavior_InternalTriggeringPoints();

    public EReference getBswInternalBehavior_Entities();

    public EReference getBswInternalBehavior_Events();

    public EReference getBswInternalBehavior_TriggerDirectImplementations();

    public EReference getBswInternalBehavior_ModeSenderPolicies();

    public EReference getBswInternalBehavior_ModeReceiverPolicies();

    public EReference getBswInternalBehavior_ServiceDependencies();

    public EReference getBswInternalBehavior_PerInstanceParameters();

    public EReference getBswInternalBehavior_SchedulerNamePrefixs();

    public EClass getBswModeReceiverPolicy();

    public EReference getBswModeReceiverPolicy_BswInternalBehavior();

    public EAttribute getBswModeReceiverPolicy_EnhancedModeApi();

    public EReference getBswModeReceiverPolicy_RequiredModeGroup();

    public EAttribute getBswModeReceiverPolicy_SupportsAsynchronousModeSwitch();

    public EReference getBswModeReceiverPolicy_VariationPoint();

    public EClass getBswTriggerDirectImplementation();

    public EReference getBswTriggerDirectImplementation_BswInternalBehavior();

    public EReference getBswTriggerDirectImplementation_MasteredTrigger();

    public EAttribute getBswTriggerDirectImplementation_Task();

    public EReference getBswTriggerDirectImplementation_VariationPoint();

    public EClass getBswServiceDependency();

    public EReference getBswServiceDependency_BswInternalBehavior();

    public EReference getBswServiceDependency_AssignedDatas();

    public EReference getBswServiceDependency_AssignedEntryRoles();

    public EReference getBswServiceDependency_ServiceNeeds();

    public EReference getBswServiceDependency_VariationPoint();

    public EClass getRoleBasedBswModuleEntryAssignment();

    public EReference getRoleBasedBswModuleEntryAssignment_BswServiceDependency();

    public EReference getRoleBasedBswModuleEntryAssignment_AssignedEntry();

    public EAttribute getRoleBasedBswModuleEntryAssignment_Role();

    public EClass getBswModeSenderPolicy();

    public EReference getBswModeSenderPolicy_BswInternalBehavior();

    public EReference getBswModeSenderPolicy_AckRequest();

    public EAttribute getBswModeSenderPolicy_EnhancedModeApi();

    public EReference getBswModeSenderPolicy_ProvidedModeGroup();

    public EAttribute getBswModeSenderPolicy_QueueLength();

    public EReference getBswModeSenderPolicy_VariationPoint();

    public EClass getBswModeSwitchAckRequest();

    public EReference getBswModeSwitchAckRequest_BswModeSenderPolicy();

    public EAttribute getBswModeSwitchAckRequest_Timeout();

    public EClass getBswCalledEntity();

    public EClass getBswExternalTriggerOccurredEvent();

    public EReference getBswExternalTriggerOccurredEvent_Trigger();

    public EClass getBswInternalTriggerOccurredEvent();

    public EReference getBswInternalTriggerOccurredEvent_EventSource();

    public EClass getBswInterruptEntity();

    public EAttribute getBswInterruptEntity_InterruptCategory();

    public EAttribute getBswInterruptEntity_InterruptSource();

    public EClass getBswModeSwitchedAckEvent();

    public EReference getBswModeSwitchedAckEvent_ModeGroup();

    public EClass getBswModeSwitchEvent();

    public EAttribute getBswModeSwitchEvent_Activation();

    public EReference getBswModeSwitchEvent_Modes();

    public EClass getBswTimingEvent();

    public EAttribute getBswTimingEvent_Period();

    public EEnum getBswInterruptCategory();

    public BswbehaviorFactory getBswbehaviorFactory();

    public static interface Literals {
        public static final EClass BSW_BACKGROUND_EVENT = eINSTANCE.getBswBackgroundEvent();
        public static final EClass BSW_EVENT = eINSTANCE.getBswEvent();
        public static final EReference BSW_EVENT__BSW_INTERNAL_BEHAVIOR = eINSTANCE.getBswEvent_BswInternalBehavior();
        public static final EReference BSW_EVENT__DISABLED_IN_MODES = eINSTANCE.getBswEvent_DisabledInModes();
        public static final EReference BSW_EVENT__STARTS_ON_EVENT = eINSTANCE.getBswEvent_StartsOnEvent();
        public static final EReference BSW_EVENT__VARIATION_POINT = eINSTANCE.getBswEvent_VariationPoint();
        public static final EClass BSW_SCHEDULABLE_ENTITY = eINSTANCE.getBswSchedulableEntity();
        public static final EClass BSW_MODULE_ENTITY = eINSTANCE.getBswModuleEntity();
        public static final EReference BSW_MODULE_ENTITY__BSW_INTERNAL_BEHAVIOR = eINSTANCE.getBswModuleEntity_BswInternalBehavior();
        public static final EReference BSW_MODULE_ENTITY__ACCESSED_MODE_GROUPS = eINSTANCE.getBswModuleEntity_AccessedModeGroups();
        public static final EReference BSW_MODULE_ENTITY__ACTIVATION_POINTS = eINSTANCE.getBswModuleEntity_ActivationPoints();
        public static final EReference BSW_MODULE_ENTITY__CALLED_ENTRIES = eINSTANCE.getBswModuleEntity_CalledEntries();
        public static final EReference BSW_MODULE_ENTITY__IMPLEMENTED_ENTRY = eINSTANCE.getBswModuleEntity_ImplementedEntry();
        public static final EReference BSW_MODULE_ENTITY__ISSUED_TRIGGERS = eINSTANCE.getBswModuleEntity_IssuedTriggers();
        public static final EReference BSW_MODULE_ENTITY__MANAGED_MODE_GROUPS = eINSTANCE.getBswModuleEntity_ManagedModeGroups();
        public static final EReference BSW_MODULE_ENTITY__SCHEDULER_NAME_PREFIX = eINSTANCE.getBswModuleEntity_SchedulerNamePrefix();
        public static final EReference BSW_MODULE_ENTITY__VARIATION_POINT = eINSTANCE.getBswModuleEntity_VariationPoint();
        public static final EClass BSW_INTERNAL_TRIGGERING_POINT_REF_CONDITIONAL = eINSTANCE.getBswInternalTriggeringPointRefConditional();
        public static final EReference BSW_INTERNAL_TRIGGERING_POINT_REF_CONDITIONAL__BSW_MODULE_ENTITY = eINSTANCE.getBswInternalTriggeringPointRefConditional_BswModuleEntity();
        public static final EReference BSW_INTERNAL_TRIGGERING_POINT_REF_CONDITIONAL__BSW_INTERNAL_TRIGGERING_POINT = eINSTANCE.getBswInternalTriggeringPointRefConditional_BswInternalTriggeringPoint();
        public static final EReference BSW_INTERNAL_TRIGGERING_POINT_REF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getBswInternalTriggeringPointRefConditional_VariationPoint();
        public static final EClass BSW_INTERNAL_TRIGGERING_POINT = eINSTANCE.getBswInternalTriggeringPoint();
        public static final EReference BSW_INTERNAL_TRIGGERING_POINT__BSW_INTERNAL_BEHAVIOR = eINSTANCE.getBswInternalTriggeringPoint_BswInternalBehavior();
        public static final EAttribute BSW_INTERNAL_TRIGGERING_POINT__SW_IMPL_POLICY = eINSTANCE.getBswInternalTriggeringPoint_SwImplPolicy();
        public static final EReference BSW_INTERNAL_TRIGGERING_POINT__VARIATION_POINT = eINSTANCE.getBswInternalTriggeringPoint_VariationPoint();
        public static final EClass BSW_SCHEDULER_NAME_PREFIX = eINSTANCE.getBswSchedulerNamePrefix();
        public static final EReference BSW_SCHEDULER_NAME_PREFIX__BSW_INTERNAL_BEHAVIOR = eINSTANCE.getBswSchedulerNamePrefix_BswInternalBehavior();
        public static final EReference BSW_SCHEDULER_NAME_PREFIX__VARIATION_POINT = eINSTANCE.getBswSchedulerNamePrefix_VariationPoint();
        public static final EClass BSW_INTERNAL_BEHAVIOR = eINSTANCE.getBswInternalBehavior();
        public static final EReference BSW_INTERNAL_BEHAVIOR__BSW_MODULE_DESCRIPTION = eINSTANCE.getBswInternalBehavior_BswModuleDescription();
        public static final EReference BSW_INTERNAL_BEHAVIOR__INTERNAL_TRIGGERING_POINTS = eINSTANCE.getBswInternalBehavior_InternalTriggeringPoints();
        public static final EReference BSW_INTERNAL_BEHAVIOR__ENTITIES = eINSTANCE.getBswInternalBehavior_Entities();
        public static final EReference BSW_INTERNAL_BEHAVIOR__EVENTS = eINSTANCE.getBswInternalBehavior_Events();
        public static final EReference BSW_INTERNAL_BEHAVIOR__TRIGGER_DIRECT_IMPLEMENTATIONS = eINSTANCE.getBswInternalBehavior_TriggerDirectImplementations();
        public static final EReference BSW_INTERNAL_BEHAVIOR__MODE_SENDER_POLICIES = eINSTANCE.getBswInternalBehavior_ModeSenderPolicies();
        public static final EReference BSW_INTERNAL_BEHAVIOR__MODE_RECEIVER_POLICIES = eINSTANCE.getBswInternalBehavior_ModeReceiverPolicies();
        public static final EReference BSW_INTERNAL_BEHAVIOR__SERVICE_DEPENDENCIES = eINSTANCE.getBswInternalBehavior_ServiceDependencies();
        public static final EReference BSW_INTERNAL_BEHAVIOR__PER_INSTANCE_PARAMETERS = eINSTANCE.getBswInternalBehavior_PerInstanceParameters();
        public static final EReference BSW_INTERNAL_BEHAVIOR__SCHEDULER_NAME_PREFIXS = eINSTANCE.getBswInternalBehavior_SchedulerNamePrefixs();
        public static final EClass BSW_MODE_RECEIVER_POLICY = eINSTANCE.getBswModeReceiverPolicy();
        public static final EReference BSW_MODE_RECEIVER_POLICY__BSW_INTERNAL_BEHAVIOR = eINSTANCE.getBswModeReceiverPolicy_BswInternalBehavior();
        public static final EAttribute BSW_MODE_RECEIVER_POLICY__ENHANCED_MODE_API = eINSTANCE.getBswModeReceiverPolicy_EnhancedModeApi();
        public static final EReference BSW_MODE_RECEIVER_POLICY__REQUIRED_MODE_GROUP = eINSTANCE.getBswModeReceiverPolicy_RequiredModeGroup();
        public static final EAttribute BSW_MODE_RECEIVER_POLICY__SUPPORTS_ASYNCHRONOUS_MODE_SWITCH = eINSTANCE.getBswModeReceiverPolicy_SupportsAsynchronousModeSwitch();
        public static final EReference BSW_MODE_RECEIVER_POLICY__VARIATION_POINT = eINSTANCE.getBswModeReceiverPolicy_VariationPoint();
        public static final EClass BSW_TRIGGER_DIRECT_IMPLEMENTATION = eINSTANCE.getBswTriggerDirectImplementation();
        public static final EReference BSW_TRIGGER_DIRECT_IMPLEMENTATION__BSW_INTERNAL_BEHAVIOR = eINSTANCE.getBswTriggerDirectImplementation_BswInternalBehavior();
        public static final EReference BSW_TRIGGER_DIRECT_IMPLEMENTATION__MASTERED_TRIGGER = eINSTANCE.getBswTriggerDirectImplementation_MasteredTrigger();
        public static final EAttribute BSW_TRIGGER_DIRECT_IMPLEMENTATION__TASK = eINSTANCE.getBswTriggerDirectImplementation_Task();
        public static final EReference BSW_TRIGGER_DIRECT_IMPLEMENTATION__VARIATION_POINT = eINSTANCE.getBswTriggerDirectImplementation_VariationPoint();
        public static final EClass BSW_SERVICE_DEPENDENCY = eINSTANCE.getBswServiceDependency();
        public static final EReference BSW_SERVICE_DEPENDENCY__BSW_INTERNAL_BEHAVIOR = eINSTANCE.getBswServiceDependency_BswInternalBehavior();
        public static final EReference BSW_SERVICE_DEPENDENCY__ASSIGNED_DATAS = eINSTANCE.getBswServiceDependency_AssignedDatas();
        public static final EReference BSW_SERVICE_DEPENDENCY__ASSIGNED_ENTRY_ROLES = eINSTANCE.getBswServiceDependency_AssignedEntryRoles();
        public static final EReference BSW_SERVICE_DEPENDENCY__SERVICE_NEEDS = eINSTANCE.getBswServiceDependency_ServiceNeeds();
        public static final EReference BSW_SERVICE_DEPENDENCY__VARIATION_POINT = eINSTANCE.getBswServiceDependency_VariationPoint();
        public static final EClass ROLE_BASED_BSW_MODULE_ENTRY_ASSIGNMENT = eINSTANCE.getRoleBasedBswModuleEntryAssignment();
        public static final EReference ROLE_BASED_BSW_MODULE_ENTRY_ASSIGNMENT__BSW_SERVICE_DEPENDENCY = eINSTANCE.getRoleBasedBswModuleEntryAssignment_BswServiceDependency();
        public static final EReference ROLE_BASED_BSW_MODULE_ENTRY_ASSIGNMENT__ASSIGNED_ENTRY = eINSTANCE.getRoleBasedBswModuleEntryAssignment_AssignedEntry();
        public static final EAttribute ROLE_BASED_BSW_MODULE_ENTRY_ASSIGNMENT__ROLE = eINSTANCE.getRoleBasedBswModuleEntryAssignment_Role();
        public static final EClass BSW_MODE_SENDER_POLICY = eINSTANCE.getBswModeSenderPolicy();
        public static final EReference BSW_MODE_SENDER_POLICY__BSW_INTERNAL_BEHAVIOR = eINSTANCE.getBswModeSenderPolicy_BswInternalBehavior();
        public static final EReference BSW_MODE_SENDER_POLICY__ACK_REQUEST = eINSTANCE.getBswModeSenderPolicy_AckRequest();
        public static final EAttribute BSW_MODE_SENDER_POLICY__ENHANCED_MODE_API = eINSTANCE.getBswModeSenderPolicy_EnhancedModeApi();
        public static final EReference BSW_MODE_SENDER_POLICY__PROVIDED_MODE_GROUP = eINSTANCE.getBswModeSenderPolicy_ProvidedModeGroup();
        public static final EAttribute BSW_MODE_SENDER_POLICY__QUEUE_LENGTH = eINSTANCE.getBswModeSenderPolicy_QueueLength();
        public static final EReference BSW_MODE_SENDER_POLICY__VARIATION_POINT = eINSTANCE.getBswModeSenderPolicy_VariationPoint();
        public static final EClass BSW_MODE_SWITCH_ACK_REQUEST = eINSTANCE.getBswModeSwitchAckRequest();
        public static final EReference BSW_MODE_SWITCH_ACK_REQUEST__BSW_MODE_SENDER_POLICY = eINSTANCE.getBswModeSwitchAckRequest_BswModeSenderPolicy();
        public static final EAttribute BSW_MODE_SWITCH_ACK_REQUEST__TIMEOUT = eINSTANCE.getBswModeSwitchAckRequest_Timeout();
        public static final EClass BSW_CALLED_ENTITY = eINSTANCE.getBswCalledEntity();
        public static final EClass BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT = eINSTANCE.getBswExternalTriggerOccurredEvent();
        public static final EReference BSW_EXTERNAL_TRIGGER_OCCURRED_EVENT__TRIGGER = eINSTANCE.getBswExternalTriggerOccurredEvent_Trigger();
        public static final EClass BSW_INTERNAL_TRIGGER_OCCURRED_EVENT = eINSTANCE.getBswInternalTriggerOccurredEvent();
        public static final EReference BSW_INTERNAL_TRIGGER_OCCURRED_EVENT__EVENT_SOURCE = eINSTANCE.getBswInternalTriggerOccurredEvent_EventSource();
        public static final EClass BSW_INTERRUPT_ENTITY = eINSTANCE.getBswInterruptEntity();
        public static final EAttribute BSW_INTERRUPT_ENTITY__INTERRUPT_CATEGORY = eINSTANCE.getBswInterruptEntity_InterruptCategory();
        public static final EAttribute BSW_INTERRUPT_ENTITY__INTERRUPT_SOURCE = eINSTANCE.getBswInterruptEntity_InterruptSource();
        public static final EClass BSW_MODE_SWITCHED_ACK_EVENT = eINSTANCE.getBswModeSwitchedAckEvent();
        public static final EReference BSW_MODE_SWITCHED_ACK_EVENT__MODE_GROUP = eINSTANCE.getBswModeSwitchedAckEvent_ModeGroup();
        public static final EClass BSW_MODE_SWITCH_EVENT = eINSTANCE.getBswModeSwitchEvent();
        public static final EAttribute BSW_MODE_SWITCH_EVENT__ACTIVATION = eINSTANCE.getBswModeSwitchEvent_Activation();
        public static final EReference BSW_MODE_SWITCH_EVENT__MODES = eINSTANCE.getBswModeSwitchEvent_Modes();
        public static final EClass BSW_TIMING_EVENT = eINSTANCE.getBswTimingEvent();
        public static final EAttribute BSW_TIMING_EVENT__PERIOD = eINSTANCE.getBswTimingEvent_Period();
        public static final EEnum BSW_INTERRUPT_CATEGORY = eINSTANCE.getBswInterruptCategory();
    }
}

