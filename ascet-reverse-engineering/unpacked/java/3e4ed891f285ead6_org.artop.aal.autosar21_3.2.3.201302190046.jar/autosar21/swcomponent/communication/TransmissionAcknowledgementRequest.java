/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.communication.SenderComSpec;

public interface TransmissionAcknowledgementRequest
extends ARObject {
    public SenderComSpec getSenderComSpec();

    public void setSenderComSpec(SenderComSpec var1);

    public Double getTimeout();

    public void setTimeout(Double var1);

    public void unsetTimeout();

    public boolean isSetTimeout();
}

