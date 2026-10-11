/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.communication.ModeSwitchComSpec;
import autosar21.swcomponent.components.PPortPrototype;
import autosar21.swcomponent.portinterface.ModeDeclarationGroupPrototype;

public interface ModeSwitchComSpecModeDeclarationGroupPrototype
extends ARObject {
    public ModeSwitchComSpec getModeSwitchComSpec();

    public void setModeSwitchComSpec(ModeSwitchComSpec var1);

    public PPortPrototype getPPortPrototype();

    public void setPPortPrototype(PPortPrototype var1);

    public ModeDeclarationGroupPrototype getModeDeclarationGroupPrototype();

    public void setModeDeclarationGroupPrototype(ModeDeclarationGroupPrototype var1);
}

