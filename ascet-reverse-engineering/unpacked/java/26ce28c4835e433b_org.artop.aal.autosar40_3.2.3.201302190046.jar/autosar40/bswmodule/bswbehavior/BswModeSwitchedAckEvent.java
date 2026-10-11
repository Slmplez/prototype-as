/*
 * Decompiled with CFR 0.152.
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswEvent;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;

public interface BswModeSwitchedAckEvent
extends BswEvent {
    public ModeDeclarationGroupPrototype getModeGroup();

    public void setModeGroup(ModeDeclarationGroupPrototype var1);
}

