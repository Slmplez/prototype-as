/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.system.fibex.fibex4ethernet.ethernettopology;

import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyFactory;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.impl.EthernettopologyPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface EthernettopologyPackage
extends EPackage {
    public static final String eNAME = "ethernettopology";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/fe/et";
    public static final String eNS_PREFIX = "";
    public static final EthernettopologyPackage eINSTANCE = EthernettopologyPackageImpl.init();
    public static final int ETHERNET_CLUSTER = 0;
    public static final int ETHERNET_CLUSTER__GCHECKSUM = 0;
    public static final int ETHERNET_CLUSTER__GTIMESTAMP = 1;
    public static final int ETHERNET_CLUSTER__CHECKSUM = 2;
    public static final int ETHERNET_CLUSTER__TIMESTAMP = 3;
    public static final int ETHERNET_CLUSTER__GSHORT_NAME = 4;
    public static final int ETHERNET_CLUSTER__SHORT_NAME = 5;
    public static final int ETHERNET_CLUSTER__LONG_NAME = 6;
    public static final int ETHERNET_CLUSTER__GUUID = 7;
    public static final int ETHERNET_CLUSTER__GCATEGORY = 8;
    public static final int ETHERNET_CLUSTER__GDESC = 9;
    public static final int ETHERNET_CLUSTER__DESC = 10;
    public static final int ETHERNET_CLUSTER__CATEGORY = 11;
    public static final int ETHERNET_CLUSTER__ADMIN_DATA = 12;
    public static final int ETHERNET_CLUSTER__INTRODUCTION = 13;
    public static final int ETHERNET_CLUSTER__ANNOTATIONS = 14;
    public static final int ETHERNET_CLUSTER__UUID = 15;
    public static final int ETHERNET_CLUSTER__ALL_EXTENSIONS = 16;
    public static final int ETHERNET_CLUSTER__CONTAINED_EXTENSIONS = 17;
    public static final int ETHERNET_CLUSTER__GAR_PACKAGE = 18;
    public static final int ETHERNET_CLUSTER__AR_PACKAGE = 19;
    public static final int ETHERNET_CLUSTER__VARIATION_POINT = 20;
    public static final int ETHERNET_CLUSTER__ETHERNET_CLUSTER_VARIANTS = 21;
    public static final int ETHERNET_CLUSTER_FEATURE_COUNT = 22;
    public static final int ETHERNET_CLUSTER_CONTENT = 2;
    public static final int ETHERNET_CLUSTER_CONTENT__GCHECKSUM = 0;
    public static final int ETHERNET_CLUSTER_CONTENT__GTIMESTAMP = 1;
    public static final int ETHERNET_CLUSTER_CONTENT__CHECKSUM = 2;
    public static final int ETHERNET_CLUSTER_CONTENT__TIMESTAMP = 3;
    public static final int ETHERNET_CLUSTER_CONTENT__PHYSICAL_CHANNELS = 4;
    public static final int ETHERNET_CLUSTER_CONTENT__PROTOCOL_NAME = 5;
    public static final int ETHERNET_CLUSTER_CONTENT__PROTOCOL_VERSION = 6;
    public static final int ETHERNET_CLUSTER_CONTENT__SPEED = 7;
    public static final int ETHERNET_CLUSTER_CONTENT_FEATURE_COUNT = 8;
    public static final int ETHERNET_CLUSTER_CONDITIONAL = 1;
    public static final int ETHERNET_CLUSTER_CONDITIONAL__GCHECKSUM = 0;
    public static final int ETHERNET_CLUSTER_CONDITIONAL__GTIMESTAMP = 1;
    public static final int ETHERNET_CLUSTER_CONDITIONAL__CHECKSUM = 2;
    public static final int ETHERNET_CLUSTER_CONDITIONAL__TIMESTAMP = 3;
    public static final int ETHERNET_CLUSTER_CONDITIONAL__PHYSICAL_CHANNELS = 4;
    public static final int ETHERNET_CLUSTER_CONDITIONAL__PROTOCOL_NAME = 5;
    public static final int ETHERNET_CLUSTER_CONDITIONAL__PROTOCOL_VERSION = 6;
    public static final int ETHERNET_CLUSTER_CONDITIONAL__SPEED = 7;
    public static final int ETHERNET_CLUSTER_CONDITIONAL__ETHERNET_CLUSTER = 8;
    public static final int ETHERNET_CLUSTER_CONDITIONAL__VARIATION_POINT = 9;
    public static final int ETHERNET_CLUSTER_CONDITIONAL_FEATURE_COUNT = 10;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER = 3;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__GCHECKSUM = 0;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__GTIMESTAMP = 1;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__CHECKSUM = 2;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__TIMESTAMP = 3;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__GSHORT_NAME = 4;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__SHORT_NAME = 5;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__LONG_NAME = 6;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__GUUID = 7;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__GCATEGORY = 8;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__GDESC = 9;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__DESC = 10;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__CATEGORY = 11;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__ADMIN_DATA = 12;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__INTRODUCTION = 13;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__ANNOTATIONS = 14;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__UUID = 15;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__ALL_EXTENSIONS = 16;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__CONTAINED_EXTENSIONS = 17;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__ECU_INSTANCE = 18;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER__ETHERNET_COMMUNICATION_CONTROLLER_VARIANTS = 19;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_FEATURE_COUNT = 20;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONTENT = 5;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONTENT__GCHECKSUM = 0;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONTENT__GTIMESTAMP = 1;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONTENT__CHECKSUM = 2;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONTENT__TIMESTAMP = 3;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONTENT__MAXIMUM_RECEIVE_BUFFER_LENGTH = 4;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONTENT__MAXIMUM_TRANSMIT_BUFFER_LENGTH = 5;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONTENT_FEATURE_COUNT = 6;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONDITIONAL = 4;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONDITIONAL__GCHECKSUM = 0;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONDITIONAL__GTIMESTAMP = 1;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONDITIONAL__CHECKSUM = 2;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONDITIONAL__TIMESTAMP = 3;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONDITIONAL__MAXIMUM_RECEIVE_BUFFER_LENGTH = 4;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONDITIONAL__MAXIMUM_TRANSMIT_BUFFER_LENGTH = 5;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONDITIONAL__ETHERNET_COMMUNICATION_CONTROLLER = 6;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONDITIONAL__VARIATION_POINT = 7;
    public static final int ETHERNET_COMMUNICATION_CONTROLLER_CONDITIONAL_FEATURE_COUNT = 8;
    public static final int ETHERNET_PHYSICAL_CHANNEL = 6;
    public static final int ETHERNET_PHYSICAL_CHANNEL__GCHECKSUM = 0;
    public static final int ETHERNET_PHYSICAL_CHANNEL__GTIMESTAMP = 1;
    public static final int ETHERNET_PHYSICAL_CHANNEL__CHECKSUM = 2;
    public static final int ETHERNET_PHYSICAL_CHANNEL__TIMESTAMP = 3;
    public static final int ETHERNET_PHYSICAL_CHANNEL__GSHORT_NAME = 4;
    public static final int ETHERNET_PHYSICAL_CHANNEL__SHORT_NAME = 5;
    public static final int ETHERNET_PHYSICAL_CHANNEL__LONG_NAME = 6;
    public static final int ETHERNET_PHYSICAL_CHANNEL__GUUID = 7;
    public static final int ETHERNET_PHYSICAL_CHANNEL__GCATEGORY = 8;
    public static final int ETHERNET_PHYSICAL_CHANNEL__GDESC = 9;
    public static final int ETHERNET_PHYSICAL_CHANNEL__DESC = 10;
    public static final int ETHERNET_PHYSICAL_CHANNEL__CATEGORY = 11;
    public static final int ETHERNET_PHYSICAL_CHANNEL__ADMIN_DATA = 12;
    public static final int ETHERNET_PHYSICAL_CHANNEL__INTRODUCTION = 13;
    public static final int ETHERNET_PHYSICAL_CHANNEL__ANNOTATIONS = 14;
    public static final int ETHERNET_PHYSICAL_CHANNEL__UUID = 15;
    public static final int ETHERNET_PHYSICAL_CHANNEL__ALL_EXTENSIONS = 16;
    public static final int ETHERNET_PHYSICAL_CHANNEL__CONTAINED_EXTENSIONS = 17;
    public static final int ETHERNET_PHYSICAL_CHANNEL__COMMUNICATION_CLUSTER_CONTENT = 18;
    public static final int ETHERNET_PHYSICAL_CHANNEL__COMM_CONNECTORS = 19;
    public static final int ETHERNET_PHYSICAL_CHANNEL__FRAME_TRIGGERINGS = 20;
    public static final int ETHERNET_PHYSICAL_CHANNEL__ISIGNAL_TRIGGERINGS = 21;
    public static final int ETHERNET_PHYSICAL_CHANNEL__PDU_TRIGGERINGS = 22;
    public static final int ETHERNET_PHYSICAL_CHANNEL__VARIATION_POINT = 23;
    public static final int ETHERNET_PHYSICAL_CHANNEL__SO_AD_CONFIG = 24;
    public static final int ETHERNET_PHYSICAL_CHANNEL_FEATURE_COUNT = 25;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR = 7;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__GCHECKSUM = 0;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__GTIMESTAMP = 1;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__CHECKSUM = 2;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__TIMESTAMP = 3;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__GSHORT_NAME = 4;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__SHORT_NAME = 5;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__LONG_NAME = 6;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__GUUID = 7;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__GCATEGORY = 8;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__GDESC = 9;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__DESC = 10;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__CATEGORY = 11;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__ADMIN_DATA = 12;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__INTRODUCTION = 13;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__ANNOTATIONS = 14;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__UUID = 15;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__ALL_EXTENSIONS = 16;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__CONTAINED_EXTENSIONS = 17;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__ECU_INSTANCE = 18;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__COMM_CONTROLLER = 19;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__ECU_COMM_PORT_INSTANCES = 20;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR__PNC_GATEWAY_TYPE = 21;
    public static final int ETHERNET_COMMUNICATION_CONNECTOR_FEATURE_COUNT = 22;

    public EClass getEthernetCluster();

    public EReference getEthernetCluster_EthernetClusterVariants();

    public EClass getEthernetClusterConditional();

    public EReference getEthernetClusterConditional_EthernetCluster();

    public EReference getEthernetClusterConditional_VariationPoint();

    public EClass getEthernetClusterContent();

    public EClass getEthernetCommunicationController();

    public EReference getEthernetCommunicationController_EthernetCommunicationControllerVariants();

    public EClass getEthernetCommunicationControllerConditional();

    public EReference getEthernetCommunicationControllerConditional_EthernetCommunicationController();

    public EReference getEthernetCommunicationControllerConditional_VariationPoint();

    public EClass getEthernetCommunicationControllerContent();

    public EAttribute getEthernetCommunicationControllerContent_MaximumReceiveBufferLength();

    public EAttribute getEthernetCommunicationControllerContent_MaximumTransmitBufferLength();

    public EClass getEthernetPhysicalChannel();

    public EReference getEthernetPhysicalChannel_SoAdConfig();

    public EClass getEthernetCommunicationConnector();

    public EthernettopologyFactory getEthernettopologyFactory();

    public static interface Literals {
        public static final EClass ETHERNET_CLUSTER = eINSTANCE.getEthernetCluster();
        public static final EReference ETHERNET_CLUSTER__ETHERNET_CLUSTER_VARIANTS = eINSTANCE.getEthernetCluster_EthernetClusterVariants();
        public static final EClass ETHERNET_CLUSTER_CONDITIONAL = eINSTANCE.getEthernetClusterConditional();
        public static final EReference ETHERNET_CLUSTER_CONDITIONAL__ETHERNET_CLUSTER = eINSTANCE.getEthernetClusterConditional_EthernetCluster();
        public static final EReference ETHERNET_CLUSTER_CONDITIONAL__VARIATION_POINT = eINSTANCE.getEthernetClusterConditional_VariationPoint();
        public static final EClass ETHERNET_CLUSTER_CONTENT = eINSTANCE.getEthernetClusterContent();
        public static final EClass ETHERNET_COMMUNICATION_CONTROLLER = eINSTANCE.getEthernetCommunicationController();
        public static final EReference ETHERNET_COMMUNICATION_CONTROLLER__ETHERNET_COMMUNICATION_CONTROLLER_VARIANTS = eINSTANCE.getEthernetCommunicationController_EthernetCommunicationControllerVariants();
        public static final EClass ETHERNET_COMMUNICATION_CONTROLLER_CONDITIONAL = eINSTANCE.getEthernetCommunicationControllerConditional();
        public static final EReference ETHERNET_COMMUNICATION_CONTROLLER_CONDITIONAL__ETHERNET_COMMUNICATION_CONTROLLER = eINSTANCE.getEthernetCommunicationControllerConditional_EthernetCommunicationController();
        public static final EReference ETHERNET_COMMUNICATION_CONTROLLER_CONDITIONAL__VARIATION_POINT = eINSTANCE.getEthernetCommunicationControllerConditional_VariationPoint();
        public static final EClass ETHERNET_COMMUNICATION_CONTROLLER_CONTENT = eINSTANCE.getEthernetCommunicationControllerContent();
        public static final EAttribute ETHERNET_COMMUNICATION_CONTROLLER_CONTENT__MAXIMUM_RECEIVE_BUFFER_LENGTH = eINSTANCE.getEthernetCommunicationControllerContent_MaximumReceiveBufferLength();
        public static final EAttribute ETHERNET_COMMUNICATION_CONTROLLER_CONTENT__MAXIMUM_TRANSMIT_BUFFER_LENGTH = eINSTANCE.getEthernetCommunicationControllerContent_MaximumTransmitBufferLength();
        public static final EClass ETHERNET_PHYSICAL_CHANNEL = eINSTANCE.getEthernetPhysicalChannel();
        public static final EReference ETHERNET_PHYSICAL_CHANNEL__SO_AD_CONFIG = eINSTANCE.getEthernetPhysicalChannel_SoAdConfig();
        public static final EClass ETHERNET_COMMUNICATION_CONNECTOR = eINSTANCE.getEthernetCommunicationConnector();
    }
}

