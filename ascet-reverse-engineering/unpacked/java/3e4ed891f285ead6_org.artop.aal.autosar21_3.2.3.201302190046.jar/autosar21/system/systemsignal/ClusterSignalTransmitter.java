/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.systemsignal;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.systemsignal.ClusterSignal;
import autosar21.system.systemsignal.instanceref.ClusterSignalTransmitterCommunicationPort;

public interface ClusterSignalTransmitter
extends ARObject {
    public ClusterSignal getClusterSignal();

    public void setClusterSignal(ClusterSignal var1);

    public ClusterSignalTransmitterCommunicationPort getCommunicationPort();

    public void setCommunicationPort(ClusterSignalTransmitterCommunicationPort var1);
}

