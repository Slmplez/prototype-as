/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.systemsignal.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.systemsignal.ClusterSignalTransmitter;
import autosar21.system.topology.ECUCommunicationPortInstance;

public interface ClusterSignalTransmitterCommunicationPort
extends ARObject {
    public ClusterSignalTransmitter getClusterSignalTransmitter();

    public void setClusterSignalTransmitter(ClusterSignalTransmitter var1);

    public SystemTopologyInstance getSystemTopologyInstance();

    public void setSystemTopologyInstance(SystemTopologyInstance var1);

    public ECUCommunicationPortInstance getEcuCommunicationPortInstance();

    public void setEcuCommunicationPortInstance(ECUCommunicationPortInstance var1);
}

