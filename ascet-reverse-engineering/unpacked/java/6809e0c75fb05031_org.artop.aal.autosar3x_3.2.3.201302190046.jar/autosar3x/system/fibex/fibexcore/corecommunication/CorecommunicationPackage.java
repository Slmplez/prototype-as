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
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationFactory;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.CorecommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CorecommunicationPackage
extends EPackage {
    public static final String eNAME = "corecommunication";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/f/fcore/cc";
    public static final String eNS_PREFIX = "";
    public static final CorecommunicationPackage eINSTANCE = CorecommunicationPackageImpl.init();
    public static final int ABSTRACT_SIGNAL = 0;
    public static final int ABSTRACT_SIGNAL__GCHECKSUM = 0;
    public static final int ABSTRACT_SIGNAL__GTIMESTAMP = 1;
    public static final int ABSTRACT_SIGNAL__CHECKSUM = 2;
    public static final int ABSTRACT_SIGNAL__TIMESTAMP = 3;
    public static final int ABSTRACT_SIGNAL__GSHORT_NAME = 4;
    public static final int ABSTRACT_SIGNAL__GUUID = 5;
    public static final int ABSTRACT_SIGNAL__GCATEGORY = 6;
    public static final int ABSTRACT_SIGNAL__GDESC = 7;
    public static final int ABSTRACT_SIGNAL__SHORT_NAME = 8;
    public static final int ABSTRACT_SIGNAL__LONG_NAME = 9;
    public static final int ABSTRACT_SIGNAL__DESC = 10;
    public static final int ABSTRACT_SIGNAL__CATEGORY = 11;
    public static final int ABSTRACT_SIGNAL__ADMIN_DATA = 12;
    public static final int ABSTRACT_SIGNAL__INTRODUCTION = 13;
    public static final int ABSTRACT_SIGNAL__UUID = 14;
    public static final int ABSTRACT_SIGNAL__ALL_EXTENSIONS = 15;
    public static final int ABSTRACT_SIGNAL__CONTAINED_EXTENSIONS = 16;
    public static final int ABSTRACT_SIGNAL__GAR_PACKAGE = 17;
    public static final int ABSTRACT_SIGNAL__AR_PACKAGE = 18;
    public static final int ABSTRACT_SIGNAL_FEATURE_COUNT = 19;
    public static final int PDU = 3;
    public static final int PDU__GCHECKSUM = 0;
    public static final int PDU__GTIMESTAMP = 1;
    public static final int PDU__CHECKSUM = 2;
    public static final int PDU__TIMESTAMP = 3;
    public static final int PDU__GSHORT_NAME = 4;
    public static final int PDU__GUUID = 5;
    public static final int PDU__GCATEGORY = 6;
    public static final int PDU__GDESC = 7;
    public static final int PDU__SHORT_NAME = 8;
    public static final int PDU__LONG_NAME = 9;
    public static final int PDU__DESC = 10;
    public static final int PDU__CATEGORY = 11;
    public static final int PDU__ADMIN_DATA = 12;
    public static final int PDU__INTRODUCTION = 13;
    public static final int PDU__UUID = 14;
    public static final int PDU__ALL_EXTENSIONS = 15;
    public static final int PDU__CONTAINED_EXTENSIONS = 16;
    public static final int PDU__GAR_PACKAGE = 17;
    public static final int PDU__AR_PACKAGE = 18;
    public static final int PDU_FEATURE_COUNT = 19;
    public static final int IPDU = 2;
    public static final int IPDU__GCHECKSUM = 0;
    public static final int IPDU__GTIMESTAMP = 1;
    public static final int IPDU__CHECKSUM = 2;
    public static final int IPDU__TIMESTAMP = 3;
    public static final int IPDU__GSHORT_NAME = 4;
    public static final int IPDU__GUUID = 5;
    public static final int IPDU__GCATEGORY = 6;
    public static final int IPDU__GDESC = 7;
    public static final int IPDU__SHORT_NAME = 8;
    public static final int IPDU__LONG_NAME = 9;
    public static final int IPDU__DESC = 10;
    public static final int IPDU__CATEGORY = 11;
    public static final int IPDU__ADMIN_DATA = 12;
    public static final int IPDU__INTRODUCTION = 13;
    public static final int IPDU__UUID = 14;
    public static final int IPDU__ALL_EXTENSIONS = 15;
    public static final int IPDU__CONTAINED_EXTENSIONS = 16;
    public static final int IPDU__GAR_PACKAGE = 17;
    public static final int IPDU__AR_PACKAGE = 18;
    public static final int IPDU__LENGTH = 19;
    public static final int IPDU__UNUSED_BIT_PATTERN = 20;
    public static final int IPDU_FEATURE_COUNT = 21;
    public static final int DCM_IPDU = 1;
    public static final int DCM_IPDU__GCHECKSUM = 0;
    public static final int DCM_IPDU__GTIMESTAMP = 1;
    public static final int DCM_IPDU__CHECKSUM = 2;
    public static final int DCM_IPDU__TIMESTAMP = 3;
    public static final int DCM_IPDU__GSHORT_NAME = 4;
    public static final int DCM_IPDU__GUUID = 5;
    public static final int DCM_IPDU__GCATEGORY = 6;
    public static final int DCM_IPDU__GDESC = 7;
    public static final int DCM_IPDU__SHORT_NAME = 8;
    public static final int DCM_IPDU__LONG_NAME = 9;
    public static final int DCM_IPDU__DESC = 10;
    public static final int DCM_IPDU__CATEGORY = 11;
    public static final int DCM_IPDU__ADMIN_DATA = 12;
    public static final int DCM_IPDU__INTRODUCTION = 13;
    public static final int DCM_IPDU__UUID = 14;
    public static final int DCM_IPDU__ALL_EXTENSIONS = 15;
    public static final int DCM_IPDU__CONTAINED_EXTENSIONS = 16;
    public static final int DCM_IPDU__GAR_PACKAGE = 17;
    public static final int DCM_IPDU__AR_PACKAGE = 18;
    public static final int DCM_IPDU__LENGTH = 19;
    public static final int DCM_IPDU__UNUSED_BIT_PATTERN = 20;
    public static final int DCM_IPDU_FEATURE_COUNT = 21;
    public static final int MULTIPLEXED_PART = 5;
    public static final int MULTIPLEXED_PART__GCHECKSUM = 0;
    public static final int MULTIPLEXED_PART__GTIMESTAMP = 1;
    public static final int MULTIPLEXED_PART__CHECKSUM = 2;
    public static final int MULTIPLEXED_PART__TIMESTAMP = 3;
    public static final int MULTIPLEXED_PART__SEGMENT_POSITIONS = 4;
    public static final int MULTIPLEXED_PART_FEATURE_COUNT = 5;
    public static final int DYNAMIC_PART = 4;
    public static final int DYNAMIC_PART__GCHECKSUM = 0;
    public static final int DYNAMIC_PART__GTIMESTAMP = 1;
    public static final int DYNAMIC_PART__CHECKSUM = 2;
    public static final int DYNAMIC_PART__TIMESTAMP = 3;
    public static final int DYNAMIC_PART__SEGMENT_POSITIONS = 4;
    public static final int DYNAMIC_PART__MULTIPLEXED_IPDU = 5;
    public static final int DYNAMIC_PART__DYNAMIC_PART_ALTERNATIVES = 6;
    public static final int DYNAMIC_PART_FEATURE_COUNT = 7;
    public static final int SEGMENT_POSITION = 6;
    public static final int SEGMENT_POSITION__GCHECKSUM = 0;
    public static final int SEGMENT_POSITION__GTIMESTAMP = 1;
    public static final int SEGMENT_POSITION__CHECKSUM = 2;
    public static final int SEGMENT_POSITION__TIMESTAMP = 3;
    public static final int SEGMENT_POSITION__MULTIPLEXED_PART = 4;
    public static final int SEGMENT_POSITION__SEGMENT_BYTE_ORDER = 5;
    public static final int SEGMENT_POSITION__SEGMENT_LENGTH = 6;
    public static final int SEGMENT_POSITION__SEGMENT_POSITION = 7;
    public static final int SEGMENT_POSITION_FEATURE_COUNT = 8;
    public static final int DYNAMIC_PART_ALTERNATIVE = 7;
    public static final int DYNAMIC_PART_ALTERNATIVE__GCHECKSUM = 0;
    public static final int DYNAMIC_PART_ALTERNATIVE__GTIMESTAMP = 1;
    public static final int DYNAMIC_PART_ALTERNATIVE__CHECKSUM = 2;
    public static final int DYNAMIC_PART_ALTERNATIVE__TIMESTAMP = 3;
    public static final int DYNAMIC_PART_ALTERNATIVE__DYNAMIC_PART = 4;
    public static final int DYNAMIC_PART_ALTERNATIVE__IPDU = 5;
    public static final int DYNAMIC_PART_ALTERNATIVE__INITIAL_DYNAMIC_PART = 6;
    public static final int DYNAMIC_PART_ALTERNATIVE__SELECTOR_FIELD_CODE = 7;
    public static final int DYNAMIC_PART_ALTERNATIVE_FEATURE_COUNT = 8;
    public static final int SIGNAL_IPDU = 8;
    public static final int SIGNAL_IPDU__GCHECKSUM = 0;
    public static final int SIGNAL_IPDU__GTIMESTAMP = 1;
    public static final int SIGNAL_IPDU__CHECKSUM = 2;
    public static final int SIGNAL_IPDU__TIMESTAMP = 3;
    public static final int SIGNAL_IPDU__GSHORT_NAME = 4;
    public static final int SIGNAL_IPDU__GUUID = 5;
    public static final int SIGNAL_IPDU__GCATEGORY = 6;
    public static final int SIGNAL_IPDU__GDESC = 7;
    public static final int SIGNAL_IPDU__SHORT_NAME = 8;
    public static final int SIGNAL_IPDU__LONG_NAME = 9;
    public static final int SIGNAL_IPDU__DESC = 10;
    public static final int SIGNAL_IPDU__CATEGORY = 11;
    public static final int SIGNAL_IPDU__ADMIN_DATA = 12;
    public static final int SIGNAL_IPDU__INTRODUCTION = 13;
    public static final int SIGNAL_IPDU__UUID = 14;
    public static final int SIGNAL_IPDU__ALL_EXTENSIONS = 15;
    public static final int SIGNAL_IPDU__CONTAINED_EXTENSIONS = 16;
    public static final int SIGNAL_IPDU__GAR_PACKAGE = 17;
    public static final int SIGNAL_IPDU__AR_PACKAGE = 18;
    public static final int SIGNAL_IPDU__LENGTH = 19;
    public static final int SIGNAL_IPDU__UNUSED_BIT_PATTERN = 20;
    public static final int SIGNAL_IPDU__IPDU_TIMING_SPECIFICATION = 21;
    public static final int SIGNAL_IPDU__SIGNAL_TO_PDU_MAPPINGS = 22;
    public static final int SIGNAL_IPDU_FEATURE_COUNT = 23;
    public static final int ISIGNAL_TO_IPDU_MAPPING = 9;
    public static final int ISIGNAL_TO_IPDU_MAPPING__GCHECKSUM = 0;
    public static final int ISIGNAL_TO_IPDU_MAPPING__GTIMESTAMP = 1;
    public static final int ISIGNAL_TO_IPDU_MAPPING__CHECKSUM = 2;
    public static final int ISIGNAL_TO_IPDU_MAPPING__TIMESTAMP = 3;
    public static final int ISIGNAL_TO_IPDU_MAPPING__GSHORT_NAME = 4;
    public static final int ISIGNAL_TO_IPDU_MAPPING__GUUID = 5;
    public static final int ISIGNAL_TO_IPDU_MAPPING__GCATEGORY = 6;
    public static final int ISIGNAL_TO_IPDU_MAPPING__GDESC = 7;
    public static final int ISIGNAL_TO_IPDU_MAPPING__SHORT_NAME = 8;
    public static final int ISIGNAL_TO_IPDU_MAPPING__LONG_NAME = 9;
    public static final int ISIGNAL_TO_IPDU_MAPPING__DESC = 10;
    public static final int ISIGNAL_TO_IPDU_MAPPING__CATEGORY = 11;
    public static final int ISIGNAL_TO_IPDU_MAPPING__ADMIN_DATA = 12;
    public static final int ISIGNAL_TO_IPDU_MAPPING__INTRODUCTION = 13;
    public static final int ISIGNAL_TO_IPDU_MAPPING__UUID = 14;
    public static final int ISIGNAL_TO_IPDU_MAPPING__ALL_EXTENSIONS = 15;
    public static final int ISIGNAL_TO_IPDU_MAPPING__CONTAINED_EXTENSIONS = 16;
    public static final int ISIGNAL_TO_IPDU_MAPPING__PACKING_BYTE_ORDER = 17;
    public static final int ISIGNAL_TO_IPDU_MAPPING__SIGNAL = 18;
    public static final int ISIGNAL_TO_IPDU_MAPPING__START_POSITION = 19;
    public static final int ISIGNAL_TO_IPDU_MAPPING__TRANSFER_PROPERTY = 20;
    public static final int ISIGNAL_TO_IPDU_MAPPING__UPDATE_INDICATION_BIT_POSITION = 21;
    public static final int ISIGNAL_TO_IPDU_MAPPING_FEATURE_COUNT = 22;
    public static final int ISIGNAL = 10;
    public static final int ISIGNAL__GCHECKSUM = 0;
    public static final int ISIGNAL__GTIMESTAMP = 1;
    public static final int ISIGNAL__CHECKSUM = 2;
    public static final int ISIGNAL__TIMESTAMP = 3;
    public static final int ISIGNAL__GSHORT_NAME = 4;
    public static final int ISIGNAL__GUUID = 5;
    public static final int ISIGNAL__GCATEGORY = 6;
    public static final int ISIGNAL__GDESC = 7;
    public static final int ISIGNAL__SHORT_NAME = 8;
    public static final int ISIGNAL__LONG_NAME = 9;
    public static final int ISIGNAL__DESC = 10;
    public static final int ISIGNAL__CATEGORY = 11;
    public static final int ISIGNAL__ADMIN_DATA = 12;
    public static final int ISIGNAL__INTRODUCTION = 13;
    public static final int ISIGNAL__UUID = 14;
    public static final int ISIGNAL__ALL_EXTENSIONS = 15;
    public static final int ISIGNAL__CONTAINED_EXTENSIONS = 16;
    public static final int ISIGNAL__GAR_PACKAGE = 17;
    public static final int ISIGNAL__AR_PACKAGE = 18;
    public static final int ISIGNAL__SYSTEM_SIGNAL = 19;
    public static final int ISIGNAL_FEATURE_COUNT = 20;
    public static final int IPDU_TIMING = 11;
    public static final int IPDU_TIMING__GCHECKSUM = 0;
    public static final int IPDU_TIMING__GTIMESTAMP = 1;
    public static final int IPDU_TIMING__CHECKSUM = 2;
    public static final int IPDU_TIMING__TIMESTAMP = 3;
    public static final int IPDU_TIMING__CYCLIC_TIMING = 4;
    public static final int IPDU_TIMING__EVENT_CONTROLLED_TIMING = 5;
    public static final int IPDU_TIMING__MINIMUM_DELAY = 6;
    public static final int IPDU_TIMING__REQUEST_CONTROLLED_TIMING = 7;
    public static final int IPDU_TIMING__TRANSMISSION_MODE_DECLARATION = 8;
    public static final int IPDU_TIMING_FEATURE_COUNT = 9;
    public static final int FRAME = 12;
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
    public static final int FRAME__INTRODUCTION = 13;
    public static final int FRAME__UUID = 14;
    public static final int FRAME__ALL_EXTENSIONS = 15;
    public static final int FRAME__CONTAINED_EXTENSIONS = 16;
    public static final int FRAME__GAR_PACKAGE = 17;
    public static final int FRAME__AR_PACKAGE = 18;
    public static final int FRAME__FRAME_LENGTH = 19;
    public static final int FRAME__PDU_TO_FRAME_MAPPINGS = 20;
    public static final int FRAME_FEATURE_COUNT = 21;
    public static final int PDU_TO_FRAME_MAPPING = 13;
    public static final int PDU_TO_FRAME_MAPPING__GCHECKSUM = 0;
    public static final int PDU_TO_FRAME_MAPPING__GTIMESTAMP = 1;
    public static final int PDU_TO_FRAME_MAPPING__CHECKSUM = 2;
    public static final int PDU_TO_FRAME_MAPPING__TIMESTAMP = 3;
    public static final int PDU_TO_FRAME_MAPPING__GSHORT_NAME = 4;
    public static final int PDU_TO_FRAME_MAPPING__GUUID = 5;
    public static final int PDU_TO_FRAME_MAPPING__GCATEGORY = 6;
    public static final int PDU_TO_FRAME_MAPPING__GDESC = 7;
    public static final int PDU_TO_FRAME_MAPPING__SHORT_NAME = 8;
    public static final int PDU_TO_FRAME_MAPPING__LONG_NAME = 9;
    public static final int PDU_TO_FRAME_MAPPING__DESC = 10;
    public static final int PDU_TO_FRAME_MAPPING__CATEGORY = 11;
    public static final int PDU_TO_FRAME_MAPPING__ADMIN_DATA = 12;
    public static final int PDU_TO_FRAME_MAPPING__INTRODUCTION = 13;
    public static final int PDU_TO_FRAME_MAPPING__UUID = 14;
    public static final int PDU_TO_FRAME_MAPPING__ALL_EXTENSIONS = 15;
    public static final int PDU_TO_FRAME_MAPPING__CONTAINED_EXTENSIONS = 16;
    public static final int PDU_TO_FRAME_MAPPING__FRAME = 17;
    public static final int PDU_TO_FRAME_MAPPING__PACKING_BYTE_ORDER = 18;
    public static final int PDU_TO_FRAME_MAPPING__PDU = 19;
    public static final int PDU_TO_FRAME_MAPPING__START_POSITION = 20;
    public static final int PDU_TO_FRAME_MAPPING__UPDATE_INDICATION_BIT_POSITION = 21;
    public static final int PDU_TO_FRAME_MAPPING_FEATURE_COUNT = 22;
    public static final int FRAME_PORT = 14;
    public static final int FRAME_PORT__GCHECKSUM = 0;
    public static final int FRAME_PORT__GTIMESTAMP = 1;
    public static final int FRAME_PORT__CHECKSUM = 2;
    public static final int FRAME_PORT__TIMESTAMP = 3;
    public static final int FRAME_PORT__GSHORT_NAME = 4;
    public static final int FRAME_PORT__GUUID = 5;
    public static final int FRAME_PORT__GCATEGORY = 6;
    public static final int FRAME_PORT__GDESC = 7;
    public static final int FRAME_PORT__SHORT_NAME = 8;
    public static final int FRAME_PORT__LONG_NAME = 9;
    public static final int FRAME_PORT__DESC = 10;
    public static final int FRAME_PORT__CATEGORY = 11;
    public static final int FRAME_PORT__ADMIN_DATA = 12;
    public static final int FRAME_PORT__INTRODUCTION = 13;
    public static final int FRAME_PORT__UUID = 14;
    public static final int FRAME_PORT__ALL_EXTENSIONS = 15;
    public static final int FRAME_PORT__CONTAINED_EXTENSIONS = 16;
    public static final int FRAME_PORT__COMMUNICATION_CONNECTOR = 17;
    public static final int FRAME_PORT__COMMUNICATION_DIRECTION = 18;
    public static final int FRAME_PORT_FEATURE_COUNT = 19;
    public static final int IPDU_GROUP = 15;
    public static final int IPDU_GROUP__GCHECKSUM = 0;
    public static final int IPDU_GROUP__GTIMESTAMP = 1;
    public static final int IPDU_GROUP__CHECKSUM = 2;
    public static final int IPDU_GROUP__TIMESTAMP = 3;
    public static final int IPDU_GROUP__GSHORT_NAME = 4;
    public static final int IPDU_GROUP__GUUID = 5;
    public static final int IPDU_GROUP__GCATEGORY = 6;
    public static final int IPDU_GROUP__GDESC = 7;
    public static final int IPDU_GROUP__SHORT_NAME = 8;
    public static final int IPDU_GROUP__LONG_NAME = 9;
    public static final int IPDU_GROUP__DESC = 10;
    public static final int IPDU_GROUP__CATEGORY = 11;
    public static final int IPDU_GROUP__ADMIN_DATA = 12;
    public static final int IPDU_GROUP__INTRODUCTION = 13;
    public static final int IPDU_GROUP__UUID = 14;
    public static final int IPDU_GROUP__ALL_EXTENSIONS = 15;
    public static final int IPDU_GROUP__CONTAINED_EXTENSIONS = 16;
    public static final int IPDU_GROUP__GAR_PACKAGE = 17;
    public static final int IPDU_GROUP__AR_PACKAGE = 18;
    public static final int IPDU_GROUP__COMMUNICATION_DIRECTION = 19;
    public static final int IPDU_GROUP__COMMUNICATION_MODE = 20;
    public static final int IPDU_GROUP__CONTAINED_IPDU_GROUPS = 21;
    public static final int IPDU_GROUP__IPDUS = 22;
    public static final int IPDU_GROUP_FEATURE_COUNT = 23;
    public static final int IPDU_PORT = 16;
    public static final int IPDU_PORT__GCHECKSUM = 0;
    public static final int IPDU_PORT__GTIMESTAMP = 1;
    public static final int IPDU_PORT__CHECKSUM = 2;
    public static final int IPDU_PORT__TIMESTAMP = 3;
    public static final int IPDU_PORT__GSHORT_NAME = 4;
    public static final int IPDU_PORT__GUUID = 5;
    public static final int IPDU_PORT__GCATEGORY = 6;
    public static final int IPDU_PORT__GDESC = 7;
    public static final int IPDU_PORT__SHORT_NAME = 8;
    public static final int IPDU_PORT__LONG_NAME = 9;
    public static final int IPDU_PORT__DESC = 10;
    public static final int IPDU_PORT__CATEGORY = 11;
    public static final int IPDU_PORT__ADMIN_DATA = 12;
    public static final int IPDU_PORT__INTRODUCTION = 13;
    public static final int IPDU_PORT__UUID = 14;
    public static final int IPDU_PORT__ALL_EXTENSIONS = 15;
    public static final int IPDU_PORT__CONTAINED_EXTENSIONS = 16;
    public static final int IPDU_PORT__COMMUNICATION_CONNECTOR = 17;
    public static final int IPDU_PORT__COMMUNICATION_DIRECTION = 18;
    public static final int IPDU_PORT_FEATURE_COUNT = 19;
    public static final int IPDU_TRIGGERING = 17;
    public static final int IPDU_TRIGGERING__GCHECKSUM = 0;
    public static final int IPDU_TRIGGERING__GTIMESTAMP = 1;
    public static final int IPDU_TRIGGERING__CHECKSUM = 2;
    public static final int IPDU_TRIGGERING__TIMESTAMP = 3;
    public static final int IPDU_TRIGGERING__GSHORT_NAME = 4;
    public static final int IPDU_TRIGGERING__GUUID = 5;
    public static final int IPDU_TRIGGERING__GCATEGORY = 6;
    public static final int IPDU_TRIGGERING__GDESC = 7;
    public static final int IPDU_TRIGGERING__SHORT_NAME = 8;
    public static final int IPDU_TRIGGERING__LONG_NAME = 9;
    public static final int IPDU_TRIGGERING__DESC = 10;
    public static final int IPDU_TRIGGERING__CATEGORY = 11;
    public static final int IPDU_TRIGGERING__ADMIN_DATA = 12;
    public static final int IPDU_TRIGGERING__INTRODUCTION = 13;
    public static final int IPDU_TRIGGERING__UUID = 14;
    public static final int IPDU_TRIGGERING__ALL_EXTENSIONS = 15;
    public static final int IPDU_TRIGGERING__CONTAINED_EXTENSIONS = 16;
    public static final int IPDU_TRIGGERING__PHYSICAL_CHANNEL = 17;
    public static final int IPDU_TRIGGERING__IPDU_PORTS = 18;
    public static final int IPDU_TRIGGERING__IPDU = 19;
    public static final int IPDU_TRIGGERING__ISIGNAL_TRIGGERINGS = 20;
    public static final int IPDU_TRIGGERING__TIMING_REQUIREMENT = 21;
    public static final int IPDU_TRIGGERING_FEATURE_COUNT = 22;
    public static final int ISIGNAL_TRIGGERING = 18;
    public static final int ISIGNAL_TRIGGERING__GCHECKSUM = 0;
    public static final int ISIGNAL_TRIGGERING__GTIMESTAMP = 1;
    public static final int ISIGNAL_TRIGGERING__CHECKSUM = 2;
    public static final int ISIGNAL_TRIGGERING__TIMESTAMP = 3;
    public static final int ISIGNAL_TRIGGERING__GSHORT_NAME = 4;
    public static final int ISIGNAL_TRIGGERING__GUUID = 5;
    public static final int ISIGNAL_TRIGGERING__GCATEGORY = 6;
    public static final int ISIGNAL_TRIGGERING__GDESC = 7;
    public static final int ISIGNAL_TRIGGERING__SHORT_NAME = 8;
    public static final int ISIGNAL_TRIGGERING__LONG_NAME = 9;
    public static final int ISIGNAL_TRIGGERING__DESC = 10;
    public static final int ISIGNAL_TRIGGERING__CATEGORY = 11;
    public static final int ISIGNAL_TRIGGERING__ADMIN_DATA = 12;
    public static final int ISIGNAL_TRIGGERING__INTRODUCTION = 13;
    public static final int ISIGNAL_TRIGGERING__UUID = 14;
    public static final int ISIGNAL_TRIGGERING__ALL_EXTENSIONS = 15;
    public static final int ISIGNAL_TRIGGERING__CONTAINED_EXTENSIONS = 16;
    public static final int ISIGNAL_TRIGGERING__PHYSICAL_CHANNEL = 17;
    public static final int ISIGNAL_TRIGGERING__CYCLIC_TIMING = 18;
    public static final int ISIGNAL_TRIGGERING__EVENT_CONTROLLED_TIMING = 19;
    public static final int ISIGNAL_TRIGGERING__ISIGNAL_PORTS = 20;
    public static final int ISIGNAL_TRIGGERING__SIGNAL = 21;
    public static final int ISIGNAL_TRIGGERING_FEATURE_COUNT = 22;
    public static final int SIGNAL_PORT = 19;
    public static final int SIGNAL_PORT__GCHECKSUM = 0;
    public static final int SIGNAL_PORT__GTIMESTAMP = 1;
    public static final int SIGNAL_PORT__CHECKSUM = 2;
    public static final int SIGNAL_PORT__TIMESTAMP = 3;
    public static final int SIGNAL_PORT__GSHORT_NAME = 4;
    public static final int SIGNAL_PORT__GUUID = 5;
    public static final int SIGNAL_PORT__GCATEGORY = 6;
    public static final int SIGNAL_PORT__GDESC = 7;
    public static final int SIGNAL_PORT__SHORT_NAME = 8;
    public static final int SIGNAL_PORT__LONG_NAME = 9;
    public static final int SIGNAL_PORT__DESC = 10;
    public static final int SIGNAL_PORT__CATEGORY = 11;
    public static final int SIGNAL_PORT__ADMIN_DATA = 12;
    public static final int SIGNAL_PORT__INTRODUCTION = 13;
    public static final int SIGNAL_PORT__UUID = 14;
    public static final int SIGNAL_PORT__ALL_EXTENSIONS = 15;
    public static final int SIGNAL_PORT__CONTAINED_EXTENSIONS = 16;
    public static final int SIGNAL_PORT__COMMUNICATION_CONNECTOR = 17;
    public static final int SIGNAL_PORT__COMMUNICATION_DIRECTION = 18;
    public static final int SIGNAL_PORT__DATA_FILTER = 19;
    public static final int SIGNAL_PORT__TIMEOUT = 20;
    public static final int SIGNAL_PORT_FEATURE_COUNT = 21;
    public static final int MULTIPLEXED_IPDU = 20;
    public static final int MULTIPLEXED_IPDU__GCHECKSUM = 0;
    public static final int MULTIPLEXED_IPDU__GTIMESTAMP = 1;
    public static final int MULTIPLEXED_IPDU__CHECKSUM = 2;
    public static final int MULTIPLEXED_IPDU__TIMESTAMP = 3;
    public static final int MULTIPLEXED_IPDU__GSHORT_NAME = 4;
    public static final int MULTIPLEXED_IPDU__GUUID = 5;
    public static final int MULTIPLEXED_IPDU__GCATEGORY = 6;
    public static final int MULTIPLEXED_IPDU__GDESC = 7;
    public static final int MULTIPLEXED_IPDU__SHORT_NAME = 8;
    public static final int MULTIPLEXED_IPDU__LONG_NAME = 9;
    public static final int MULTIPLEXED_IPDU__DESC = 10;
    public static final int MULTIPLEXED_IPDU__CATEGORY = 11;
    public static final int MULTIPLEXED_IPDU__ADMIN_DATA = 12;
    public static final int MULTIPLEXED_IPDU__INTRODUCTION = 13;
    public static final int MULTIPLEXED_IPDU__UUID = 14;
    public static final int MULTIPLEXED_IPDU__ALL_EXTENSIONS = 15;
    public static final int MULTIPLEXED_IPDU__CONTAINED_EXTENSIONS = 16;
    public static final int MULTIPLEXED_IPDU__GAR_PACKAGE = 17;
    public static final int MULTIPLEXED_IPDU__AR_PACKAGE = 18;
    public static final int MULTIPLEXED_IPDU__LENGTH = 19;
    public static final int MULTIPLEXED_IPDU__UNUSED_BIT_PATTERN = 20;
    public static final int MULTIPLEXED_IPDU__DYNAMIC_PART = 21;
    public static final int MULTIPLEXED_IPDU__SELECTOR_FIELD_BYTE_ORDER = 22;
    public static final int MULTIPLEXED_IPDU__SELECTOR_FIELD_LENGTH = 23;
    public static final int MULTIPLEXED_IPDU__SELECTOR_FIELD_START_POSITION = 24;
    public static final int MULTIPLEXED_IPDU__STATIC_PART = 25;
    public static final int MULTIPLEXED_IPDU__TRIGGER_MODE = 26;
    public static final int MULTIPLEXED_IPDU_FEATURE_COUNT = 27;
    public static final int STATIC_PART = 21;
    public static final int STATIC_PART__GCHECKSUM = 0;
    public static final int STATIC_PART__GTIMESTAMP = 1;
    public static final int STATIC_PART__CHECKSUM = 2;
    public static final int STATIC_PART__TIMESTAMP = 3;
    public static final int STATIC_PART__SEGMENT_POSITIONS = 4;
    public static final int STATIC_PART__MULTIPLEXED_IPDU = 5;
    public static final int STATIC_PART__IPDU = 6;
    public static final int STATIC_PART_FEATURE_COUNT = 7;
    public static final int NM_PDU = 22;
    public static final int NM_PDU__GCHECKSUM = 0;
    public static final int NM_PDU__GTIMESTAMP = 1;
    public static final int NM_PDU__CHECKSUM = 2;
    public static final int NM_PDU__TIMESTAMP = 3;
    public static final int NM_PDU__GSHORT_NAME = 4;
    public static final int NM_PDU__GUUID = 5;
    public static final int NM_PDU__GCATEGORY = 6;
    public static final int NM_PDU__GDESC = 7;
    public static final int NM_PDU__SHORT_NAME = 8;
    public static final int NM_PDU__LONG_NAME = 9;
    public static final int NM_PDU__DESC = 10;
    public static final int NM_PDU__CATEGORY = 11;
    public static final int NM_PDU__ADMIN_DATA = 12;
    public static final int NM_PDU__INTRODUCTION = 13;
    public static final int NM_PDU__UUID = 14;
    public static final int NM_PDU__ALL_EXTENSIONS = 15;
    public static final int NM_PDU__CONTAINED_EXTENSIONS = 16;
    public static final int NM_PDU__GAR_PACKAGE = 17;
    public static final int NM_PDU__AR_PACKAGE = 18;
    public static final int NM_PDU__ISIGNAL_TO_IPDU_MAPPINGS = 19;
    public static final int NM_PDU__LENGTH = 20;
    public static final int NM_PDU__NM_CBV_POSITION = 21;
    public static final int NM_PDU__NM_NID_POSITION = 22;
    public static final int NM_PDU__NM_USER_DATA_LENGTH = 23;
    public static final int NM_PDU_FEATURE_COUNT = 24;
    public static final int NPDU = 23;
    public static final int NPDU__GCHECKSUM = 0;
    public static final int NPDU__GTIMESTAMP = 1;
    public static final int NPDU__CHECKSUM = 2;
    public static final int NPDU__TIMESTAMP = 3;
    public static final int NPDU__GSHORT_NAME = 4;
    public static final int NPDU__GUUID = 5;
    public static final int NPDU__GCATEGORY = 6;
    public static final int NPDU__GDESC = 7;
    public static final int NPDU__SHORT_NAME = 8;
    public static final int NPDU__LONG_NAME = 9;
    public static final int NPDU__DESC = 10;
    public static final int NPDU__CATEGORY = 11;
    public static final int NPDU__ADMIN_DATA = 12;
    public static final int NPDU__INTRODUCTION = 13;
    public static final int NPDU__UUID = 14;
    public static final int NPDU__ALL_EXTENSIONS = 15;
    public static final int NPDU__CONTAINED_EXTENSIONS = 16;
    public static final int NPDU__GAR_PACKAGE = 17;
    public static final int NPDU__AR_PACKAGE = 18;
    public static final int NPDU__LENGTH = 19;
    public static final int NPDU__UNUSED_BIT_PATTERN = 20;
    public static final int NPDU__FLEXRAY_TP_CHANNEL = 21;
    public static final int NPDU_FEATURE_COUNT = 22;
    public static final int PDUR_IPDU_GROUP = 24;
    public static final int PDUR_IPDU_GROUP__GCHECKSUM = 0;
    public static final int PDUR_IPDU_GROUP__GTIMESTAMP = 1;
    public static final int PDUR_IPDU_GROUP__CHECKSUM = 2;
    public static final int PDUR_IPDU_GROUP__TIMESTAMP = 3;
    public static final int PDUR_IPDU_GROUP__GSHORT_NAME = 4;
    public static final int PDUR_IPDU_GROUP__GUUID = 5;
    public static final int PDUR_IPDU_GROUP__GCATEGORY = 6;
    public static final int PDUR_IPDU_GROUP__GDESC = 7;
    public static final int PDUR_IPDU_GROUP__SHORT_NAME = 8;
    public static final int PDUR_IPDU_GROUP__LONG_NAME = 9;
    public static final int PDUR_IPDU_GROUP__DESC = 10;
    public static final int PDUR_IPDU_GROUP__CATEGORY = 11;
    public static final int PDUR_IPDU_GROUP__ADMIN_DATA = 12;
    public static final int PDUR_IPDU_GROUP__INTRODUCTION = 13;
    public static final int PDUR_IPDU_GROUP__UUID = 14;
    public static final int PDUR_IPDU_GROUP__ALL_EXTENSIONS = 15;
    public static final int PDUR_IPDU_GROUP__CONTAINED_EXTENSIONS = 16;
    public static final int PDUR_IPDU_GROUP__GAR_PACKAGE = 17;
    public static final int PDUR_IPDU_GROUP__AR_PACKAGE = 18;
    public static final int PDUR_IPDU_GROUP__COMMUNICATION_MODE = 19;
    public static final int PDUR_IPDU_GROUP__IPDUS = 20;
    public static final int PDUR_IPDU_GROUP_FEATURE_COUNT = 21;
    public static final int SYSTEM_SIGNAL = 25;
    public static final int SYSTEM_SIGNAL__GCHECKSUM = 0;
    public static final int SYSTEM_SIGNAL__GTIMESTAMP = 1;
    public static final int SYSTEM_SIGNAL__CHECKSUM = 2;
    public static final int SYSTEM_SIGNAL__TIMESTAMP = 3;
    public static final int SYSTEM_SIGNAL__GSHORT_NAME = 4;
    public static final int SYSTEM_SIGNAL__GUUID = 5;
    public static final int SYSTEM_SIGNAL__GCATEGORY = 6;
    public static final int SYSTEM_SIGNAL__GDESC = 7;
    public static final int SYSTEM_SIGNAL__SHORT_NAME = 8;
    public static final int SYSTEM_SIGNAL__LONG_NAME = 9;
    public static final int SYSTEM_SIGNAL__DESC = 10;
    public static final int SYSTEM_SIGNAL__CATEGORY = 11;
    public static final int SYSTEM_SIGNAL__ADMIN_DATA = 12;
    public static final int SYSTEM_SIGNAL__INTRODUCTION = 13;
    public static final int SYSTEM_SIGNAL__UUID = 14;
    public static final int SYSTEM_SIGNAL__ALL_EXTENSIONS = 15;
    public static final int SYSTEM_SIGNAL__CONTAINED_EXTENSIONS = 16;
    public static final int SYSTEM_SIGNAL__GAR_PACKAGE = 17;
    public static final int SYSTEM_SIGNAL__AR_PACKAGE = 18;
    public static final int SYSTEM_SIGNAL__DATA_TYPE = 19;
    public static final int SYSTEM_SIGNAL__INIT_VALUE = 20;
    public static final int SYSTEM_SIGNAL__LENGTH = 21;
    public static final int SYSTEM_SIGNAL_FEATURE_COUNT = 22;
    public static final int SYSTEM_SIGNAL_GROUP = 26;
    public static final int SYSTEM_SIGNAL_GROUP__GCHECKSUM = 0;
    public static final int SYSTEM_SIGNAL_GROUP__GTIMESTAMP = 1;
    public static final int SYSTEM_SIGNAL_GROUP__CHECKSUM = 2;
    public static final int SYSTEM_SIGNAL_GROUP__TIMESTAMP = 3;
    public static final int SYSTEM_SIGNAL_GROUP__GSHORT_NAME = 4;
    public static final int SYSTEM_SIGNAL_GROUP__GUUID = 5;
    public static final int SYSTEM_SIGNAL_GROUP__GCATEGORY = 6;
    public static final int SYSTEM_SIGNAL_GROUP__GDESC = 7;
    public static final int SYSTEM_SIGNAL_GROUP__SHORT_NAME = 8;
    public static final int SYSTEM_SIGNAL_GROUP__LONG_NAME = 9;
    public static final int SYSTEM_SIGNAL_GROUP__DESC = 10;
    public static final int SYSTEM_SIGNAL_GROUP__CATEGORY = 11;
    public static final int SYSTEM_SIGNAL_GROUP__ADMIN_DATA = 12;
    public static final int SYSTEM_SIGNAL_GROUP__INTRODUCTION = 13;
    public static final int SYSTEM_SIGNAL_GROUP__UUID = 14;
    public static final int SYSTEM_SIGNAL_GROUP__ALL_EXTENSIONS = 15;
    public static final int SYSTEM_SIGNAL_GROUP__CONTAINED_EXTENSIONS = 16;
    public static final int SYSTEM_SIGNAL_GROUP__GAR_PACKAGE = 17;
    public static final int SYSTEM_SIGNAL_GROUP__AR_PACKAGE = 18;
    public static final int SYSTEM_SIGNAL_GROUP__SYSTEM_SIGNALS = 19;
    public static final int SYSTEM_SIGNAL_GROUP_FEATURE_COUNT = 20;
    public static final int USER_DEFINED_IPDU = 27;
    public static final int USER_DEFINED_IPDU__GCHECKSUM = 0;
    public static final int USER_DEFINED_IPDU__GTIMESTAMP = 1;
    public static final int USER_DEFINED_IPDU__CHECKSUM = 2;
    public static final int USER_DEFINED_IPDU__TIMESTAMP = 3;
    public static final int USER_DEFINED_IPDU__GSHORT_NAME = 4;
    public static final int USER_DEFINED_IPDU__GUUID = 5;
    public static final int USER_DEFINED_IPDU__GCATEGORY = 6;
    public static final int USER_DEFINED_IPDU__GDESC = 7;
    public static final int USER_DEFINED_IPDU__SHORT_NAME = 8;
    public static final int USER_DEFINED_IPDU__LONG_NAME = 9;
    public static final int USER_DEFINED_IPDU__DESC = 10;
    public static final int USER_DEFINED_IPDU__CATEGORY = 11;
    public static final int USER_DEFINED_IPDU__ADMIN_DATA = 12;
    public static final int USER_DEFINED_IPDU__INTRODUCTION = 13;
    public static final int USER_DEFINED_IPDU__UUID = 14;
    public static final int USER_DEFINED_IPDU__ALL_EXTENSIONS = 15;
    public static final int USER_DEFINED_IPDU__CONTAINED_EXTENSIONS = 16;
    public static final int USER_DEFINED_IPDU__GAR_PACKAGE = 17;
    public static final int USER_DEFINED_IPDU__AR_PACKAGE = 18;
    public static final int USER_DEFINED_IPDU__LENGTH = 19;
    public static final int USER_DEFINED_IPDU__UNUSED_BIT_PATTERN = 20;
    public static final int USER_DEFINED_IPDU__CDD_TYPE = 21;
    public static final int USER_DEFINED_IPDU_FEATURE_COUNT = 22;
    public static final int USER_DEFINED_PDU = 28;
    public static final int USER_DEFINED_PDU__GCHECKSUM = 0;
    public static final int USER_DEFINED_PDU__GTIMESTAMP = 1;
    public static final int USER_DEFINED_PDU__CHECKSUM = 2;
    public static final int USER_DEFINED_PDU__TIMESTAMP = 3;
    public static final int USER_DEFINED_PDU__GSHORT_NAME = 4;
    public static final int USER_DEFINED_PDU__GUUID = 5;
    public static final int USER_DEFINED_PDU__GCATEGORY = 6;
    public static final int USER_DEFINED_PDU__GDESC = 7;
    public static final int USER_DEFINED_PDU__SHORT_NAME = 8;
    public static final int USER_DEFINED_PDU__LONG_NAME = 9;
    public static final int USER_DEFINED_PDU__DESC = 10;
    public static final int USER_DEFINED_PDU__CATEGORY = 11;
    public static final int USER_DEFINED_PDU__ADMIN_DATA = 12;
    public static final int USER_DEFINED_PDU__INTRODUCTION = 13;
    public static final int USER_DEFINED_PDU__UUID = 14;
    public static final int USER_DEFINED_PDU__ALL_EXTENSIONS = 15;
    public static final int USER_DEFINED_PDU__CONTAINED_EXTENSIONS = 16;
    public static final int USER_DEFINED_PDU__GAR_PACKAGE = 17;
    public static final int USER_DEFINED_PDU__AR_PACKAGE = 18;
    public static final int USER_DEFINED_PDU__CDD_TYPE = 19;
    public static final int USER_DEFINED_PDU_FEATURE_COUNT = 20;
    public static final int FRAME_TRIGGERING = 29;
    public static final int FRAME_TRIGGERING__GCHECKSUM = 0;
    public static final int FRAME_TRIGGERING__GTIMESTAMP = 1;
    public static final int FRAME_TRIGGERING__CHECKSUM = 2;
    public static final int FRAME_TRIGGERING__TIMESTAMP = 3;
    public static final int FRAME_TRIGGERING__GSHORT_NAME = 4;
    public static final int FRAME_TRIGGERING__GUUID = 5;
    public static final int FRAME_TRIGGERING__GCATEGORY = 6;
    public static final int FRAME_TRIGGERING__GDESC = 7;
    public static final int FRAME_TRIGGERING__SHORT_NAME = 8;
    public static final int FRAME_TRIGGERING__LONG_NAME = 9;
    public static final int FRAME_TRIGGERING__DESC = 10;
    public static final int FRAME_TRIGGERING__CATEGORY = 11;
    public static final int FRAME_TRIGGERING__ADMIN_DATA = 12;
    public static final int FRAME_TRIGGERING__INTRODUCTION = 13;
    public static final int FRAME_TRIGGERING__UUID = 14;
    public static final int FRAME_TRIGGERING__ALL_EXTENSIONS = 15;
    public static final int FRAME_TRIGGERING__CONTAINED_EXTENSIONS = 16;
    public static final int FRAME_TRIGGERING__PHYSICAL_CHANNEL = 17;
    public static final int FRAME_TRIGGERING__FRAME_PORTS = 18;
    public static final int FRAME_TRIGGERING__FRAME = 19;
    public static final int FRAME_TRIGGERING__IPDU_TRIGGERINGS = 20;
    public static final int FRAME_TRIGGERING_FEATURE_COUNT = 21;
    public static final int COMMUNICATION_DIRECTION_TYPE = 30;
    public static final int TRANSFER_PROPERTY_ENUM = 31;
    public static final int TRIGGER_MODE = 32;

    public EClass getAbstractSignal();

    public EClass getDcmIPdu();

    public EClass getIPdu();

    public EAttribute getIPdu_Length();

    public EAttribute getIPdu_UnusedBitPattern();

    public EClass getPdu();

    public EClass getDynamicPart();

    public EReference getDynamicPart_MultiplexedIPdu();

    public EReference getDynamicPart_DynamicPartAlternatives();

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

    public EClass getSignalIPdu();

    public EReference getSignalIPdu_IPduTimingSpecification();

    public EReference getSignalIPdu_SignalToPduMappings();

    public EClass getISignalToIPduMapping();

    public EAttribute getISignalToIPduMapping_PackingByteOrder();

    public EReference getISignalToIPduMapping_Signal();

    public EAttribute getISignalToIPduMapping_StartPosition();

    public EAttribute getISignalToIPduMapping_TransferProperty();

    public EAttribute getISignalToIPduMapping_UpdateIndicationBitPosition();

    public EClass getISignal();

    public EReference getISignal_SystemSignal();

    public EClass getIPduTiming();

    public EReference getIPduTiming_CyclicTiming();

    public EReference getIPduTiming_EventControlledTiming();

    public EAttribute getIPduTiming_MinimumDelay();

    public EReference getIPduTiming_RequestControlledTiming();

    public EReference getIPduTiming_TransmissionModeDeclaration();

    public EClass getFrame();

    public EAttribute getFrame_FrameLength();

    public EReference getFrame_PduToFrameMappings();

    public EClass getPduToFrameMapping();

    public EReference getPduToFrameMapping_Frame();

    public EAttribute getPduToFrameMapping_PackingByteOrder();

    public EReference getPduToFrameMapping_Pdu();

    public EAttribute getPduToFrameMapping_StartPosition();

    public EAttribute getPduToFrameMapping_UpdateIndicationBitPosition();

    public EClass getFramePort();

    public EClass getIPduGroup();

    public EAttribute getIPduGroup_CommunicationDirection();

    public EAttribute getIPduGroup_CommunicationMode();

    public EReference getIPduGroup_ContainedIPduGroups();

    public EReference getIPduGroup_IPdus();

    public EClass getIPduPort();

    public EClass getIPduTriggering();

    public EReference getIPduTriggering_PhysicalChannel();

    public EReference getIPduTriggering_IPduPorts();

    public EReference getIPduTriggering_IPdu();

    public EReference getIPduTriggering_ISignalTriggerings();

    public EReference getIPduTriggering_TimingRequirement();

    public EClass getISignalTriggering();

    public EReference getISignalTriggering_PhysicalChannel();

    public EReference getISignalTriggering_CyclicTiming();

    public EReference getISignalTriggering_EventControlledTiming();

    public EReference getISignalTriggering_ISignalPorts();

    public EReference getISignalTriggering_Signal();

    public EClass getSignalPort();

    public EReference getSignalPort_DataFilter();

    public EAttribute getSignalPort_Timeout();

    public EClass getMultiplexedIPdu();

    public EReference getMultiplexedIPdu_DynamicPart();

    public EAttribute getMultiplexedIPdu_SelectorFieldByteOrder();

    public EAttribute getMultiplexedIPdu_SelectorFieldLength();

    public EAttribute getMultiplexedIPdu_SelectorFieldStartPosition();

    public EReference getMultiplexedIPdu_StaticPart();

    public EAttribute getMultiplexedIPdu_TriggerMode();

    public EClass getStaticPart();

    public EReference getStaticPart_MultiplexedIPdu();

    public EReference getStaticPart_IPdu();

    public EClass getNmPdu();

    public EReference getNmPdu_ISignalToIPduMappings();

    public EAttribute getNmPdu_Length();

    public EAttribute getNmPdu_NmCbvPosition();

    public EAttribute getNmPdu_NmNidPosition();

    public EAttribute getNmPdu_NmUserDataLength();

    public EClass getNPdu();

    public EReference getNPdu_FlexrayTpChannel();

    public EClass getPdurIPduGroup();

    public EAttribute getPdurIPduGroup_CommunicationMode();

    public EReference getPdurIPduGroup_IPdus();

    public EClass getSystemSignal();

    public EReference getSystemSignal_DataType();

    public EReference getSystemSignal_InitValue();

    public EAttribute getSystemSignal_Length();

    public EClass getSystemSignalGroup();

    public EReference getSystemSignalGroup_SystemSignals();

    public EClass getUserDefinedIPdu();

    public EAttribute getUserDefinedIPdu_CddType();

    public EClass getUserDefinedPdu();

    public EAttribute getUserDefinedPdu_CddType();

    public EClass getFrameTriggering();

    public EReference getFrameTriggering_PhysicalChannel();

    public EReference getFrameTriggering_FramePorts();

    public EReference getFrameTriggering_Frame();

    public EReference getFrameTriggering_IPduTriggerings();

    public EEnum getCommunicationDirectionType();

    public EEnum getTransferPropertyEnum();

    public EEnum getTriggerMode();

    public CorecommunicationFactory getCorecommunicationFactory();

    public static interface Literals {
        public static final EClass ABSTRACT_SIGNAL = eINSTANCE.getAbstractSignal();
        public static final EClass DCM_IPDU = eINSTANCE.getDcmIPdu();
        public static final EClass IPDU = eINSTANCE.getIPdu();
        public static final EAttribute IPDU__LENGTH = eINSTANCE.getIPdu_Length();
        public static final EAttribute IPDU__UNUSED_BIT_PATTERN = eINSTANCE.getIPdu_UnusedBitPattern();
        public static final EClass PDU = eINSTANCE.getPdu();
        public static final EClass DYNAMIC_PART = eINSTANCE.getDynamicPart();
        public static final EReference DYNAMIC_PART__MULTIPLEXED_IPDU = eINSTANCE.getDynamicPart_MultiplexedIPdu();
        public static final EReference DYNAMIC_PART__DYNAMIC_PART_ALTERNATIVES = eINSTANCE.getDynamicPart_DynamicPartAlternatives();
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
        public static final EClass SIGNAL_IPDU = eINSTANCE.getSignalIPdu();
        public static final EReference SIGNAL_IPDU__IPDU_TIMING_SPECIFICATION = eINSTANCE.getSignalIPdu_IPduTimingSpecification();
        public static final EReference SIGNAL_IPDU__SIGNAL_TO_PDU_MAPPINGS = eINSTANCE.getSignalIPdu_SignalToPduMappings();
        public static final EClass ISIGNAL_TO_IPDU_MAPPING = eINSTANCE.getISignalToIPduMapping();
        public static final EAttribute ISIGNAL_TO_IPDU_MAPPING__PACKING_BYTE_ORDER = eINSTANCE.getISignalToIPduMapping_PackingByteOrder();
        public static final EReference ISIGNAL_TO_IPDU_MAPPING__SIGNAL = eINSTANCE.getISignalToIPduMapping_Signal();
        public static final EAttribute ISIGNAL_TO_IPDU_MAPPING__START_POSITION = eINSTANCE.getISignalToIPduMapping_StartPosition();
        public static final EAttribute ISIGNAL_TO_IPDU_MAPPING__TRANSFER_PROPERTY = eINSTANCE.getISignalToIPduMapping_TransferProperty();
        public static final EAttribute ISIGNAL_TO_IPDU_MAPPING__UPDATE_INDICATION_BIT_POSITION = eINSTANCE.getISignalToIPduMapping_UpdateIndicationBitPosition();
        public static final EClass ISIGNAL = eINSTANCE.getISignal();
        public static final EReference ISIGNAL__SYSTEM_SIGNAL = eINSTANCE.getISignal_SystemSignal();
        public static final EClass IPDU_TIMING = eINSTANCE.getIPduTiming();
        public static final EReference IPDU_TIMING__CYCLIC_TIMING = eINSTANCE.getIPduTiming_CyclicTiming();
        public static final EReference IPDU_TIMING__EVENT_CONTROLLED_TIMING = eINSTANCE.getIPduTiming_EventControlledTiming();
        public static final EAttribute IPDU_TIMING__MINIMUM_DELAY = eINSTANCE.getIPduTiming_MinimumDelay();
        public static final EReference IPDU_TIMING__REQUEST_CONTROLLED_TIMING = eINSTANCE.getIPduTiming_RequestControlledTiming();
        public static final EReference IPDU_TIMING__TRANSMISSION_MODE_DECLARATION = eINSTANCE.getIPduTiming_TransmissionModeDeclaration();
        public static final EClass FRAME = eINSTANCE.getFrame();
        public static final EAttribute FRAME__FRAME_LENGTH = eINSTANCE.getFrame_FrameLength();
        public static final EReference FRAME__PDU_TO_FRAME_MAPPINGS = eINSTANCE.getFrame_PduToFrameMappings();
        public static final EClass PDU_TO_FRAME_MAPPING = eINSTANCE.getPduToFrameMapping();
        public static final EReference PDU_TO_FRAME_MAPPING__FRAME = eINSTANCE.getPduToFrameMapping_Frame();
        public static final EAttribute PDU_TO_FRAME_MAPPING__PACKING_BYTE_ORDER = eINSTANCE.getPduToFrameMapping_PackingByteOrder();
        public static final EReference PDU_TO_FRAME_MAPPING__PDU = eINSTANCE.getPduToFrameMapping_Pdu();
        public static final EAttribute PDU_TO_FRAME_MAPPING__START_POSITION = eINSTANCE.getPduToFrameMapping_StartPosition();
        public static final EAttribute PDU_TO_FRAME_MAPPING__UPDATE_INDICATION_BIT_POSITION = eINSTANCE.getPduToFrameMapping_UpdateIndicationBitPosition();
        public static final EClass FRAME_PORT = eINSTANCE.getFramePort();
        public static final EClass IPDU_GROUP = eINSTANCE.getIPduGroup();
        public static final EAttribute IPDU_GROUP__COMMUNICATION_DIRECTION = eINSTANCE.getIPduGroup_CommunicationDirection();
        public static final EAttribute IPDU_GROUP__COMMUNICATION_MODE = eINSTANCE.getIPduGroup_CommunicationMode();
        public static final EReference IPDU_GROUP__CONTAINED_IPDU_GROUPS = eINSTANCE.getIPduGroup_ContainedIPduGroups();
        public static final EReference IPDU_GROUP__IPDUS = eINSTANCE.getIPduGroup_IPdus();
        public static final EClass IPDU_PORT = eINSTANCE.getIPduPort();
        public static final EClass IPDU_TRIGGERING = eINSTANCE.getIPduTriggering();
        public static final EReference IPDU_TRIGGERING__PHYSICAL_CHANNEL = eINSTANCE.getIPduTriggering_PhysicalChannel();
        public static final EReference IPDU_TRIGGERING__IPDU_PORTS = eINSTANCE.getIPduTriggering_IPduPorts();
        public static final EReference IPDU_TRIGGERING__IPDU = eINSTANCE.getIPduTriggering_IPdu();
        public static final EReference IPDU_TRIGGERING__ISIGNAL_TRIGGERINGS = eINSTANCE.getIPduTriggering_ISignalTriggerings();
        public static final EReference IPDU_TRIGGERING__TIMING_REQUIREMENT = eINSTANCE.getIPduTriggering_TimingRequirement();
        public static final EClass ISIGNAL_TRIGGERING = eINSTANCE.getISignalTriggering();
        public static final EReference ISIGNAL_TRIGGERING__PHYSICAL_CHANNEL = eINSTANCE.getISignalTriggering_PhysicalChannel();
        public static final EReference ISIGNAL_TRIGGERING__CYCLIC_TIMING = eINSTANCE.getISignalTriggering_CyclicTiming();
        public static final EReference ISIGNAL_TRIGGERING__EVENT_CONTROLLED_TIMING = eINSTANCE.getISignalTriggering_EventControlledTiming();
        public static final EReference ISIGNAL_TRIGGERING__ISIGNAL_PORTS = eINSTANCE.getISignalTriggering_ISignalPorts();
        public static final EReference ISIGNAL_TRIGGERING__SIGNAL = eINSTANCE.getISignalTriggering_Signal();
        public static final EClass SIGNAL_PORT = eINSTANCE.getSignalPort();
        public static final EReference SIGNAL_PORT__DATA_FILTER = eINSTANCE.getSignalPort_DataFilter();
        public static final EAttribute SIGNAL_PORT__TIMEOUT = eINSTANCE.getSignalPort_Timeout();
        public static final EClass MULTIPLEXED_IPDU = eINSTANCE.getMultiplexedIPdu();
        public static final EReference MULTIPLEXED_IPDU__DYNAMIC_PART = eINSTANCE.getMultiplexedIPdu_DynamicPart();
        public static final EAttribute MULTIPLEXED_IPDU__SELECTOR_FIELD_BYTE_ORDER = eINSTANCE.getMultiplexedIPdu_SelectorFieldByteOrder();
        public static final EAttribute MULTIPLEXED_IPDU__SELECTOR_FIELD_LENGTH = eINSTANCE.getMultiplexedIPdu_SelectorFieldLength();
        public static final EAttribute MULTIPLEXED_IPDU__SELECTOR_FIELD_START_POSITION = eINSTANCE.getMultiplexedIPdu_SelectorFieldStartPosition();
        public static final EReference MULTIPLEXED_IPDU__STATIC_PART = eINSTANCE.getMultiplexedIPdu_StaticPart();
        public static final EAttribute MULTIPLEXED_IPDU__TRIGGER_MODE = eINSTANCE.getMultiplexedIPdu_TriggerMode();
        public static final EClass STATIC_PART = eINSTANCE.getStaticPart();
        public static final EReference STATIC_PART__MULTIPLEXED_IPDU = eINSTANCE.getStaticPart_MultiplexedIPdu();
        public static final EReference STATIC_PART__IPDU = eINSTANCE.getStaticPart_IPdu();
        public static final EClass NM_PDU = eINSTANCE.getNmPdu();
        public static final EReference NM_PDU__ISIGNAL_TO_IPDU_MAPPINGS = eINSTANCE.getNmPdu_ISignalToIPduMappings();
        public static final EAttribute NM_PDU__LENGTH = eINSTANCE.getNmPdu_Length();
        public static final EAttribute NM_PDU__NM_CBV_POSITION = eINSTANCE.getNmPdu_NmCbvPosition();
        public static final EAttribute NM_PDU__NM_NID_POSITION = eINSTANCE.getNmPdu_NmNidPosition();
        public static final EAttribute NM_PDU__NM_USER_DATA_LENGTH = eINSTANCE.getNmPdu_NmUserDataLength();
        public static final EClass NPDU = eINSTANCE.getNPdu();
        public static final EReference NPDU__FLEXRAY_TP_CHANNEL = eINSTANCE.getNPdu_FlexrayTpChannel();
        public static final EClass PDUR_IPDU_GROUP = eINSTANCE.getPdurIPduGroup();
        public static final EAttribute PDUR_IPDU_GROUP__COMMUNICATION_MODE = eINSTANCE.getPdurIPduGroup_CommunicationMode();
        public static final EReference PDUR_IPDU_GROUP__IPDUS = eINSTANCE.getPdurIPduGroup_IPdus();
        public static final EClass SYSTEM_SIGNAL = eINSTANCE.getSystemSignal();
        public static final EReference SYSTEM_SIGNAL__DATA_TYPE = eINSTANCE.getSystemSignal_DataType();
        public static final EReference SYSTEM_SIGNAL__INIT_VALUE = eINSTANCE.getSystemSignal_InitValue();
        public static final EAttribute SYSTEM_SIGNAL__LENGTH = eINSTANCE.getSystemSignal_Length();
        public static final EClass SYSTEM_SIGNAL_GROUP = eINSTANCE.getSystemSignalGroup();
        public static final EReference SYSTEM_SIGNAL_GROUP__SYSTEM_SIGNALS = eINSTANCE.getSystemSignalGroup_SystemSignals();
        public static final EClass USER_DEFINED_IPDU = eINSTANCE.getUserDefinedIPdu();
        public static final EAttribute USER_DEFINED_IPDU__CDD_TYPE = eINSTANCE.getUserDefinedIPdu_CddType();
        public static final EClass USER_DEFINED_PDU = eINSTANCE.getUserDefinedPdu();
        public static final EAttribute USER_DEFINED_PDU__CDD_TYPE = eINSTANCE.getUserDefinedPdu_CddType();
        public static final EClass FRAME_TRIGGERING = eINSTANCE.getFrameTriggering();
        public static final EReference FRAME_TRIGGERING__PHYSICAL_CHANNEL = eINSTANCE.getFrameTriggering_PhysicalChannel();
        public static final EReference FRAME_TRIGGERING__FRAME_PORTS = eINSTANCE.getFrameTriggering_FramePorts();
        public static final EReference FRAME_TRIGGERING__FRAME = eINSTANCE.getFrameTriggering_Frame();
        public static final EReference FRAME_TRIGGERING__IPDU_TRIGGERINGS = eINSTANCE.getFrameTriggering_IPduTriggerings();
        public static final EEnum COMMUNICATION_DIRECTION_TYPE = eINSTANCE.getCommunicationDirectionType();
        public static final EEnum TRANSFER_PROPERTY_ENUM = eINSTANCE.getTransferPropertyEnum();
        public static final EEnum TRIGGER_MODE = eINSTANCE.getTriggerMode();
    }
}

