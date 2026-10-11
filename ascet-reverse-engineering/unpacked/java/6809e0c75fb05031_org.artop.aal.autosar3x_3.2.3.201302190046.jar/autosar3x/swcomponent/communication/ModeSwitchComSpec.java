/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.communication;

import autosar3x.swcomponent.communication.ModeSwitchedAckRequest;
import autosar3x.swcomponent.communication.PPortComSpec;
import autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype;

public interface ModeSwitchComSpec
extends PPortComSpec {
    public ModeDeclarationGroupPrototype getModeGroup();

    public void setModeGroup(ModeDeclarationGroupPrototype var1);

    public ModeSwitchedAckRequest getModeSwitchedAck();

    public void setModeSwitchedAck(ModeSwitchedAckRequest var1);

    public Integer getQueueLength();

    public void setQueueLength(Integer var1);

    public void unsetQueueLength();

    public boolean isSetQueueLength();
}

