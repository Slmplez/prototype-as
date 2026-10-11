/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents;

import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RTEEvent;

public interface ModeSwitchedAckEvent
extends RTEEvent {
    public ModeSwitchPoint getEventSource();

    public void setEventSource(ModeSwitchPoint var1);
}

