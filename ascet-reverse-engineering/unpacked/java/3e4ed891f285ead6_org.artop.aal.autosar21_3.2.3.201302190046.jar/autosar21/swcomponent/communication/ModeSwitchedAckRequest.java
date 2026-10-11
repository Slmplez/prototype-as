/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.communication.ModeSwitchComSpec;

public interface ModeSwitchedAckRequest
extends ARObject {
    public ModeSwitchComSpec getModeSwitchComSpec();

    public void setModeSwitchComSpec(ModeSwitchComSpec var1);

    public Double getTimeout();

    public void setTimeout(Double var1);

    public void unsetTimeout();

    public boolean isSetTimeout();
}

