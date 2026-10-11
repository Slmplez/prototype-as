/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.CommunicationMatrixInstance;
import autosar21.system.communication.SignalGatewayEntry;
import autosar21.system.systemsignal.ClusterSignal;

public interface SignalGatewayEntrySourceClusterSignal
extends ARObject {
    public SignalGatewayEntry getSignalGatewayEntry();

    public void setSignalGatewayEntry(SignalGatewayEntry var1);

    public CommunicationMatrixInstance getCommunicationMatrix();

    public void setCommunicationMatrix(CommunicationMatrixInstance var1);

    public ClusterSignal getClusterSignal();

    public void setClusterSignal(ClusterSignal var1);
}

