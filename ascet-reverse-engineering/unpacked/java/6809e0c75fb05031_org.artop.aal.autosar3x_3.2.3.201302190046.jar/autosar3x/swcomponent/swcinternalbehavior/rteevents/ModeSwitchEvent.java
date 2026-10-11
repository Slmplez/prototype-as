/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GSwcModeSwitchEvent
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents;

import autosar3x.swcomponent.modedeclaration.ModeActivationKind;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.ModeSwitchEventMode;
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

