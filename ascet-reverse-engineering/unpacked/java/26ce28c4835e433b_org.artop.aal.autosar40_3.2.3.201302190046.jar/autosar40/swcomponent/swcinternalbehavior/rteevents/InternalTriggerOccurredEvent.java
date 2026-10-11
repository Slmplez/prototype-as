/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents;

import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar40.swcomponent.swcinternalbehavior.trigger.InternalTriggeringPoint;

public interface InternalTriggerOccurredEvent
extends RTEEvent {
    public InternalTriggeringPoint getEventSource();

    public void setEventSource(InternalTriggeringPoint var1);
}

