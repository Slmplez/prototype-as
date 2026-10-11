/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication;

import autosar21.system.communication.GatewayEntry;
import autosar21.system.communication.SignalGatewayEntryActionOnTimeoutEnum;
import autosar21.system.communication.instanceref.SignalGatewayEntryDestinationClusterSignal;
import autosar21.system.communication.instanceref.SignalGatewayEntrySourceClusterSignal;

public interface SignalGatewayEntry
extends GatewayEntry {
    public SignalGatewayEntryActionOnTimeoutEnum getActionOnTimeout();

    public void setActionOnTimeout(SignalGatewayEntryActionOnTimeoutEnum var1);

    public void unsetActionOnTimeout();

    public boolean isSetActionOnTimeout();

    public SignalGatewayEntryDestinationClusterSignal getDestinationClusterSignal();

    public void setDestinationClusterSignal(SignalGatewayEntryDestinationClusterSignal var1);

    public SignalGatewayEntrySourceClusterSignal getSourceClusterSignal();

    public void setSourceClusterSignal(SignalGatewayEntrySourceClusterSignal var1);

    public Double getTimeOutCycle();

    public void setTimeOutCycle(Double var1);

    public void unsetTimeOutCycle();

    public boolean isSetTimeOutCycle();
}

