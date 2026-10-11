/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.system.systemsignal.instanceref;

import autosar21.system.systemsignal.instanceref.InstancerefFactory;
import autosar21.system.systemsignal.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/s/ss/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int CLUSTER_SIGNAL_RECEIVER_COMMUNICATION_PORT = 0;
    public static final int CLUSTER_SIGNAL_RECEIVER_COMMUNICATION_PORT__GCHECKSUM = 0;
    public static final int CLUSTER_SIGNAL_RECEIVER_COMMUNICATION_PORT__GTIMESTAMP = 1;
    public static final int CLUSTER_SIGNAL_RECEIVER_COMMUNICATION_PORT__CHECKSUM = 2;
    public static final int CLUSTER_SIGNAL_RECEIVER_COMMUNICATION_PORT__TIMESTAMP = 3;
    public static final int CLUSTER_SIGNAL_RECEIVER_COMMUNICATION_PORT__CLUSTER_SIGNAL_RECEIVER = 4;
    public static final int CLUSTER_SIGNAL_RECEIVER_COMMUNICATION_PORT__SYSTEM_TOPOLOGY_INSTANCE = 5;
    public static final int CLUSTER_SIGNAL_RECEIVER_COMMUNICATION_PORT__ECU_COMMUNICATION_PORT_INSTANCE = 6;
    public static final int CLUSTER_SIGNAL_RECEIVER_COMMUNICATION_PORT_FEATURE_COUNT = 7;
    public static final int CLUSTER_SIGNAL_TRANSMITTER_COMMUNICATION_PORT = 1;
    public static final int CLUSTER_SIGNAL_TRANSMITTER_COMMUNICATION_PORT__GCHECKSUM = 0;
    public static final int CLUSTER_SIGNAL_TRANSMITTER_COMMUNICATION_PORT__GTIMESTAMP = 1;
    public static final int CLUSTER_SIGNAL_TRANSMITTER_COMMUNICATION_PORT__CHECKSUM = 2;
    public static final int CLUSTER_SIGNAL_TRANSMITTER_COMMUNICATION_PORT__TIMESTAMP = 3;
    public static final int CLUSTER_SIGNAL_TRANSMITTER_COMMUNICATION_PORT__CLUSTER_SIGNAL_TRANSMITTER = 4;
    public static final int CLUSTER_SIGNAL_TRANSMITTER_COMMUNICATION_PORT__SYSTEM_TOPOLOGY_INSTANCE = 5;
    public static final int CLUSTER_SIGNAL_TRANSMITTER_COMMUNICATION_PORT__ECU_COMMUNICATION_PORT_INSTANCE = 6;
    public static final int CLUSTER_SIGNAL_TRANSMITTER_COMMUNICATION_PORT_FEATURE_COUNT = 7;

    public EClass getClusterSignalReceiverCommunicationPort();

    public EReference getClusterSignalReceiverCommunicationPort_ClusterSignalReceiver();

    public EReference getClusterSignalReceiverCommunicationPort_SystemTopologyInstance();

    public EReference getClusterSignalReceiverCommunicationPort_EcuCommunicationPortInstance();

    public EClass getClusterSignalTransmitterCommunicationPort();

    public EReference getClusterSignalTransmitterCommunicationPort_ClusterSignalTransmitter();

    public EReference getClusterSignalTransmitterCommunicationPort_SystemTopologyInstance();

    public EReference getClusterSignalTransmitterCommunicationPort_EcuCommunicationPortInstance();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass CLUSTER_SIGNAL_RECEIVER_COMMUNICATION_PORT = eINSTANCE.getClusterSignalReceiverCommunicationPort();
        public static final EReference CLUSTER_SIGNAL_RECEIVER_COMMUNICATION_PORT__CLUSTER_SIGNAL_RECEIVER = eINSTANCE.getClusterSignalReceiverCommunicationPort_ClusterSignalReceiver();
        public static final EReference CLUSTER_SIGNAL_RECEIVER_COMMUNICATION_PORT__SYSTEM_TOPOLOGY_INSTANCE = eINSTANCE.getClusterSignalReceiverCommunicationPort_SystemTopologyInstance();
        public static final EReference CLUSTER_SIGNAL_RECEIVER_COMMUNICATION_PORT__ECU_COMMUNICATION_PORT_INSTANCE = eINSTANCE.getClusterSignalReceiverCommunicationPort_EcuCommunicationPortInstance();
        public static final EClass CLUSTER_SIGNAL_TRANSMITTER_COMMUNICATION_PORT = eINSTANCE.getClusterSignalTransmitterCommunicationPort();
        public static final EReference CLUSTER_SIGNAL_TRANSMITTER_COMMUNICATION_PORT__CLUSTER_SIGNAL_TRANSMITTER = eINSTANCE.getClusterSignalTransmitterCommunicationPort_ClusterSignalTransmitter();
        public static final EReference CLUSTER_SIGNAL_TRANSMITTER_COMMUNICATION_PORT__SYSTEM_TOPOLOGY_INSTANCE = eINSTANCE.getClusterSignalTransmitterCommunicationPort_SystemTopologyInstance();
        public static final EReference CLUSTER_SIGNAL_TRANSMITTER_COMMUNICATION_PORT__ECU_COMMUNICATION_PORT_INSTANCE = eINSTANCE.getClusterSignalTransmitterCommunicationPort_EcuCommunicationPortInstance();
    }
}

