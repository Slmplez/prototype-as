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
package autosar3x.system.transportprotocols;

import autosar3x.system.transportprotocols.TransportprotocolsFactory;
import autosar3x.system.transportprotocols.impl.TransportprotocolsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TransportprotocolsPackage
extends EPackage {
    public static final String eNAME = "transportprotocols";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/tp";
    public static final String eNS_PREFIX = "";
    public static final TransportprotocolsPackage eINSTANCE = TransportprotocolsPackageImpl.init();
    public static final int TP_CHANNEL = 14;
    public static final int TP_CHANNEL__GCHECKSUM = 0;
    public static final int TP_CHANNEL__GTIMESTAMP = 1;
    public static final int TP_CHANNEL__CHECKSUM = 2;
    public static final int TP_CHANNEL__TIMESTAMP = 3;
    public static final int TP_CHANNEL__PHYSICAL_CHANNEL = 4;
    public static final int TP_CHANNEL_FEATURE_COUNT = 5;
    public static final int CAN_TP_CONNECTION_CHANNEL = 0;
    public static final int CAN_TP_CONNECTION_CHANNEL__GCHECKSUM = 0;
    public static final int CAN_TP_CONNECTION_CHANNEL__GTIMESTAMP = 1;
    public static final int CAN_TP_CONNECTION_CHANNEL__CHECKSUM = 2;
    public static final int CAN_TP_CONNECTION_CHANNEL__TIMESTAMP = 3;
    public static final int CAN_TP_CONNECTION_CHANNEL__PHYSICAL_CHANNEL = 4;
    public static final int CAN_TP_CONNECTION_CHANNEL__ADDRESSING_FORMAT = 5;
    public static final int CAN_TP_CONNECTION_CHANNEL__BLOCK_SIZE = 6;
    public static final int CAN_TP_CONNECTION_CHANNEL__CHANNEL_MODE_TYPE = 7;
    public static final int CAN_TP_CONNECTION_CHANNEL__DATA_PDU = 8;
    public static final int CAN_TP_CONNECTION_CHANNEL__FLOW_CONTROL_PDU = 9;
    public static final int CAN_TP_CONNECTION_CHANNEL__MINIMUM_SEPARATION_TIME = 10;
    public static final int CAN_TP_CONNECTION_CHANNEL__MULTICAST_ADDRESSING = 11;
    public static final int CAN_TP_CONNECTION_CHANNEL__MULTICAST = 12;
    public static final int CAN_TP_CONNECTION_CHANNEL__PADDING_ACTIVATION = 13;
    public static final int CAN_TP_CONNECTION_CHANNEL__SOURCE = 14;
    public static final int CAN_TP_CONNECTION_CHANNEL__TA_TYPE = 15;
    public static final int CAN_TP_CONNECTION_CHANNEL__TARGETS = 16;
    public static final int CAN_TP_CONNECTION_CHANNEL__TIMEOUT_AS = 17;
    public static final int CAN_TP_CONNECTION_CHANNEL__TIMEOUT_BR = 18;
    public static final int CAN_TP_CONNECTION_CHANNEL__TIMEOUT_BS = 19;
    public static final int CAN_TP_CONNECTION_CHANNEL__TIMEOUT_CR = 20;
    public static final int CAN_TP_CONNECTION_CHANNEL__TIMEOUT_CS = 21;
    public static final int CAN_TP_CONNECTION_CHANNEL__TP_SDU = 22;
    public static final int CAN_TP_CONNECTION_CHANNEL_FEATURE_COUNT = 23;
    public static final int TP_NODE = 2;
    public static final int TP_NODE__GCHECKSUM = 0;
    public static final int TP_NODE__GTIMESTAMP = 1;
    public static final int TP_NODE__CHECKSUM = 2;
    public static final int TP_NODE__TIMESTAMP = 3;
    public static final int TP_NODE__GSHORT_NAME = 4;
    public static final int TP_NODE__GUUID = 5;
    public static final int TP_NODE__GCATEGORY = 6;
    public static final int TP_NODE__GDESC = 7;
    public static final int TP_NODE__SHORT_NAME = 8;
    public static final int TP_NODE__LONG_NAME = 9;
    public static final int TP_NODE__DESC = 10;
    public static final int TP_NODE__CATEGORY = 11;
    public static final int TP_NODE__ADMIN_DATA = 12;
    public static final int TP_NODE__INTRODUCTION = 13;
    public static final int TP_NODE__UUID = 14;
    public static final int TP_NODE__ALL_EXTENSIONS = 15;
    public static final int TP_NODE__CONTAINED_EXTENSIONS = 16;
    public static final int TP_NODE__PHYSICAL_CHANNEL = 17;
    public static final int TP_NODE__CONNECTORS = 18;
    public static final int TP_NODE__TP_ADDRESS = 19;
    public static final int TP_NODE_FEATURE_COUNT = 20;
    public static final int CAN_TP_NODE = 1;
    public static final int CAN_TP_NODE__GCHECKSUM = 0;
    public static final int CAN_TP_NODE__GTIMESTAMP = 1;
    public static final int CAN_TP_NODE__CHECKSUM = 2;
    public static final int CAN_TP_NODE__TIMESTAMP = 3;
    public static final int CAN_TP_NODE__GSHORT_NAME = 4;
    public static final int CAN_TP_NODE__GUUID = 5;
    public static final int CAN_TP_NODE__GCATEGORY = 6;
    public static final int CAN_TP_NODE__GDESC = 7;
    public static final int CAN_TP_NODE__SHORT_NAME = 8;
    public static final int CAN_TP_NODE__LONG_NAME = 9;
    public static final int CAN_TP_NODE__DESC = 10;
    public static final int CAN_TP_NODE__CATEGORY = 11;
    public static final int CAN_TP_NODE__ADMIN_DATA = 12;
    public static final int CAN_TP_NODE__INTRODUCTION = 13;
    public static final int CAN_TP_NODE__UUID = 14;
    public static final int CAN_TP_NODE__ALL_EXTENSIONS = 15;
    public static final int CAN_TP_NODE__CONTAINED_EXTENSIONS = 16;
    public static final int CAN_TP_NODE__PHYSICAL_CHANNEL = 17;
    public static final int CAN_TP_NODE__CONNECTORS = 18;
    public static final int CAN_TP_NODE__TP_ADDRESS = 19;
    public static final int CAN_TP_NODE__RX_WFT_MAX = 20;
    public static final int CAN_TP_NODE__TIMEOUT_AR = 21;
    public static final int CAN_TP_NODE_FEATURE_COUNT = 22;
    public static final int TP_ADDRESS = 3;
    public static final int TP_ADDRESS__GCHECKSUM = 0;
    public static final int TP_ADDRESS__GTIMESTAMP = 1;
    public static final int TP_ADDRESS__CHECKSUM = 2;
    public static final int TP_ADDRESS__TIMESTAMP = 3;
    public static final int TP_ADDRESS__GSHORT_NAME = 4;
    public static final int TP_ADDRESS__GUUID = 5;
    public static final int TP_ADDRESS__GCATEGORY = 6;
    public static final int TP_ADDRESS__GDESC = 7;
    public static final int TP_ADDRESS__SHORT_NAME = 8;
    public static final int TP_ADDRESS__LONG_NAME = 9;
    public static final int TP_ADDRESS__DESC = 10;
    public static final int TP_ADDRESS__CATEGORY = 11;
    public static final int TP_ADDRESS__ADMIN_DATA = 12;
    public static final int TP_ADDRESS__INTRODUCTION = 13;
    public static final int TP_ADDRESS__UUID = 14;
    public static final int TP_ADDRESS__ALL_EXTENSIONS = 15;
    public static final int TP_ADDRESS__CONTAINED_EXTENSIONS = 16;
    public static final int TP_ADDRESS__PHYSICAL_CHANNEL = 17;
    public static final int TP_ADDRESS__TP_ADDRESS = 18;
    public static final int TP_ADDRESS_FEATURE_COUNT = 19;
    public static final int FLEXRAY_ISO_TP_CONNECTION = 4;
    public static final int FLEXRAY_ISO_TP_CONNECTION__GCHECKSUM = 0;
    public static final int FLEXRAY_ISO_TP_CONNECTION__GTIMESTAMP = 1;
    public static final int FLEXRAY_ISO_TP_CONNECTION__CHECKSUM = 2;
    public static final int FLEXRAY_ISO_TP_CONNECTION__TIMESTAMP = 3;
    public static final int FLEXRAY_ISO_TP_CONNECTION__PHYSICAL_CHANNEL = 4;
    public static final int FLEXRAY_ISO_TP_CONNECTION__BANDWIDTH_LIMITATION = 5;
    public static final int FLEXRAY_ISO_TP_CONNECTION__DIRECT_TP_SDU = 6;
    public static final int FLEXRAY_ISO_TP_CONNECTION__MULTICAST = 7;
    public static final int FLEXRAY_ISO_TP_CONNECTION__RECEIVERS = 8;
    public static final int FLEXRAY_ISO_TP_CONNECTION__REVERSED_TP_SDU = 9;
    public static final int FLEXRAY_ISO_TP_CONNECTION__RX_PDU_POOL = 10;
    public static final int FLEXRAY_ISO_TP_CONNECTION__TP_CONNECTION_CONTROL = 11;
    public static final int FLEXRAY_ISO_TP_CONNECTION__TRANSMITTER = 12;
    public static final int FLEXRAY_ISO_TP_CONNECTION__TX_PDU_POOL = 13;
    public static final int FLEXRAY_ISO_TP_CONNECTION_FEATURE_COUNT = 14;
    public static final int FLEXRAY_ISO_TP_PDU_POOL = 5;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__GCHECKSUM = 0;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__GTIMESTAMP = 1;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__CHECKSUM = 2;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__TIMESTAMP = 3;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__GSHORT_NAME = 4;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__GUUID = 5;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__GCATEGORY = 6;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__GDESC = 7;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__SHORT_NAME = 8;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__LONG_NAME = 9;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__DESC = 10;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__CATEGORY = 11;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__ADMIN_DATA = 12;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__INTRODUCTION = 13;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__UUID = 14;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__ALL_EXTENSIONS = 15;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__CONTAINED_EXTENSIONS = 16;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__FLEXRAY_PHYSICAL_CHANNEL = 17;
    public static final int FLEXRAY_ISO_TP_PDU_POOL__NPDUS = 18;
    public static final int FLEXRAY_ISO_TP_PDU_POOL_FEATURE_COUNT = 19;
    public static final int FLEXRAY_ISO_TP_NODE = 6;
    public static final int FLEXRAY_ISO_TP_NODE__GCHECKSUM = 0;
    public static final int FLEXRAY_ISO_TP_NODE__GTIMESTAMP = 1;
    public static final int FLEXRAY_ISO_TP_NODE__CHECKSUM = 2;
    public static final int FLEXRAY_ISO_TP_NODE__TIMESTAMP = 3;
    public static final int FLEXRAY_ISO_TP_NODE__GSHORT_NAME = 4;
    public static final int FLEXRAY_ISO_TP_NODE__GUUID = 5;
    public static final int FLEXRAY_ISO_TP_NODE__GCATEGORY = 6;
    public static final int FLEXRAY_ISO_TP_NODE__GDESC = 7;
    public static final int FLEXRAY_ISO_TP_NODE__SHORT_NAME = 8;
    public static final int FLEXRAY_ISO_TP_NODE__LONG_NAME = 9;
    public static final int FLEXRAY_ISO_TP_NODE__DESC = 10;
    public static final int FLEXRAY_ISO_TP_NODE__CATEGORY = 11;
    public static final int FLEXRAY_ISO_TP_NODE__ADMIN_DATA = 12;
    public static final int FLEXRAY_ISO_TP_NODE__INTRODUCTION = 13;
    public static final int FLEXRAY_ISO_TP_NODE__UUID = 14;
    public static final int FLEXRAY_ISO_TP_NODE__ALL_EXTENSIONS = 15;
    public static final int FLEXRAY_ISO_TP_NODE__CONTAINED_EXTENSIONS = 16;
    public static final int FLEXRAY_ISO_TP_NODE__PHYSICAL_CHANNEL = 17;
    public static final int FLEXRAY_ISO_TP_NODE__CONNECTORS = 18;
    public static final int FLEXRAY_ISO_TP_NODE__TP_ADDRESS = 19;
    public static final int FLEXRAY_ISO_TP_NODE_FEATURE_COUNT = 20;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL = 7;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__GCHECKSUM = 0;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__GTIMESTAMP = 1;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__CHECKSUM = 2;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIMESTAMP = 3;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__GSHORT_NAME = 4;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__GUUID = 5;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__GCATEGORY = 6;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__GDESC = 7;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__SHORT_NAME = 8;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__LONG_NAME = 9;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__DESC = 10;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__CATEGORY = 11;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__ADMIN_DATA = 12;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__INTRODUCTION = 13;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__UUID = 14;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__ALL_EXTENSIONS = 15;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__CONTAINED_EXTENSIONS = 16;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__FLEXRAY_PHYSICAL_CHANNEL = 17;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__ACK_TYPE = 18;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__MAX_AR = 19;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__MAX_AS = 20;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__MAX_BUFFER_SIZE = 21;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__MAX_FC_WAIT = 22;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__MAX_FR_IF = 23;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__MAX_NUMBER_OF_NPDU_PER_CYCLE = 24;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__MAX_RETRIES = 25;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__SEPARATION_CYCLE_EXPONENT = 26;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIME_BR = 27;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIME_BUFFER = 28;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIME_FR_IF = 29;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIMEOUT_AR = 30;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIMEOUT_AS = 31;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIMEOUT_BS = 32;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIMEOUT_CR = 33;
    public static final int FLEXRAY_ISO_TP_CONNECTION_CONTROL_FEATURE_COUNT = 34;
    public static final int FLEXRAY_ISO_TP_ECU = 8;
    public static final int FLEXRAY_ISO_TP_ECU__GCHECKSUM = 0;
    public static final int FLEXRAY_ISO_TP_ECU__GTIMESTAMP = 1;
    public static final int FLEXRAY_ISO_TP_ECU__CHECKSUM = 2;
    public static final int FLEXRAY_ISO_TP_ECU__TIMESTAMP = 3;
    public static final int FLEXRAY_ISO_TP_ECU__FLEXRAY_PHYSICAL_CHANNEL = 4;
    public static final int FLEXRAY_ISO_TP_ECU__CYCLE_TIME_MAIN_FUNCTION = 5;
    public static final int FLEXRAY_ISO_TP_ECU__ECU_INSTANCE = 6;
    public static final int FLEXRAY_ISO_TP_ECU__FULL_DUPLEX_ENABLED = 7;
    public static final int FLEXRAY_ISO_TP_ECU_FEATURE_COUNT = 8;
    public static final int FLEXRAY_TP_CHANNEL = 9;
    public static final int FLEXRAY_TP_CHANNEL__GCHECKSUM = 0;
    public static final int FLEXRAY_TP_CHANNEL__GTIMESTAMP = 1;
    public static final int FLEXRAY_TP_CHANNEL__CHECKSUM = 2;
    public static final int FLEXRAY_TP_CHANNEL__TIMESTAMP = 3;
    public static final int FLEXRAY_TP_CHANNEL__PHYSICAL_CHANNEL = 4;
    public static final int FLEXRAY_TP_CHANNEL__ACK_TYPE = 5;
    public static final int FLEXRAY_TP_CHANNEL__EXTENDED_ADDRESSING = 6;
    public static final int FLEXRAY_TP_CHANNEL__FLOW_CONTROL_PDU = 7;
    public static final int FLEXRAY_TP_CHANNEL__MAX_AR = 8;
    public static final int FLEXRAY_TP_CHANNEL__MAX_AS = 9;
    public static final int FLEXRAY_TP_CHANNEL__MAX_BS = 10;
    public static final int FLEXRAY_TP_CHANNEL__MAX_BUFFER_REQUEST = 11;
    public static final int FLEXRAY_TP_CHANNEL__MAX_FR_IF = 12;
    public static final int FLEXRAY_TP_CHANNEL__MAX_RETRIES = 13;
    public static final int FLEXRAY_TP_CHANNEL__MAXIMUM_MESSAGE_LENGTH = 14;
    public static final int FLEXRAY_TP_CHANNEL__MINIMUM_SEPARATION_TIME = 15;
    public static final int FLEXRAY_TP_CHANNEL__MULTICAST_SEGMENTATION = 16;
    public static final int FLEXRAY_TP_CHANNEL__PDU_POOLS = 17;
    public static final int FLEXRAY_TP_CHANNEL__TIME_BR = 18;
    public static final int FLEXRAY_TP_CHANNEL__TIME_BUFFER = 19;
    public static final int FLEXRAY_TP_CHANNEL__TIME_CS = 20;
    public static final int FLEXRAY_TP_CHANNEL__TIME_FR_IF = 21;
    public static final int FLEXRAY_TP_CHANNEL__TIMEOUT_AR = 22;
    public static final int FLEXRAY_TP_CHANNEL__TIMEOUT_AS = 23;
    public static final int FLEXRAY_TP_CHANNEL__TIMEOUT_BS = 24;
    public static final int FLEXRAY_TP_CHANNEL__TIMEOUT_CR = 25;
    public static final int FLEXRAY_TP_CHANNEL__TP_CONNECTIONS = 26;
    public static final int FLEXRAY_TP_CHANNEL__TRANSMIT_CANCELLATION = 27;
    public static final int FLEXRAY_TP_CHANNEL_FEATURE_COUNT = 28;
    public static final int FLEX_RAY_TP_CONNECTION = 10;
    public static final int FLEX_RAY_TP_CONNECTION__GCHECKSUM = 0;
    public static final int FLEX_RAY_TP_CONNECTION__GTIMESTAMP = 1;
    public static final int FLEX_RAY_TP_CONNECTION__CHECKSUM = 2;
    public static final int FLEX_RAY_TP_CONNECTION__TIMESTAMP = 3;
    public static final int FLEX_RAY_TP_CONNECTION__FLEXRAY_TP_CHANNEL = 4;
    public static final int FLEX_RAY_TP_CONNECTION__DIRECT_TP_SDU = 5;
    public static final int FLEX_RAY_TP_CONNECTION__FLOW_CONTROL_PDU = 6;
    public static final int FLEX_RAY_TP_CONNECTION__MULTICAST = 7;
    public static final int FLEX_RAY_TP_CONNECTION__REVERSED_TP_SDU = 8;
    public static final int FLEX_RAY_TP_CONNECTION__SOURCE = 9;
    public static final int FLEX_RAY_TP_CONNECTION__TARGETS = 10;
    public static final int FLEX_RAY_TP_CONNECTION__TRANSMIT_PDUS = 11;
    public static final int FLEX_RAY_TP_CONNECTION_FEATURE_COUNT = 12;
    public static final int FLEXRAY_TP_NODE = 11;
    public static final int FLEXRAY_TP_NODE__GCHECKSUM = 0;
    public static final int FLEXRAY_TP_NODE__GTIMESTAMP = 1;
    public static final int FLEXRAY_TP_NODE__CHECKSUM = 2;
    public static final int FLEXRAY_TP_NODE__TIMESTAMP = 3;
    public static final int FLEXRAY_TP_NODE__GSHORT_NAME = 4;
    public static final int FLEXRAY_TP_NODE__GUUID = 5;
    public static final int FLEXRAY_TP_NODE__GCATEGORY = 6;
    public static final int FLEXRAY_TP_NODE__GDESC = 7;
    public static final int FLEXRAY_TP_NODE__SHORT_NAME = 8;
    public static final int FLEXRAY_TP_NODE__LONG_NAME = 9;
    public static final int FLEXRAY_TP_NODE__DESC = 10;
    public static final int FLEXRAY_TP_NODE__CATEGORY = 11;
    public static final int FLEXRAY_TP_NODE__ADMIN_DATA = 12;
    public static final int FLEXRAY_TP_NODE__INTRODUCTION = 13;
    public static final int FLEXRAY_TP_NODE__UUID = 14;
    public static final int FLEXRAY_TP_NODE__ALL_EXTENSIONS = 15;
    public static final int FLEXRAY_TP_NODE__CONTAINED_EXTENSIONS = 16;
    public static final int FLEXRAY_TP_NODE__PHYSICAL_CHANNEL = 17;
    public static final int FLEXRAY_TP_NODE__CONNECTORS = 18;
    public static final int FLEXRAY_TP_NODE__TP_ADDRESS = 19;
    public static final int FLEXRAY_TP_NODE_FEATURE_COUNT = 20;
    public static final int LIN_TP_CHANNEL = 12;
    public static final int LIN_TP_CHANNEL__GCHECKSUM = 0;
    public static final int LIN_TP_CHANNEL__GTIMESTAMP = 1;
    public static final int LIN_TP_CHANNEL__CHECKSUM = 2;
    public static final int LIN_TP_CHANNEL__TIMESTAMP = 3;
    public static final int LIN_TP_CHANNEL__PHYSICAL_CHANNEL = 4;
    public static final int LIN_TP_CHANNEL__DATA_PDU = 5;
    public static final int LIN_TP_CHANNEL__DROP_NOT_REQUESTED_NAD = 6;
    public static final int LIN_TP_CHANNEL__FLOW_CONTROL = 7;
    public static final int LIN_TP_CHANNEL__LIN_TP_NSDU = 8;
    public static final int LIN_TP_CHANNEL__MULTICAST = 9;
    public static final int LIN_TP_CHANNEL__SOURCE = 10;
    public static final int LIN_TP_CHANNEL__TARGETS = 11;
    public static final int LIN_TP_CHANNEL_FEATURE_COUNT = 12;
    public static final int LIN_TP_NODE = 13;
    public static final int LIN_TP_NODE__GCHECKSUM = 0;
    public static final int LIN_TP_NODE__GTIMESTAMP = 1;
    public static final int LIN_TP_NODE__CHECKSUM = 2;
    public static final int LIN_TP_NODE__TIMESTAMP = 3;
    public static final int LIN_TP_NODE__GSHORT_NAME = 4;
    public static final int LIN_TP_NODE__GUUID = 5;
    public static final int LIN_TP_NODE__GCATEGORY = 6;
    public static final int LIN_TP_NODE__GDESC = 7;
    public static final int LIN_TP_NODE__SHORT_NAME = 8;
    public static final int LIN_TP_NODE__LONG_NAME = 9;
    public static final int LIN_TP_NODE__DESC = 10;
    public static final int LIN_TP_NODE__CATEGORY = 11;
    public static final int LIN_TP_NODE__ADMIN_DATA = 12;
    public static final int LIN_TP_NODE__INTRODUCTION = 13;
    public static final int LIN_TP_NODE__UUID = 14;
    public static final int LIN_TP_NODE__ALL_EXTENSIONS = 15;
    public static final int LIN_TP_NODE__CONTAINED_EXTENSIONS = 16;
    public static final int LIN_TP_NODE__PHYSICAL_CHANNEL = 17;
    public static final int LIN_TP_NODE__CONNECTORS = 18;
    public static final int LIN_TP_NODE__TP_ADDRESS = 19;
    public static final int LIN_TP_NODE_FEATURE_COUNT = 20;
    public static final int CAN_TP_ADDRESSING_FORMAT_TYPE = 15;
    public static final int CAN_TP_CHANNEL_MODE_TYPE = 16;
    public static final int NETWORK_TARGET_ADDRESS_TYPE = 17;
    public static final int TP_ACK_TYPE = 18;
    public static final int MAXIMUM_MESSAGE_LENGTH_TYPE = 19;

    public EClass getCanTpConnectionChannel();

    public EAttribute getCanTpConnectionChannel_AddressingFormat();

    public EAttribute getCanTpConnectionChannel_BlockSize();

    public EAttribute getCanTpConnectionChannel_ChannelModeType();

    public EReference getCanTpConnectionChannel_DataPdu();

    public EReference getCanTpConnectionChannel_FlowControlPdu();

    public EAttribute getCanTpConnectionChannel_MinimumSeparationTime();

    public EAttribute getCanTpConnectionChannel_MulticastAddressing();

    public EReference getCanTpConnectionChannel_Multicast();

    public EAttribute getCanTpConnectionChannel_PaddingActivation();

    public EReference getCanTpConnectionChannel_Source();

    public EAttribute getCanTpConnectionChannel_TaType();

    public EReference getCanTpConnectionChannel_Targets();

    public EAttribute getCanTpConnectionChannel_TimeoutAs();

    public EAttribute getCanTpConnectionChannel_TimeoutBr();

    public EAttribute getCanTpConnectionChannel_TimeoutBs();

    public EAttribute getCanTpConnectionChannel_TimeoutCr();

    public EAttribute getCanTpConnectionChannel_TimeoutCs();

    public EReference getCanTpConnectionChannel_TpSdu();

    public EClass getCanTpNode();

    public EAttribute getCanTpNode_RxWftMax();

    public EAttribute getCanTpNode_TimeoutAr();

    public EClass getTpNode();

    public EReference getTpNode_PhysicalChannel();

    public EReference getTpNode_Connectors();

    public EReference getTpNode_TpAddress();

    public EClass getTpAddress();

    public EReference getTpAddress_PhysicalChannel();

    public EAttribute getTpAddress_TpAddress();

    public EClass getFlexrayIsoTpConnection();

    public EAttribute getFlexrayIsoTpConnection_BandwidthLimitation();

    public EReference getFlexrayIsoTpConnection_DirectTpSdu();

    public EReference getFlexrayIsoTpConnection_Multicast();

    public EReference getFlexrayIsoTpConnection_Receivers();

    public EReference getFlexrayIsoTpConnection_ReversedTpSdu();

    public EReference getFlexrayIsoTpConnection_RxPduPool();

    public EReference getFlexrayIsoTpConnection_TpConnectionControl();

    public EReference getFlexrayIsoTpConnection_Transmitter();

    public EReference getFlexrayIsoTpConnection_TxPduPool();

    public EClass getFlexrayIsoTpPduPool();

    public EReference getFlexrayIsoTpPduPool_FlexrayPhysicalChannel();

    public EReference getFlexrayIsoTpPduPool_NPdus();

    public EClass getFlexrayIsoTpNode();

    public EClass getFlexrayIsoTpConnectionControl();

    public EReference getFlexrayIsoTpConnectionControl_FlexrayPhysicalChannel();

    public EAttribute getFlexrayIsoTpConnectionControl_AckType();

    public EAttribute getFlexrayIsoTpConnectionControl_MaxAr();

    public EAttribute getFlexrayIsoTpConnectionControl_MaxAs();

    public EAttribute getFlexrayIsoTpConnectionControl_MaxBufferSize();

    public EAttribute getFlexrayIsoTpConnectionControl_MaxFcWait();

    public EAttribute getFlexrayIsoTpConnectionControl_MaxFrIf();

    public EAttribute getFlexrayIsoTpConnectionControl_MaxNumberOfNpduPerCycle();

    public EAttribute getFlexrayIsoTpConnectionControl_MaxRetries();

    public EAttribute getFlexrayIsoTpConnectionControl_SeparationCycleExponent();

    public EAttribute getFlexrayIsoTpConnectionControl_TimeBr();

    public EAttribute getFlexrayIsoTpConnectionControl_TimeBuffer();

    public EAttribute getFlexrayIsoTpConnectionControl_TimeFrIf();

    public EAttribute getFlexrayIsoTpConnectionControl_TimeoutAr();

    public EAttribute getFlexrayIsoTpConnectionControl_TimeoutAs();

    public EAttribute getFlexrayIsoTpConnectionControl_TimeoutBs();

    public EAttribute getFlexrayIsoTpConnectionControl_TimeoutCr();

    public EClass getFlexrayIsoTpEcu();

    public EReference getFlexrayIsoTpEcu_FlexrayPhysicalChannel();

    public EAttribute getFlexrayIsoTpEcu_CycleTimeMainFunction();

    public EReference getFlexrayIsoTpEcu_EcuInstance();

    public EAttribute getFlexrayIsoTpEcu_FullDuplexEnabled();

    public EClass getFlexrayTpChannel();

    public EAttribute getFlexrayTpChannel_AckType();

    public EAttribute getFlexrayTpChannel_ExtendedAddressing();

    public EReference getFlexrayTpChannel_FlowControlPdu();

    public EAttribute getFlexrayTpChannel_MaxAr();

    public EAttribute getFlexrayTpChannel_MaxAs();

    public EAttribute getFlexrayTpChannel_MaxBs();

    public EAttribute getFlexrayTpChannel_MaxBufferRequest();

    public EAttribute getFlexrayTpChannel_MaxFrIf();

    public EAttribute getFlexrayTpChannel_MaxRetries();

    public EAttribute getFlexrayTpChannel_MaximumMessageLength();

    public EAttribute getFlexrayTpChannel_MinimumSeparationTime();

    public EAttribute getFlexrayTpChannel_MulticastSegmentation();

    public EReference getFlexrayTpChannel_PduPools();

    public EAttribute getFlexrayTpChannel_TimeBr();

    public EAttribute getFlexrayTpChannel_TimeBuffer();

    public EAttribute getFlexrayTpChannel_TimeCs();

    public EAttribute getFlexrayTpChannel_TimeFrIf();

    public EAttribute getFlexrayTpChannel_TimeoutAr();

    public EAttribute getFlexrayTpChannel_TimeoutAs();

    public EAttribute getFlexrayTpChannel_TimeoutBs();

    public EAttribute getFlexrayTpChannel_TimeoutCr();

    public EReference getFlexrayTpChannel_TpConnections();

    public EAttribute getFlexrayTpChannel_TransmitCancellation();

    public EClass getFlexRayTpConnection();

    public EReference getFlexRayTpConnection_FlexrayTpChannel();

    public EReference getFlexRayTpConnection_DirectTpSdu();

    public EReference getFlexRayTpConnection_FlowControlPdu();

    public EReference getFlexRayTpConnection_Multicast();

    public EReference getFlexRayTpConnection_ReversedTpSdu();

    public EReference getFlexRayTpConnection_Source();

    public EReference getFlexRayTpConnection_Targets();

    public EReference getFlexRayTpConnection_TransmitPdus();

    public EClass getFlexrayTpNode();

    public EClass getLinTpChannel();

    public EReference getLinTpChannel_DataPdu();

    public EAttribute getLinTpChannel_DropNotRequestedNad();

    public EReference getLinTpChannel_FlowControl();

    public EReference getLinTpChannel_LinTpNSdu();

    public EReference getLinTpChannel_Multicast();

    public EReference getLinTpChannel_Source();

    public EReference getLinTpChannel_Targets();

    public EClass getLinTpNode();

    public EClass getTpChannel();

    public EReference getTpChannel_PhysicalChannel();

    public EEnum getCanTpAddressingFormatType();

    public EEnum getCanTpChannelModeType();

    public EEnum getNetworkTargetAddressType();

    public EEnum getTpAckType();

    public EEnum getMaximumMessageLengthType();

    public TransportprotocolsFactory getTransportprotocolsFactory();

    public static interface Literals {
        public static final EClass CAN_TP_CONNECTION_CHANNEL = eINSTANCE.getCanTpConnectionChannel();
        public static final EAttribute CAN_TP_CONNECTION_CHANNEL__ADDRESSING_FORMAT = eINSTANCE.getCanTpConnectionChannel_AddressingFormat();
        public static final EAttribute CAN_TP_CONNECTION_CHANNEL__BLOCK_SIZE = eINSTANCE.getCanTpConnectionChannel_BlockSize();
        public static final EAttribute CAN_TP_CONNECTION_CHANNEL__CHANNEL_MODE_TYPE = eINSTANCE.getCanTpConnectionChannel_ChannelModeType();
        public static final EReference CAN_TP_CONNECTION_CHANNEL__DATA_PDU = eINSTANCE.getCanTpConnectionChannel_DataPdu();
        public static final EReference CAN_TP_CONNECTION_CHANNEL__FLOW_CONTROL_PDU = eINSTANCE.getCanTpConnectionChannel_FlowControlPdu();
        public static final EAttribute CAN_TP_CONNECTION_CHANNEL__MINIMUM_SEPARATION_TIME = eINSTANCE.getCanTpConnectionChannel_MinimumSeparationTime();
        public static final EAttribute CAN_TP_CONNECTION_CHANNEL__MULTICAST_ADDRESSING = eINSTANCE.getCanTpConnectionChannel_MulticastAddressing();
        public static final EReference CAN_TP_CONNECTION_CHANNEL__MULTICAST = eINSTANCE.getCanTpConnectionChannel_Multicast();
        public static final EAttribute CAN_TP_CONNECTION_CHANNEL__PADDING_ACTIVATION = eINSTANCE.getCanTpConnectionChannel_PaddingActivation();
        public static final EReference CAN_TP_CONNECTION_CHANNEL__SOURCE = eINSTANCE.getCanTpConnectionChannel_Source();
        public static final EAttribute CAN_TP_CONNECTION_CHANNEL__TA_TYPE = eINSTANCE.getCanTpConnectionChannel_TaType();
        public static final EReference CAN_TP_CONNECTION_CHANNEL__TARGETS = eINSTANCE.getCanTpConnectionChannel_Targets();
        public static final EAttribute CAN_TP_CONNECTION_CHANNEL__TIMEOUT_AS = eINSTANCE.getCanTpConnectionChannel_TimeoutAs();
        public static final EAttribute CAN_TP_CONNECTION_CHANNEL__TIMEOUT_BR = eINSTANCE.getCanTpConnectionChannel_TimeoutBr();
        public static final EAttribute CAN_TP_CONNECTION_CHANNEL__TIMEOUT_BS = eINSTANCE.getCanTpConnectionChannel_TimeoutBs();
        public static final EAttribute CAN_TP_CONNECTION_CHANNEL__TIMEOUT_CR = eINSTANCE.getCanTpConnectionChannel_TimeoutCr();
        public static final EAttribute CAN_TP_CONNECTION_CHANNEL__TIMEOUT_CS = eINSTANCE.getCanTpConnectionChannel_TimeoutCs();
        public static final EReference CAN_TP_CONNECTION_CHANNEL__TP_SDU = eINSTANCE.getCanTpConnectionChannel_TpSdu();
        public static final EClass CAN_TP_NODE = eINSTANCE.getCanTpNode();
        public static final EAttribute CAN_TP_NODE__RX_WFT_MAX = eINSTANCE.getCanTpNode_RxWftMax();
        public static final EAttribute CAN_TP_NODE__TIMEOUT_AR = eINSTANCE.getCanTpNode_TimeoutAr();
        public static final EClass TP_NODE = eINSTANCE.getTpNode();
        public static final EReference TP_NODE__PHYSICAL_CHANNEL = eINSTANCE.getTpNode_PhysicalChannel();
        public static final EReference TP_NODE__CONNECTORS = eINSTANCE.getTpNode_Connectors();
        public static final EReference TP_NODE__TP_ADDRESS = eINSTANCE.getTpNode_TpAddress();
        public static final EClass TP_ADDRESS = eINSTANCE.getTpAddress();
        public static final EReference TP_ADDRESS__PHYSICAL_CHANNEL = eINSTANCE.getTpAddress_PhysicalChannel();
        public static final EAttribute TP_ADDRESS__TP_ADDRESS = eINSTANCE.getTpAddress_TpAddress();
        public static final EClass FLEXRAY_ISO_TP_CONNECTION = eINSTANCE.getFlexrayIsoTpConnection();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION__BANDWIDTH_LIMITATION = eINSTANCE.getFlexrayIsoTpConnection_BandwidthLimitation();
        public static final EReference FLEXRAY_ISO_TP_CONNECTION__DIRECT_TP_SDU = eINSTANCE.getFlexrayIsoTpConnection_DirectTpSdu();
        public static final EReference FLEXRAY_ISO_TP_CONNECTION__MULTICAST = eINSTANCE.getFlexrayIsoTpConnection_Multicast();
        public static final EReference FLEXRAY_ISO_TP_CONNECTION__RECEIVERS = eINSTANCE.getFlexrayIsoTpConnection_Receivers();
        public static final EReference FLEXRAY_ISO_TP_CONNECTION__REVERSED_TP_SDU = eINSTANCE.getFlexrayIsoTpConnection_ReversedTpSdu();
        public static final EReference FLEXRAY_ISO_TP_CONNECTION__RX_PDU_POOL = eINSTANCE.getFlexrayIsoTpConnection_RxPduPool();
        public static final EReference FLEXRAY_ISO_TP_CONNECTION__TP_CONNECTION_CONTROL = eINSTANCE.getFlexrayIsoTpConnection_TpConnectionControl();
        public static final EReference FLEXRAY_ISO_TP_CONNECTION__TRANSMITTER = eINSTANCE.getFlexrayIsoTpConnection_Transmitter();
        public static final EReference FLEXRAY_ISO_TP_CONNECTION__TX_PDU_POOL = eINSTANCE.getFlexrayIsoTpConnection_TxPduPool();
        public static final EClass FLEXRAY_ISO_TP_PDU_POOL = eINSTANCE.getFlexrayIsoTpPduPool();
        public static final EReference FLEXRAY_ISO_TP_PDU_POOL__FLEXRAY_PHYSICAL_CHANNEL = eINSTANCE.getFlexrayIsoTpPduPool_FlexrayPhysicalChannel();
        public static final EReference FLEXRAY_ISO_TP_PDU_POOL__NPDUS = eINSTANCE.getFlexrayIsoTpPduPool_NPdus();
        public static final EClass FLEXRAY_ISO_TP_NODE = eINSTANCE.getFlexrayIsoTpNode();
        public static final EClass FLEXRAY_ISO_TP_CONNECTION_CONTROL = eINSTANCE.getFlexrayIsoTpConnectionControl();
        public static final EReference FLEXRAY_ISO_TP_CONNECTION_CONTROL__FLEXRAY_PHYSICAL_CHANNEL = eINSTANCE.getFlexrayIsoTpConnectionControl_FlexrayPhysicalChannel();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__ACK_TYPE = eINSTANCE.getFlexrayIsoTpConnectionControl_AckType();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__MAX_AR = eINSTANCE.getFlexrayIsoTpConnectionControl_MaxAr();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__MAX_AS = eINSTANCE.getFlexrayIsoTpConnectionControl_MaxAs();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__MAX_BUFFER_SIZE = eINSTANCE.getFlexrayIsoTpConnectionControl_MaxBufferSize();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__MAX_FC_WAIT = eINSTANCE.getFlexrayIsoTpConnectionControl_MaxFcWait();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__MAX_FR_IF = eINSTANCE.getFlexrayIsoTpConnectionControl_MaxFrIf();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__MAX_NUMBER_OF_NPDU_PER_CYCLE = eINSTANCE.getFlexrayIsoTpConnectionControl_MaxNumberOfNpduPerCycle();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__MAX_RETRIES = eINSTANCE.getFlexrayIsoTpConnectionControl_MaxRetries();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__SEPARATION_CYCLE_EXPONENT = eINSTANCE.getFlexrayIsoTpConnectionControl_SeparationCycleExponent();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIME_BR = eINSTANCE.getFlexrayIsoTpConnectionControl_TimeBr();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIME_BUFFER = eINSTANCE.getFlexrayIsoTpConnectionControl_TimeBuffer();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIME_FR_IF = eINSTANCE.getFlexrayIsoTpConnectionControl_TimeFrIf();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIMEOUT_AR = eINSTANCE.getFlexrayIsoTpConnectionControl_TimeoutAr();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIMEOUT_AS = eINSTANCE.getFlexrayIsoTpConnectionControl_TimeoutAs();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIMEOUT_BS = eINSTANCE.getFlexrayIsoTpConnectionControl_TimeoutBs();
        public static final EAttribute FLEXRAY_ISO_TP_CONNECTION_CONTROL__TIMEOUT_CR = eINSTANCE.getFlexrayIsoTpConnectionControl_TimeoutCr();
        public static final EClass FLEXRAY_ISO_TP_ECU = eINSTANCE.getFlexrayIsoTpEcu();
        public static final EReference FLEXRAY_ISO_TP_ECU__FLEXRAY_PHYSICAL_CHANNEL = eINSTANCE.getFlexrayIsoTpEcu_FlexrayPhysicalChannel();
        public static final EAttribute FLEXRAY_ISO_TP_ECU__CYCLE_TIME_MAIN_FUNCTION = eINSTANCE.getFlexrayIsoTpEcu_CycleTimeMainFunction();
        public static final EReference FLEXRAY_ISO_TP_ECU__ECU_INSTANCE = eINSTANCE.getFlexrayIsoTpEcu_EcuInstance();
        public static final EAttribute FLEXRAY_ISO_TP_ECU__FULL_DUPLEX_ENABLED = eINSTANCE.getFlexrayIsoTpEcu_FullDuplexEnabled();
        public static final EClass FLEXRAY_TP_CHANNEL = eINSTANCE.getFlexrayTpChannel();
        public static final EAttribute FLEXRAY_TP_CHANNEL__ACK_TYPE = eINSTANCE.getFlexrayTpChannel_AckType();
        public static final EAttribute FLEXRAY_TP_CHANNEL__EXTENDED_ADDRESSING = eINSTANCE.getFlexrayTpChannel_ExtendedAddressing();
        public static final EReference FLEXRAY_TP_CHANNEL__FLOW_CONTROL_PDU = eINSTANCE.getFlexrayTpChannel_FlowControlPdu();
        public static final EAttribute FLEXRAY_TP_CHANNEL__MAX_AR = eINSTANCE.getFlexrayTpChannel_MaxAr();
        public static final EAttribute FLEXRAY_TP_CHANNEL__MAX_AS = eINSTANCE.getFlexrayTpChannel_MaxAs();
        public static final EAttribute FLEXRAY_TP_CHANNEL__MAX_BS = eINSTANCE.getFlexrayTpChannel_MaxBs();
        public static final EAttribute FLEXRAY_TP_CHANNEL__MAX_BUFFER_REQUEST = eINSTANCE.getFlexrayTpChannel_MaxBufferRequest();
        public static final EAttribute FLEXRAY_TP_CHANNEL__MAX_FR_IF = eINSTANCE.getFlexrayTpChannel_MaxFrIf();
        public static final EAttribute FLEXRAY_TP_CHANNEL__MAX_RETRIES = eINSTANCE.getFlexrayTpChannel_MaxRetries();
        public static final EAttribute FLEXRAY_TP_CHANNEL__MAXIMUM_MESSAGE_LENGTH = eINSTANCE.getFlexrayTpChannel_MaximumMessageLength();
        public static final EAttribute FLEXRAY_TP_CHANNEL__MINIMUM_SEPARATION_TIME = eINSTANCE.getFlexrayTpChannel_MinimumSeparationTime();
        public static final EAttribute FLEXRAY_TP_CHANNEL__MULTICAST_SEGMENTATION = eINSTANCE.getFlexrayTpChannel_MulticastSegmentation();
        public static final EReference FLEXRAY_TP_CHANNEL__PDU_POOLS = eINSTANCE.getFlexrayTpChannel_PduPools();
        public static final EAttribute FLEXRAY_TP_CHANNEL__TIME_BR = eINSTANCE.getFlexrayTpChannel_TimeBr();
        public static final EAttribute FLEXRAY_TP_CHANNEL__TIME_BUFFER = eINSTANCE.getFlexrayTpChannel_TimeBuffer();
        public static final EAttribute FLEXRAY_TP_CHANNEL__TIME_CS = eINSTANCE.getFlexrayTpChannel_TimeCs();
        public static final EAttribute FLEXRAY_TP_CHANNEL__TIME_FR_IF = eINSTANCE.getFlexrayTpChannel_TimeFrIf();
        public static final EAttribute FLEXRAY_TP_CHANNEL__TIMEOUT_AR = eINSTANCE.getFlexrayTpChannel_TimeoutAr();
        public static final EAttribute FLEXRAY_TP_CHANNEL__TIMEOUT_AS = eINSTANCE.getFlexrayTpChannel_TimeoutAs();
        public static final EAttribute FLEXRAY_TP_CHANNEL__TIMEOUT_BS = eINSTANCE.getFlexrayTpChannel_TimeoutBs();
        public static final EAttribute FLEXRAY_TP_CHANNEL__TIMEOUT_CR = eINSTANCE.getFlexrayTpChannel_TimeoutCr();
        public static final EReference FLEXRAY_TP_CHANNEL__TP_CONNECTIONS = eINSTANCE.getFlexrayTpChannel_TpConnections();
        public static final EAttribute FLEXRAY_TP_CHANNEL__TRANSMIT_CANCELLATION = eINSTANCE.getFlexrayTpChannel_TransmitCancellation();
        public static final EClass FLEX_RAY_TP_CONNECTION = eINSTANCE.getFlexRayTpConnection();
        public static final EReference FLEX_RAY_TP_CONNECTION__FLEXRAY_TP_CHANNEL = eINSTANCE.getFlexRayTpConnection_FlexrayTpChannel();
        public static final EReference FLEX_RAY_TP_CONNECTION__DIRECT_TP_SDU = eINSTANCE.getFlexRayTpConnection_DirectTpSdu();
        public static final EReference FLEX_RAY_TP_CONNECTION__FLOW_CONTROL_PDU = eINSTANCE.getFlexRayTpConnection_FlowControlPdu();
        public static final EReference FLEX_RAY_TP_CONNECTION__MULTICAST = eINSTANCE.getFlexRayTpConnection_Multicast();
        public static final EReference FLEX_RAY_TP_CONNECTION__REVERSED_TP_SDU = eINSTANCE.getFlexRayTpConnection_ReversedTpSdu();
        public static final EReference FLEX_RAY_TP_CONNECTION__SOURCE = eINSTANCE.getFlexRayTpConnection_Source();
        public static final EReference FLEX_RAY_TP_CONNECTION__TARGETS = eINSTANCE.getFlexRayTpConnection_Targets();
        public static final EReference FLEX_RAY_TP_CONNECTION__TRANSMIT_PDUS = eINSTANCE.getFlexRayTpConnection_TransmitPdus();
        public static final EClass FLEXRAY_TP_NODE = eINSTANCE.getFlexrayTpNode();
        public static final EClass LIN_TP_CHANNEL = eINSTANCE.getLinTpChannel();
        public static final EReference LIN_TP_CHANNEL__DATA_PDU = eINSTANCE.getLinTpChannel_DataPdu();
        public static final EAttribute LIN_TP_CHANNEL__DROP_NOT_REQUESTED_NAD = eINSTANCE.getLinTpChannel_DropNotRequestedNad();
        public static final EReference LIN_TP_CHANNEL__FLOW_CONTROL = eINSTANCE.getLinTpChannel_FlowControl();
        public static final EReference LIN_TP_CHANNEL__LIN_TP_NSDU = eINSTANCE.getLinTpChannel_LinTpNSdu();
        public static final EReference LIN_TP_CHANNEL__MULTICAST = eINSTANCE.getLinTpChannel_Multicast();
        public static final EReference LIN_TP_CHANNEL__SOURCE = eINSTANCE.getLinTpChannel_Source();
        public static final EReference LIN_TP_CHANNEL__TARGETS = eINSTANCE.getLinTpChannel_Targets();
        public static final EClass LIN_TP_NODE = eINSTANCE.getLinTpNode();
        public static final EClass TP_CHANNEL = eINSTANCE.getTpChannel();
        public static final EReference TP_CHANNEL__PHYSICAL_CHANNEL = eINSTANCE.getTpChannel_PhysicalChannel();
        public static final EEnum CAN_TP_ADDRESSING_FORMAT_TYPE = eINSTANCE.getCanTpAddressingFormatType();
        public static final EEnum CAN_TP_CHANNEL_MODE_TYPE = eINSTANCE.getCanTpChannelModeType();
        public static final EEnum NETWORK_TARGET_ADDRESS_TYPE = eINSTANCE.getNetworkTargetAddressType();
        public static final EEnum TP_ACK_TYPE = eINSTANCE.getTpAckType();
        public static final EEnum MAXIMUM_MESSAGE_LENGTH_TYPE = eINSTANCE.getMaximumMessageLengthType();
    }
}

