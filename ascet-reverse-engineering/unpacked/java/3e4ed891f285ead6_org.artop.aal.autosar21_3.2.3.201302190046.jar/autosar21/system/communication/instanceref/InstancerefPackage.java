/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.system.communication.instanceref;

import autosar21.system.communication.instanceref.InstancerefFactory;
import autosar21.system.communication.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/s/c/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int COMMUNICATION_MATRIX_TYPE_COMMUNICATION_CLUSTER = 0;
    public static final int COMMUNICATION_MATRIX_TYPE_COMMUNICATION_CLUSTER__GCHECKSUM = 0;
    public static final int COMMUNICATION_MATRIX_TYPE_COMMUNICATION_CLUSTER__GTIMESTAMP = 1;
    public static final int COMMUNICATION_MATRIX_TYPE_COMMUNICATION_CLUSTER__CHECKSUM = 2;
    public static final int COMMUNICATION_MATRIX_TYPE_COMMUNICATION_CLUSTER__TIMESTAMP = 3;
    public static final int COMMUNICATION_MATRIX_TYPE_COMMUNICATION_CLUSTER__COMMUNICATION_MATRIX_TYPE = 4;
    public static final int COMMUNICATION_MATRIX_TYPE_COMMUNICATION_CLUSTER__SYSTEM_TOPOLOGY_INSTANCE = 5;
    public static final int COMMUNICATION_MATRIX_TYPE_COMMUNICATION_CLUSTER__COMMUNICATION_CLUSTER = 6;
    public static final int COMMUNICATION_MATRIX_TYPE_COMMUNICATION_CLUSTER_FEATURE_COUNT = 7;
    public static final int FRAME_RECEIVER = 1;
    public static final int FRAME_RECEIVER__GCHECKSUM = 0;
    public static final int FRAME_RECEIVER__GTIMESTAMP = 1;
    public static final int FRAME_RECEIVER__CHECKSUM = 2;
    public static final int FRAME_RECEIVER__TIMESTAMP = 3;
    public static final int FRAME_RECEIVER__FRAME = 4;
    public static final int FRAME_RECEIVER__SYSTEM_TOPOLOGY_INSTANCE = 5;
    public static final int FRAME_RECEIVER__ECU_COMMUNICATION_PORT_INSTANCE = 6;
    public static final int FRAME_RECEIVER_FEATURE_COUNT = 7;
    public static final int FRAME_TRANSMITTER = 2;
    public static final int FRAME_TRANSMITTER__GCHECKSUM = 0;
    public static final int FRAME_TRANSMITTER__GTIMESTAMP = 1;
    public static final int FRAME_TRANSMITTER__CHECKSUM = 2;
    public static final int FRAME_TRANSMITTER__TIMESTAMP = 3;
    public static final int FRAME_TRANSMITTER__FRAME = 4;
    public static final int FRAME_TRANSMITTER__SYSTEM_TOPOLOGY_INSTANCE = 5;
    public static final int FRAME_TRANSMITTER__ECU_COMMUNICATION_PORT_INSTANCE = 6;
    public static final int FRAME_TRANSMITTER_FEATURE_COUNT = 7;
    public static final int FRAME_USED_PHYSICAL_CHANNEL = 3;
    public static final int FRAME_USED_PHYSICAL_CHANNEL__GCHECKSUM = 0;
    public static final int FRAME_USED_PHYSICAL_CHANNEL__GTIMESTAMP = 1;
    public static final int FRAME_USED_PHYSICAL_CHANNEL__CHECKSUM = 2;
    public static final int FRAME_USED_PHYSICAL_CHANNEL__TIMESTAMP = 3;
    public static final int FRAME_USED_PHYSICAL_CHANNEL__FRAME = 4;
    public static final int FRAME_USED_PHYSICAL_CHANNEL__SYSTEM_TOPOLOGY_INSTANCE = 5;
    public static final int FRAME_USED_PHYSICAL_CHANNEL__PHYSICAL_CHANNEL = 6;
    public static final int FRAME_USED_PHYSICAL_CHANNEL_FEATURE_COUNT = 7;
    public static final int GATEWAY_TYPE_GATEWAY_LOCATION = 4;
    public static final int GATEWAY_TYPE_GATEWAY_LOCATION__GCHECKSUM = 0;
    public static final int GATEWAY_TYPE_GATEWAY_LOCATION__GTIMESTAMP = 1;
    public static final int GATEWAY_TYPE_GATEWAY_LOCATION__CHECKSUM = 2;
    public static final int GATEWAY_TYPE_GATEWAY_LOCATION__TIMESTAMP = 3;
    public static final int GATEWAY_TYPE_GATEWAY_LOCATION__GATEWAY_TYPE = 4;
    public static final int GATEWAY_TYPE_GATEWAY_LOCATION__SYSTEM_TOPOLOGY_INSTANCE = 5;
    public static final int GATEWAY_TYPE_GATEWAY_LOCATION__GATEWAY_LOCATION = 6;
    public static final int GATEWAY_TYPE_GATEWAY_LOCATION_FEATURE_COUNT = 7;
    public static final int PDU_GATEWAY_ENTRY_DESTINATION_PDU = 5;
    public static final int PDU_GATEWAY_ENTRY_DESTINATION_PDU__GCHECKSUM = 0;
    public static final int PDU_GATEWAY_ENTRY_DESTINATION_PDU__GTIMESTAMP = 1;
    public static final int PDU_GATEWAY_ENTRY_DESTINATION_PDU__CHECKSUM = 2;
    public static final int PDU_GATEWAY_ENTRY_DESTINATION_PDU__TIMESTAMP = 3;
    public static final int PDU_GATEWAY_ENTRY_DESTINATION_PDU__PDU_GATEWAY_ENTRY = 4;
    public static final int PDU_GATEWAY_ENTRY_DESTINATION_PDU__COMMUNICATION_MATRIX_INSTANCE = 5;
    public static final int PDU_GATEWAY_ENTRY_DESTINATION_PDU__DESTINATION_PDU = 6;
    public static final int PDU_GATEWAY_ENTRY_DESTINATION_PDU_FEATURE_COUNT = 7;
    public static final int PDU_GATEWAY_ENTRY_SOURCE_PDU = 6;
    public static final int PDU_GATEWAY_ENTRY_SOURCE_PDU__GCHECKSUM = 0;
    public static final int PDU_GATEWAY_ENTRY_SOURCE_PDU__GTIMESTAMP = 1;
    public static final int PDU_GATEWAY_ENTRY_SOURCE_PDU__CHECKSUM = 2;
    public static final int PDU_GATEWAY_ENTRY_SOURCE_PDU__TIMESTAMP = 3;
    public static final int PDU_GATEWAY_ENTRY_SOURCE_PDU__PDU_GATEWAY_ENTRY = 4;
    public static final int PDU_GATEWAY_ENTRY_SOURCE_PDU__COMMUNICATION_MATRIX = 5;
    public static final int PDU_GATEWAY_ENTRY_SOURCE_PDU__SOURCE_PDU = 6;
    public static final int PDU_GATEWAY_ENTRY_SOURCE_PDU_FEATURE_COUNT = 7;
    public static final int SIGNAL_GATEWAY_ENTRY_DESTINATION_CLUSTER_SIGNAL = 7;
    public static final int SIGNAL_GATEWAY_ENTRY_DESTINATION_CLUSTER_SIGNAL__GCHECKSUM = 0;
    public static final int SIGNAL_GATEWAY_ENTRY_DESTINATION_CLUSTER_SIGNAL__GTIMESTAMP = 1;
    public static final int SIGNAL_GATEWAY_ENTRY_DESTINATION_CLUSTER_SIGNAL__CHECKSUM = 2;
    public static final int SIGNAL_GATEWAY_ENTRY_DESTINATION_CLUSTER_SIGNAL__TIMESTAMP = 3;
    public static final int SIGNAL_GATEWAY_ENTRY_DESTINATION_CLUSTER_SIGNAL__SIGNAL_GATEWAY_ENTRY = 4;
    public static final int SIGNAL_GATEWAY_ENTRY_DESTINATION_CLUSTER_SIGNAL__COMMUNICATION_MATRIX = 5;
    public static final int SIGNAL_GATEWAY_ENTRY_DESTINATION_CLUSTER_SIGNAL__DESTINATION_CLUSTER_SIGNAL = 6;
    public static final int SIGNAL_GATEWAY_ENTRY_DESTINATION_CLUSTER_SIGNAL_FEATURE_COUNT = 7;
    public static final int SIGNAL_GATEWAY_ENTRY_SOURCE_CLUSTER_SIGNAL = 8;
    public static final int SIGNAL_GATEWAY_ENTRY_SOURCE_CLUSTER_SIGNAL__GCHECKSUM = 0;
    public static final int SIGNAL_GATEWAY_ENTRY_SOURCE_CLUSTER_SIGNAL__GTIMESTAMP = 1;
    public static final int SIGNAL_GATEWAY_ENTRY_SOURCE_CLUSTER_SIGNAL__CHECKSUM = 2;
    public static final int SIGNAL_GATEWAY_ENTRY_SOURCE_CLUSTER_SIGNAL__TIMESTAMP = 3;
    public static final int SIGNAL_GATEWAY_ENTRY_SOURCE_CLUSTER_SIGNAL__SIGNAL_GATEWAY_ENTRY = 4;
    public static final int SIGNAL_GATEWAY_ENTRY_SOURCE_CLUSTER_SIGNAL__COMMUNICATION_MATRIX = 5;
    public static final int SIGNAL_GATEWAY_ENTRY_SOURCE_CLUSTER_SIGNAL__CLUSTER_SIGNAL = 6;
    public static final int SIGNAL_GATEWAY_ENTRY_SOURCE_CLUSTER_SIGNAL_FEATURE_COUNT = 7;

    public EClass getCommunicationMatrixTypeCommunicationCluster();

    public EReference getCommunicationMatrixTypeCommunicationCluster_CommunicationMatrixType();

    public EReference getCommunicationMatrixTypeCommunicationCluster_SystemTopologyInstance();

    public EReference getCommunicationMatrixTypeCommunicationCluster_CommunicationCluster();

    public EClass getFrameReceiver();

    public EReference getFrameReceiver_Frame();

    public EReference getFrameReceiver_SystemTopologyInstance();

    public EReference getFrameReceiver_EcuCommunicationPortInstance();

    public EClass getFrameTransmitter();

    public EReference getFrameTransmitter_Frame();

    public EReference getFrameTransmitter_SystemTopologyInstance();

    public EReference getFrameTransmitter_EcuCommunicationPortInstance();

    public EClass getFrameUsedPhysicalChannel();

    public EReference getFrameUsedPhysicalChannel_Frame();

    public EReference getFrameUsedPhysicalChannel_SystemTopologyInstance();

    public EReference getFrameUsedPhysicalChannel_PhysicalChannel();

    public EClass getGatewayTypeGatewayLocation();

    public EReference getGatewayTypeGatewayLocation_GatewayType();

    public EReference getGatewayTypeGatewayLocation_SystemTopologyInstance();

    public EReference getGatewayTypeGatewayLocation_GatewayLocation();

    public EClass getPDUGatewayEntryDestinationPDU();

    public EReference getPDUGatewayEntryDestinationPDU_PDUGatewayEntry();

    public EReference getPDUGatewayEntryDestinationPDU_CommunicationMatrixInstance();

    public EReference getPDUGatewayEntryDestinationPDU_DestinationPDU();

    public EClass getPDUGatewayEntrySourcePDU();

    public EReference getPDUGatewayEntrySourcePDU_PDUGatewayEntry();

    public EReference getPDUGatewayEntrySourcePDU_CommunicationMatrix();

    public EReference getPDUGatewayEntrySourcePDU_SourcePDU();

    public EClass getSignalGatewayEntryDestinationClusterSignal();

    public EReference getSignalGatewayEntryDestinationClusterSignal_SignalGatewayEntry();

    public EReference getSignalGatewayEntryDestinationClusterSignal_CommunicationMatrix();

    public EReference getSignalGatewayEntryDestinationClusterSignal_DestinationClusterSignal();

    public EClass getSignalGatewayEntrySourceClusterSignal();

    public EReference getSignalGatewayEntrySourceClusterSignal_SignalGatewayEntry();

    public EReference getSignalGatewayEntrySourceClusterSignal_CommunicationMatrix();

    public EReference getSignalGatewayEntrySourceClusterSignal_ClusterSignal();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass COMMUNICATION_MATRIX_TYPE_COMMUNICATION_CLUSTER = eINSTANCE.getCommunicationMatrixTypeCommunicationCluster();
        public static final EReference COMMUNICATION_MATRIX_TYPE_COMMUNICATION_CLUSTER__COMMUNICATION_MATRIX_TYPE = eINSTANCE.getCommunicationMatrixTypeCommunicationCluster_CommunicationMatrixType();
        public static final EReference COMMUNICATION_MATRIX_TYPE_COMMUNICATION_CLUSTER__SYSTEM_TOPOLOGY_INSTANCE = eINSTANCE.getCommunicationMatrixTypeCommunicationCluster_SystemTopologyInstance();
        public static final EReference COMMUNICATION_MATRIX_TYPE_COMMUNICATION_CLUSTER__COMMUNICATION_CLUSTER = eINSTANCE.getCommunicationMatrixTypeCommunicationCluster_CommunicationCluster();
        public static final EClass FRAME_RECEIVER = eINSTANCE.getFrameReceiver();
        public static final EReference FRAME_RECEIVER__FRAME = eINSTANCE.getFrameReceiver_Frame();
        public static final EReference FRAME_RECEIVER__SYSTEM_TOPOLOGY_INSTANCE = eINSTANCE.getFrameReceiver_SystemTopologyInstance();
        public static final EReference FRAME_RECEIVER__ECU_COMMUNICATION_PORT_INSTANCE = eINSTANCE.getFrameReceiver_EcuCommunicationPortInstance();
        public static final EClass FRAME_TRANSMITTER = eINSTANCE.getFrameTransmitter();
        public static final EReference FRAME_TRANSMITTER__FRAME = eINSTANCE.getFrameTransmitter_Frame();
        public static final EReference FRAME_TRANSMITTER__SYSTEM_TOPOLOGY_INSTANCE = eINSTANCE.getFrameTransmitter_SystemTopologyInstance();
        public static final EReference FRAME_TRANSMITTER__ECU_COMMUNICATION_PORT_INSTANCE = eINSTANCE.getFrameTransmitter_EcuCommunicationPortInstance();
        public static final EClass FRAME_USED_PHYSICAL_CHANNEL = eINSTANCE.getFrameUsedPhysicalChannel();
        public static final EReference FRAME_USED_PHYSICAL_CHANNEL__FRAME = eINSTANCE.getFrameUsedPhysicalChannel_Frame();
        public static final EReference FRAME_USED_PHYSICAL_CHANNEL__SYSTEM_TOPOLOGY_INSTANCE = eINSTANCE.getFrameUsedPhysicalChannel_SystemTopologyInstance();
        public static final EReference FRAME_USED_PHYSICAL_CHANNEL__PHYSICAL_CHANNEL = eINSTANCE.getFrameUsedPhysicalChannel_PhysicalChannel();
        public static final EClass GATEWAY_TYPE_GATEWAY_LOCATION = eINSTANCE.getGatewayTypeGatewayLocation();
        public static final EReference GATEWAY_TYPE_GATEWAY_LOCATION__GATEWAY_TYPE = eINSTANCE.getGatewayTypeGatewayLocation_GatewayType();
        public static final EReference GATEWAY_TYPE_GATEWAY_LOCATION__SYSTEM_TOPOLOGY_INSTANCE = eINSTANCE.getGatewayTypeGatewayLocation_SystemTopologyInstance();
        public static final EReference GATEWAY_TYPE_GATEWAY_LOCATION__GATEWAY_LOCATION = eINSTANCE.getGatewayTypeGatewayLocation_GatewayLocation();
        public static final EClass PDU_GATEWAY_ENTRY_DESTINATION_PDU = eINSTANCE.getPDUGatewayEntryDestinationPDU();
        public static final EReference PDU_GATEWAY_ENTRY_DESTINATION_PDU__PDU_GATEWAY_ENTRY = eINSTANCE.getPDUGatewayEntryDestinationPDU_PDUGatewayEntry();
        public static final EReference PDU_GATEWAY_ENTRY_DESTINATION_PDU__COMMUNICATION_MATRIX_INSTANCE = eINSTANCE.getPDUGatewayEntryDestinationPDU_CommunicationMatrixInstance();
        public static final EReference PDU_GATEWAY_ENTRY_DESTINATION_PDU__DESTINATION_PDU = eINSTANCE.getPDUGatewayEntryDestinationPDU_DestinationPDU();
        public static final EClass PDU_GATEWAY_ENTRY_SOURCE_PDU = eINSTANCE.getPDUGatewayEntrySourcePDU();
        public static final EReference PDU_GATEWAY_ENTRY_SOURCE_PDU__PDU_GATEWAY_ENTRY = eINSTANCE.getPDUGatewayEntrySourcePDU_PDUGatewayEntry();
        public static final EReference PDU_GATEWAY_ENTRY_SOURCE_PDU__COMMUNICATION_MATRIX = eINSTANCE.getPDUGatewayEntrySourcePDU_CommunicationMatrix();
        public static final EReference PDU_GATEWAY_ENTRY_SOURCE_PDU__SOURCE_PDU = eINSTANCE.getPDUGatewayEntrySourcePDU_SourcePDU();
        public static final EClass SIGNAL_GATEWAY_ENTRY_DESTINATION_CLUSTER_SIGNAL = eINSTANCE.getSignalGatewayEntryDestinationClusterSignal();
        public static final EReference SIGNAL_GATEWAY_ENTRY_DESTINATION_CLUSTER_SIGNAL__SIGNAL_GATEWAY_ENTRY = eINSTANCE.getSignalGatewayEntryDestinationClusterSignal_SignalGatewayEntry();
        public static final EReference SIGNAL_GATEWAY_ENTRY_DESTINATION_CLUSTER_SIGNAL__COMMUNICATION_MATRIX = eINSTANCE.getSignalGatewayEntryDestinationClusterSignal_CommunicationMatrix();
        public static final EReference SIGNAL_GATEWAY_ENTRY_DESTINATION_CLUSTER_SIGNAL__DESTINATION_CLUSTER_SIGNAL = eINSTANCE.getSignalGatewayEntryDestinationClusterSignal_DestinationClusterSignal();
        public static final EClass SIGNAL_GATEWAY_ENTRY_SOURCE_CLUSTER_SIGNAL = eINSTANCE.getSignalGatewayEntrySourceClusterSignal();
        public static final EReference SIGNAL_GATEWAY_ENTRY_SOURCE_CLUSTER_SIGNAL__SIGNAL_GATEWAY_ENTRY = eINSTANCE.getSignalGatewayEntrySourceClusterSignal_SignalGatewayEntry();
        public static final EReference SIGNAL_GATEWAY_ENTRY_SOURCE_CLUSTER_SIGNAL__COMMUNICATION_MATRIX = eINSTANCE.getSignalGatewayEntrySourceClusterSignal_CommunicationMatrix();
        public static final EReference SIGNAL_GATEWAY_ENTRY_SOURCE_CLUSTER_SIGNAL__CLUSTER_SIGNAL = eINSTANCE.getSignalGatewayEntrySourceClusterSignal_ClusterSignal();
    }
}

