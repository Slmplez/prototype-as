/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.communication;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.communication.ModeSwitchComSpec;

public interface ModeSwitchedAckRequest
extends ARObject {
    public ModeSwitchComSpec getModeSwitchComSpec();

    public void setModeSwitchComSpec(ModeSwitchComSpec var1);

    public Double getTimeout();

    public void setTimeout(Double var1);

    public void unsetTimeout();

    public boolean isSetTimeout();
}

