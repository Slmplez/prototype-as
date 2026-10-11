/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.CommunicationMatrixInstance;
import autosar21.system.communication.SignalGatewayEntry;
import autosar21.system.systemsignal.ClusterSignal;

public interface SignalGatewayEntryDestinationClusterSignal
extends ARObject {
    public SignalGatewayEntry getSignalGatewayEntry();

    public void setSignalGatewayEntry(SignalGatewayEntry var1);

    public CommunicationMatrixInstance getCommunicationMatrix();

    public void setCommunicationMatrix(CommunicationMatrixInstance var1);

    public ClusterSignal getDestinationClusterSignal();

    public void setDestinationClusterSignal(ClusterSignal var1);
}

