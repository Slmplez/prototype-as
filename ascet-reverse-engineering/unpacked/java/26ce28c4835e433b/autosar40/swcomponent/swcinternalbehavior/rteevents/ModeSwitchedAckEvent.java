/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents;

import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;

public interface ModeSwitchedAckEvent
extends RTEEvent {
    public ModeSwitchPoint getEventSource();

    public void setEventSource(ModeSwitchPoint var1);
}

