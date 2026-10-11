/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.communication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.communication.SenderComSpec;

public interface TransmissionAcknowledgementRequest
extends ARObject {
    public SenderComSpec getSenderComSpec();

    public void setSenderComSpec(SenderComSpec var1);

    public Double getTimeout();

    public void setTimeout(Double var1);

    public void unsetTimeout();

    public boolean isSetTimeout();
}

