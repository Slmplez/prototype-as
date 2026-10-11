/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication;

import autosar21.swcomponent.communication.ModeSwitchedAckRequest;
import autosar21.swcomponent.communication.PPortComSpec;
import autosar21.swcomponent.communication.instanceref.ModeSwitchComSpecModeDeclarationGroupPrototype;

public interface ModeSwitchComSpec
extends PPortComSpec {
    public ModeSwitchComSpecModeDeclarationGroupPrototype getModeGroup();

    public void setModeGroup(ModeSwitchComSpecModeDeclarationGroupPrototype var1);

    public ModeSwitchedAckRequest getModeSwitchedAck();

    public void setModeSwitchedAck(ModeSwitchedAckRequest var1);

    public Integer getQueueLength();

    public void setQueueLength(Integer var1);

    public void unsetQueueLength();

    public boolean isSetQueueLength();
}

