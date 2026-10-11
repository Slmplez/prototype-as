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
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationFactory;
import autosar40.system.fibex.fibexcore.corecommunication.impl.CorecommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CorecommunicationPackage
extends EPackage {
    public static final String eNAME = "corecommunication";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/fcore/cc";
    public static final String eNS_PREFIX = "";
    public static final CorecommunicationPackage eINSTANCE = CorecommunicationPackageImpl.init();
    public static final int PDU = 2;
    public static final int PDU__GCHECKSUM = 0;
    public static final int PDU__GTIMESTAMP = 1;
    public static final int PDU__CHECKSUM = 2;
    public static final int PDU__TIMESTAMP = 3;
    public static final int PDU__GSHORT_NAME = 4;
    public static final int PDU__SHORT_NAME = 5;
    public static final int PDU__LONG_NAME = 6;
    public static final int PDU__GUUID = 7;
    public static final int PDU__GCATEGORY = 8;
    public static final int PDU__GDESC = 9;
    public static final int PDU__DESC = 10;
    public static final int PDU__CATEGORY = 11;
    public static final int PDU__ADMIN_DATA = 12;
    public static final int PDU__INTRODUCTION = 13;
    public static final int PDU__ANNOTATIONS = 14;
    public static final int PDU__UUID = 15;
    public static final int PDU__ALL_EXTENSIONS = 16;
    public static final int PDU__CONTAINED_EXTENSIONS = 17;
    public static final int PDU__GAR_PACKAGE = 18;
    public static final int PDU__AR_PACKAGE = 19;
    public static final int PDU__VARIATION_POINT = 20;
    public static final int PDU__LENGTH = 21;
    public static final int PDU_FEATURE_COUNT = 22;
    public static final int IPDU = 1;
    public static final int IPDU__GCHECKSUM = 0;
    public static final int IPDU__GTIMESTAMP = 1;
    public static final int IPDU__CHECKSUM = 2;
    public static final int IPDU__TIMESTAMP = 3;
    public static final int IPDU__GSHORT_NAME = 4;
    public static final int IPDU__SHORT_NAME = 5;
    public static final int IPDU__LONG_NAME = 6;
    public static final int IPDU__GUUID = 7;
    public static final int IPDU__GCATEGORY = 8;
    public static final int IPDU__GDESC = 9;
    public static final int IPDU__DESC = 10;
    public static final int IPDU__CATEGORY = 11;
    public static final int IPDU__ADMIN_DATA = 12;
    public static final int IPDU__INTRODUCTION = 13;
    public static final int IPDU__ANNOTATIONS = 14;
    public static final int IPDU__UUID = 15;
    public static final int IPDU__ALL_EXTENSIONS = 16;
    public static final int IPDU__CONTAINED_EXTENSIONS = 17;
    public static final int IPDU__GAR_PACKAGE = 18;
    public static final int IPDU__AR_PACKAGE = 19;
    public static final int IPDU__VARIATION_POINT = 20;
    public static final int IPDU__LENGTH = 21;
    public static final int IPDU_FEATURE_COUNT = 22;
    public static final int DCM_IPDU = 0;
    public static final int DCM_IPDU__GCHECKSUM = 0;
    public static final int DCM_IPDU__GTIMESTAMP = 1;
    public static final int DCM_IPDU__CHECKSUM = 2;
    public static final int DCM_IPDU__TIMESTAMP = 3;
    public static final int DCM_IPDU__GSHORT_NAME = 4;
    public static final int DCM_IPDU__SHORT_NAME = 5;
    public static final int DCM_IPDU__LONG_NAME = 6;
    public static final int DCM_IPDU__GUUID = 7;
    public static final int DCM_IPDU__GCATEGORY = 8;
    public static final int DCM_IPDU__GDESC = 9;
    public static final int DCM_IPDU__DESC = 10;
    public static final int DCM_IPDU__CATEGORY = 11;
    public static final int DCM_IPDU__ADMIN_DATA = 12;
    public static final int DCM_IPDU__INTRODUCTION = 13;
    public static final int DCM_IPDU__ANNOTATIONS = 14;
    public static final int DCM_IPDU__UUID = 15;
    public static final int DCM_IPDU__ALL_EXTENSIONS = 16;
    public static final int DCM_IPDU__CONTAINED_EXTENSIONS = 17;
    public static final int DCM_IPDU__GAR_PACKAGE = 18;
    public static final int DCM_IPDU__AR_PACKAGE = 19;
    public static final int DCM_IPDU__VARIATION_POINT = 20;
    public static final int DCM_IPDU__LENGTH = 21;
    public static final int DCM_IPDU__DIAG_PDU_TYPE = 22;
    public static final int DCM_IPDU_FEATURE_COUNT = 23;
    public static final int MULTIPLEXED_PART = 4;
    public static final int MULTIPLEXED_PART__GCHECKSUM = 0;
    public static final int MULTIPLEXED_PART__GTIMESTAMP = 1;
    public static final int MULTIPLEXED_PART__CHECKSUM = 2;
    public static final int MULTIPLEXED_PART__TIMESTAMP = 3;
    public static final int MULTIPLEXED_PART__SEGMENT_POSITIONS = 4;
    public static final int MULTIPLEXED_PART_FEATURE_COUNT = 5;
    public static final int DYNAMIC_PART = 3;
    public static final int DYNAMIC_PART__GCHECKSUM = 0;
    public static final int DYNAMIC_PART__GTIMESTAMP = 1;
    public static final int DYNAMIC_PART__CHECKSUM = 2;
    public static final int DYNAMIC_PART__TIMESTAMP = 3;
    public static final int DYNAMIC_PART__SEGMENT_POSITIONS = 4;
    public static final int DYNAMIC_PART__MULTIPLEXED_IPDU = 5;
    public static final int DYNAMIC_PART__DYNAMIC_PART_ALTERNATIVES = 6;
    public static final int DYNAMIC_PART__VARIATION_POINT = 7;
    public static final int DYNAMIC_PART_FEATURE_COUNT = 8;
    public static final int SEGMENT_POSITION = 5;
    public static final int SEGMENT_POSITION__GCHECKSUM = 0;
    public static final int SEGMENT_POSITION__GTIMESTAMP = 1;
    public static final int SEGMENT_POSITION__CHECKSUM = 2;
    public static final int SEGMENT_POSITION__TIMESTAMP = 3;
    public static final int SEGMENT_POSITION__MULTIPLEXED_PART = 4;
    public static final int SEGMENT_POSITION__SEGMENT_BYTE_ORDER = 5;
    public static final int SEGMENT_POSITION__SEGMENT_LENGTH = 6;
    public static final int SEGMENT_POSITION__SEGMENT_POSITION = 7;
    public static final int SEGMENT_POSITION_FEATURE_COUNT = 8;
    public static final int DYNAMIC_PART_ALTERNATIVE = 6;
    public static final int DYNAMIC_PART_ALTERNATIVE__GCHECKSUM = 0;
    public static final int DYNAMIC_PART_ALTERNATIVE__GTIMESTAMP = 1;
    public static final int DYNAMIC_PART_ALTERNATIVE__CHECKSUM = 2;
    public static final int DYNAMIC_PART_ALTERNATIVE__TIMESTAMP = 3;
    public static final int DYNAMIC_PART_ALTERNATIVE__DYNAMIC_PART = 4;
    public static final int DYNAMIC_PART_ALTERNATIVE__IPDU = 5;
    public static final int DYNAMIC_PART_ALTERNATIVE__INITIAL_DYNAMIC_PART = 6;
    public static final int DYNAMIC_PART_ALTERNATIVE__SELECTOR_FIELD_CODE = 7;
    public static final int DYNAMIC_PART_ALTERNATIVE_FEATURE_COUNT = 8;
    public static final int ISIGNAL_IPDU = 7;
    public static final int ISIGNAL_IPDU__GCHECKSUM = 0;
    public static final int ISIGNAL_IPDU__GTIMESTAMP = 1;
    public static final int ISIGNAL_IPDU__CHECKSUM = 2;
    public static final int ISIGNAL_IPDU__TIMESTAMP = 3;
    public static final int ISIGNAL_IPDU__GSHORT_NAME = 4;
    public static final int ISIGNAL_IPDU__SHORT_NAME = 5;
    public static final int ISIGNAL_IPDU__LONG_NAME = 6;
    public static final int ISIGNAL_IPDU__GUUID = 7;
    public static final int ISIGNAL_IPDU__GCATEGORY = 8;
    public static final int ISIGNAL_IPDU__GDESC = 9;
    public static final int ISIGNAL_IPDU__DESC = 10;
    public static final int ISIGNAL_IPDU__CATEGORY = 11;
    public static final int ISIGNAL_IPDU__ADMIN_DATA = 12;
    public static final int ISIGNAL_IPDU__INTRODUCTION = 13;
    public static final int ISIGNAL_IPDU__ANNOTATIONS = 14;
    public static final int ISIGNAL_IPDU__UUID = 15;
    public static final int ISIGNAL_IPDU__ALL_EXTENSIONS = 16;
    public static final int ISIGNAL_IPDU__CONTAINED_EXTENSIONS = 17;
    public static final int ISIGNAL_IPDU__GAR_PACKAGE = 18;
    public static final int ISIGNAL_IPDU__AR_PACKAGE = 19;
    public static final int ISIGNAL_IPDU__VARIATION_POINT = 20;
    public static final int ISIGNAL_IPDU__LENGTH = 21;
    public static final int ISIGNAL_IPDU__IPDU_TIMING_SPECIFICATIONS = 22;
    public static final int ISIGNAL_IPDU__ISIGNAL_TO_PDU_MAPPINGS = 23;
    public static final int ISIGNAL_IPDU__PDU_COUNTERS = 24;
    public static final int ISIGNAL_IPDU__PDU_REPLICATIONS = 25;
    public static final int ISIGNAL_IPDU__UNUSED_BIT_PATTERN = 26;
    public static final int ISIGNAL_IPDU_FEATURE_COUNT = 27;
    public static final int ISIGNAL_TO_IPDU_MAPPING = 8;
    public static final int ISIGNAL_TO_IPDU_MAPPING__GCHECKSUM = 0;
    public static final int ISIGNAL_TO_IPDU_MAPPING__GTIMESTAMP = 1;
    public static final int ISIGNAL_TO_IPDU_MAPPING__CHECKSUM = 2;
    public static final int ISIGNAL_TO_IPDU_MAPPING__TIMESTAMP = 3;
    public static final int ISIGNAL_TO_IPDU_MAPPING__GSHORT_NAME = 4;
    public static final int ISIGNAL_TO_IPDU_MAPPING__SHORT_NAME = 5;
    public static final int ISIGNAL_TO_IPDU_MAPPING__LONG_NAME = 6;
    public static final int ISIGNAL_TO_IPDU_MAPPING__GUUID = 7;
    public static final int ISIGNAL_TO_IPDU_MAPPING__GCATEGORY = 8;
    public static final int ISIGNAL_TO_IPDU_MAPPING__GDESC = 9;
    public static final int ISIGNAL_TO_IPDU_MAPPING__DESC = 10;
    public static final int ISIGNAL_TO_IPDU_MAPPING__CATEGORY = 11;
    public static final int ISIGNAL_TO_IPDU_MAPPING__ADMIN_DATA = 12;
    public static final int ISIGNAL_TO_IPDU_MAPPING__INTRODUCTION = 13;
    public static final int ISIGNAL_TO_IPDU_MAPPING__ANNOTATIONS = 14;
    public static final int ISIGNAL_TO_IPDU_MAPPING__UUID = 15;
    public static final int ISIGNAL_TO_IPDU_MAPPING__ALL_EXTENSIONS = 16;
    public static final int ISIGNAL_TO_IPDU_MAPPING__CONTAINED_EXTENSIONS = 17;
    public static final int ISIGNAL_TO_IPDU_MAPPING__ISIGNAL_GROUP = 18;
    public static final int ISIGNAL_TO_IPDU_MAPPING__ISIGNAL = 19;
    public static final int ISIGNAL_TO_IPDU_MAPPING__PACKING_BYTE_ORDER = 20;
    public static final int ISIGNAL_TO_IPDU_MAPPING__START_POSITION = 21;
    public static final int ISIGNAL_TO_IPDU_MAPPING__TRANSFER_PROPERTY = 22;
    public static final int ISIGNAL_TO_IPDU_MAPPING__UPDATE_INDICATION_BIT_POSITION = 23;
    public static final int ISIGNAL_TO_IPDU_MAPPING__VARIATION_POINT = 24;
    public static final int ISIGNAL_TO_IPDU_MAPPING_FEATURE_COUNT = 25;
    public static final int ISIGNAL = 9;
    public static final int ISIGNAL__GCHECKSUM = 0;
    public static final int ISIGNAL__GTIMESTAMP = 1;
    public static final int ISIGNAL__CHECKSUM = 2;
    public static final int ISIGNAL__TIMESTAMP = 3;
    public static final int ISIGNAL__GSHORT_NAME = 4;
    public static final int ISIGNAL__SHORT_NAME = 5;
    public static final int ISIGNAL__LONG_NAME = 6;
    public static final int ISIGNAL__GUUID = 7;
    public static final int ISIGNAL__GCATEGORY = 8;
    public static final int ISIGNAL__GDESC = 9;
    public static final int ISIGNAL__DESC = 10;
    public static final int ISIGNAL__CATEGORY = 11;
    public static final int ISIGNAL__ADMIN_DATA = 12;
    public static final int ISIGNAL__INTRODUCTION = 13;
    public static final int ISIGNAL__ANNOTATIONS = 14;
    public static final int ISIGNAL__UUID = 15;
    public static final int ISIGNAL__ALL_EXTENSIONS = 16;
    public static final int ISIGNAL__CONTAINED_EXTENSIONS = 17;
    public static final int ISIGNAL__GAR_PACKAGE = 18;
    public static final int ISIGNAL__AR_PACKAGE = 19;
    public static final int ISIGNAL__VARIATION_POINT = 20;
    public static final int ISIGNAL__DATA_TYPE_POLICY = 21;
    public static final int ISIGNAL__ISIGNAL_PROPS = 22;
    public static final int ISIGNAL__INIT_VALUE = 23;
    public static final int ISIGNAL__LENGTH = 24;
    public static final int ISIGNAL__NETWORK_REPRESENTATION_PROPS = 25;
    public static final int ISIGNAL__SYSTEM_SIGNAL = 26;
    public static final int ISIGNAL_FEATURE_COUNT = 27;
    public static final int SYSTEM_SIGNAL = 10;
    public static final int SYSTEM_SIGNAL__GCHECKSUM = 0;
    public static final int SYSTEM_SIGNAL__GTIMESTAMP = 1;
    public static final int SYSTEM_SIGNAL__CHECKSUM = 2;
    public static final int SYSTEM_SIGNAL__TIMESTAMP = 3;
    public static final int SYSTEM_SIGNAL__GSHORT_NAME = 4;
    public static final int SYSTEM_SIGNAL__SHORT_NAME = 5;
    public static final int SYSTEM_SIGNAL__LONG_NAME = 6;
    public static final int SYSTEM_SIGNAL__GUUID = 7;
    public static final int SYSTEM_SIGNAL__GCATEGORY = 8;
    public static final int SYSTEM_SIGNAL__GDESC = 9;
    public static final int SYSTEM_SIGNAL__DESC = 10;
    public static final int SYSTEM_SIGNAL__CATEGORY = 11;
    public static final int SYSTEM_SIGNAL__ADMIN_DATA = 12;
    public static final int SYSTEM_SIGNAL__INTRODUCTION = 13;
    public static final int SYSTEM_SIGNAL__ANNOTATIONS = 14;
    public static final int SYSTEM_SIGNAL__UUID = 15;
    public static final int SYSTEM_SIGNAL__ALL_EXTENSIONS = 16;
    public static final int SYSTEM_SIGNAL__CONTAINED_EXTENSIONS = 17;
    public static final int SYSTEM_SIGNAL__GAR_PACKAGE = 18;
    public static final int SYSTEM_SIGNAL__AR_PACKAGE = 19;
    public static final int SYSTEM_SIGNAL__VARIATION_POINT = 20;
    public static final int SYSTEM_SIGNAL__DYNAMIC_LENGTH = 21;
    public static final int SYSTEM_SIGNAL_FEATURE_COUNT = 22;
    public static final int SYSTEM_SIGNAL_GROUP = 11;
    public static final int SYSTEM_SIGNAL_GROUP__GCHECKSUM = 0;
    public static final int SYSTEM_SIGNAL_GROUP__GTIMESTAMP = 1;
    public static final int SYSTEM_SIGNAL_GROUP__CHECKSUM = 2;
    public static final int SYSTEM_SIGNAL_GROUP__TIMESTAMP = 3;
    public static final int SYSTEM_SIGNAL_GROUP__GSHORT_NAME = 4;
    public static final int SYSTEM_SIGNAL_GROUP__SHORT_NAME = 5;
    public static final int SYSTEM_SIGNAL_GROUP__LONG_NAME = 6;
    public static final int SYSTEM_SIGNAL_GROUP__GUUID = 7;
    public static final int SYSTEM_SIGNAL_GROUP__GCATEGORY = 8;
    public static final int SYSTEM_SIGNAL_GROUP__GDESC = 9;
    public static final int SYSTEM_SIGNAL_GROUP__DESC = 10;
    public static final int SYSTEM_SIGNAL_GROUP__CATEGORY = 11;
    public static final int SYSTEM_SIGNAL_GROUP__ADMIN_DATA = 12;
    public static final int SYSTEM_SIGNAL_GROUP__INTRODUCTION = 13;
    public static final int SYSTEM_SIGNAL_GROUP__ANNOTATIONS = 14;
    public static final int SYSTEM_SIGNAL_GROUP__UUID = 15;
    public static final int SYSTEM_SIGNAL_GROUP__ALL_EXTENSIONS = 16;
    public static final int SYSTEM_SIGNAL_GROUP__CONTAINED_EXTENSIONS = 17;
    public static final int SYSTEM_SIGNAL_GROUP__GAR_PACKAGE = 18;
    public static final int SYSTEM_SIGNAL_GROUP__AR_PACKAGE = 19;
    public static final int SYSTEM_SIGNAL_GROUP__VARIATION_POINT = 20;
    public static final int SYSTEM_SIGNAL_GROUP__SYSTEM_SIGNALS = 21;
    public static final int SYSTEM_SIGNAL_GROUP_FEATURE_COUNT = 22;
    public static final int ISIGNAL_PROPS = 12;
    public static final int ISIGNAL_PROPS__GCHECKSUM = 0;
    public static final int ISIGNAL_PROPS__GTIMESTAMP = 1;
    public static final int ISIGNAL_PROPS__CHECKSUM = 2;
    public static final int ISIGNAL_PROPS__TIMESTAMP = 3;
    public static final int ISIGNAL_PROPS__ISIGNAL = 4;
    public static final int ISIGNAL_PROPS__HANDLE_OUT_OF_RANGE = 5;
    public static final int ISIGNAL_PROPS_FEATURE_COUNT = 6;
    public static final int ISIGNAL_GROUP = 13;
    public static final int ISIGNAL_GROUP__GCHECKSUM = 0;
    public static final int ISIGNAL_GROUP__GTIMESTAMP = 1;
    public static final int ISIGNAL_GROUP__CHECKSUM = 2;
    public static final int ISIGNAL_GROUP__TIMESTAMP = 3;
    public static final int ISIGNAL_GROUP__GSHORT_NAME = 4;
    public static final int ISIGNAL_GROUP__SHORT_NAME = 5;
    public static final int ISIGNAL_GROUP__LONG_NAME = 6;
    public static final int ISIGNAL_GROUP__GUUID = 7;
    public static final int ISIGNAL_GROUP__GCATEGORY = 8;
    public static final int ISIGNAL_GROUP__GDESC = 9;
    public static final int ISIGNAL_GROUP__DESC = 10;
    public static final int ISIGNAL_GROUP__CATEGORY = 11;
    public static final int ISIGNAL_GROUP__ADMIN_DATA = 12;
    public static final int ISIGNAL_GROUP__INTRODUCTION = 13;
    public static final int ISIGNAL_GROUP__ANNOTATIONS = 14;
    public static final int ISIGNAL_GROUP__UUID = 15;
    public static final int ISIGNAL_GROUP__ALL_EXTENSIONS = 16;
    public static final int ISIGNAL_GROUP__CONTAINED_EXTENSIONS = 17;
    public static final int ISIGNAL_GROUP__GAR_PACKAGE = 18;
    public static final int ISIGNAL_GROUP__AR_PACKAGE = 19;
    public static final int ISIGNAL_GROUP__VARIATION_POINT = 20;
    public static final int ISIGNAL_GROUP__ISIGNALS = 21;
    public static final int ISIGNAL_GROUP__SYSTEM_SIGNAL_GROUP = 22;
    public static final int ISIGNAL_GROUP_FEATURE_COUNT = 23;
    public static final int IPDU_TIMING = 14;
    public static final int IPDU_TIMING__GCHECKSUM = 0;
    public static final int IPDU_TIMING__GTIMESTAMP = 1;
    public static final int IPDU_TIMING__CHECKSUM = 2;
    public static final int IPDU_TIMING__TIMESTAMP = 3;
    public static final int IPDU_TIMING__ISIGNAL_IPDU = 4;
    public static final int IPDU_TIMING__MINIMUM_DELAY = 5;
    public static final int IPDU_TIMING__TRANSMISSION_MODE_DECLARATION = 6;
    public static final int IPDU_TIMING__VARIATION_POINT = 7;
    public static final int IPDU_TIMING_FEATURE_COUNT = 8;
    public static final int SIGNAL_IPDU_REPLICATION = 15;
    public static final int SIGNAL_IPDU_REPLICATION__GCHECKSUM = 0;
    public static final int SIGNAL_IPDU_REPLICATION__GTIMESTAMP = 1;
    public static final int SIGNAL_IPDU_REPLICATION__CHECKSUM = 2;
    public static final int SIGNAL_IPDU_REPLICATION__TIMESTAMP = 3;
    public static final int SIGNAL_IPDU_REPLICATION__ISIGNAL_IPDU = 4;
    public static final int SIGNAL_IPDU_REPLICATION__PDU_REPLICATION_VOTING = 5;
    public static final int SIGNAL_IPDU_REPLICATION__REPLICA_PDUS = 6;
    public static final int SIGNAL_IPDU_REPLICATION__VARIATION_POINT = 7;
    public static final int SIGNAL_IPDU_REPLICATION_FEATURE_COUNT = 8;
    public static final int SIGNAL_IPDU_COUNTER = 16;
    public static final int SIGNAL_IPDU_COUNTER__GCHECKSUM = 0;
    public static final int SIGNAL_IPDU_COUNTER__GTIMESTAMP = 1;
    public static final int SIGNAL_IPDU_COUNTER__CHECKSUM = 2;
    public static final int SIGNAL_IPDU_COUNTER__TIMESTAMP = 3;
    public static final int SIGNAL_IPDU_COUNTER__ISIGNAL_IPDU = 4;
    public static final int SIGNAL_IPDU_COUNTER__PDU_COUNTER_SIZE = 5;
    public static final int SIGNAL_IPDU_COUNTER__PDU_COUNTER_START_POSITION = 6;
    public static final int SIGNAL_IPDU_COUNTER__PDU_COUNTER_THRESHOLD = 7;
    public static final int SIGNAL_IPDU_COUNTER__VARIATION_POINT = 8;
    public static final int SIGNAL_IPDU_COUNTER_FEATURE_COUNT = 9;
    public static final int FRAME_PORT = 17;
    public static final int FRAME_PORT__GCHECKSUM = 0;
    public static final int FRAME_PORT__GTIMESTAMP = 1;
    public static final int FRAME_PORT__CHECKSUM = 2;
    public static final int FRAME_PORT__TIMESTAMP = 3;
    public static final int FRAME_PORT__GSHORT_NAME = 4;
    public static final int FRAME_PORT__SHORT_NAME = 5;
    public static final int FRAME_PORT__LONG_NAME = 6;
    public static final int FRAME_PORT__GUUID = 7;
    public static final int FRAME_PORT__GCATEGORY = 8;
    public static final int FRAME_PORT__GDESC = 9;
    public static final int FRAME_PORT__DESC = 10;
    public static final int FRAME_PORT__CATEGORY = 11;
    public static final int FRAME_PORT__ADMIN_DATA = 12;
    public static final int FRAME_PORT__INTRODUCTION = 13;
    public static final int FRAME_PORT__ANNOTATIONS = 14;
    public static final int FRAME_PORT__UUID = 15;
    public static final int FRAME_PORT__ALL_EXTENSIONS = 16;
    public static final int FRAME_PORT__CONTAINED_EXTENSIONS = 17;
    public static final int FRAME_PORT__COMMUNICATION_CONNECTOR = 18;
    public static final int FRAME_PORT__COMMUNICATION_DIRECTION = 19;
    public static final int FRAME_PORT__VARIATION_POINT = 20;
    public static final int FRAME_PORT_FEATURE_COUNT = 21;
    public static final int FRAME_TRIGGERING = 18;
    public static final int FRAME_TRIGGERING__GCHECKSUM = 0;
    public static final int FRAME_TRIGGERING__GTIMESTAMP = 1;
    public static final int FRAME_TRIGGERING__CHECKSUM = 2;
    public static final int FRAME_TRIGGERING__TIMESTAMP = 3;
    public static final int FRAME_TRIGGERING__GSHORT_NAME = 4;
    public static final int FRAME_TRIGGERING__SHORT_NAME = 5;
    public static final int FRAME_TRIGGERING__LONG_NAME = 6;
    public static final int FRAME_TRIGGERING__GUUID = 7;
    public static final int FRAME_TRIGGERING__GCATEGORY = 8;
    public static final int FRAME_TRIGGERING__GDESC = 9;
    public static final int FRAME_TRIGGERING__DESC = 10;
    public static final int FRAME_TRIGGERING__CATEGORY = 11;
    public static final int FRAME_TRIGGERING__ADMIN_DATA = 12;
    public static final int FRAME_TRIGGERING__INTRODUCTION = 13;
    public static final int FRAME_TRIGGERING__ANNOTATIONS = 14;
    public static final int FRAME_TRIGGERING__UUID = 15;
    public static final int FRAME_TRIGGERING__ALL_EXTENSIONS = 16;
    public static final int FRAME_TRIGGERING__CONTAINED_EXTENSIONS = 17;
    public static final int FRAME_TRIGGERING__PHYSICAL_CHANNEL = 18;
    public static final int FRAME_TRIGGERING__FRAME_PORTS = 19;
    public static final int FRAME_TRIGGERING__FRAME = 20;
    public static final int FRAME_TRIGGERING__PDU_TRIGGERINGS = 21;
    public static final int FRAME_TRIGGERING__VARIATION_POINT = 22;
    public static final int FRAME_TRIGGERING_FEATURE_COUNT = 23;
    public static final int PDU_TRIGGERING_REF_CONDITIONAL = 19;
    public static final int PDU_TRIGGERING_REF_CONDITIONAL__GCHECKSUM = 0;
    public static final int PDU_TRIGGERING_REF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int PDU_TRIGGERING_REF_CONDITIONAL__CHECKSUM = 2;
    public static final int PDU_TRIGGERING_REF_CONDITIONAL__TIMESTAMP = 3;
    public static final int PDU_TRIGGERING_REF_CONDITIONAL__PDU_TRIGGERING = 4;
    public static final int PDU_TRIGGERING_REF_CONDITIONAL__VARIATION_POINT = 5;
    public static final int PDU_TRIGGERING_REF_CONDITIONAL_FEATURE_COUNT = 6;
    public static final int PDU_TRIGGERING = 20;
    public static final int PDU_TRIGGERING__GCHECKSUM = 0;
    public static final int PDU_TRIGGERING__GTIMESTAMP = 1;
    public static final int PDU_TRIGGERING__CHECKSUM = 2;
    public static final int PDU_TRIGGERING__TIMESTAMP = 3;
    public static final int PDU_TRIGGERING__GSHORT_NAME = 4;
    public static final int PDU_TRIGGERING__SHORT_NAME = 5;
    public static final int PDU_TRIGGERING__LONG_NAME = 6;
    public static final int PDU_TRIGGERING__GUUID = 7;
    public static final int PDU_TRIGGERING__GCATEGORY = 8;
    public static final int PDU_TRIGGERING__GDESC = 9;
    public static final int PDU_TRIGGERING__DESC = 10;
    public static final int PDU_TRIGGERING__CATEGORY = 11;
    public static final int PDU_TRIGGERING__ADMIN_DATA = 12;
    public static final int PDU_TRIGGERING__INTRODUCTION = 13;
    public static final int PDU_TRIGGERING__ANNOTATIONS = 14;
    public static final int PDU_TRIGGERING__UUID = 15;
    public static final int PDU_TRIGGERING__ALL_EXTENSIONS = 16;
    public static final int PDU_TRIGGERING__CONTAINED_EXTENSIONS = 17;
    public static final int PDU_TRIGGERING__PHYSICAL_CHANNEL = 18;
    public static final int PDU_TRIGGERING__IPDU_PORTS = 19;
    public static final int PDU_TRIGGERING__IPDU = 20;
    public static final int PDU_TRIGGERING__ISIGNAL_TRIGGERINGS = 21;
    public static final int PDU_TRIGGERING__VARIATION_POINT = 22;
    public static final int PDU_TRIGGERING_FEATURE_COUNT = 23;
    public static final int IPDU_PORT = 21;
    public static final int IPDU_PORT__GCHECKSUM = 0;
    public static final int IPDU_PORT__GTIMESTAMP = 1;
    public static final int IPDU_PORT__CHECKSUM = 2;
    public static final int IPDU_PORT__TIMESTAMP = 3;
    public static final int IPDU_PORT__GSHORT_NAME = 4;
    public static final int IPDU_PORT__SHORT_NAME = 5;
    public static final int IPDU_PORT__LONG_NAME = 6;
    public static final int IPDU_PORT__GUUID = 7;
    public static final int IPDU_PORT__GCATEGORY = 8;
    public static final int IPDU_PORT__GDESC = 9;
    public static final int IPDU_PORT__DESC = 10;
    public static final int IPDU_PORT__CATEGORY = 11;
    public static final int IPDU_PORT__ADMIN_DATA = 12;
    public static final int IPDU_PORT__INTRODUCTION = 13;
    public static final int IPDU_PORT__ANNOTATIONS = 14;
    public static final int IPDU_PORT__UUID = 15;
    public static final int IPDU_PORT__ALL_EXTENSIONS = 16;
    public static final int IPDU_PORT__CONTAINED_EXTENSIONS = 17;
    public static final int IPDU_PORT__COMMUNICATION_CONNECTOR = 18;
    public static final int IPDU_PORT__COMMUNICATION_DIRECTION = 19;
    public static final int IPDU_PORT__VARIATION_POINT = 20;
    public static final int IPDU_PORT_FEATURE_COUNT = 21;
    public static final int ISIGNAL_TRIGGERING_REF_CONDITIONAL = 22;
    public static final int ISIGNAL_TRIGGERING_REF_CONDITIONAL__GCHECKSUM = 0;
    public static final int ISIGNAL_TRIGGERING_REF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int ISIGNAL_TRIGGERING_REF_CONDITIONAL__CHECKSUM = 2;
    public static final int ISIGNAL_TRIGGERING_REF_CONDITIONAL__TIMESTAMP = 3;
    public static final int ISIGNAL_TRIGGERING_REF_CONDITIONAL__PDU_TRIGGERING = 4;
    public static final int ISIGNAL_TRIGGERING_REF_CONDITIONAL__ISIGNAL_TRIGGERING = 5;
    public static final int ISIGNAL_TRIGGERING_REF_CONDITIONAL__VARIATION_POINT = 6;
    public static final int ISIGNAL_TRIGGERING_REF_CONDITIONAL_FEATURE_COUNT = 7;
    public static final int ISIGNAL_TRIGGERING = 23;
    public static final int ISIGNAL_TRIGGERING__GCHECKSUM = 0;
    public static final int ISIGNAL_TRIGGERING__GTIMESTAMP = 1;
    public static final int ISIGNAL_TRIGGERING__CHECKSUM = 2;
    public static final int ISIGNAL_TRIGGERING__TIMESTAMP = 3;
    public static final int ISIGNAL_TRIGGERING__GSHORT_NAME = 4;
    public static final int ISIGNAL_TRIGGERING__SHORT_NAME = 5;
    public static final int ISIGNAL_TRIGGERING__LONG_NAME = 6;
    public static final int ISIGNAL_TRIGGERING__GUUID = 7;
    public static final int ISIGNAL_TRIGGERING__GCATEGORY = 8;
    public static final int ISIGNAL_TRIGGERING__GDESC = 9;
    public static final int ISIGNAL_TRIGGERING__DESC = 10;
    public static final int ISIGNAL_TRIGGERING__CATEGORY = 11;
    public static final int ISIGNAL_TRIGGERING__ADMIN_DATA = 12;
    public static final int ISIGNAL_TRIGGERING__INTRODUCTION = 13;
    public static final int ISIGNAL_TRIGGERING__ANNOTATIONS = 14;
    public static final int ISIGNAL_TRIGGERING__UUID = 15;
    public static final int ISIGNAL_TRIGGERING__ALL_EXTENSIONS = 16;
    public static final int ISIGNAL_TRIGGERING__CONTAINED_EXTENSIONS = 17;
    public static final int ISIGNAL_TRIGGERING__PHYSICAL_CHANNEL = 18;
    public static final int ISIGNAL_TRIGGERING__ISIGNAL_GROUP = 19;
    public static final int ISIGNAL_TRIGGERING__ISIGNAL_PORTS = 20;
    public static final int ISIGNAL_TRIGGERING__ISIGNAL = 21;
    public static final int ISIGNAL_TRIGGERING__VARIATION_POINT = 22;
    public static final int ISIGNAL_TRIGGERING_FEATURE_COUNT = 23;
    public static final int ISIGNAL_PORT = 24;
    public static final int ISIGNAL_PORT__GCHECKSUM = 0;
    public static final int ISIGNAL_PORT__GTIMESTAMP = 1;
    public static final int ISIGNAL_PORT__CHECKSUM = 2;
    public static final int ISIGNAL_PORT__TIMESTAMP = 3;
    public static final int ISIGNAL_PORT__GSHORT_NAME = 4;
    public static final int ISIGNAL_PORT__SHORT_NAME = 5;
    public static final int ISIGNAL_PORT__LONG_NAME = 6;
    public static final int ISIGNAL_PORT__GUUID = 7;
    public static final int ISIGNAL_PORT__GCATEGORY = 8;
    public static final int ISIGNAL_PORT__GDESC = 9;
    public static final int ISIGNAL_PORT__DESC = 10;
    public static final int ISIGNAL_PORT__CATEGORY = 11;
    public static final int ISIGNAL_PORT__ADMIN_DATA = 12;
    public static final int ISIGNAL_PORT__INTRODUCTION = 13;
    public static final int ISIGNAL_PORT__ANNOTATIONS = 14;
    public static final int ISIGNAL_PORT__UUID = 15;
    public static final int ISIGNAL_PORT__ALL_EXTENSIONS = 16;
    public static final int ISIGNAL_PORT__CONTAINED_EXTENSIONS = 17;
    public static final int ISIGNAL_PORT__COMMUNICATION_CONNECTOR = 18;
    public static final int ISIGNAL_PORT__COMMUNICATION_DIRECTION = 19;
    public static final int ISIGNAL_PORT__VARIATION_POINT = 20;
    public static final int ISIGNAL_PORT__DATA_FILTER = 21;
    public static final int ISIGNAL_PORT__TIMEOUT = 22;
    public static final int ISIGNAL_PORT_FEATURE_COUNT = 23;
    public static final int ISIGNAL_IPDU_GROUP = 25;
    public static final int ISIGNAL_IPDU_GROUP__GCHECKSUM = 0;
    public static final int ISIGNAL_IPDU_GROUP__GTIMESTAMP = 1;
    public static final int ISIGNAL_IPDU_GROUP__CHECKSUM = 2;
    public static final int ISIGNAL_IPDU_GROUP__TIMESTAMP = 3;
    public static final int ISIGNAL_IPDU_GROUP__GSHORT_NAME = 4;
    public static final int ISIGNAL_IPDU_GROUP__SHORT_NAME = 5;
    public static final int ISIGNAL_IPDU_GROUP__LONG_NAME = 6;
    public static final int ISIGNAL_IPDU_GROUP__GUUID = 7;
    public static final int ISIGNAL_IPDU_GROUP__GCATEGORY = 8;
    public static final int ISIGNAL_IPDU_GROUP__GDESC = 9;
    public static final int ISIGNAL_IPDU_GROUP__DESC = 10;
    public static final int ISIGNAL_IPDU_GROUP__CATEGORY = 11;
    public static final int ISIGNAL_IPDU_GROUP__ADMIN_DATA = 12;
    public static final int ISIGNAL_IPDU_GROUP__INTRODUCTION = 13;
    public static final int ISIGNAL_IPDU_GROUP__ANNOTATIONS = 14;
    public static final int ISIGNAL_IPDU_GROUP__UUID = 15;
    public static final int ISIGNAL_IPDU_GROUP__ALL_EXTENSIONS = 16;
    public static final int ISIGNAL_IPDU_GROUP__CONTAINED_EXTENSIONS = 17;
    public static final int ISIGNAL_IPDU_GROUP__GAR_PACKAGE = 18;
    public static final int ISIGNAL_IPDU_GROUP__AR_PACKAGE = 19;
    public static final int ISIGNAL_IPDU_GROUP__VARIATION_POINT = 20;
    public static final int ISIGNAL_IPDU_GROUP__COMMUNICATION_DIRECTION = 21;
    public static final int ISIGNAL_IPDU_GROUP__COMMUNICATION_MODE = 22;
    public static final int ISIGNAL_IPDU_GROUP__CONTAINED_ISIGNAL_IPDU_GROUPS = 23;
    public static final int ISIGNAL_IPDU_GROUP__ISIGNAL_IPDUS = 24;
    public static final int ISIGNAL_IPDU_GROUP_FEATURE_COUNT = 25;
    public static final int ISIGNAL_IPDU_REF_CONDITIONAL = 26;
    public static final int ISIGNAL_IPDU_REF_CONDITIONAL__GCHECKSUM = 0;
    public static final int ISIGNAL_IPDU_REF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int ISIGNAL_IPDU_REF_CONDITIONAL__CHECKSUM = 2;
    public static final int ISIGNAL_IPDU_REF_CONDITIONAL__TIMESTAMP = 3;
    public static final int ISIGNAL_IPDU_REF_CONDITIONAL__ISIGNAL_IPDU_GROUP = 4;
    public static final int ISIGNAL_IPDU_REF_CONDITIONAL__ISIGNAL_IPDU = 5;
    public static final int ISIGNAL_IPDU_REF_CONDITIONAL__VARIATION_POINT = 6;
    public static final int ISIGNAL_IPDU_REF_CONDITIONAL_FEATURE_COUNT = 7;
    public static final int MULTIPLEXED_IPDU = 27;
    public static final int MULTIPLEXED_IPDU__GCHECKSUM = 0;
    public static final int MULTIPLEXED_IPDU__GTIMESTAMP = 1;
    public static final int MULTIPLEXED_IPDU__CHECKSUM = 2;
    public static final int MULTIPLEXED_IPDU__TIMESTAMP = 3;
    public static final int MULTIPLEXED_IPDU__GSHORT_NAME = 4;
    public static final int MULTIPLEXED_IPDU__SHORT_NAME = 5;
    public static final int MULTIPLEXED_IPDU__LONG_NAME = 6;
    public static final int MULTIPLEXED_IPDU__GUUID = 7;
    public static final int MULTIPLEXED_IPDU__GCATEGORY = 8;
    public static final int MULTIPLEXED_IPDU__GDESC = 9;
    public static final int MULTIPLEXED_IPDU__DESC = 10;
    public static final int MULTIPLEXED_IPDU__CATEGORY = 11;
    public static final int MULTIPLEXED_IPDU__ADMIN_DATA = 12;
    public static final int MULTIPLEXED_IPDU__INTRODUCTION = 13;
    public static final int MULTIPLEXED_IPDU__ANNOTATIONS = 14;
    public static final int MULTIPLEXED_IPDU__UUID = 15;
    public static final int MULTIPLEXED_IPDU__ALL_EXTENSIONS = 16;
    public static final int MULTIPLEXED_IPDU__CONTAINED_EXTENSIONS = 17;
    public static final int MULTIPLEXED_IPDU__GAR_PACKAGE = 18;
    public static final int MULTIPLEXED_IPDU__AR_PACKAGE = 19;
    public static final int MULTIPLEXED_IPDU__VARIATION_POINT = 20;
    public static final int MULTIPLEXED_IPDU__LENGTH = 21;
    public static final int MULTIPLEXED_IPDU__DYNAMIC_PARTS = 22;
    public static final int MULTIPLEXED_IPDU__SELECTOR_FIELD_BYTE_ORDER = 23;
    public static final int MULTIPLEXED_IPDU__SELECTOR_FIELD_LENGTH = 24;
    public static final int MULTIPLEXED_IPDU__SELECTOR_FIELD_START_POSITION = 25;
    public static final int MULTIPLEXED_IPDU__STATIC_PARTS = 26;
    public static final int MULTIPLEXED_IPDU__TRIGGER_MODE = 27;
    public static final int MULTIPLEXED_IPDU__UNUSED_BIT_PATTERN = 28;
    public static final int MULTIPLEXED_IPDU_FEATURE_COUNT = 29;
    public static final int STATIC_PART = 28;
    public static final int STATIC_PART__GCHECKSUM = 0;
    public static final int STATIC_PART__GTIMESTAMP = 1;
    public static final int STATIC_PART__CHECKSUM = 2;
    public static final int STATIC_PART__TIMESTAMP = 3;
    public static final int STATIC_PART__SEGMENT_POSITIONS = 4;
    public static final int STATIC_PART__MULTIPLEXED_IPDU = 5;
    public static final int STATIC_PART__IPDU = 6;
    public static final int STATIC_PART__VARIATION_POINT = 7;
    public static final int STATIC_PART_FEATURE_COUNT = 8;
    public static final int NM_PDU = 29;
    public static final int NM_PDU__GCHECKSUM = 0;
    public static final int NM_PDU__GTIMESTAMP = 1;
    public static final int NM_PDU__CHECKSUM = 2;
    public static final int NM_PDU__TIMESTAMP = 3;
    public static final int NM_PDU__GSHORT_NAME = 4;
    public static final int NM_PDU__SHORT_NAME = 5;
    public static final int NM_PDU__LONG_NAME = 6;
    public static final int NM_PDU__GUUID = 7;
    public static final int NM_PDU__GCATEGORY = 8;
    public static final int NM_PDU__GDESC = 9;
    public static final int NM_PDU__DESC = 10;
    public static final int NM_PDU__CATEGORY = 11;
    public static final int NM_PDU__ADMIN_DATA = 12;
    public static final int NM_PDU__INTRODUCTION = 13;
    public static final int NM_PDU__ANNOTATIONS = 14;
    public static final int NM_PDU__UUID = 15;
    public static final int NM_PDU__ALL_EXTENSIONS = 16;
    public static final int NM_PDU__CONTAINED_EXTENSIONS = 17;
    public static final int NM_PDU__GAR_PACKAGE = 18;
    public static final int NM_PDU__AR_PACKAGE = 19;
    public static final int NM_PDU__VARIATION_POINT = 20;
    public static final int NM_PDU__LENGTH = 21;
    public static final int NM_PDU__ISIGNAL_TO_IPDU_MAPPINGS = 22;
    public static final int NM_PDU__NM_DATA_INFORMATION = 23;
    public static final int NM_PDU__NM_VOTE_INFORMATION = 24;
    public static final int NM_PDU__UNUSED_BIT_PATTERN = 25;
    public static final int NM_PDU_FEATURE_COUNT = 26;
    public static final int NPDU = 30;
    public static final int NPDU__GCHECKSUM = 0;
    public static final int NPDU__GTIMESTAMP = 1;
    public static final int NPDU__CHECKSUM = 2;
    public static final int NPDU__TIMESTAMP = 3;
    public static final int NPDU__GSHORT_NAME = 4;
    public static final int NPDU__SHORT_NAME = 5;
    public static final int NPDU__LONG_NAME = 6;
    public static final int NPDU__GUUID = 7;
    public static final int NPDU__GCATEGORY = 8;
    public static final int NPDU__GDESC = 9;
    public static final int NPDU__DESC = 10;
    public static final int NPDU__CATEGORY = 11;
    public static final int NPDU__ADMIN_DATA = 12;
    public static final int NPDU__INTRODUCTION = 13;
    public static final int NPDU__ANNOTATIONS = 14;
    public static final int NPDU__UUID = 15;
    public static final int NPDU__ALL_EXTENSIONS = 16;
    public static final int NPDU__CONTAINED_EXTENSIONS = 17;
    public static final int NPDU__GAR_PACKAGE = 18;
    public static final int NPDU__AR_PACKAGE = 19;
    public static final int NPDU__VARIATION_POINT = 20;
    public static final int NPDU__LENGTH = 21;
    public static final int NPDU__FLEXRAY_AR_TP_CHANNEL = 22;
    public static final int NPDU_FEATURE_COUNT = 23;
    public static final int PDUR_IPDU_GROUP = 31;
    public static final int PDUR_IPDU_GROUP__GCHECKSUM = 0;
    public static final int PDUR_IPDU_GROUP__GTIMESTAMP = 1;
    public static final int PDUR_IPDU_GROUP__CHECKSUM = 2;
    public static final int PDUR_IPDU_GROUP__TIMESTAMP = 3;
    public static final int PDUR_IPDU_GROUP__GSHORT_NAME = 4;
    public static final int PDUR_IPDU_GROUP__SHORT_NAME = 5;
    public static final int PDUR_IPDU_GROUP__LONG_NAME = 6;
    public static final int PDUR_IPDU_GROUP__GUUID = 7;
    public static final int PDUR_IPDU_GROUP__GCATEGORY = 8;
    public static final int PDUR_IPDU_GROUP__GDESC = 9;
    public static final int PDUR_IPDU_GROUP__DESC = 10;
    public static final int PDUR_IPDU_GROUP__CATEGORY = 11;
    public static final int PDUR_IPDU_GROUP__ADMIN_DATA = 12;
    public static final int PDUR_IPDU_GROUP__INTRODUCTION = 13;
    public static final int PDUR_IPDU_GROUP__ANNOTATIONS = 14;
    public static final int PDUR_IPDU_GROUP__UUID = 15;
    public static final int PDUR_IPDU_GROUP__ALL_EXTENSIONS = 16;
    public static final int PDUR_IPDU_GROUP__CONTAINED_EXTENSIONS = 17;
    public static final int PDUR_IPDU_GROUP__GAR_PACKAGE = 18;
    public static final int PDUR_IPDU_GROUP__AR_PACKAGE = 19;
    public static final int PDUR_IPDU_GROUP__VARIATION_POINT = 20;
    public static final int PDUR_IPDU_GROUP__COMMUNICATION_MODE = 21;
    public static final int PDUR_IPDU_GROUP__IPDUS = 22;
    public static final int PDUR_IPDU_GROUP_FEATURE_COUNT = 23;
    public static final int PDU_TO_FRAME_MAPPING = 32;
    public static final int PDU_TO_FRAME_MAPPING__GCHECKSUM = 0;
    public static final int PDU_TO_FRAME_MAPPING__GTIMESTAMP = 1;
    public static final int PDU_TO_FRAME_MAPPING__CHECKSUM = 2;
    public static final int PDU_TO_FRAME_MAPPING__TIMESTAMP = 3;
    public static final int PDU_TO_FRAME_MAPPING__GSHORT_NAME = 4;
    public static final int PDU_TO_FRAME_MAPPING__SHORT_NAME = 5;
    public static final int PDU_TO_FRAME_MAPPING__LONG_NAME = 6;
    public static final int PDU_TO_FRAME_MAPPING__GUUID = 7;
    public static final int PDU_TO_FRAME_MAPPING__GCATEGORY = 8;
    public static final int PDU_TO_FRAME_MAPPING__GDESC = 9;
    public static final int PDU_TO_FRAME_MAPPING__DESC = 10;
    public static final int PDU_TO_FRAME_MAPPING__CATEGORY = 11;
    public static final int PDU_TO_FRAME_MAPPING__ADMIN_DATA = 12;
    public static final int PDU_TO_FRAME_MAPPING__INTRODUCTION = 13;
    public static final int PDU_TO_FRAME_MAPPING__ANNOTATIONS = 14;
    public static final int PDU_TO_FRAME_MAPPING__UUID = 15;
    public static final int PDU_TO_FRAME_MAPPING__ALL_EXTENSIONS = 16;
    public static final int PDU_TO_FRAME_MAPPING__CONTAINED_EXTENSIONS = 17;
    public static final int PDU_TO_FRAME_MAPPING__FRAME = 18;
    public static final int PDU_TO_FRAME_MAPPING__PACKING_BYTE_ORDER = 19;
    public static final int PDU_TO_FRAME_MAPPING__PDU = 20;
    public static final int PDU_TO_FRAME_MAPPING__START_POSITION = 21;
    public static final int PDU_TO_FRAME_MAPPING__UPDATE_INDICATION_BIT_POSITION = 22;
    public static final int PDU_TO_FRAME_MAPPING__VARIATION_POINT = 23;
    public static final int PDU_TO_FRAME_MAPPING_FEATURE_COUNT = 24;
    public static final int USER_DEFINED_IPDU = 33;
    public static final int USER_DEFINED_IPDU__GCHECKSUM = 0;
    public static final int USER_DEFINED_IPDU__GTIMESTAMP = 1;
    public static final int USER_DEFINED_IPDU__CHECKSUM = 2;
    public static final int USER_DEFINED_IPDU__TIMESTAMP = 3;
    public static final int USER_DEFINED_IPDU__GSHORT_NAME = 4;
    public static final int USER_DEFINED_IPDU__SHORT_NAME = 5;
    public static final int USER_DEFINED_IPDU__LONG_NAME = 6;
    public static final int USER_DEFINED_IPDU__GUUID = 7;
    public static final int USER_DEFINED_IPDU__GCATEGORY = 8;
    public static final int USER_DEFINED_IPDU__GDESC = 9;
    public static final int USER_DEFINED_IPDU__DESC = 10;
    public static final int USER_DEFINED_IPDU__CATEGORY = 11;
    public static final int USER_DEFINED_IPDU__ADMIN_DATA = 12;
    public static final int USER_DEFINED_IPDU__INTRODUCTION = 13;
    public static final int USER_DEFINED_IPDU__ANNOTATIONS = 14;
    public static final int USER_DEFINED_IPDU__UUID = 15;
    public static final int USER_DEFINED_IPDU__ALL_EXTENSIONS = 16;
    public static final int USER_DEFINED_IPDU__CONTAINED_EXTENSIONS = 17;
    public static final int USER_DEFINED_IPDU__GAR_PACKAGE = 18;
    public static final int USER_DEFINED_IPDU__AR_PACKAGE = 19;
    public static final int USER_DEFINED_IPDU__VARIATION_POINT = 20;
    public static final int USER_DEFINED_IPDU__LENGTH = 21;
    public static final int USER_DEFINED_IPDU__CDD_TYPE = 22;
    public static final int USER_DEFINED_IPDU_FEATURE_COUNT = 23;
    public static final int USER_DEFINED_PDU = 34;
    public static final int USER_DEFINED_PDU__GCHECKSUM = 0;
    public static final int USER_DEFINED_PDU__GTIMESTAMP = 1;
    public static final int USER_DEFINED_PDU__CHECKSUM = 2;
    public static final int USER_DEFINED_PDU__TIMESTAMP = 3;
    public static final int USER_DEFINED_PDU__GSHORT_NAME = 4;
    public static final int USER_DEFINED_PDU__SHORT_NAME = 5;
    public static final int USER_DEFINED_PDU__LONG_NAME = 6;
    public static final int USER_DEFINED_PDU__GUUID = 7;
    public static final int USER_DEFINED_PDU__GCATEGORY = 8;
    public static final int USER_DEFINED_PDU__GDESC = 9;
    public static final int USER_DEFINED_PDU__DESC = 10;
    public static final int USER_DEFINED_PDU__CATEGORY = 11;
    public static final int USER_DEFINED_PDU__ADMIN_DATA = 12;
    public static final int USER_DEFINED_PDU__INTRODUCTION = 13;
    public static final int USER_DEFINED_PDU__ANNOTATIONS = 14;
    public static final int USER_DEFINED_PDU__UUID = 15;
    public static final int USER_DEFINED_PDU__ALL_EXTENSIONS = 16;
    public static final int USER_DEFINED_PDU__CONTAINED_EXTENSIONS = 17;
    public static final int USER_DEFINED_PDU__GAR_PACKAGE = 18;
    public static final int USER_DEFINED_PDU__AR_PACKAGE = 19;
    public static final int USER_DEFINED_PDU__VARIATION_POINT = 20;
    public static final int USER_DEFINED_PDU__LENGTH = 21;
    public static final int USER_DEFINED_PDU__CDD_TYPE = 22;
    public static final int USER_DEFINED_PDU_FEATURE_COUNT = 23;
    public static final int XCP_PDU = 35;
    public static final int XCP_PDU__GCHECKSUM = 0;
    public static final int XCP_PDU__GTIMESTAMP = 1;
    public static final int XCP_PDU__CHECKSUM = 2;
    public static final int XCP_PDU__TIMESTAMP = 3;
    public static final int XCP_PDU__GSHORT_NAME = 4;
    public static final int XCP_PDU__SHORT_NAME = 5;
    public static final int XCP_PDU__LONG_NAME = 6;
    public static final int XCP_PDU__GUUID = 7;
    public static final int XCP_PDU__GCATEGORY = 8;
    public static final int XCP_PDU__GDESC = 9;
    public static final int XCP_PDU__DESC = 10;
    public static final int XCP_PDU__CATEGORY = 11;
    public static final int XCP_PDU__ADMIN_DATA = 12;
    public static final int XCP_PDU__INTRODUCTION = 13;
    public static final int XCP_PDU__ANNOTATIONS = 14;
    public static final int XCP_PDU__UUID = 15;
    public static final int XCP_PDU__ALL_EXTENSIONS = 16;
    public static final int XCP_PDU__CONTAINED_EXTENSIONS = 17;
    public static final int XCP_PDU__GAR_PACKAGE = 18;
    public static final int XCP_PDU__AR_PACKAGE = 19;
    public static final int XCP_PDU__VARIATION_POINT = 20;
    public static final int XCP_PDU__LENGTH = 21;
    public static final int XCP_PDU_FEATURE_COUNT = 22;
    public static final int FRAME = 36;
    public static final int FRAME__GCHECKSUM = 0;
    public static final int FRAME__GTIMESTAMP = 1;
    public static final int FRAME__CHECKSUM = 2;
    public static final int FRAME__TIMESTAMP = 3;
    public static final int FRAME__GSHORT_NAME = 4;
    public static final int FRAME__SHORT_NAME = 5;
    public static final int FRAME__LONG_NAME = 6;
    public static final int FRAME__GUUID = 7;
    public static final int FRAME__GCATEGORY = 8;
    public static final int FRAME__GDESC = 9;
    public static final int FRAME__DESC = 10;
    public static final int FRAME__CATEGORY = 11;
    public static final int FRAME__ADMIN_DATA = 12;
    public static final int FRAME__INTRODUCTION = 13;
    public static final int FRAME__ANNOTATIONS = 14;
    public static final int FRAME__UUID = 15;
    public static final int FRAME__ALL_EXTENSIONS = 16;
    public static final int FRAME__CONTAINED_EXTENSIONS = 17;
    public static final int FRAME__GAR_PACKAGE = 18;
    public static final int FRAME__AR_PACKAGE = 19;
    public static final int FRAME__VARIATION_POINT = 20;
    public static final int FRAME__FRAME_LENGTH = 21;
    public static final int FRAME__PDU_TO_FRAME_MAPPINGS = 22;
    public static final int FRAME_FEATURE_COUNT = 23;
    public static final int COMMUNICATION_DIRECTION_TYPE = 37;
    public static final int DIAG_PDU_TYPE = 38;
    public static final int TRANSFER_PROPERTY_ENUM = 39;
    public static final int TRIGGER_MODE = 40;

    public EClass getDcmIPdu();

    public EAttribute getDcmIPdu_DiagPduType();

    public EClass getIPdu();

    public EClass getPdu();

    public EAttribute getPdu_Length();

    public EClass getDynamicPart();

    public EReference getDynamicPart_MultiplexedIPdu();

    public EReference getDynamicPart_DynamicPartAlternatives();

    public EReference getDynamicPart_VariationPoint();

    public EClass getMultiplexedPart();

    public EReference getMultiplexedPart_SegmentPositions();

    public EClass getSegmentPosition();

    public EReference getSegmentPosition_MultiplexedPart();

    public EAttribute getSegmentPosition_SegmentByteOrder();

    public EAttribute getSegmentPosition_SegmentLength();

    public EAttribute getSegmentPosition_SegmentPosition();

    public EClass getDynamicPartAlternative();

    public EReference getDynamicPartAlternative_DynamicPart();

    public EReference getDynamicPartAlternative_IPdu();

    public EAttribute getDynamicPartAlternative_InitialDynamicPart();

    public EAttribute getDynamicPartAlternative_SelectorFieldCode();

    public EClass getISignalIPdu();

    public EReference getISignalIPdu_IPduTimingSpecifications();

    public EReference getISignalIPdu_ISignalToPduMappings();

    public EReference getISignalIPdu_PduCounters();

    public EReference getISignalIPdu_PduReplications();

    public EAttribute getISignalIPdu_UnusedBitPattern();

    public EClass getISignalToIPduMapping();

    public EReference getISignalToIPduMapping_ISignalGroup();

    public EReference getISignalToIPduMapping_ISignal();

    public EAttribute getISignalToIPduMapping_PackingByteOrder();

    public EAttribute getISignalToIPduMapping_StartPosition();

    public EAttribute getISignalToIPduMapping_TransferProperty();

    public EAttribute getISignalToIPduMapping_UpdateIndicationBitPosition();

    public EReference getISignalToIPduMapping_VariationPoint();

    public EClass getISignal();

    public EAttribute getISignal_DataTypePolicy();

    public EReference getISignal_ISignalProps();

    public EReference getISignal_InitValue();

    public EAttribute getISignal_Length();

    public EReference getISignal_NetworkRepresentationProps();

    public EReference getISignal_SystemSignal();

    public EClass getSystemSignal();

    public EAttribute getSystemSignal_DynamicLength();

    public EClass getSystemSignalGroup();

    public EReference getSystemSignalGroup_SystemSignals();

    public EClass getISignalProps();

    public EReference getISignalProps_ISignal();

    public EAttribute getISignalProps_HandleOutOfRange();

    public EClass getISignalGroup();

    public EReference getISignalGroup_ISignals();

    public EReference getISignalGroup_SystemSignalGroup();

    public EClass getIPduTiming();

    public EReference getIPduTiming_ISignalIPdu();

    public EAttribute getIPduTiming_MinimumDelay();

    public EReference getIPduTiming_TransmissionModeDeclaration();

    public EReference getIPduTiming_VariationPoint();

    public EClass getSignalIPduReplication();

    public EReference getSignalIPduReplication_ISignalIPdu();

    public EAttribute getSignalIPduReplication_PduReplicationVoting();

    public EReference getSignalIPduReplication_ReplicaPdus();

    public EReference getSignalIPduReplication_VariationPoint();

    public EClass getSignalIPduCounter();

    public EReference getSignalIPduCounter_ISignalIPdu();

    public EAttribute getSignalIPduCounter_PduCounterSize();

    public EAttribute getSignalIPduCounter_PduCounterStartPosition();

    public EAttribute getSignalIPduCounter_PduCounterThreshold();

    public EReference getSignalIPduCounter_VariationPoint();

    public EClass getFramePort();

    public EClass getFrameTriggering();

    public EReference getFrameTriggering_PhysicalChannel();

    public EReference getFrameTriggering_FramePorts();

    public EReference getFrameTriggering_Frame();

    public EReference getFrameTriggering_PduTriggerings();

    public EReference getFrameTriggering_VariationPoint();

    public EClass getPduTriggeringRefConditional();

    public EReference getPduTriggeringRefConditional_PduTriggering();

    public EReference getPduTriggeringRefConditional_VariationPoint();

    public EClass getPduTriggering();

    public EReference getPduTriggering_PhysicalChannel();

    public EReference getPduTriggering_IPduPorts();

    public EReference getPduTriggering_IPdu();

    public EReference getPduTriggering_ISignalTriggerings();

    public EReference getPduTriggering_VariationPoint();

    public EClass getIPduPort();

    public EClass getISignalTriggeringRefConditional();

    public EReference getISignalTriggeringRefConditional_PduTriggering();

    public EReference getISignalTriggeringRefConditional_ISignalTriggering();

    public EReference getISignalTriggeringRefConditional_VariationPoint();

    public EClass getISignalTriggering();

    public EReference getISignalTriggering_PhysicalChannel();

    public EReference getISignalTriggering_ISignalGroup();

    public EReference getISignalTriggering_ISignalPorts();

    public EReference getISignalTriggering_ISignal();

    public EReference getISignalTriggering_VariationPoint();

    public EClass getISignalPort();

    public EReference getISignalPort_DataFilter();

    public EAttribute getISignalPort_Timeout();

    public EClass getISignalIPduGroup();

    public EAttribute getISignalIPduGroup_CommunicationDirection();

    public EAttribute getISignalIPduGroup_CommunicationMode();

    public EReference getISignalIPduGroup_ContainedISignalIPduGroups();

    public EReference getISignalIPduGroup_ISignalIPdus();

    public EClass getISignalIPduRefConditional();

    public EReference getISignalIPduRefConditional_ISignalIPduGroup();

    public EReference getISignalIPduRefConditional_ISignalIPdu();

    public EReference getISignalIPduRefConditional_VariationPoint();

    public EClass getMultiplexedIPdu();

    public EReference getMultiplexedIPdu_DynamicParts();

    public EAttribute getMultiplexedIPdu_SelectorFieldByteOrder();

    public EAttribute getMultiplexedIPdu_SelectorFieldLength();

    public EAttribute getMultiplexedIPdu_SelectorFieldStartPosition();

    public EReference getMultiplexedIPdu_StaticParts();

    public EAttribute getMultiplexedIPdu_TriggerMode();

    public EAttribute getMultiplexedIPdu_UnusedBitPattern();

    public EClass getStaticPart();

    public EReference getStaticPart_MultiplexedIPdu();

    public EReference getStaticPart_IPdu();

    public EReference getStaticPart_VariationPoint();

    public EClass getNmPdu();

    public EReference getNmPdu_ISignalToIPduMappings();

    public EAttribute getNmPdu_NmDataInformation();

    public EAttribute getNmPdu_NmVoteInformation();

    public EAttribute getNmPdu_UnusedBitPattern();

    public EClass getNPdu();

    public EReference getNPdu_FlexrayArTpChannel();

    public EClass getPdurIPduGroup();

    public EAttribute getPdurIPduGroup_CommunicationMode();

    public EReference getPdurIPduGroup_IPdus();

    public EClass getPduToFrameMapping();

    public EReference getPduToFrameMapping_Frame();

    public EAttribute getPduToFrameMapping_PackingByteOrder();

    public EReference getPduToFrameMapping_Pdu();

    public EAttribute getPduToFrameMapping_StartPosition();

    public EAttribute getPduToFrameMapping_UpdateIndicationBitPosition();

    public EReference getPduToFrameMapping_VariationPoint();

    public EClass getUserDefinedIPdu();

    public EAttribute getUserDefinedIPdu_CddType();

    public EClass getUserDefinedPdu();

    public EAttribute getUserDefinedPdu_CddType();

    public EClass getXcpPdu();

    public EClass getFrame();

    public EAttribute getFrame_FrameLength();

    public EReference getFrame_PduToFrameMappings();

    public EEnum getCommunicationDirectionType();

    public EEnum getDiagPduType();

    public EEnum getTransferPropertyEnum();

    public EEnum getTriggerMode();

    public CorecommunicationFactory getCorecommunicationFactory();

    public static interface Literals {
        public static final EClass DCM_IPDU = eINSTANCE.getDcmIPdu();
        public static final EAttribute DCM_IPDU__DIAG_PDU_TYPE = eINSTANCE.getDcmIPdu_DiagPduType();
        public static final EClass IPDU = eINSTANCE.getIPdu();
        public static final EClass PDU = eINSTANCE.getPdu();
        public static final EAttribute PDU__LENGTH = eINSTANCE.getPdu_Length();
        public static final EClass DYNAMIC_PART = eINSTANCE.getDynamicPart();
        public static final EReference DYNAMIC_PART__MULTIPLEXED_IPDU = eINSTANCE.getDynamicPart_MultiplexedIPdu();
        public static final EReference DYNAMIC_PART__DYNAMIC_PART_ALTERNATIVES = eINSTANCE.getDynamicPart_DynamicPartAlternatives();
        public static final EReference DYNAMIC_PART__VARIATION_POINT = eINSTANCE.getDynamicPart_VariationPoint();
        public static final EClass MULTIPLEXED_PART = eINSTANCE.getMultiplexedPart();
        public static final EReference MULTIPLEXED_PART__SEGMENT_POSITIONS = eINSTANCE.getMultiplexedPart_SegmentPositions();
        public static final EClass SEGMENT_POSITION = eINSTANCE.getSegmentPosition();
        public static final EReference SEGMENT_POSITION__MULTIPLEXED_PART = eINSTANCE.getSegmentPosition_MultiplexedPart();
        public static final EAttribute SEGMENT_POSITION__SEGMENT_BYTE_ORDER = eINSTANCE.getSegmentPosition_SegmentByteOrder();
        public static final EAttribute SEGMENT_POSITION__SEGMENT_LENGTH = eINSTANCE.getSegmentPosition_SegmentLength();
        public static final EAttribute SEGMENT_POSITION__SEGMENT_POSITION = eINSTANCE.getSegmentPosition_SegmentPosition();
        public static final EClass DYNAMIC_PART_ALTERNATIVE = eINSTANCE.getDynamicPartAlternative();
        public static final EReference DYNAMIC_PART_ALTERNATIVE__DYNAMIC_PART = eINSTANCE.getDynamicPartAlternative_DynamicPart();
        public static final EReference DYNAMIC_PART_ALTERNATIVE__IPDU = eINSTANCE.getDynamicPartAlternative_IPdu();
        public static final EAttribute DYNAMIC_PART_ALTERNATIVE__INITIAL_DYNAMIC_PART = eINSTANCE.getDynamicPartAlternative_InitialDynamicPart();
        public static final EAttribute DYNAMIC_PART_ALTERNATIVE__SELECTOR_FIELD_CODE = eINSTANCE.getDynamicPartAlternative_SelectorFieldCode();
        public static final EClass ISIGNAL_IPDU = eINSTANCE.getISignalIPdu();
        public static final EReference ISIGNAL_IPDU__IPDU_TIMING_SPECIFICATIONS = eINSTANCE.getISignalIPdu_IPduTimingSpecifications();
        public static final EReference ISIGNAL_IPDU__ISIGNAL_TO_PDU_MAPPINGS = eINSTANCE.getISignalIPdu_ISignalToPduMappings();
        public static final EReference ISIGNAL_IPDU__PDU_COUNTERS = eINSTANCE.getISignalIPdu_PduCounters();
        public static final EReference ISIGNAL_IPDU__PDU_REPLICATIONS = eINSTANCE.getISignalIPdu_PduReplications();
        public static final EAttribute ISIGNAL_IPDU__UNUSED_BIT_PATTERN = eINSTANCE.getISignalIPdu_UnusedBitPattern();
        public static final EClass ISIGNAL_TO_IPDU_MAPPING = eINSTANCE.getISignalToIPduMapping();
        public static final EReference ISIGNAL_TO_IPDU_MAPPING__ISIGNAL_GROUP = eINSTANCE.getISignalToIPduMapping_ISignalGroup();
        public static final EReference ISIGNAL_TO_IPDU_MAPPING__ISIGNAL = eINSTANCE.getISignalToIPduMapping_ISignal();
        public static final EAttribute ISIGNAL_TO_IPDU_MAPPING__PACKING_BYTE_ORDER = eINSTANCE.getISignalToIPduMapping_PackingByteOrder();
        public static final EAttribute ISIGNAL_TO_IPDU_MAPPING__START_POSITION = eINSTANCE.getISignalToIPduMapping_StartPosition();
        public static final EAttribute ISIGNAL_TO_IPDU_MAPPING__TRANSFER_PROPERTY = eINSTANCE.getISignalToIPduMapping_TransferProperty();
        public static final EAttribute ISIGNAL_TO_IPDU_MAPPING__UPDATE_INDICATION_BIT_POSITION = eINSTANCE.getISignalToIPduMapping_UpdateIndicationBitPosition();
        public static final EReference ISIGNAL_TO_IPDU_MAPPING__VARIATION_POINT = eINSTANCE.getISignalToIPduMapping_VariationPoint();
        public static final EClass ISIGNAL = eINSTANCE.getISignal();
        public static final EAttribute ISIGNAL__DATA_TYPE_POLICY = eINSTANCE.getISignal_DataTypePolicy();
        public static final EReference ISIGNAL__ISIGNAL_PROPS = eINSTANCE.getISignal_ISignalProps();
        public static final EReference ISIGNAL__INIT_VALUE = eINSTANCE.getISignal_InitValue();
        public static final EAttribute ISIGNAL__LENGTH = eINSTANCE.getISignal_Length();
        public static final EReference ISIGNAL__NETWORK_REPRESENTATION_PROPS = eINSTANCE.getISignal_NetworkRepresentationProps();
        public static final EReference ISIGNAL__SYSTEM_SIGNAL = eINSTANCE.getISignal_SystemSignal();
        public static final EClass SYSTEM_SIGNAL = eINSTANCE.getSystemSignal();
        public static final EAttribute SYSTEM_SIGNAL__DYNAMIC_LENGTH = eINSTANCE.getSystemSignal_DynamicLength();
        public static final EClass SYSTEM_SIGNAL_GROUP = eINSTANCE.getSystemSignalGroup();
        public static final EReference SYSTEM_SIGNAL_GROUP__SYSTEM_SIGNALS = eINSTANCE.getSystemSignalGroup_SystemSignals();
        public static final EClass ISIGNAL_PROPS = eINSTANCE.getISignalProps();
        public static final EReference ISIGNAL_PROPS__ISIGNAL = eINSTANCE.getISignalProps_ISignal();
        public static final EAttribute ISIGNAL_PROPS__HANDLE_OUT_OF_RANGE = eINSTANCE.getISignalProps_HandleOutOfRange();
        public static final EClass ISIGNAL_GROUP = eINSTANCE.getISignalGroup();
        public static final EReference ISIGNAL_GROUP__ISIGNALS = eINSTANCE.getISignalGroup_ISignals();
        public static final EReference ISIGNAL_GROUP__SYSTEM_SIGNAL_GROUP = eINSTANCE.getISignalGroup_SystemSignalGroup();
        public static final EClass IPDU_TIMING = eINSTANCE.getIPduTiming();
        public static final EReference IPDU_TIMING__ISIGNAL_IPDU = eINSTANCE.getIPduTiming_ISignalIPdu();
        public static final EAttribute IPDU_TIMING__MINIMUM_DELAY = eINSTANCE.getIPduTiming_MinimumDelay();
        public static final EReference IPDU_TIMING__TRANSMISSION_MODE_DECLARATION = eINSTANCE.getIPduTiming_TransmissionModeDeclaration();
        public static final EReference IPDU_TIMING__VARIATION_POINT = eINSTANCE.getIPduTiming_VariationPoint();
        public static final EClass SIGNAL_IPDU_REPLICATION = eINSTANCE.getSignalIPduReplication();
        public static final EReference SIGNAL_IPDU_REPLICATION__ISIGNAL_IPDU = eINSTANCE.getSignalIPduReplication_ISignalIPdu();
        public static final EAttribute SIGNAL_IPDU_REPLICATION__PDU_REPLICATION_VOTING = eINSTANCE.getSignalIPduReplication_PduReplicationVoting();
        public static final EReference SIGNAL_IPDU_REPLICATION__REPLICA_PDUS = eINSTANCE.getSignalIPduReplication_ReplicaPdus();
        public static final EReference SIGNAL_IPDU_REPLICATION__VARIATION_POINT = eINSTANCE.getSignalIPduReplication_VariationPoint();
        public static final EClass SIGNAL_IPDU_COUNTER = eINSTANCE.getSignalIPduCounter();
        public static final EReference SIGNAL_IPDU_COUNTER__ISIGNAL_IPDU = eINSTANCE.getSignalIPduCounter_ISignalIPdu();
        public static final EAttribute SIGNAL_IPDU_COUNTER__PDU_COUNTER_SIZE = eINSTANCE.getSignalIPduCounter_PduCounterSize();
        public static final EAttribute SIGNAL_IPDU_COUNTER__PDU_COUNTER_START_POSITION = eINSTANCE.getSignalIPduCounter_PduCounterStartPosition();
        public static final EAttribute SIGNAL_IPDU_COUNTER__PDU_COUNTER_THRESHOLD = eINSTANCE.getSignalIPduCounter_PduCounterThreshold();
        public static final EReference SIGNAL_IPDU_COUNTER__VARIATION_POINT = eINSTANCE.getSignalIPduCounter_VariationPoint();
        public static final EClass FRAME_PORT = eINSTANCE.getFramePort();
        public static final EClass FRAME_TRIGGERING = eINSTANCE.getFrameTriggering();
        public static final EReference FRAME_TRIGGERING__PHYSICAL_CHANNEL = eINSTANCE.getFrameTriggering_PhysicalChannel();
        public static final EReference FRAME_TRIGGERING__FRAME_PORTS = eINSTANCE.getFrameTriggering_FramePorts();
        public static final EReference FRAME_TRIGGERING__FRAME = eINSTANCE.getFrameTriggering_Frame();
        public static final EReference FRAME_TRIGGERING__PDU_TRIGGERINGS = eINSTANCE.getFrameTriggering_PduTriggerings();
        public static final EReference FRAME_TRIGGERING__VARIATION_POINT = eINSTANCE.getFrameTriggering_VariationPoint();
        public static final EClass PDU_TRIGGERING_REF_CONDITIONAL = eINSTANCE.getPduTriggeringRefConditional();
        public static final EReference PDU_TRIGGERING_REF_CONDITIONAL__PDU_TRIGGERING = eINSTANCE.getPduTriggeringRefConditional_PduTriggering();
        public static final EReference PDU_TRIGGERING_REF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getPduTriggeringRefConditional_VariationPoint();
        public static final EClass PDU_TRIGGERING = eINSTANCE.getPduTriggering();
        public static final EReference PDU_TRIGGERING__PHYSICAL_CHANNEL = eINSTANCE.getPduTriggering_PhysicalChannel();
        public static final EReference PDU_TRIGGERING__IPDU_PORTS = eINSTANCE.getPduTriggering_IPduPorts();
        public static final EReference PDU_TRIGGERING__IPDU = eINSTANCE.getPduTriggering_IPdu();
        public static final EReference PDU_TRIGGERING__ISIGNAL_TRIGGERINGS = eINSTANCE.getPduTriggering_ISignalTriggerings();
        public static final EReference PDU_TRIGGERING__VARIATION_POINT = eINSTANCE.getPduTriggering_VariationPoint();
        public static final EClass IPDU_PORT = eINSTANCE.getIPduPort();
        public static final EClass ISIGNAL_TRIGGERING_REF_CONDITIONAL = eINSTANCE.getISignalTriggeringRefConditional();
        public static final EReference ISIGNAL_TRIGGERING_REF_CONDITIONAL__PDU_TRIGGERING = eINSTANCE.getISignalTriggeringRefConditional_PduTriggering();
        public static final EReference ISIGNAL_TRIGGERING_REF_CONDITIONAL__ISIGNAL_TRIGGERING = eINSTANCE.getISignalTriggeringRefConditional_ISignalTriggering();
        public static final EReference ISIGNAL_TRIGGERING_REF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getISignalTriggeringRefConditional_VariationPoint();
        public static final EClass ISIGNAL_TRIGGERING = eINSTANCE.getISignalTriggering();
        public static final EReference ISIGNAL_TRIGGERING__PHYSICAL_CHANNEL = eINSTANCE.getISignalTriggering_PhysicalChannel();
        public static final EReference ISIGNAL_TRIGGERING__ISIGNAL_GROUP = eINSTANCE.getISignalTriggering_ISignalGroup();
        public static final EReference ISIGNAL_TRIGGERING__ISIGNAL_PORTS = eINSTANCE.getISignalTriggering_ISignalPorts();
        public static final EReference ISIGNAL_TRIGGERING__ISIGNAL = eINSTANCE.getISignalTriggering_ISignal();
        public static final EReference ISIGNAL_TRIGGERING__VARIATION_POINT = eINSTANCE.getISignalTriggering_VariationPoint();
        public static final EClass ISIGNAL_PORT = eINSTANCE.getISignalPort();
        public static final EReference ISIGNAL_PORT__DATA_FILTER = eINSTANCE.getISignalPort_DataFilter();
        public static final EAttribute ISIGNAL_PORT__TIMEOUT = eINSTANCE.getISignalPort_Timeout();
        public static final EClass ISIGNAL_IPDU_GROUP = eINSTANCE.getISignalIPduGroup();
        public static final EAttribute ISIGNAL_IPDU_GROUP__COMMUNICATION_DIRECTION = eINSTANCE.getISignalIPduGroup_CommunicationDirection();
        public static final EAttribute ISIGNAL_IPDU_GROUP__COMMUNICATION_MODE = eINSTANCE.getISignalIPduGroup_CommunicationMode();
        public static final EReference ISIGNAL_IPDU_GROUP__CONTAINED_ISIGNAL_IPDU_GROUPS = eINSTANCE.getISignalIPduGroup_ContainedISignalIPduGroups();
        public static final EReference ISIGNAL_IPDU_GROUP__ISIGNAL_IPDUS = eINSTANCE.getISignalIPduGroup_ISignalIPdus();
        public static final EClass ISIGNAL_IPDU_REF_CONDITIONAL = eINSTANCE.getISignalIPduRefConditional();
        public static final EReference ISIGNAL_IPDU_REF_CONDITIONAL__ISIGNAL_IPDU_GROUP = eINSTANCE.getISignalIPduRefConditional_ISignalIPduGroup();
        public static final EReference ISIGNAL_IPDU_REF_CONDITIONAL__ISIGNAL_IPDU = eINSTANCE.getISignalIPduRefConditional_ISignalIPdu();
        public static final EReference ISIGNAL_IPDU_REF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getISignalIPduRefConditional_VariationPoint();
        public static final EClass MULTIPLEXED_IPDU = eINSTANCE.getMultiplexedIPdu();
        public static final EReference MULTIPLEXED_IPDU__DYNAMIC_PARTS = eINSTANCE.getMultiplexedIPdu_DynamicParts();
        public static final EAttribute MULTIPLEXED_IPDU__SELECTOR_FIELD_BYTE_ORDER = eINSTANCE.getMultiplexedIPdu_SelectorFieldByteOrder();
        public static final EAttribute MULTIPLEXED_IPDU__SELECTOR_FIELD_LENGTH = eINSTANCE.getMultiplexedIPdu_SelectorFieldLength();
        public static final EAttribute MULTIPLEXED_IPDU__SELECTOR_FIELD_START_POSITION = eINSTANCE.getMultiplexedIPdu_SelectorFieldStartPosition();
        public static final EReference MULTIPLEXED_IPDU__STATIC_PARTS = eINSTANCE.getMultiplexedIPdu_StaticParts();
        public static final EAttribute MULTIPLEXED_IPDU__TRIGGER_MODE = eINSTANCE.getMultiplexedIPdu_TriggerMode();
        public static final EAttribute MULTIPLEXED_IPDU__UNUSED_BIT_PATTERN = eINSTANCE.getMultiplexedIPdu_UnusedBitPattern();
        public static final EClass STATIC_PART = eINSTANCE.getStaticPart();
        public static final EReference STATIC_PART__MULTIPLEXED_IPDU = eINSTANCE.getStaticPart_MultiplexedIPdu();
        public static final EReference STATIC_PART__IPDU = eINSTANCE.getStaticPart_IPdu();
        public static final EReference STATIC_PART__VARIATION_POINT = eINSTANCE.getStaticPart_VariationPoint();
        public static final EClass NM_PDU = eINSTANCE.getNmPdu();
        public static final EReference NM_PDU__ISIGNAL_TO_IPDU_MAPPINGS = eINSTANCE.getNmPdu_ISignalToIPduMappings();
        public static final EAttribute NM_PDU__NM_DATA_INFORMATION = eINSTANCE.getNmPdu_NmDataInformation();
        public static final EAttribute NM_PDU__NM_VOTE_INFORMATION = eINSTANCE.getNmPdu_NmVoteInformation();
        public static final EAttribute NM_PDU__UNUSED_BIT_PATTERN = eINSTANCE.getNmPdu_UnusedBitPattern();
        public static final EClass NPDU = eINSTANCE.getNPdu();
        public static final EReference NPDU__FLEXRAY_AR_TP_CHANNEL = eINSTANCE.getNPdu_FlexrayArTpChannel();
        public static final EClass PDUR_IPDU_GROUP = eINSTANCE.getPdurIPduGroup();
        public static final EAttribute PDUR_IPDU_GROUP__COMMUNICATION_MODE = eINSTANCE.getPdurIPduGroup_CommunicationMode();
        public static final EReference PDUR_IPDU_GROUP__IPDUS = eINSTANCE.getPdurIPduGroup_IPdus();
        public static final EClass PDU_TO_FRAME_MAPPING = eINSTANCE.getPduToFrameMapping();
        public static final EReference PDU_TO_FRAME_MAPPING__FRAME = eINSTANCE.getPduToFrameMapping_Frame();
        public static final EAttribute PDU_TO_FRAME_MAPPING__PACKING_BYTE_ORDER = eINSTANCE.getPduToFrameMapping_PackingByteOrder();
        public static final EReference PDU_TO_FRAME_MAPPING__PDU = eINSTANCE.getPduToFrameMapping_Pdu();
        public static final EAttribute PDU_TO_FRAME_MAPPING__START_POSITION = eINSTANCE.getPduToFrameMapping_StartPosition();
        public static final EAttribute PDU_TO_FRAME_MAPPING__UPDATE_INDICATION_BIT_POSITION = eINSTANCE.getPduToFrameMapping_UpdateIndicationBitPosition();
        public static final EReference PDU_TO_FRAME_MAPPING__VARIATION_POINT = eINSTANCE.getPduToFrameMapping_VariationPoint();
        public static final EClass USER_DEFINED_IPDU = eINSTANCE.getUserDefinedIPdu();
        public static final EAttribute USER_DEFINED_IPDU__CDD_TYPE = eINSTANCE.getUserDefinedIPdu_CddType();
        public static final EClass USER_DEFINED_PDU = eINSTANCE.getUserDefinedPdu();
        public static final EAttribute USER_DEFINED_PDU__CDD_TYPE = eINSTANCE.getUserDefinedPdu_CddType();
        public static final EClass XCP_PDU = eINSTANCE.getXcpPdu();
        public static final EClass FRAME = eINSTANCE.getFrame();
        public static final EAttribute FRAME__FRAME_LENGTH = eINSTANCE.getFrame_FrameLength();
        public static final EReference FRAME__PDU_TO_FRAME_MAPPINGS = eINSTANCE.getFrame_PduToFrameMappings();
        public static final EEnum COMMUNICATION_DIRECTION_TYPE = eINSTANCE.getCommunicationDirectionType();
        public static final EEnum DIAG_PDU_TYPE = eINSTANCE.getDiagPduType();
        public static final EEnum TRANSFER_PROPERTY_ENUM = eINSTANCE.getTransferPropertyEnum();
        public static final EEnum TRIGGER_MODE = eINSTANCE.getTriggerMode();
    }
}

