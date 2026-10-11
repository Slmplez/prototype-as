/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.communication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.communication.ModeSwitchSenderComSpec;

public interface ModeSwitchedAckRequest
extends ARObject {
    public ModeSwitchSenderComSpec getModeSwitchSenderComSpec();

    public void setModeSwitchSenderComSpec(ModeSwitchSenderComSpec var1);

    public Double getTimeout();

    public void setTimeout(Double var1);

    public void unsetTimeout();

    public boolean isSetTimeout();
}

