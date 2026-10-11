/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication;

import autosar21.system.communication.GatewayEntry;
import autosar21.system.communication.PDUGatewayEntryActionOnTimeoutEnum;
import autosar21.system.communication.instanceref.PDUGatewayEntryDestinationPDU;
import autosar21.system.communication.instanceref.PDUGatewayEntrySourcePDU;

public interface PDUGatewayEntry
extends GatewayEntry {
    public PDUGatewayEntryActionOnTimeoutEnum getActionOnTimeout();

    public void setActionOnTimeout(PDUGatewayEntryActionOnTimeoutEnum var1);

    public void unsetActionOnTimeout();

    public boolean isSetActionOnTimeout();

    public PDUGatewayEntryDestinationPDU getDestinationPDU();

    public void setDestinationPDU(PDUGatewayEntryDestinationPDU var1);

    public PDUGatewayEntrySourcePDU getSourcePDU();

    public void setSourcePDU(PDUGatewayEntrySourcePDU var1);

    public Double getTimeOutCycle();

    public void setTimeOutCycle(Double var1);

    public void unsetTimeOutCycle();

    public boolean isSetTimeOutCycle();
}

