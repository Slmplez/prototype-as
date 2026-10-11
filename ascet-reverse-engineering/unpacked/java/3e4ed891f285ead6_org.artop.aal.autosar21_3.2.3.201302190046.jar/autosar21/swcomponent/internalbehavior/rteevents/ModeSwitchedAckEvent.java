/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.internalbehavior.rteevents;

import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;

public interface ModeSwitchedAckEvent
extends RTEEvent {
    public ModeSwitchPoint getEventSource();

    public void setEventSource(ModeSwitchPoint var1);
}

