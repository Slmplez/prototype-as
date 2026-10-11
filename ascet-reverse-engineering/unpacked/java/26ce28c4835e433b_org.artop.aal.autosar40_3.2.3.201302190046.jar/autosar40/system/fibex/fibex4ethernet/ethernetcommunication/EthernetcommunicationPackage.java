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
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication;

import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationFactory;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl.EthernetcommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface EthernetcommunicationPackage
extends EPackage {
    public static final String eNAME = "ethernetcommunication";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/fe/ec";
    public static final String eNS_PREFIX = "";
    public static final EthernetcommunicationPackage eINSTANCE = EthernetcommunicationPackageImpl.init();
    public static final int ETHERNET_FRAME = 0;
    public static final int ETHERNET_FRAME__GCHECKSUM = 0;
    public static final int ETHERNET_FRAME__GTIMESTAMP = 1;
    public static final int ETHERNET_FRAME__CHECKSUM = 2;
    public static final int ETHERNET_FRAME__TIMESTAMP = 3;
    public static final int ETHERNET_FRAME__GSHORT_NAME = 4;
    public static final int ETHERNET_FRAME__SHORT_NAME = 5;
    public static final int ETHERNET_FRAME__LONG_NAME = 6;
    public static final int ETHERNET_FRAME__GUUID = 7;
    public static final int ETHERNET_FRAME__GCATEGORY = 8;
    public static final int ETHERNET_FRAME__GDESC = 9;
    public static final int ETHERNET_FRAME__DESC = 10;
    public static final int ETHERNET_FRAME__CATEGORY = 11;
    public static final int ETHERNET_FRAME__ADMIN_DATA = 12;
    public static final int ETHERNET_FRAME__INTRODUCTION = 13;
    public static final int ETHERNET_FRAME__ANNOTATIONS = 14;
    public static final int ETHERNET_FRAME__UUID = 15;
    public static final int ETHERNET_FRAME__ALL_EXTENSIONS = 16;
    public static final int ETHERNET_FRAME__CONTAINED_EXTENSIONS = 17;
    public static final int ETHERNET_FRAME__GAR_PACKAGE = 18;
    public static final int ETHERNET_FRAME__AR_PACKAGE = 19;
    public static final int ETHERNET_FRAME__VARIATION_POINT = 20;
    public static final int ETHERNET_FRAME__FRAME_LENGTH = 21;
    public static final int ETHERNET_FRAME__PDU_TO_FRAME_MAPPINGS = 22;
    public static final int ETHERNET_FRAME_FEATURE_COUNT = 23;
    public static final int ETHERNET_FRAME_TRIGGERING = 1;
    public static final int ETHERNET_FRAME_TRIGGERING__GCHECKSUM = 0;
    public static final int ETHERNET_FRAME_TRIGGERING__GTIMESTAMP = 1;
    public static final int ETHERNET_FRAME_TRIGGERING__CHECKSUM = 2;
    public static final int ETHERNET_FRAME_TRIGGERING__TIMESTAMP = 3;
    public static final int ETHERNET_FRAME_TRIGGERING__GSHORT_NAME = 4;
    public static final int ETHERNET_FRAME_TRIGGERING__SHORT_NAME = 5;
    public static final int ETHERNET_FRAME_TRIGGERING__LONG_NAME = 6;
    public static final int ETHERNET_FRAME_TRIGGERING__GUUID = 7;
    public static final int ETHERNET_FRAME_TRIGGERING__GCATEGORY = 8;
    public static final int ETHERNET_FRAME_TRIGGERING__GDESC = 9;
    public static final int ETHERNET_FRAME_TRIGGERING__DESC = 10;
    public static final int ETHERNET_FRAME_TRIGGERING__CATEGORY = 11;
    public static final int ETHERNET_FRAME_TRIGGERING__ADMIN_DATA = 12;
    public static final int ETHERNET_FRAME_TRIGGERING__INTRODUCTION = 13;
    public static final int ETHERNET_FRAME_TRIGGERING__ANNOTATIONS = 14;
    public static final int ETHERNET_FRAME_TRIGGERING__UUID = 15;
    public static final int ETHERNET_FRAME_TRIGGERING__ALL_EXTENSIONS = 16;
    public static final int ETHERNET_FRAME_TRIGGERING__CONTAINED_EXTENSIONS = 17;
    public static final int ETHERNET_FRAME_TRIGGERING__PHYSICAL_CHANNEL = 18;
    public static final int ETHERNET_FRAME_TRIGGERING__FRAME_PORTS = 19;
    public static final int ETHERNET_FRAME_TRIGGERING__FRAME = 20;
    public static final int ETHERNET_FRAME_TRIGGERING__PDU_TRIGGERINGS = 21;
    public static final int ETHERNET_FRAME_TRIGGERING__VARIATION_POINT = 22;
    public static final int ETHERNET_FRAME_TRIGGERING_FEATURE_COUNT = 23;
    public static final int LOGIC_ADDRESS = 2;
    public static final int LOGIC_ADDRESS__GCHECKSUM = 0;
    public static final int LOGIC_ADDRESS__GTIMESTAMP = 1;
    public static final int LOGIC_ADDRESS__CHECKSUM = 2;
    public static final int LOGIC_ADDRESS__TIMESTAMP = 3;
    public static final int LOGIC_ADDRESS__GSHORT_NAME = 4;
    public static final int LOGIC_ADDRESS__SHORT_NAME = 5;
    public static final int LOGIC_ADDRESS__LONG_NAME = 6;
    public static final int LOGIC_ADDRESS__GUUID = 7;
    public static final int LOGIC_ADDRESS__GCATEGORY = 8;
    public static final int LOGIC_ADDRESS__GDESC = 9;
    public static final int LOGIC_ADDRESS__DESC = 10;
    public static final int LOGIC_ADDRESS__CATEGORY = 11;
    public static final int LOGIC_ADDRESS__ADMIN_DATA = 12;
    public static final int LOGIC_ADDRESS__INTRODUCTION = 13;
    public static final int LOGIC_ADDRESS__ANNOTATIONS = 14;
    public static final int LOGIC_ADDRESS__UUID = 15;
    public static final int LOGIC_ADDRESS__ALL_EXTENSIONS = 16;
    public static final int LOGIC_ADDRESS__CONTAINED_EXTENSIONS = 17;
    public static final int LOGIC_ADDRESS__SO_AD_CONFIG = 18;
    public static final int LOGIC_ADDRESS__ADDRESS = 19;
    public static final int LOGIC_ADDRESS_FEATURE_COUNT = 20;
    public static final int SO_AD_CONFIG = 3;
    public static final int SO_AD_CONFIG__GCHECKSUM = 0;
    public static final int SO_AD_CONFIG__GTIMESTAMP = 1;
    public static final int SO_AD_CONFIG__CHECKSUM = 2;
    public static final int SO_AD_CONFIG__TIMESTAMP = 3;
    public static final int SO_AD_CONFIG__ETHERNET_PHYSICAL_CHANNEL = 4;
    public static final int SO_AD_CONFIG__CONNECTIONS = 5;
    public static final int SO_AD_CONFIG__LOGIC_ADDRESS = 6;
    public static final int SO_AD_CONFIG__SOCKET_ADDRESS = 7;
    public static final int SO_AD_CONFIG_FEATURE_COUNT = 8;
    public static final int SOCKET_ADDRESS = 4;
    public static final int SOCKET_ADDRESS__GCHECKSUM = 0;
    public static final int SOCKET_ADDRESS__GTIMESTAMP = 1;
    public static final int SOCKET_ADDRESS__CHECKSUM = 2;
    public static final int SOCKET_ADDRESS__TIMESTAMP = 3;
    public static final int SOCKET_ADDRESS__GSHORT_NAME = 4;
    public static final int SOCKET_ADDRESS__SHORT_NAME = 5;
    public static final int SOCKET_ADDRESS__LONG_NAME = 6;
    public static final int SOCKET_ADDRESS__GUUID = 7;
    public static final int SOCKET_ADDRESS__GCATEGORY = 8;
    public static final int SOCKET_ADDRESS__GDESC = 9;
    public static final int SOCKET_ADDRESS__DESC = 10;
    public static final int SOCKET_ADDRESS__CATEGORY = 11;
    public static final int SOCKET_ADDRESS__ADMIN_DATA = 12;
    public static final int SOCKET_ADDRESS__INTRODUCTION = 13;
    public static final int SOCKET_ADDRESS__ANNOTATIONS = 14;
    public static final int SOCKET_ADDRESS__UUID = 15;
    public static final int SOCKET_ADDRESS__ALL_EXTENSIONS = 16;
    public static final int SOCKET_ADDRESS__CONTAINED_EXTENSIONS = 17;
    public static final int SOCKET_ADDRESS__SO_AD_CONFIG = 18;
    public static final int SOCKET_ADDRESS__CONNECTOR = 19;
    public static final int SOCKET_ADDRESS__IP_ADDRESS = 20;
    public static final int SOCKET_ADDRESS__PORT_ADDRESS = 21;
    public static final int SOCKET_ADDRESS_FEATURE_COUNT = 22;
    public static final int SOCKET_CONNECTION = 5;
    public static final int SOCKET_CONNECTION__GCHECKSUM = 0;
    public static final int SOCKET_CONNECTION__GTIMESTAMP = 1;
    public static final int SOCKET_CONNECTION__CHECKSUM = 2;
    public static final int SOCKET_CONNECTION__TIMESTAMP = 3;
    public static final int SOCKET_CONNECTION__SO_AD_CONFIG = 4;
    public static final int SOCKET_CONNECTION__AUTOSAR_CONNECTOR = 5;
    public static final int SOCKET_CONNECTION__DO_IP_SOURCE_ADDRESS = 6;
    public static final int SOCKET_CONNECTION__DO_IP_TARGET_ADDRESS = 7;
    public static final int SOCKET_CONNECTION__LOCAL_PORT = 8;
    public static final int SOCKET_CONNECTION__NPDU = 9;
    public static final int SOCKET_CONNECTION__PDUS = 10;
    public static final int SOCKET_CONNECTION__REMOTE_PORT = 11;
    public static final int SOCKET_CONNECTION__SOCKET_PROTOCOL = 12;
    public static final int SOCKET_CONNECTION_FEATURE_COUNT = 13;
    public static final int SOCKET_CONNECTION_IPDU_IDENTIFIER = 6;
    public static final int SOCKET_CONNECTION_IPDU_IDENTIFIER__GCHECKSUM = 0;
    public static final int SOCKET_CONNECTION_IPDU_IDENTIFIER__GTIMESTAMP = 1;
    public static final int SOCKET_CONNECTION_IPDU_IDENTIFIER__CHECKSUM = 2;
    public static final int SOCKET_CONNECTION_IPDU_IDENTIFIER__TIMESTAMP = 3;
    public static final int SOCKET_CONNECTION_IPDU_IDENTIFIER__SOCKET_CONNECTION = 4;
    public static final int SOCKET_CONNECTION_IPDU_IDENTIFIER__HEADER_ID = 5;
    public static final int SOCKET_CONNECTION_IPDU_IDENTIFIER__PDU = 6;
    public static final int SOCKET_CONNECTION_IPDU_IDENTIFIER_FEATURE_COUNT = 7;
    public static final int SO_AD_CONNECTOR_TYPE = 7;
    public static final int SO_AD_PROTOCOL_TYPE = 8;

    public EClass getEthernetFrame();

    public EClass getEthernetFrameTriggering();

    public EClass getLogicAddress();

    public EReference getLogicAddress_SoAdConfig();

    public EAttribute getLogicAddress_Address();

    public EClass getSoAdConfig();

    public EReference getSoAdConfig_EthernetPhysicalChannel();

    public EReference getSoAdConfig_Connections();

    public EReference getSoAdConfig_LogicAddress();

    public EReference getSoAdConfig_SocketAddress();

    public EClass getSocketAddress();

    public EReference getSocketAddress_SoAdConfig();

    public EReference getSocketAddress_Connector();

    public EAttribute getSocketAddress_IpAddress();

    public EAttribute getSocketAddress_PortAddress();

    public EClass getSocketConnection();

    public EReference getSocketConnection_SoAdConfig();

    public EAttribute getSocketConnection_AutosarConnector();

    public EReference getSocketConnection_DoIpSourceAddress();

    public EReference getSocketConnection_DoIpTargetAddress();

    public EReference getSocketConnection_LocalPort();

    public EReference getSocketConnection_NPdu();

    public EReference getSocketConnection_Pdus();

    public EReference getSocketConnection_RemotePort();

    public EAttribute getSocketConnection_SocketProtocol();

    public EClass getSocketConnectionIpduIdentifier();

    public EReference getSocketConnectionIpduIdentifier_SocketConnection();

    public EAttribute getSocketConnectionIpduIdentifier_HeaderId();

    public EReference getSocketConnectionIpduIdentifier_Pdu();

    public EEnum getSoAdConnectorType();

    public EEnum getSoAdProtocolType();

    public EthernetcommunicationFactory getEthernetcommunicationFactory();

    public static interface Literals {
        public static final EClass ETHERNET_FRAME = eINSTANCE.getEthernetFrame();
        public static final EClass ETHERNET_FRAME_TRIGGERING = eINSTANCE.getEthernetFrameTriggering();
        public static final EClass LOGIC_ADDRESS = eINSTANCE.getLogicAddress();
        public static final EReference LOGIC_ADDRESS__SO_AD_CONFIG = eINSTANCE.getLogicAddress_SoAdConfig();
        public static final EAttribute LOGIC_ADDRESS__ADDRESS = eINSTANCE.getLogicAddress_Address();
        public static final EClass SO_AD_CONFIG = eINSTANCE.getSoAdConfig();
        public static final EReference SO_AD_CONFIG__ETHERNET_PHYSICAL_CHANNEL = eINSTANCE.getSoAdConfig_EthernetPhysicalChannel();
        public static final EReference SO_AD_CONFIG__CONNECTIONS = eINSTANCE.getSoAdConfig_Connections();
        public static final EReference SO_AD_CONFIG__LOGIC_ADDRESS = eINSTANCE.getSoAdConfig_LogicAddress();
        public static final EReference SO_AD_CONFIG__SOCKET_ADDRESS = eINSTANCE.getSoAdConfig_SocketAddress();
        public static final EClass SOCKET_ADDRESS = eINSTANCE.getSocketAddress();
        public static final EReference SOCKET_ADDRESS__SO_AD_CONFIG = eINSTANCE.getSocketAddress_SoAdConfig();
        public static final EReference SOCKET_ADDRESS__CONNECTOR = eINSTANCE.getSocketAddress_Connector();
        public static final EAttribute SOCKET_ADDRESS__IP_ADDRESS = eINSTANCE.getSocketAddress_IpAddress();
        public static final EAttribute SOCKET_ADDRESS__PORT_ADDRESS = eINSTANCE.getSocketAddress_PortAddress();
        public static final EClass SOCKET_CONNECTION = eINSTANCE.getSocketConnection();
        public static final EReference SOCKET_CONNECTION__SO_AD_CONFIG = eINSTANCE.getSocketConnection_SoAdConfig();
        public static final EAttribute SOCKET_CONNECTION__AUTOSAR_CONNECTOR = eINSTANCE.getSocketConnection_AutosarConnector();
        public static final EReference SOCKET_CONNECTION__DO_IP_SOURCE_ADDRESS = eINSTANCE.getSocketConnection_DoIpSourceAddress();
        public static final EReference SOCKET_CONNECTION__DO_IP_TARGET_ADDRESS = eINSTANCE.getSocketConnection_DoIpTargetAddress();
        public static final EReference SOCKET_CONNECTION__LOCAL_PORT = eINSTANCE.getSocketConnection_LocalPort();
        public static final EReference SOCKET_CONNECTION__NPDU = eINSTANCE.getSocketConnection_NPdu();
        public static final EReference SOCKET_CONNECTION__PDUS = eINSTANCE.getSocketConnection_Pdus();
        public static final EReference SOCKET_CONNECTION__REMOTE_PORT = eINSTANCE.getSocketConnection_RemotePort();
        public static final EAttribute SOCKET_CONNECTION__SOCKET_PROTOCOL = eINSTANCE.getSocketConnection_SocketProtocol();
        public static final EClass SOCKET_CONNECTION_IPDU_IDENTIFIER = eINSTANCE.getSocketConnectionIpduIdentifier();
        public static final EReference SOCKET_CONNECTION_IPDU_IDENTIFIER__SOCKET_CONNECTION = eINSTANCE.getSocketConnectionIpduIdentifier_SocketConnection();
        public static final EAttribute SOCKET_CONNECTION_IPDU_IDENTIFIER__HEADER_ID = eINSTANCE.getSocketConnectionIpduIdentifier_HeaderId();
        public static final EReference SOCKET_CONNECTION_IPDU_IDENTIFIER__PDU = eINSTANCE.getSocketConnectionIpduIdentifier_Pdu();
        public static final EEnum SO_AD_CONNECTOR_TYPE = eINSTANCE.getSoAdConnectorType();
        public static final EEnum SO_AD_PROTOCOL_TYPE = eINSTANCE.getSoAdProtocolType();
    }
}

