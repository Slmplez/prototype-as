/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents;

import autosar40.swcomponent.swcinternalbehavior.dataelements.VariableAccess;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;

public interface DataWriteCompletedEvent
extends RTEEvent {
    public VariableAccess getEventSource();

    public void setEventSource(VariableAccess var1);
}

