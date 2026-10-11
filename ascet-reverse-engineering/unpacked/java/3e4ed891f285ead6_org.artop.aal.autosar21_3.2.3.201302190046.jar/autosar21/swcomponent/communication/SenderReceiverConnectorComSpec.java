/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication;

import autosar21.swcomponent.communication.ConnectorComSpec;
import autosar21.swcomponent.communication.instanceref.SenderReceiverConnectorComSpecDataElement;

public interface SenderReceiverConnectorComSpec
extends ConnectorComSpec {
    public SenderReceiverConnectorComSpecDataElement getDataElement();

    public void setDataElement(SenderReceiverConnectorComSpecDataElement var1);

    public Double getMaxResponseTime();

    public void setMaxResponseTime(Double var1);

    public void unsetMaxResponseTime();

    public boolean isSetMaxResponseTime();

    public Double getMinResponseTime();

    public void setMinResponseTime(Double var1);

    public void unsetMinResponseTime();

    public boolean isSetMinResponseTime();
}

