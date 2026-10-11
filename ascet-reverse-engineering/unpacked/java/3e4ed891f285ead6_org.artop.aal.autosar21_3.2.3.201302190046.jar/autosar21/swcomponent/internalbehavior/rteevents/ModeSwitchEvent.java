/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GSwcModeSwitchEvent
 */
package autosar21.swcomponent.internalbehavior.rteevents;

import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.ModeSwitchEventMode;
import autosar21.swcomponent.modedeclaration.ModeActivationKind;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GSwcModeSwitchEvent;

public interface ModeSwitchEvent
extends RTEEvent,
GSwcModeSwitchEvent {
    public ModeActivationKind getActivation();

    public void setActivation(ModeActivationKind var1);

    public void unsetActivation();

    public boolean isSetActivation();

    public ModeSwitchEventMode getMode();

    public void setMode(ModeSwitchEventMode var1);
}

