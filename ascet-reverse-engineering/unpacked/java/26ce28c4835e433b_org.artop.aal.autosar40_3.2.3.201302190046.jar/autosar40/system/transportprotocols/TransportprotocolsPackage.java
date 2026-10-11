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
package autosar40.system.transportprotocols;

import autosar40.system.transportprotocols.TransportprotocolsFactory;
import autosar40.system.transportprotocols.impl.TransportprotocolsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TransportprotocolsPackage
extends EPackage {
    public static final String eNAME = "transportprotocols";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/tp";
    public static final String eNS_PREFIX = "";
    public static final TransportprotocolsPackage eINSTANCE = TransportprotocolsPackageImpl.init();
    public static final int CAN_TP_ADDRESS = 0;
    public static final int CAN_TP_ADDRESS__GCHECKSUM = 0;
    public static final int CAN_TP_ADDRESS__GTIMESTAMP = 1;
    public static final int CAN_TP_ADDRESS__CHECKSUM = 2;
    public static final int CAN_TP_ADDRESS__TIMESTAMP = 3;
    public static final int CAN_TP_ADDRESS__GSHORT_NAME = 4;
    public static final int CAN_TP_ADDRESS__SHORT_NAME = 5;
    public static final int CAN_TP_ADDRESS__LONG_NAME = 6;
    public static final int CAN_TP_ADDRESS__GUUID = 7;
    public static final int CAN_TP_ADDRESS__GCATEGORY = 8;
    public static final int CAN_TP_ADDRESS__GDESC = 9;
    public static final int CAN_TP_ADDRESS__DESC = 10;
    public static final int CAN_TP_ADDRESS__CATEGORY = 11;
    public static final int CAN_TP_ADDRESS__ADMIN_DATA = 12;
    public static final int CAN_TP_ADDRESS__INTRODUCTION = 13;
    public static final int CAN_TP_ADDRESS__ANNOTATIONS = 14;
    public static final int CAN_TP_ADDRESS__UUID = 15;
    public static final int CAN_TP_ADDRESS__ALL_EXTENSIONS = 16;
    public static final int CAN_TP_ADDRESS__CONTAINED_EXTENSIONS = 17;
    public static final int CAN_TP_ADDRESS__CAN_TP_CONFIG = 18;
    public static final int CAN_TP_ADDRESS__TP_ADDRESS = 19;
    public static final int CAN_TP_ADDRESS__TP_ADDRESS_EXTENSION_VALUE = 20;
    public static final int CAN_TP_ADDRESS__VARIATION_POINT = 21;
    public static final int CAN_TP_ADDRESS_FEATURE_COUNT = 22;
    public static final int CAN_TP_CHANNEL = 1;
    public static final int CAN_TP_CHANNEL__GCHECKSUM = 0;
    public static final int CAN_TP_CHANNEL__GTIMESTAMP = 1;
    public static final int CAN_TP_CHANNEL__CHECKSUM = 2;
    public static final int CAN_TP_CHANNEL__TIMESTAMP = 3;
    public static final int CAN_TP_CHANNEL__GSHORT_NAME = 4;
    public static final int CAN_TP_CHANNEL__SHORT_NAME = 5;
    public static final int CAN_TP_CHANNEL__LONG_NAME = 6;
    public static final int CAN_TP_CHANNEL__GUUID = 7;
    public static final int CAN_TP_CHANNEL__GCATEGORY = 8;
    public static final int CAN_TP_CHANNEL__GDESC = 9;
    public static final int CAN_TP_CHANNEL__DESC = 10;
    public static final int CAN_TP_CHANNEL__CATEGORY = 11;
    public static final int CAN_TP_CHANNEL__ADMIN_DATA = 12;
    public static final int CAN_TP_CHANNEL__INTRODUCTION = 13;
    public static final int CAN_TP_CHANNEL__ANNOTATIONS = 14;
    public static final int CAN_TP_CHANNEL__UUID = 15;
    public static final int CAN_TP_CHANNEL__ALL_EXTENSIONS = 16;
    public static final int CAN_TP_CHANNEL__CONTAINED_EXTENSIONS = 17;
    public static final int CAN_TP_CHANNEL__CAN_TP_CONFIG = 18;
    public static final int CAN_TP_CHANNEL__CHANNEL_ID = 19;
    public static final int CAN_TP_CHANNEL__CHANNEL_MODE = 20;
    public static final int CAN_TP_CHANNEL__VARIATION_POINT = 21;
    public static final int CAN_TP_CHANNEL_FEATURE_COUNT = 22;
    public static final int TP_CONFIG = 3;
    public static final int TP_CONFIG__GCHECKSUM = 0;
    public static final int TP_CONFIG__GTIMESTAMP = 1;
    public static final int TP_CONFIG__CHECKSUM = 2;
    public static final int TP_CONFIG__TIMESTAMP = 3;
    public static final int TP_CONFIG__GSHORT_NAME = 4;
    public static final int TP_CONFIG__SHORT_NAME = 5;
    public static final int TP_CONFIG__LONG_NAME = 6;
    public static final int TP_CONFIG__GUUID = 7;
    public static final int TP_CONFIG__GCATEGORY = 8;
    public static final int TP_CONFIG__GDESC = 9;
    public static final int TP_CONFIG__DESC = 10;
    public static final int TP_CONFIG__CATEGORY = 11;
    public static final int TP_CONFIG__ADMIN_DATA = 12;
    public static final int TP_CONFIG__INTRODUCTION = 13;
    public static final int TP_CONFIG__ANNOTATIONS = 14;
    public static final int TP_CONFIG__UUID = 15;
    public static final int TP_CONFIG__ALL_EXTENSIONS = 16;
    public static final int TP_CONFIG__CONTAINED_EXTENSIONS = 17;
    public static final int TP_CONFIG__GAR_PACKAGE = 18;
    public static final int TP_CONFIG__AR_PACKAGE = 19;
    public static final int TP_CONFIG__VARIATION_POINT = 20;
    public static final int TP_CONFIG__COMMUNICATION_CLUSTER = 21;
    public static final int TP_CONFIG_FEATURE_COUNT = 22;
    public static final int CAN_TP_CONFIG = 2;
    public static final int CAN_TP_CONFIG__GCHECKSUM = 0;
    public static final int CAN_TP_CONFIG__GTIMESTAMP = 1;
    public static final int CAN_TP_CONFIG__CHECKSUM = 2;
    public static final int CAN_TP_CONFIG__TIMESTAMP = 3;
    public static final int CAN_TP_CONFIG__GSHORT_NAME = 4;
    public static final int CAN_TP_CONFIG__SHORT_NAME = 5;
    public static final int CAN_TP_CONFIG__LONG_NAME = 6;
    public static final int CAN_TP_CONFIG__GUUID = 7;
    public static final int CAN_TP_CONFIG__GCATEGORY = 8;
    public static final int CAN_TP_CONFIG__GDESC = 9;
    public static final int CAN_TP_CONFIG__DESC = 10;
    public static final int CAN_TP_CONFIG__CATEGORY = 11;
    public static final int CAN_TP_CONFIG__ADMIN_DATA = 12;
    public static final int CAN_TP_CONFIG__INTRODUCTION = 13;
    public static final int CAN_TP_CONFIG__ANNOTATIONS = 14;
    public static final int CAN_TP_CONFIG__UUID = 15;
    public static final int CAN_TP_CONFIG__ALL_EXTENSIONS = 16;
    public static final int CAN_TP_CONFIG__CONTAINED_EXTENSIONS = 17;
    public static final int CAN_TP_CONFIG__GAR_PACKAGE = 18;
    public static final int CAN_TP_CONFIG__AR_PACKAGE = 19;
    public static final int CAN_TP_CONFIG__VARIATION_POINT = 20;
    public static final int CAN_TP_CONFIG__COMMUNICATION_CLUSTER = 21;
    public static final int CAN_TP_CONFIG__TP_ADDRESS = 22;
    public static final int CAN_TP_CONFIG__TP_CHANNELS = 23;
    public static final int CAN_TP_CONFIG__TP_CONNECTIONS = 24;
    public static final int CAN_TP_CONFIG__TP_ECUS = 25;
    public static final int CAN_TP_CONFIG__TP_NODES = 26;
    public static final int CAN_TP_CONFIG_FEATURE_COUNT = 27;
    public static final int CAN_TP_CONNECTION = 4;
    public static final int CAN_TP_CONNECTION__GCHECKSUM = 0;
    public static final int CAN_TP_CONNECTION__GTIMESTAMP = 1;
    public static final int CAN_TP_CONNECTION__CHECKSUM = 2;
    public static final int CAN_TP_CONNECTION__TIMESTAMP = 3;
    public static final int CAN_TP_CONNECTION__CAN_TP_CONFIG = 4;
    public static final int CAN_TP_CONNECTION__ADDRESSING_FORMAT = 5;
    public static final int CAN_TP_CONNECTION__CAN_TP_CHANNEL = 6;
    public static final int CAN_TP_CONNECTION__DATA_PDU = 7;
    public static final int CAN_TP_CONNECTION__FLOW_CONTROL_PDU = 8;
    public static final int CAN_TP_CONNECTION__MAX_BLOCK_SIZE = 9;
    public static final int CAN_TP_CONNECTION__MULTICAST = 10;
    public static final int CAN_TP_CONNECTION__PADDING_ACTIVATION = 11;
    public static final int CAN_TP_CONNECTION__RECEIVERS = 12;
    public static final int CAN_TP_CONNECTION__TA_TYPE = 13;
    public static final int CAN_TP_CONNECTION__TIMEOUT_BR = 14;
    public static final int CAN_TP_CONNECTION__TIMEOUT_BS = 15;
    public static final int CAN_TP_CONNECTION__TIMEOUT_CR = 16;
    public static final int CAN_TP_CONNECTION__TIMEOUT_CS = 17;
    public static final int CAN_TP_CONNECTION__TP_SDU = 18;
    public static final int CAN_TP_CONNECTION__TRANSMIT_CANCELLATION = 19;
    public static final int CAN_TP_CONNECTION__TRANSMITTER = 20;
    public static final int CAN_TP_CONNECTION_FEATURE_COUNT = 21;
    public static final int CAN_TP_NODE = 5;
    public static final int CAN_TP_NODE__GCHECKSUM = 0;
    public static final int CAN_TP_NODE__GTIMESTAMP = 1;
    public static final int CAN_TP_NODE__CHECKSUM = 2;
    public static final int CAN_TP_NODE__TIMESTAMP = 3;
    public static final int CAN_TP_NODE__GSHORT_NAME = 4;
    public static final int CAN_TP_NODE__SHORT_NAME = 5;
    public static final int CAN_TP_NODE__LONG_NAME = 6;
    public static final int CAN_TP_NODE__GUUID = 7;
    public static final int CAN_TP_NODE__GCATEGORY = 8;
    public static final int CAN_TP_NODE__GDESC = 9;
    public static final int CAN_TP_NODE__DESC = 10;
    public static final int CAN_TP_NODE__CATEGORY = 11;
    public static final int CAN_TP_NODE__ADMIN_DATA = 12;
    public static final int CAN_TP_NODE__INTRODUCTION = 13;
    public static final int CAN_TP_NODE__ANNOTATIONS = 14;
    public static final int CAN_TP_NODE__UUID = 15;
    public static final int CAN_TP_NODE__ALL_EXTENSIONS = 16;
    public static final int CAN_TP_NODE__CONTAINED_EXTENSIONS = 17;
    public static final int CAN_TP_NODE__CAN_TP_CONFIG = 18;
    public static final int CAN_TP_NODE__CONNECTOR = 19;
    public static final int CAN_TP_NODE__MAX_FC_WAIT = 20;
    public static final int CAN_TP_NODE__ST_MIN = 21;
    public static final int CAN_TP_NODE__TIMEOUT_AR = 22;
    public static final int CAN_TP_NODE__TIMEOUT_AS = 23;
    public static final int CAN_TP_NODE__TP_ADDRESS = 24;
    public static final int CAN_TP_NODE__VARIATION_POINT = 25;
    public static final int CAN_TP_NODE_FEATURE_COUNT = 26;
    public static final int CAN_TP_ECU = 6;
    public static final int CAN_TP_ECU__GCHECKSUM = 0;
    public static final int CAN_TP_ECU__GTIMESTAMP = 1;
    public static final int CAN_TP_ECU__CHECKSUM = 2;
    public static final int CAN_TP_ECU__TIMESTAMP = 3;
    public static final int CAN_TP_ECU__CAN_TP_CONFIG = 4;
    public static final int CAN_TP_ECU__CYCLE_TIME_MAIN_FUNCTION = 5;
    public static final int CAN_TP_ECU__ECU_INSTANCE = 6;
    public static final int CAN_TP_ECU__VARIATION_POINT = 7;
    public static final int CAN_TP_ECU_FEATURE_COUNT = 8;
    public static final int FLEXRAY_AR_TP_CHANNEL = 7;
    public static final int FLEXRAY_AR_TP_CHANNEL__GCHECKSUM = 0;
    public static final int FLEXRAY_AR_TP_CHANNEL__GTIMESTAMP = 1;
    public static final int FLEXRAY_AR_TP_CHANNEL__CHECKSUM = 2;
    public static final int FLEXRAY_AR_TP_CHANNEL__TIMESTAMP = 3;
    public static final int FLEXRAY_AR_TP_CHANNEL__FLEXRAY_AR_TP_CONFIG = 4;
    public static final int FLEXRAY_AR_TP_CHANNEL__ACK_TYPE = 5;
    public static final int FLEXRAY_AR_TP_CHANNEL__EXTENDED_ADDRESSING = 6;
    public static final int FLEXRAY_AR_TP_CHANNEL__FLOW_CONTROL_PDU = 7;
    public static final int FLEXRAY_AR_TP_CHANNEL__MAX_AR = 8;
    public static final int FLEXRAY_AR_TP_CHANNEL__MAX_AS = 9;
    public static final int FLEXRAY_AR_TP_CHANNEL__MAX_BS = 10;
    public static final int FLEXRAY_AR_TP_CHANNEL__MAX_BUFFER_REQUEST = 11;
    public static final int FLEXRAY_AR_TP_CHANNEL__MAX_FR_IF = 12;
    public static final int FLEXRAY_AR_TP_CHANNEL__MAX_RETRIES = 13;
    public static final int FLEXRAY_AR_TP_CHANNEL__MAXIMUM_MESSAGE_LENGTH = 14;
    public static final int FLEXRAY_AR_TP_CHANNEL__MINIMUM_SEPARATION_TIME = 15;
    public static final int FLEXRAY_AR_TP_CHANNEL__MULTICAST_SEGMENTATION = 16;
    public static final int FLEXRAY_AR_TP_CHANNEL__PDU_POOLS = 17;
    public static final int FLEXRAY_AR_TP_CHANNEL__TIME_BR = 18;
    public static final int FLEXRAY_AR_TP_CHANNEL__TIME_BUFFER = 19;
    public static final int FLEXRAY_AR_TP_CHANNEL__TIME_CS = 20;
    public static final int FLEXRAY_AR_TP_CHANNEL__TIME_FR_IF = 21;
    public static final int FLEXRAY_AR_TP_CHANNEL__TIMEOUT_AR = 22;
    public static final int FLEXRAY_AR_TP_CHANNEL__TIMEOUT_AS = 23;
    public static final int FLEXRAY_AR_TP_CHANNEL__TIMEOUT_BS = 24;
    public static final int FLEXRAY_AR_TP_CHANNEL__TIMEOUT_CR = 25;
    public static final int FLEXRAY_AR_TP_CHANNEL__TP_CONNECTIONS = 26;
    public static final int FLEXRAY_AR_TP_CHANNEL__TRANSMIT_CANCELLATION = 27;
    public static final int FLEXRAY_AR_TP_CHANNEL__VARIATION_POINT = 28;
    public static final int FLEXRAY_AR_TP_CHANNEL_FEATURE_COUNT = 29;
    public static final int FLEXRAY_AR_TP_CONNECTION = 8;
    public static final int FLEXRAY_AR_TP_CONNECTION__GCHECKSUM = 0;
    public static final int FLEXRAY_AR_TP_CONNECTION__GTIMESTAMP = 1;
    public static final int FLEXRAY_AR_TP_CONNECTION__CHECKSUM = 2;
    public static final int FLEXRAY_AR_TP_CONNECTION__TIMESTAMP = 3;
    public static final int FLEXRAY_AR_TP_CONNECTION__FLEXRAY_AR_TP_CHANNEL = 4;
    public static final int FLEXRAY_AR_TP_CONNECTION__DIRECT_TP_SDU = 5;
    public static final int FLEXRAY_AR_TP_CONNECTION__FLOW_CONTROL_PDU = 6;
    public static final int FLEXRAY_AR_TP_CONNECTION__MULTICAST = 7;
    public static final int FLEXRAY_AR_TP_CONNECTION__REVERSED_TP_SDU = 8;
    public static final int FLEXRAY_AR_TP_CONNECTION__SOURCE = 9;
    public static final int FLEXRAY_AR_TP_CONNECTION__TARGETS = 10;
    public static final int FLEXRAY_AR_TP_CONNECTION__TRANSMIT_PDUS = 11;
    public static final int FLEXRAY_AR_TP_CONNECTION_FEATURE_COUNT = 12;
    public static final int FLEXRAY_AR_TP_NODE = 9;
    public static final int FLEXRAY_AR_TP_NODE__GCHECKSUM = 0;
    public static final int FLEXRAY_AR_TP_NODE__GTIMESTAMP = 1;
    public static final int FLEXRAY_AR_TP_NODE__CHECKSUM = 2;
    public static final int FLEXRAY_AR_TP_NODE__TIMESTAMP = 3;
    public static final int FLEXRAY_AR_TP_NODE__GSHORT_NAME = 4;
    public static final int FLEXRAY_AR_TP_NODE__SHORT_NAME = 5;
    public static final int FLEXRAY_AR_TP_NODE__LONG_NAME = 6;
    public static final int FLEXRAY_AR_TP_NODE__GUUID = 7;
    public static final int FLEXRAY_AR_TP_NODE__GCATEGORY = 8;
    public static final int FLEXRAY_AR_TP_NODE__GDESC = 9;
    public static final int FLEXRAY_AR_TP_NODE__DESC = 10;
    public static final int FLEXRAY_AR_TP_NODE__CATEGORY = 11;
    public static final int FLEXRAY_AR_TP_NODE__ADMIN_DATA = 12;
    public static final int FLEXRAY_AR_TP_NODE__INTRODUCTION = 13;
    public static final int FLEXRAY_AR_TP_NODE__ANNOTATIONS = 14;
    public static final int FLEXRAY_AR_TP_NODE__UUID = 15;
    public static final int FLEXRAY_AR_TP_NODE__ALL_EXTENSIONS = 16;
    public static final int FLEXRAY_AR_TP_NODE__CONTAINED_EXTENSIONS = 17;
    public static final int FLEXRAY_AR_TP_NODE__FLEXRAY_AR_TP_CONFIG = 18;
    public static final int FLEXRAY_AR_TP_NODE__CONNECTORS = 19;
    public static final int FLEXRAY_AR_TP_NODE__TP_ADDRESS = 20;
    public static final int FLEXRAY_AR_TP_NODE__VARIATION_POINT = 21;
    public static final int FLEXRAY_AR_TP_NODE_FEATURE_COUNT = 22;
    public static final int FLEXRAY_AR_TP_CONFIG = 10;
    public static final int FLEXRAY_AR_TP_CONFIG__GCHECKSUM = 0;
    public static final int FLEXRAY_AR_TP_CONFIG__GTIMESTAMP = 1;
    public static final int FLEXRAY_AR_TP_CONFIG__CHECKSUM = 2;
    public static final int FLEXRAY_AR_TP_CONFIG__TIMESTAMP = 3;
    public static final int FLEXRAY_AR_TP_CONFIG__GSHORT_NAME = 4;
    public static final int FLEXRAY_AR_TP_CONFIG__SHORT_NAME = 5;
    public static final int FLEXRAY_AR_TP_CONFIG__LONG_NAME = 6;
    public static final int FLEXRAY_AR_TP_CONFIG__GUUID = 7;
    public static final int FLEXRAY_AR_TP_CONFIG__GCATEGORY = 8;
    public static final int FLEXRAY_AR_TP_CONFIG__GDESC = 9;
    public static final int FLEXRAY_AR_TP_CONFIG__DESC = 10;
    public static final int FLEXRAY_AR_TP_CONFIG__CATEGORY = 11;
    public static final int FLEXRAY_AR_TP_CONFIG__ADMIN_DATA = 12;
    public static final int FLEXRAY_AR_TP_CONFIG__INTRODUCTION = 13;
    public static final int FLEXRAY_AR_TP_CONFIG__ANNOTATIONS = 14;
    public static final int FLEXRAY_AR_TP_CONFIG__UUID = 15;
    public static final int FLEXRAY_AR_TP_CONFIG__ALL_EXTENSIONS = 16;
    public static final int FLEXRAY_AR_TP_CONFIG__CONTAINED_EXTENSIONS = 17;
    public static final int FLEXRAY_AR_TP_CONFIG__GAR_PACKAGE = 18;
    public static final int FLEXRAY_AR_TP_CONFIG__AR_PACKAGE = 19;
    public static final int FLEXRAY_AR_TP_CONFIG__VARIATION_POINT = 20;
    public static final int FLEXRAY_AR_TP_CONFIG__COMMUNICATION_CLUSTER = 21;
    public static final int FLEXRAY_AR_TP_CONFIG__TP_ADDRESS = 22;
    public static final int FLEXRAY_AR_TP_CONFIG__TP_CHANNELS = 23;
    public static final int FLEXRAY_AR_TP_CONFIG__TP_NODES = 24;
    public static final int FLEXRAY_AR_TP_CONFIG_FEATURE_COUNT = 25;
    public static final int FLEXRAY_TP_CONFIG = 11;
    public static final int FLEXRAY_TP_CONFIG__GCHECKSUM = 0;
    public static final int FLEXRAY_TP_CONFIG__GTIMESTAMP = 1;
    public static final int FLEXRAY_TP_CONFIG__CHECKSUM = 2;
    public static final int FLEXRAY_TP_CONFIG__TIMESTAMP = 3;
    public static final int FLEXRAY_TP_CONFIG__GSHORT_NAME = 4;
    public static final int FLEXRAY_TP_CONFIG__SHORT_NAME = 5;
    public static final int FLEXRAY_TP_CONFIG__LONG_NAME = 6;
    public static final int FLEXRAY_TP_CONFIG__GUUID = 7;
    public static final int FLEXRAY_TP_CONFIG__GCATEGORY = 8;
    public static final int FLEXRAY_TP_CONFIG__GDESC = 9;
    public static final int FLEXRAY_TP_CONFIG__DESC = 10;
    public static final int FLEXRAY_TP_CONFIG__CATEGORY = 11;
    public static final int FLEXRAY_TP_CONFIG__ADMIN_DATA = 12;
    public static final int FLEXRAY_TP_CONFIG__INTRODUCTION = 13;
    public static final int FLEXRAY_TP_CONFIG__ANNOTATIONS = 14;
    public static final int FLEXRAY_TP_CONFIG__UUID = 15;
    public static final int FLEXRAY_TP_CONFIG__ALL_EXTENSIONS = 16;
    public static final int FLEXRAY_TP_CONFIG__CONTAINED_EXTENSIONS = 17;
    public static final int FLEXRAY_TP_CONFIG__GAR_PACKAGE = 18;
    public static final int FLEXRAY_TP_CONFIG__AR_PACKAGE = 19;
    public static final int FLEXRAY_TP_CONFIG__VARIATION_POINT = 20;
    public static final int FLEXRAY_TP_CONFIG__COMMUNICATION_CLUSTER = 21;
    public static final int FLEXRAY_TP_CONFIG__PDU_POOLS = 22;
    public static final int FLEXRAY_TP_CONFIG__TP_ADDRESS = 23;
    public static final int FLEXRAY_TP_CONFIG__TP_CONNECTIONS = 24;
    public static final int FLEXRAY_TP_CONFIG__TP_CONNECTION_CONTROLS = 25;
    public static final int FLEXRAY_TP_CONFIG__TP_ECUS = 26;
    public static final int FLEXRAY_TP_CONFIG__TP_NODES = 27;
    public static final int FLEXRAY_TP_CONFIG_FEATURE_COUNT = 28;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL = 12;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__GCHECKSUM = 0;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__GTIMESTAMP = 1;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__CHECKSUM = 2;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__TIMESTAMP = 3;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__GSHORT_NAME = 4;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__SHORT_NAME = 5;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__LONG_NAME = 6;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__GUUID = 7;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__GCATEGORY = 8;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__GDESC = 9;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__DESC = 10;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__CATEGORY = 11;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__ADMIN_DATA = 12;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__INTRODUCTION = 13;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__ANNOTATIONS = 14;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__UUID = 15;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__ALL_EXTENSIONS = 16;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__CONTAINED_EXTENSIONS = 17;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__FLEXRAY_TP_CONFIG = 18;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__ACK_TYPE = 19;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__MAX_AR = 20;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__MAX_AS = 21;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__MAX_BUFFER_SIZE = 22;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__MAX_FC_WAIT = 23;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__MAX_FR_IF = 24;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__MAX_NUMBER_OF_NPDU_PER_CYCLE = 25;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__MAX_RETRIES = 26;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__SEPARATION_CYCLE_EXPONENT = 27;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__TIME_BR = 28;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__TIME_BUFFER = 29;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__TIME_FR_IF = 30;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__TIMEOUT_AR = 31;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__TIMEOUT_AS = 32;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__TIMEOUT_BS = 33;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__TIMEOUT_CR = 34;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL__VARIATION_POINT = 35;
    public static final int FLEXRAY_TP_CONNECTION_CONTROL_FEATURE_COUNT = 36;
    public static final int FLEXRAY_TP_ECU = 13;
    public static final int FLEXRAY_TP_ECU__GCHECKSUM = 0;
    public static final int FLEXRAY_TP_ECU__GTIMESTAMP = 1;
    public static final int FLEXRAY_TP_ECU__CHECKSUM = 2;
    public static final int FLEXRAY_TP_ECU__TIMESTAMP = 3;
    public static final int FLEXRAY_TP_ECU__FLEXRAY_TP_CONFIG = 4;
    public static final int FLEXRAY_TP_ECU__CYCLE_TIME_MAIN_FUNCTION = 5;
    public static final int FLEXRAY_TP_ECU__ECU_INSTANCE = 6;
    public static final int FLEXRAY_TP_ECU__FULL_DUPLEX_ENABLED = 7;
    public static final int FLEXRAY_TP_ECU__VARIATION_POINT = 8;
    public static final int FLEXRAY_TP_ECU_FEATURE_COUNT = 9;
    public static final int FLEXRAY_TP_CONNECTION = 14;
    public static final int FLEXRAY_TP_CONNECTION__GCHECKSUM = 0;
    public static final int FLEXRAY_TP_CONNECTION__GTIMESTAMP = 1;
    public static final int FLEXRAY_TP_CONNECTION__CHECKSUM = 2;
    public static final int FLEXRAY_TP_CONNECTION__TIMESTAMP = 3;
    public static final int FLEXRAY_TP_CONNECTION__FLEXRAY_TP_CONFIG = 4;
    public static final int FLEXRAY_TP_CONNECTION__BANDWIDTH_LIMITATION = 5;
    public static final int FLEXRAY_TP_CONNECTION__DIRECT_TP_SDU = 6;
    public static final int FLEXRAY_TP_CONNECTION__MULTICAST = 7;
    public static final int FLEXRAY_TP_CONNECTION__RECEIVERS = 8;
    public static final int FLEXRAY_TP_CONNECTION__REVERSED_TP_SDU = 9;
    public static final int FLEXRAY_TP_CONNECTION__RX_PDU_POOL = 10;
    public static final int FLEXRAY_TP_CONNECTION__TP_CONNECTION_CONTROL = 11;
    public static final int FLEXRAY_TP_CONNECTION__TRANSMITTER = 12;
    public static final int FLEXRAY_TP_CONNECTION__TX_PDU_POOL = 13;
    public static final int FLEXRAY_TP_CONNECTION__VARIATION_POINT = 14;
    public static final int FLEXRAY_TP_CONNECTION_FEATURE_COUNT = 15;
    public static final int FLEXRAY_TP_PDU_POOL = 15;
    public static final int FLEXRAY_TP_PDU_POOL__GCHECKSUM = 0;
    public static final int FLEXRAY_TP_PDU_POOL__GTIMESTAMP = 1;
    public static final int FLEXRAY_TP_PDU_POOL__CHECKSUM = 2;
    public static final int FLEXRAY_TP_PDU_POOL__TIMESTAMP = 3;
    public static final int FLEXRAY_TP_PDU_POOL__GSHORT_NAME = 4;
    public static final int FLEXRAY_TP_PDU_POOL__SHORT_NAME = 5;
    public static final int FLEXRAY_TP_PDU_POOL__LONG_NAME = 6;
    public static final int FLEXRAY_TP_PDU_POOL__GUUID = 7;
    public static final int FLEXRAY_TP_PDU_POOL__GCATEGORY = 8;
    public static final int FLEXRAY_TP_PDU_POOL__GDESC = 9;
    public static final int FLEXRAY_TP_PDU_POOL__DESC = 10;
    public static final int FLEXRAY_TP_PDU_POOL__CATEGORY = 11;
    public static final int FLEXRAY_TP_PDU_POOL__ADMIN_DATA = 12;
    public static final int FLEXRAY_TP_PDU_POOL__INTRODUCTION = 13;
    public static final int FLEXRAY_TP_PDU_POOL__ANNOTATIONS = 14;
    public static final int FLEXRAY_TP_PDU_POOL__UUID = 15;
    public static final int FLEXRAY_TP_PDU_POOL__ALL_EXTENSIONS = 16;
    public static final int FLEXRAY_TP_PDU_POOL__CONTAINED_EXTENSIONS = 17;
    public static final int FLEXRAY_TP_PDU_POOL__FLEXRAY_TP_CONFIG = 18;
    public static final int FLEXRAY_TP_PDU_POOL__NPDUS = 19;
    public static final int FLEXRAY_TP_PDU_POOL__VARIATION_POINT = 20;
    public static final int FLEXRAY_TP_PDU_POOL_FEATURE_COUNT = 21;
    public static final int FLEXRAY_TP_NODE = 16;
    public static final int FLEXRAY_TP_NODE__GCHECKSUM = 0;
    public static final int FLEXRAY_TP_NODE__GTIMESTAMP = 1;
    public static final int FLEXRAY_TP_NODE__CHECKSUM = 2;
    public static final int FLEXRAY_TP_NODE__TIMESTAMP = 3;
    public static final int FLEXRAY_TP_NODE__GSHORT_NAME = 4;
    public static final int FLEXRAY_TP_NODE__SHORT_NAME = 5;
    public static final int FLEXRAY_TP_NODE__LONG_NAME = 6;
    public static final int FLEXRAY_TP_NODE__GUUID = 7;
    public static final int FLEXRAY_TP_NODE__GCATEGORY = 8;
    public static final int FLEXRAY_TP_NODE__GDESC = 9;
    public static final int FLEXRAY_TP_NODE__DESC = 10;
    public static final int FLEXRAY_TP_NODE__CATEGORY = 11;
    public static final int FLEXRAY_TP_NODE__ADMIN_DATA = 12;
    public static final int FLEXRAY_TP_NODE__INTRODUCTION = 13;
    public static final int FLEXRAY_TP_NODE__ANNOTATIONS = 14;
    public static final int FLEXRAY_TP_NODE__UUID = 15;
    public static final int FLEXRAY_TP_NODE__ALL_EXTENSIONS = 16;
    public static final int FLEXRAY_TP_NODE__CONTAINED_EXTENSIONS = 17;
    public static final int FLEXRAY_TP_NODE__FLEXRAY_TP_CONFIG = 18;
    public static final int FLEXRAY_TP_NODE__CONNECTORS = 19;
    public static final int FLEXRAY_TP_NODE__TP_ADDRESS = 20;
    public static final int FLEXRAY_TP_NODE__VARIATION_POINT = 21;
    public static final int FLEXRAY_TP_NODE_FEATURE_COUNT = 22;
    public static final int J1939_TP_CONFIG = 17;
    public static final int J1939_TP_CONFIG__GCHECKSUM = 0;
    public static final int J1939_TP_CONFIG__GTIMESTAMP = 1;
    public static final int J1939_TP_CONFIG__CHECKSUM = 2;
    public static final int J1939_TP_CONFIG__TIMESTAMP = 3;
    public static final int J1939_TP_CONFIG__GSHORT_NAME = 4;
    public static final int J1939_TP_CONFIG__SHORT_NAME = 5;
    public static final int J1939_TP_CONFIG__LONG_NAME = 6;
    public static final int J1939_TP_CONFIG__GUUID = 7;
    public static final int J1939_TP_CONFIG__GCATEGORY = 8;
    public static final int J1939_TP_CONFIG__GDESC = 9;
    public static final int J1939_TP_CONFIG__DESC = 10;
    public static final int J1939_TP_CONFIG__CATEGORY = 11;
    public static final int J1939_TP_CONFIG__ADMIN_DATA = 12;
    public static final int J1939_TP_CONFIG__INTRODUCTION = 13;
    public static final int J1939_TP_CONFIG__ANNOTATIONS = 14;
    public static final int J1939_TP_CONFIG__UUID = 15;
    public static final int J1939_TP_CONFIG__ALL_EXTENSIONS = 16;
    public static final int J1939_TP_CONFIG__CONTAINED_EXTENSIONS = 17;
    public static final int J1939_TP_CONFIG__GAR_PACKAGE = 18;
    public static final int J1939_TP_CONFIG__AR_PACKAGE = 19;
    public static final int J1939_TP_CONFIG__VARIATION_POINT = 20;
    public static final int J1939_TP_CONFIG__COMMUNICATION_CLUSTER = 21;
    public static final int J1939_TP_CONFIG__TP_ADDRESS = 22;
    public static final int J1939_TP_CONFIG__TP_CONNECTIONS = 23;
    public static final int J1939_TP_CONFIG__TP_NODES = 24;
    public static final int J1939_TP_CONFIG_FEATURE_COUNT = 25;
    public static final int J1939_TP_NODE = 18;
    public static final int J1939_TP_NODE__GCHECKSUM = 0;
    public static final int J1939_TP_NODE__GTIMESTAMP = 1;
    public static final int J1939_TP_NODE__CHECKSUM = 2;
    public static final int J1939_TP_NODE__TIMESTAMP = 3;
    public static final int J1939_TP_NODE__GSHORT_NAME = 4;
    public static final int J1939_TP_NODE__SHORT_NAME = 5;
    public static final int J1939_TP_NODE__LONG_NAME = 6;
    public static final int J1939_TP_NODE__GUUID = 7;
    public static final int J1939_TP_NODE__GCATEGORY = 8;
    public static final int J1939_TP_NODE__GDESC = 9;
    public static final int J1939_TP_NODE__DESC = 10;
    public static final int J1939_TP_NODE__CATEGORY = 11;
    public static final int J1939_TP_NODE__ADMIN_DATA = 12;
    public static final int J1939_TP_NODE__INTRODUCTION = 13;
    public static final int J1939_TP_NODE__ANNOTATIONS = 14;
    public static final int J1939_TP_NODE__UUID = 15;
    public static final int J1939_TP_NODE__ALL_EXTENSIONS = 16;
    public static final int J1939_TP_NODE__CONTAINED_EXTENSIONS = 17;
    public static final int J1939_TP_NODE__J1939_TP_CONFIG = 18;
    public static final int J1939_TP_NODE__CONNECTOR = 19;
    public static final int J1939_TP_NODE__TP_ADDRESS = 20;
    public static final int J1939_TP_NODE__VARIATION_POINT = 21;
    public static final int J1939_TP_NODE_FEATURE_COUNT = 22;
    public static final int J1939_TP_CONNECTION = 19;
    public static final int J1939_TP_CONNECTION__GCHECKSUM = 0;
    public static final int J1939_TP_CONNECTION__GTIMESTAMP = 1;
    public static final int J1939_TP_CONNECTION__CHECKSUM = 2;
    public static final int J1939_TP_CONNECTION__TIMESTAMP = 3;
    public static final int J1939_TP_CONNECTION__J1939_TP_CONFIG = 4;
    public static final int J1939_TP_CONNECTION__BROADCAST = 5;
    public static final int J1939_TP_CONNECTION__DATA_PDU = 6;
    public static final int J1939_TP_CONNECTION__DIRECT_PDU = 7;
    public static final int J1939_TP_CONNECTION__FLOW_CONTROL_PDUS = 8;
    public static final int J1939_TP_CONNECTION__RECEIVERS = 9;
    public static final int J1939_TP_CONNECTION__TP_SDUS = 10;
    public static final int J1939_TP_CONNECTION__TRANSMITTER = 11;
    public static final int J1939_TP_CONNECTION__VARIATION_POINT = 12;
    public static final int J1939_TP_CONNECTION_FEATURE_COUNT = 13;
    public static final int LIN_TP_CONFIG = 20;
    public static final int LIN_TP_CONFIG__GCHECKSUM = 0;
    public static final int LIN_TP_CONFIG__GTIMESTAMP = 1;
    public static final int LIN_TP_CONFIG__CHECKSUM = 2;
    public static final int LIN_TP_CONFIG__TIMESTAMP = 3;
    public static final int LIN_TP_CONFIG__GSHORT_NAME = 4;
    public static final int LIN_TP_CONFIG__SHORT_NAME = 5;
    public static final int LIN_TP_CONFIG__LONG_NAME = 6;
    public static final int LIN_TP_CONFIG__GUUID = 7;
    public static final int LIN_TP_CONFIG__GCATEGORY = 8;
    public static final int LIN_TP_CONFIG__GDESC = 9;
    public static final int LIN_TP_CONFIG__DESC = 10;
    public static final int LIN_TP_CONFIG__CATEGORY = 11;
    public static final int LIN_TP_CONFIG__ADMIN_DATA = 12;
    public static final int LIN_TP_CONFIG__INTRODUCTION = 13;
    public static final int LIN_TP_CONFIG__ANNOTATIONS = 14;
    public static final int LIN_TP_CONFIG__UUID = 15;
    public static final int LIN_TP_CONFIG__ALL_EXTENSIONS = 16;
    public static final int LIN_TP_CONFIG__CONTAINED_EXTENSIONS = 17;
    public static final int LIN_TP_CONFIG__GAR_PACKAGE = 18;
    public static final int LIN_TP_CONFIG__AR_PACKAGE = 19;
    public static final int LIN_TP_CONFIG__VARIATION_POINT = 20;
    public static final int LIN_TP_CONFIG__COMMUNICATION_CLUSTER = 21;
    public static final int LIN_TP_CONFIG__TP_ADDRESS = 22;
    public static final int LIN_TP_CONFIG__TP_CONNECTIONS = 23;
    public static final int LIN_TP_CONFIG__TP_NODES = 24;
    public static final int LIN_TP_CONFIG_FEATURE_COUNT = 25;
    public static final int LIN_TP_CONNECTION = 21;
    public static final int LIN_TP_CONNECTION__GCHECKSUM = 0;
    public static final int LIN_TP_CONNECTION__GTIMESTAMP = 1;
    public static final int LIN_TP_CONNECTION__CHECKSUM = 2;
    public static final int LIN_TP_CONNECTION__TIMESTAMP = 3;
    public static final int LIN_TP_CONNECTION__LIN_TP_CONFIG = 4;
    public static final int LIN_TP_CONNECTION__DATA_PDU = 5;
    public static final int LIN_TP_CONNECTION__DROP_NOT_REQUESTED_NAD = 6;
    public static final int LIN_TP_CONNECTION__FLOW_CONTROL = 7;
    public static final int LIN_TP_CONNECTION__LIN_TP_NSDU = 8;
    public static final int LIN_TP_CONNECTION__MULTICAST = 9;
    public static final int LIN_TP_CONNECTION__RECEIVERS = 10;
    public static final int LIN_TP_CONNECTION__TIMEOUT_AS = 11;
    public static final int LIN_TP_CONNECTION__TIMEOUT_CR = 12;
    public static final int LIN_TP_CONNECTION__TIMEOUT_CS = 13;
    public static final int LIN_TP_CONNECTION__TRANSMITTER = 14;
    public static final int LIN_TP_CONNECTION__VARIATION_POINT = 15;
    public static final int LIN_TP_CONNECTION_FEATURE_COUNT = 16;
    public static final int LIN_TP_NODE = 22;
    public static final int LIN_TP_NODE__GCHECKSUM = 0;
    public static final int LIN_TP_NODE__GTIMESTAMP = 1;
    public static final int LIN_TP_NODE__CHECKSUM = 2;
    public static final int LIN_TP_NODE__TIMESTAMP = 3;
    public static final int LIN_TP_NODE__GSHORT_NAME = 4;
    public static final int LIN_TP_NODE__SHORT_NAME = 5;
    public static final int LIN_TP_NODE__LONG_NAME = 6;
    public static final int LIN_TP_NODE__GUUID = 7;
    public static final int LIN_TP_NODE__GCATEGORY = 8;
    public static final int LIN_TP_NODE__GDESC = 9;
    public static final int LIN_TP_NODE__DESC = 10;
    public static final int LIN_TP_NODE__CATEGORY = 11;
    public static final int LIN_TP_NODE__ADMIN_DATA = 12;
    public static final int LIN_TP_NODE__INTRODUCTION = 13;
    public static final int LIN_TP_NODE__ANNOTATIONS = 14;
    public static final int LIN_TP_NODE__UUID = 15;
    public static final int LIN_TP_NODE__ALL_EXTENSIONS = 16;
    public static final int LIN_TP_NODE__CONTAINED_EXTENSIONS = 17;
    public static final int LIN_TP_NODE__LIN_TP_CONFIG = 18;
    public static final int LIN_TP_NODE__CONNECTOR = 19;
    public static final int LIN_TP_NODE__MAX_NUMBER_OF_RESP_PENDING_FRAMES = 20;
    public static final int LIN_TP_NODE__P2_MAX = 21;
    public static final int LIN_TP_NODE__P2_TIMING = 22;
    public static final int LIN_TP_NODE__TP_ADDRESS = 23;
    public static final int LIN_TP_NODE__VARIATION_POINT = 24;
    public static final int LIN_TP_NODE_FEATURE_COUNT = 25;
    public static final int TP_ADDRESS = 23;
    public static final int TP_ADDRESS__GCHECKSUM = 0;
    public static final int TP_ADDRESS__GTIMESTAMP = 1;
    public static final int TP_ADDRESS__CHECKSUM = 2;
    public static final int TP_ADDRESS__TIMESTAMP = 3;
    public static final int TP_ADDRESS__GSHORT_NAME = 4;
    public static final int TP_ADDRESS__SHORT_NAME = 5;
    public static final int TP_ADDRESS__LONG_NAME = 6;
    public static final int TP_ADDRESS__GUUID = 7;
    public static final int TP_ADDRESS__GCATEGORY = 8;
    public static final int TP_ADDRESS__GDESC = 9;
    public static final int TP_ADDRESS__DESC = 10;
    public static final int TP_ADDRESS__CATEGORY = 11;
    public static final int TP_ADDRESS__ADMIN_DATA = 12;
    public static final int TP_ADDRESS__INTRODUCTION = 13;
    public static final int TP_ADDRESS__ANNOTATIONS = 14;
    public static final int TP_ADDRESS__UUID = 15;
    public static final int TP_ADDRESS__ALL_EXTENSIONS = 16;
    public static final int TP_ADDRESS__CONTAINED_EXTENSIONS = 17;
    public static final int TP_ADDRESS__TP_ADDRESS = 18;
    public static final int TP_ADDRESS__VARIATION_POINT = 19;
    public static final int TP_ADDRESS_FEATURE_COUNT = 20;
    public static final int CAN_TP_ADDRESSING_FORMAT_TYPE = 24;
    public static final int CAN_TP_CHANNEL_MODE_TYPE = 25;
    public static final int NETWORK_TARGET_ADDRESS_TYPE = 26;
    public static final int FR_AR_TP_ACK_TYPE = 27;
    public static final int MAXIMUM_MESSAGE_LENGTH_TYPE = 28;
    public static final int TP_ACK_TYPE = 29;

    public EClass getCanTpAddress();

    public EReference getCanTpAddress_CanTpConfig();

    public EAttribute getCanTpAddress_TpAddress();

    public EAttribute getCanTpAddress_TpAddressExtensionValue();

    public EReference getCanTpAddress_VariationPoint();

    public EClass getCanTpChannel();

    public EReference getCanTpChannel_CanTpConfig();

    public EAttribute getCanTpChannel_ChannelId();

    public EAttribute getCanTpChannel_ChannelMode();

    public EReference getCanTpChannel_VariationPoint();

    public EClass getCanTpConfig();

    public EReference getCanTpConfig_TpAddress();

    public EReference getCanTpConfig_TpChannels();

    public EReference getCanTpConfig_TpConnections();

    public EReference getCanTpConfig_TpEcus();

    public EReference getCanTpConfig_TpNodes();

    public EClass getTpConfig();

    public EReference getTpConfig_CommunicationCluster();

    public EClass getCanTpConnection();

    public EReference getCanTpConnection_CanTpConfig();

    public EAttribute getCanTpConnection_AddressingFormat();

    public EReference getCanTpConnection_CanTpChannel();

    public EReference getCanTpConnection_DataPdu();

    public EReference getCanTpConnection_FlowControlPdu();

    public EAttribute getCanTpConnection_MaxBlockSize();

    public EReference getCanTpConnection_Multicast();

    public EAttribute getCanTpConnection_PaddingActivation();

    public EReference getCanTpConnection_Receivers();

    public EAttribute getCanTpConnection_TaType();

    public EAttribute getCanTpConnection_TimeoutBr();

    public EAttribute getCanTpConnection_TimeoutBs();

    public EAttribute getCanTpConnection_TimeoutCr();

    public EAttribute getCanTpConnection_TimeoutCs();

    public EReference getCanTpConnection_TpSdu();

    public EAttribute getCanTpConnection_TransmitCancellation();

    public EReference getCanTpConnection_Transmitter();

    public EClass getCanTpNode();

    public EReference getCanTpNode_CanTpConfig();

    public EReference getCanTpNode_Connector();

    public EAttribute getCanTpNode_MaxFcWait();

    public EAttribute getCanTpNode_StMin();

    public EAttribute getCanTpNode_TimeoutAr();

    public EAttribute getCanTpNode_TimeoutAs();

    public EReference getCanTpNode_TpAddress();

    public EReference getCanTpNode_VariationPoint();

    public EClass getCanTpEcu();

    public EReference getCanTpEcu_CanTpConfig();

    public EAttribute getCanTpEcu_CycleTimeMainFunction();

    public EReference getCanTpEcu_EcuInstance();

    public EReference getCanTpEcu_VariationPoint();

    public EClass getFlexrayArTpChannel();

    public EReference getFlexrayArTpChannel_FlexrayArTpConfig();

    public EAttribute getFlexrayArTpChannel_AckType();

    public EAttribute getFlexrayArTpChannel_ExtendedAddressing();

    public EReference getFlexrayArTpChannel_FlowControlPdu();

    public EAttribute getFlexrayArTpChannel_MaxAr();

    public EAttribute getFlexrayArTpChannel_MaxAs();

    public EAttribute getFlexrayArTpChannel_MaxBs();

    public EAttribute getFlexrayArTpChannel_MaxBufferRequest();

    public EAttribute getFlexrayArTpChannel_MaxFrIf();

    public EAttribute getFlexrayArTpChannel_MaxRetries();

    public EAttribute getFlexrayArTpChannel_MaximumMessageLength();

    public EAttribute getFlexrayArTpChannel_MinimumSeparationTime();

    public EAttribute getFlexrayArTpChannel_MulticastSegmentation();

    public EReference getFlexrayArTpChannel_PduPools();

    public EAttribute getFlexrayArTpChannel_TimeBr();

    public EAttribute getFlexrayArTpChannel_TimeBuffer();

    public EAttribute getFlexrayArTpChannel_TimeCs();

    public EAttribute getFlexrayArTpChannel_TimeFrIf();

    public EAttribute getFlexrayArTpChannel_TimeoutAr();

    public EAttribute getFlexrayArTpChannel_TimeoutAs();

    public EAttribute getFlexrayArTpChannel_TimeoutBs();

    public EAttribute getFlexrayArTpChannel_TimeoutCr();

    public EReference getFlexrayArTpChannel_TpConnections();

    public EAttribute getFlexrayArTpChannel_TransmitCancellation();

    public EReference getFlexrayArTpChannel_VariationPoint();

    public EClass getFlexrayArTpConnection();

    public EReference getFlexrayArTpConnection_FlexrayArTpChannel();

    public EReference getFlexrayArTpConnection_DirectTpSdu();

    public EReference getFlexrayArTpConnection_FlowControlPdu();

    public EReference getFlexrayArTpConnection_Multicast();

    public EReference getFlexrayArTpConnection_ReversedTpSdu();

    public EReference getFlexrayArTpConnection_Source();

    public EReference getFlexrayArTpConnection_Targets();

    public EReference getFlexrayArTpConnection_TransmitPdus();

    public EClass getFlexrayArTpNode();

    public EReference getFlexrayArTpNode_FlexrayArTpConfig();

    public EReference getFlexrayArTpNode_Connectors();

    public EReference getFlexrayArTpNode_TpAddress();

    public EReference getFlexrayArTpNode_VariationPoint();

    public EClass getFlexrayArTpConfig();

    public EReference getFlexrayArTpConfig_TpAddress();

    public EReference getFlexrayArTpConfig_TpChannels();

    public EReference getFlexrayArTpConfig_TpNodes();

    public EClass getFlexrayTpConfig();

    public EReference getFlexrayTpConfig_PduPools();

    public EReference getFlexrayTpConfig_TpAddress();

    public EReference getFlexrayTpConfig_TpConnections();

    public EReference getFlexrayTpConfig_TpConnectionControls();

    public EReference getFlexrayTpConfig_TpEcus();

    public EReference getFlexrayTpConfig_TpNodes();

    public EClass getFlexrayTpConnectionControl();

    public EReference getFlexrayTpConnectionControl_FlexrayTpConfig();

    public EAttribute getFlexrayTpConnectionControl_AckType();

    public EAttribute getFlexrayTpConnectionControl_MaxAr();

    public EAttribute getFlexrayTpConnectionControl_MaxAs();

    public EAttribute getFlexrayTpConnectionControl_MaxBufferSize();

    public EAttribute getFlexrayTpConnectionControl_MaxFcWait();

    public EAttribute getFlexrayTpConnectionControl_MaxFrIf();

    public EAttribute getFlexrayTpConnectionControl_MaxNumberOfNpduPerCycle();

    public EAttribute getFlexrayTpConnectionControl_MaxRetries();

    public EAttribute getFlexrayTpConnectionControl_SeparationCycleExponent();

    public EAttribute getFlexrayTpConnectionControl_TimeBr();

    public EAttribute getFlexrayTpConnectionControl_TimeBuffer();

    public EAttribute getFlexrayTpConnectionControl_TimeFrIf();

    public EAttribute getFlexrayTpConnectionControl_TimeoutAr();

    public EAttribute getFlexrayTpConnectionControl_TimeoutAs();

    public EAttribute getFlexrayTpConnectionControl_TimeoutBs();

    public EAttribute getFlexrayTpConnectionControl_TimeoutCr();

    public EReference getFlexrayTpConnectionControl_VariationPoint();

    public EClass getFlexrayTpEcu();

    public EReference getFlexrayTpEcu_FlexrayTpConfig();

    public EAttribute getFlexrayTpEcu_CycleTimeMainFunction();

    public EReference getFlexrayTpEcu_EcuInstance();

    public EAttribute getFlexrayTpEcu_FullDuplexEnabled();

    public EReference getFlexrayTpEcu_VariationPoint();

    public EClass getFlexrayTpConnection();

    public EReference getFlexrayTpConnection_FlexrayTpConfig();

    public EAttribute getFlexrayTpConnection_BandwidthLimitation();

    public EReference getFlexrayTpConnection_DirectTpSdu();

    public EReference getFlexrayTpConnection_Multicast();

    public EReference getFlexrayTpConnection_Receivers();

    public EReference getFlexrayTpConnection_ReversedTpSdu();

    public EReference getFlexrayTpConnection_RxPduPool();

    public EReference getFlexrayTpConnection_TpConnectionControl();

    public EReference getFlexrayTpConnection_Transmitter();

    public EReference getFlexrayTpConnection_TxPduPool();

    public EReference getFlexrayTpConnection_VariationPoint();

    public EClass getFlexrayTpPduPool();

    public EReference getFlexrayTpPduPool_FlexrayTpConfig();

    public EReference getFlexrayTpPduPool_NPdus();

    public EReference getFlexrayTpPduPool_VariationPoint();

    public EClass getFlexrayTpNode();

    public EReference getFlexrayTpNode_FlexrayTpConfig();

    public EReference getFlexrayTpNode_Connectors();

    public EReference getFlexrayTpNode_TpAddress();

    public EReference getFlexrayTpNode_VariationPoint();

    public EClass getJ1939TpConfig();

    public EReference getJ1939TpConfig_TpAddress();

    public EReference getJ1939TpConfig_TpConnections();

    public EReference getJ1939TpConfig_TpNodes();

    public EClass getJ1939TpNode();

    public EReference getJ1939TpNode_J1939TpConfig();

    public EReference getJ1939TpNode_Connector();

    public EReference getJ1939TpNode_TpAddress();

    public EReference getJ1939TpNode_VariationPoint();

    public EClass getJ1939TpConnection();

    public EReference getJ1939TpConnection_J1939TpConfig();

    public EAttribute getJ1939TpConnection_Broadcast();

    public EReference getJ1939TpConnection_DataPdu();

    public EReference getJ1939TpConnection_DirectPdu();

    public EReference getJ1939TpConnection_FlowControlPdus();

    public EReference getJ1939TpConnection_Receivers();

    public EReference getJ1939TpConnection_TpSdus();

    public EReference getJ1939TpConnection_Transmitter();

    public EReference getJ1939TpConnection_VariationPoint();

    public EClass getLinTpConfig();

    public EReference getLinTpConfig_TpAddress();

    public EReference getLinTpConfig_TpConnections();

    public EReference getLinTpConfig_TpNodes();

    public EClass getLinTpConnection();

    public EReference getLinTpConnection_LinTpConfig();

    public EReference getLinTpConnection_DataPdu();

    public EAttribute getLinTpConnection_DropNotRequestedNad();

    public EReference getLinTpConnection_FlowControl();

    public EReference getLinTpConnection_LinTpNSdu();

    public EReference getLinTpConnection_Multicast();

    public EReference getLinTpConnection_Receivers();

    public EAttribute getLinTpConnection_TimeoutAs();

    public EAttribute getLinTpConnection_TimeoutCr();

    public EAttribute getLinTpConnection_TimeoutCs();

    public EReference getLinTpConnection_Transmitter();

    public EReference getLinTpConnection_VariationPoint();

    public EClass getLinTpNode();

    public EReference getLinTpNode_LinTpConfig();

    public EReference getLinTpNode_Connector();

    public EAttribute getLinTpNode_MaxNumberOfRespPendingFrames();

    public EAttribute getLinTpNode_P2Max();

    public EAttribute getLinTpNode_P2Timing();

    public EReference getLinTpNode_TpAddress();

    public EReference getLinTpNode_VariationPoint();

    public EClass getTpAddress();

    public EAttribute getTpAddress_TpAddress();

    public EReference getTpAddress_VariationPoint();

    public EEnum getCanTpAddressingFormatType();

    public EEnum getCanTpChannelModeType();

    public EEnum getNetworkTargetAddressType();

    public EEnum getFrArTpAckType();

    public EEnum getMaximumMessageLengthType();

    public EEnum getTpAckType();

    public TransportprotocolsFactory getTransportprotocolsFactory();

    public static interface Literals {
        public static final EClass CAN_TP_ADDRESS = eINSTANCE.getCanTpAddress();
        public static final EReference CAN_TP_ADDRESS__CAN_TP_CONFIG = eINSTANCE.getCanTpAddress_CanTpConfig();
        public static final EAttribute CAN_TP_ADDRESS__TP_ADDRESS = eINSTANCE.getCanTpAddress_TpAddress();
        public static final EAttribute CAN_TP_ADDRESS__TP_ADDRESS_EXTENSION_VALUE = eINSTANCE.getCanTpAddress_TpAddressExtensionValue();
        public static final EReference CAN_TP_ADDRESS__VARIATION_POINT = eINSTANCE.getCanTpAddress_VariationPoint();
        public static final EClass CAN_TP_CHANNEL = eINSTANCE.getCanTpChannel();
        public static final EReference CAN_TP_CHANNEL__CAN_TP_CONFIG = eINSTANCE.getCanTpChannel_CanTpConfig();
        public static final EAttribute CAN_TP_CHANNEL__CHANNEL_ID = eINSTANCE.getCanTpChannel_ChannelId();
        public static final EAttribute CAN_TP_CHANNEL__CHANNEL_MODE = eINSTANCE.getCanTpChannel_ChannelMode();
        public static final EReference CAN_TP_CHANNEL__VARIATION_POINT = eINSTANCE.getCanTpChannel_VariationPoint();
        public static final EClass CAN_TP_CONFIG = eINSTANCE.getCanTpConfig();
        public static final EReference CAN_TP_CONFIG__TP_ADDRESS = eINSTANCE.getCanTpConfig_TpAddress();
        public static final EReference CAN_TP_CONFIG__TP_CHANNELS = eINSTANCE.getCanTpConfig_TpChannels();
        public static final EReference CAN_TP_CONFIG__TP_CONNECTIONS = eINSTANCE.getCanTpConfig_TpConnections();
        public static final EReference CAN_TP_CONFIG__TP_ECUS = eINSTANCE.getCanTpConfig_TpEcus();
        public static final EReference CAN_TP_CONFIG__TP_NODES = eINSTANCE.getCanTpConfig_TpNodes();
        public static final EClass TP_CONFIG = eINSTANCE.getTpConfig();
        public static final EReference TP_CONFIG__COMMUNICATION_CLUSTER = eINSTANCE.getTpConfig_CommunicationCluster();
        public static final EClass CAN_TP_CONNECTION = eINSTANCE.getCanTpConnection();
        public static final EReference CAN_TP_CONNECTION__CAN_TP_CONFIG = eINSTANCE.getCanTpConnection_CanTpConfig();
        public static final EAttribute CAN_TP_CONNECTION__ADDRESSING_FORMAT = eINSTANCE.getCanTpConnection_AddressingFormat();
        public static final EReference CAN_TP_CONNECTION__CAN_TP_CHANNEL = eINSTANCE.getCanTpConnection_CanTpChannel();
        public static final EReference CAN_TP_CONNECTION__DATA_PDU = eINSTANCE.getCanTpConnection_DataPdu();
        public static final EReference CAN_TP_CONNECTION__FLOW_CONTROL_PDU = eINSTANCE.getCanTpConnection_FlowControlPdu();
        public static final EAttribute CAN_TP_CONNECTION__MAX_BLOCK_SIZE = eINSTANCE.getCanTpConnection_MaxBlockSize();
        public static final EReference CAN_TP_CONNECTION__MULTICAST = eINSTANCE.getCanTpConnection_Multicast();
        public static final EAttribute CAN_TP_CONNECTION__PADDING_ACTIVATION = eINSTANCE.getCanTpConnection_PaddingActivation();
        public static final EReference CAN_TP_CONNECTION__RECEIVERS = eINSTANCE.getCanTpConnection_Receivers();
        public static final EAttribute CAN_TP_CONNECTION__TA_TYPE = eINSTANCE.getCanTpConnection_TaType();
        public static final EAttribute CAN_TP_CONNECTION__TIMEOUT_BR = eINSTANCE.getCanTpConnection_TimeoutBr();
        public static final EAttribute CAN_TP_CONNECTION__TIMEOUT_BS = eINSTANCE.getCanTpConnection_TimeoutBs();
        public static final EAttribute CAN_TP_CONNECTION__TIMEOUT_CR = eINSTANCE.getCanTpConnection_TimeoutCr();
        public static final EAttribute CAN_TP_CONNECTION__TIMEOUT_CS = eINSTANCE.getCanTpConnection_TimeoutCs();
        public static final EReference CAN_TP_CONNECTION__TP_SDU = eINSTANCE.getCanTpConnection_TpSdu();
        public static final EAttribute CAN_TP_CONNECTION__TRANSMIT_CANCELLATION = eINSTANCE.getCanTpConnection_TransmitCancellation();
        public static final EReference CAN_TP_CONNECTION__TRANSMITTER = eINSTANCE.getCanTpConnection_Transmitter();
        public static final EClass CAN_TP_NODE = eINSTANCE.getCanTpNode();
        public static final EReference CAN_TP_NODE__CAN_TP_CONFIG = eINSTANCE.getCanTpNode_CanTpConfig();
        public static final EReference CAN_TP_NODE__CONNECTOR = eINSTANCE.getCanTpNode_Connector();
        public static final EAttribute CAN_TP_NODE__MAX_FC_WAIT = eINSTANCE.getCanTpNode_MaxFcWait();
        public static final EAttribute CAN_TP_NODE__ST_MIN = eINSTANCE.getCanTpNode_StMin();
        public static final EAttribute CAN_TP_NODE__TIMEOUT_AR = eINSTANCE.getCanTpNode_TimeoutAr();
        public static final EAttribute CAN_TP_NODE__TIMEOUT_AS = eINSTANCE.getCanTpNode_TimeoutAs();
        public static final EReference CAN_TP_NODE__TP_ADDRESS = eINSTANCE.getCanTpNode_TpAddress();
        public static final EReference CAN_TP_NODE__VARIATION_POINT = eINSTANCE.getCanTpNode_VariationPoint();
        public static final EClass CAN_TP_ECU = eINSTANCE.getCanTpEcu();
        public static final EReference CAN_TP_ECU__CAN_TP_CONFIG = eINSTANCE.getCanTpEcu_CanTpConfig();
        public static final EAttribute CAN_TP_ECU__CYCLE_TIME_MAIN_FUNCTION = eINSTANCE.getCanTpEcu_CycleTimeMainFunction();
        public static final EReference CAN_TP_ECU__ECU_INSTANCE = eINSTANCE.getCanTpEcu_EcuInstance();
        public static final EReference CAN_TP_ECU__VARIATION_POINT = eINSTANCE.getCanTpEcu_VariationPoint();
        public static final EClass FLEXRAY_AR_TP_CHANNEL = eINSTANCE.getFlexrayArTpChannel();
        public static final EReference FLEXRAY_AR_TP_CHANNEL__FLEXRAY_AR_TP_CONFIG = eINSTANCE.getFlexrayArTpChannel_FlexrayArTpConfig();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__ACK_TYPE = eINSTANCE.getFlexrayArTpChannel_AckType();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__EXTENDED_ADDRESSING = eINSTANCE.getFlexrayArTpChannel_ExtendedAddressing();
        public static final EReference FLEXRAY_AR_TP_CHANNEL__FLOW_CONTROL_PDU = eINSTANCE.getFlexrayArTpChannel_FlowControlPdu();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__MAX_AR = eINSTANCE.getFlexrayArTpChannel_MaxAr();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__MAX_AS = eINSTANCE.getFlexrayArTpChannel_MaxAs();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__MAX_BS = eINSTANCE.getFlexrayArTpChannel_MaxBs();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__MAX_BUFFER_REQUEST = eINSTANCE.getFlexrayArTpChannel_MaxBufferRequest();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__MAX_FR_IF = eINSTANCE.getFlexrayArTpChannel_MaxFrIf();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__MAX_RETRIES = eINSTANCE.getFlexrayArTpChannel_MaxRetries();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__MAXIMUM_MESSAGE_LENGTH = eINSTANCE.getFlexrayArTpChannel_MaximumMessageLength();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__MINIMUM_SEPARATION_TIME = eINSTANCE.getFlexrayArTpChannel_MinimumSeparationTime();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__MULTICAST_SEGMENTATION = eINSTANCE.getFlexrayArTpChannel_MulticastSegmentation();
        public static final EReference FLEXRAY_AR_TP_CHANNEL__PDU_POOLS = eINSTANCE.getFlexrayArTpChannel_PduPools();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__TIME_BR = eINSTANCE.getFlexrayArTpChannel_TimeBr();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__TIME_BUFFER = eINSTANCE.getFlexrayArTpChannel_TimeBuffer();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__TIME_CS = eINSTANCE.getFlexrayArTpChannel_TimeCs();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__TIME_FR_IF = eINSTANCE.getFlexrayArTpChannel_TimeFrIf();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__TIMEOUT_AR = eINSTANCE.getFlexrayArTpChannel_TimeoutAr();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__TIMEOUT_AS = eINSTANCE.getFlexrayArTpChannel_TimeoutAs();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__TIMEOUT_BS = eINSTANCE.getFlexrayArTpChannel_TimeoutBs();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__TIMEOUT_CR = eINSTANCE.getFlexrayArTpChannel_TimeoutCr();
        public static final EReference FLEXRAY_AR_TP_CHANNEL__TP_CONNECTIONS = eINSTANCE.getFlexrayArTpChannel_TpConnections();
        public static final EAttribute FLEXRAY_AR_TP_CHANNEL__TRANSMIT_CANCELLATION = eINSTANCE.getFlexrayArTpChannel_TransmitCancellation();
        public static final EReference FLEXRAY_AR_TP_CHANNEL__VARIATION_POINT = eINSTANCE.getFlexrayArTpChannel_VariationPoint();
        public static final EClass FLEXRAY_AR_TP_CONNECTION = eINSTANCE.getFlexrayArTpConnection();
        public static final EReference FLEXRAY_AR_TP_CONNECTION__FLEXRAY_AR_TP_CHANNEL = eINSTANCE.getFlexrayArTpConnection_FlexrayArTpChannel();
        public static final EReference FLEXRAY_AR_TP_CONNECTION__DIRECT_TP_SDU = eINSTANCE.getFlexrayArTpConnection_DirectTpSdu();
        public static final EReference FLEXRAY_AR_TP_CONNECTION__FLOW_CONTROL_PDU = eINSTANCE.getFlexrayArTpConnection_FlowControlPdu();
        public static final EReference FLEXRAY_AR_TP_CONNECTION__MULTICAST = eINSTANCE.getFlexrayArTpConnection_Multicast();
        public static final EReference FLEXRAY_AR_TP_CONNECTION__REVERSED_TP_SDU = eINSTANCE.getFlexrayArTpConnection_ReversedTpSdu();
        public static final EReference FLEXRAY_AR_TP_CONNECTION__SOURCE = eINSTANCE.getFlexrayArTpConnection_Source();
        public static final EReference FLEXRAY_AR_TP_CONNECTION__TARGETS = eINSTANCE.getFlexrayArTpConnection_Targets();
        public static final EReference FLEXRAY_AR_TP_CONNECTION__TRANSMIT_PDUS = eINSTANCE.getFlexrayArTpConnection_TransmitPdus();
        public static final EClass FLEXRAY_AR_TP_NODE = eINSTANCE.getFlexrayArTpNode();
        public static final EReference FLEXRAY_AR_TP_NODE__FLEXRAY_AR_TP_CONFIG = eINSTANCE.getFlexrayArTpNode_FlexrayArTpConfig();
        public static final EReference FLEXRAY_AR_TP_NODE__CONNECTORS = eINSTANCE.getFlexrayArTpNode_Connectors();
        public static final EReference FLEXRAY_AR_TP_NODE__TP_ADDRESS = eINSTANCE.getFlexrayArTpNode_TpAddress();
        public static final EReference FLEXRAY_AR_TP_NODE__VARIATION_POINT = eINSTANCE.getFlexrayArTpNode_VariationPoint();
        public static final EClass FLEXRAY_AR_TP_CONFIG = eINSTANCE.getFlexrayArTpConfig();
        public static final EReference FLEXRAY_AR_TP_CONFIG__TP_ADDRESS = eINSTANCE.getFlexrayArTpConfig_TpAddress();
        public static final EReference FLEXRAY_AR_TP_CONFIG__TP_CHANNELS = eINSTANCE.getFlexrayArTpConfig_TpChannels();
        public static final EReference FLEXRAY_AR_TP_CONFIG__TP_NODES = eINSTANCE.getFlexrayArTpConfig_TpNodes();
        public static final EClass FLEXRAY_TP_CONFIG = eINSTANCE.getFlexrayTpConfig();
        public static final EReference FLEXRAY_TP_CONFIG__PDU_POOLS = eINSTANCE.getFlexrayTpConfig_PduPools();
        public static final EReference FLEXRAY_TP_CONFIG__TP_ADDRESS = eINSTANCE.getFlexrayTpConfig_TpAddress();
        public static final EReference FLEXRAY_TP_CONFIG__TP_CONNECTIONS = eINSTANCE.getFlexrayTpConfig_TpConnections();
        public static final EReference FLEXRAY_TP_CONFIG__TP_CONNECTION_CONTROLS = eINSTANCE.getFlexrayTpConfig_TpConnectionControls();
        public static final EReference FLEXRAY_TP_CONFIG__TP_ECUS = eINSTANCE.getFlexrayTpConfig_TpEcus();
        public static final EReference FLEXRAY_TP_CONFIG__TP_NODES = eINSTANCE.getFlexrayTpConfig_TpNodes();
        public static final EClass FLEXRAY_TP_CONNECTION_CONTROL = eINSTANCE.getFlexrayTpConnectionControl();
        public static final EReference FLEXRAY_TP_CONNECTION_CONTROL__FLEXRAY_TP_CONFIG = eINSTANCE.getFlexrayTpConnectionControl_FlexrayTpConfig();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__ACK_TYPE = eINSTANCE.getFlexrayTpConnectionControl_AckType();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__MAX_AR = eINSTANCE.getFlexrayTpConnectionControl_MaxAr();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__MAX_AS = eINSTANCE.getFlexrayTpConnectionControl_MaxAs();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__MAX_BUFFER_SIZE = eINSTANCE.getFlexrayTpConnectionControl_MaxBufferSize();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__MAX_FC_WAIT = eINSTANCE.getFlexrayTpConnectionControl_MaxFcWait();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__MAX_FR_IF = eINSTANCE.getFlexrayTpConnectionControl_MaxFrIf();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__MAX_NUMBER_OF_NPDU_PER_CYCLE = eINSTANCE.getFlexrayTpConnectionControl_MaxNumberOfNpduPerCycle();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__MAX_RETRIES = eINSTANCE.getFlexrayTpConnectionControl_MaxRetries();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__SEPARATION_CYCLE_EXPONENT = eINSTANCE.getFlexrayTpConnectionControl_SeparationCycleExponent();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__TIME_BR = eINSTANCE.getFlexrayTpConnectionControl_TimeBr();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__TIME_BUFFER = eINSTANCE.getFlexrayTpConnectionControl_TimeBuffer();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__TIME_FR_IF = eINSTANCE.getFlexrayTpConnectionControl_TimeFrIf();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__TIMEOUT_AR = eINSTANCE.getFlexrayTpConnectionControl_TimeoutAr();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__TIMEOUT_AS = eINSTANCE.getFlexrayTpConnectionControl_TimeoutAs();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__TIMEOUT_BS = eINSTANCE.getFlexrayTpConnectionControl_TimeoutBs();
        public static final EAttribute FLEXRAY_TP_CONNECTION_CONTROL__TIMEOUT_CR = eINSTANCE.getFlexrayTpConnectionControl_TimeoutCr();
        public static final EReference FLEXRAY_TP_CONNECTION_CONTROL__VARIATION_POINT = eINSTANCE.getFlexrayTpConnectionControl_VariationPoint();
        public static final EClass FLEXRAY_TP_ECU = eINSTANCE.getFlexrayTpEcu();
        public static final EReference FLEXRAY_TP_ECU__FLEXRAY_TP_CONFIG = eINSTANCE.getFlexrayTpEcu_FlexrayTpConfig();
        public static final EAttribute FLEXRAY_TP_ECU__CYCLE_TIME_MAIN_FUNCTION = eINSTANCE.getFlexrayTpEcu_CycleTimeMainFunction();
        public static final EReference FLEXRAY_TP_ECU__ECU_INSTANCE = eINSTANCE.getFlexrayTpEcu_EcuInstance();
        public static final EAttribute FLEXRAY_TP_ECU__FULL_DUPLEX_ENABLED = eINSTANCE.getFlexrayTpEcu_FullDuplexEnabled();
        public static final EReference FLEXRAY_TP_ECU__VARIATION_POINT = eINSTANCE.getFlexrayTpEcu_VariationPoint();
        public static final EClass FLEXRAY_TP_CONNECTION = eINSTANCE.getFlexrayTpConnection();
        public static final EReference FLEXRAY_TP_CONNECTION__FLEXRAY_TP_CONFIG = eINSTANCE.getFlexrayTpConnection_FlexrayTpConfig();
        public static final EAttribute FLEXRAY_TP_CONNECTION__BANDWIDTH_LIMITATION = eINSTANCE.getFlexrayTpConnection_BandwidthLimitation();
        public static final EReference FLEXRAY_TP_CONNECTION__DIRECT_TP_SDU = eINSTANCE.getFlexrayTpConnection_DirectTpSdu();
        public static final EReference FLEXRAY_TP_CONNECTION__MULTICAST = eINSTANCE.getFlexrayTpConnection_Multicast();
        public static final EReference FLEXRAY_TP_CONNECTION__RECEIVERS = eINSTANCE.getFlexrayTpConnection_Receivers();
        public static final EReference FLEXRAY_TP_CONNECTION__REVERSED_TP_SDU = eINSTANCE.getFlexrayTpConnection_ReversedTpSdu();
        public static final EReference FLEXRAY_TP_CONNECTION__RX_PDU_POOL = eINSTANCE.getFlexrayTpConnection_RxPduPool();
        public static final EReference FLEXRAY_TP_CONNECTION__TP_CONNECTION_CONTROL = eINSTANCE.getFlexrayTpConnection_TpConnectionControl();
        public static final EReference FLEXRAY_TP_CONNECTION__TRANSMITTER = eINSTANCE.getFlexrayTpConnection_Transmitter();
        public static final EReference FLEXRAY_TP_CONNECTION__TX_PDU_POOL = eINSTANCE.getFlexrayTpConnection_TxPduPool();
        public static final EReference FLEXRAY_TP_CONNECTION__VARIATION_POINT = eINSTANCE.getFlexrayTpConnection_VariationPoint();
        public static final EClass FLEXRAY_TP_PDU_POOL = eINSTANCE.getFlexrayTpPduPool();
        public static final EReference FLEXRAY_TP_PDU_POOL__FLEXRAY_TP_CONFIG = eINSTANCE.getFlexrayTpPduPool_FlexrayTpConfig();
        public static final EReference FLEXRAY_TP_PDU_POOL__NPDUS = eINSTANCE.getFlexrayTpPduPool_NPdus();
        public static final EReference FLEXRAY_TP_PDU_POOL__VARIATION_POINT = eINSTANCE.getFlexrayTpPduPool_VariationPoint();
        public static final EClass FLEXRAY_TP_NODE = eINSTANCE.getFlexrayTpNode();
        public static final EReference FLEXRAY_TP_NODE__FLEXRAY_TP_CONFIG = eINSTANCE.getFlexrayTpNode_FlexrayTpConfig();
        public static final EReference FLEXRAY_TP_NODE__CONNECTORS = eINSTANCE.getFlexrayTpNode_Connectors();
        public static final EReference FLEXRAY_TP_NODE__TP_ADDRESS = eINSTANCE.getFlexrayTpNode_TpAddress();
        public static final EReference FLEXRAY_TP_NODE__VARIATION_POINT = eINSTANCE.getFlexrayTpNode_VariationPoint();
        public static final EClass J1939_TP_CONFIG = eINSTANCE.getJ1939TpConfig();
        public static final EReference J1939_TP_CONFIG__TP_ADDRESS = eINSTANCE.getJ1939TpConfig_TpAddress();
        public static final EReference J1939_TP_CONFIG__TP_CONNECTIONS = eINSTANCE.getJ1939TpConfig_TpConnections();
        public static final EReference J1939_TP_CONFIG__TP_NODES = eINSTANCE.getJ1939TpConfig_TpNodes();
        public static final EClass J1939_TP_NODE = eINSTANCE.getJ1939TpNode();
        public static final EReference J1939_TP_NODE__J1939_TP_CONFIG = eINSTANCE.getJ1939TpNode_J1939TpConfig();
        public static final EReference J1939_TP_NODE__CONNECTOR = eINSTANCE.getJ1939TpNode_Connector();
        public static final EReference J1939_TP_NODE__TP_ADDRESS = eINSTANCE.getJ1939TpNode_TpAddress();
        public static final EReference J1939_TP_NODE__VARIATION_POINT = eINSTANCE.getJ1939TpNode_VariationPoint();
        public static final EClass J1939_TP_CONNECTION = eINSTANCE.getJ1939TpConnection();
        public static final EReference J1939_TP_CONNECTION__J1939_TP_CONFIG = eINSTANCE.getJ1939TpConnection_J1939TpConfig();
        public static final EAttribute J1939_TP_CONNECTION__BROADCAST = eINSTANCE.getJ1939TpConnection_Broadcast();
        public static final EReference J1939_TP_CONNECTION__DATA_PDU = eINSTANCE.getJ1939TpConnection_DataPdu();
        public static final EReference J1939_TP_CONNECTION__DIRECT_PDU = eINSTANCE.getJ1939TpConnection_DirectPdu();
        public static final EReference J1939_TP_CONNECTION__FLOW_CONTROL_PDUS = eINSTANCE.getJ1939TpConnection_FlowControlPdus();
        public static final EReference J1939_TP_CONNECTION__RECEIVERS = eINSTANCE.getJ1939TpConnection_Receivers();
        public static final EReference J1939_TP_CONNECTION__TP_SDUS = eINSTANCE.getJ1939TpConnection_TpSdus();
        public static final EReference J1939_TP_CONNECTION__TRANSMITTER = eINSTANCE.getJ1939TpConnection_Transmitter();
        public static final EReference J1939_TP_CONNECTION__VARIATION_POINT = eINSTANCE.getJ1939TpConnection_VariationPoint();
        public static final EClass LIN_TP_CONFIG = eINSTANCE.getLinTpConfig();
        public static final EReference LIN_TP_CONFIG__TP_ADDRESS = eINSTANCE.getLinTpConfig_TpAddress();
        public static final EReference LIN_TP_CONFIG__TP_CONNECTIONS = eINSTANCE.getLinTpConfig_TpConnections();
        public static final EReference LIN_TP_CONFIG__TP_NODES = eINSTANCE.getLinTpConfig_TpNodes();
        public static final EClass LIN_TP_CONNECTION = eINSTANCE.getLinTpConnection();
        public static final EReference LIN_TP_CONNECTION__LIN_TP_CONFIG = eINSTANCE.getLinTpConnection_LinTpConfig();
        public static final EReference LIN_TP_CONNECTION__DATA_PDU = eINSTANCE.getLinTpConnection_DataPdu();
        public static final EAttribute LIN_TP_CONNECTION__DROP_NOT_REQUESTED_NAD = eINSTANCE.getLinTpConnection_DropNotRequestedNad();
        public static final EReference LIN_TP_CONNECTION__FLOW_CONTROL = eINSTANCE.getLinTpConnection_FlowControl();
        public static final EReference LIN_TP_CONNECTION__LIN_TP_NSDU = eINSTANCE.getLinTpConnection_LinTpNSdu();
        public static final EReference LIN_TP_CONNECTION__MULTICAST = eINSTANCE.getLinTpConnection_Multicast();
        public static final EReference LIN_TP_CONNECTION__RECEIVERS = eINSTANCE.getLinTpConnection_Receivers();
        public static final EAttribute LIN_TP_CONNECTION__TIMEOUT_AS = eINSTANCE.getLinTpConnection_TimeoutAs();
        public static final EAttribute LIN_TP_CONNECTION__TIMEOUT_CR = eINSTANCE.getLinTpConnection_TimeoutCr();
        public static final EAttribute LIN_TP_CONNECTION__TIMEOUT_CS = eINSTANCE.getLinTpConnection_TimeoutCs();
        public static final EReference LIN_TP_CONNECTION__TRANSMITTER = eINSTANCE.getLinTpConnection_Transmitter();
        public static final EReference LIN_TP_CONNECTION__VARIATION_POINT = eINSTANCE.getLinTpConnection_VariationPoint();
        public static final EClass LIN_TP_NODE = eINSTANCE.getLinTpNode();
        public static final EReference LIN_TP_NODE__LIN_TP_CONFIG = eINSTANCE.getLinTpNode_LinTpConfig();
        public static final EReference LIN_TP_NODE__CONNECTOR = eINSTANCE.getLinTpNode_Connector();
        public static final EAttribute LIN_TP_NODE__MAX_NUMBER_OF_RESP_PENDING_FRAMES = eINSTANCE.getLinTpNode_MaxNumberOfRespPendingFrames();
        public static final EAttribute LIN_TP_NODE__P2_MAX = eINSTANCE.getLinTpNode_P2Max();
        public static final EAttribute LIN_TP_NODE__P2_TIMING = eINSTANCE.getLinTpNode_P2Timing();
        public static final EReference LIN_TP_NODE__TP_ADDRESS = eINSTANCE.getLinTpNode_TpAddress();
        public static final EReference LIN_TP_NODE__VARIATION_POINT = eINSTANCE.getLinTpNode_VariationPoint();
        public static final EClass TP_ADDRESS = eINSTANCE.getTpAddress();
        public static final EAttribute TP_ADDRESS__TP_ADDRESS = eINSTANCE.getTpAddress_TpAddress();
        public static final EReference TP_ADDRESS__VARIATION_POINT = eINSTANCE.getTpAddress_VariationPoint();
        public static final EEnum CAN_TP_ADDRESSING_FORMAT_TYPE = eINSTANCE.getCanTpAddressingFormatType();
        public static final EEnum CAN_TP_CHANNEL_MODE_TYPE = eINSTANCE.getCanTpChannelModeType();
        public static final EEnum NETWORK_TARGET_ADDRESS_TYPE = eINSTANCE.getNetworkTargetAddressType();
        public static final EEnum FR_AR_TP_ACK_TYPE = eINSTANCE.getFrArTpAckType();
        public static final EEnum MAXIMUM_MESSAGE_LENGTH_TYPE = eINSTANCE.getMaximumMessageLengthType();
        public static final EEnum TP_ACK_TYPE = eINSTANCE.getTpAckType();
    }
}

