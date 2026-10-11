/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.systemsignal.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.systemsignal.ClusterSignalReceiver;
import autosar21.system.topology.ECUCommunicationPortInstance;

public interface ClusterSignalReceiverCommunicationPort
extends ARObject {
    public ClusterSignalReceiver getClusterSignalReceiver();

    public void setClusterSignalReceiver(ClusterSignalReceiver var1);

    public SystemTopologyInstance getSystemTopologyInstance();

    public void setSystemTopologyInstance(SystemTopologyInstance var1);

    public ECUCommunicationPortInstance getEcuCommunicationPortInstance();

    public void setEcuCommunicationPortInstance(ECUCommunicationPortInstance var1);
}

