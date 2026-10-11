/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataSendCompletedEvent
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents;

import autosar40.swcomponent.swcinternalbehavior.dataelements.VariableAccess;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataSendCompletedEvent;

public interface DataSendCompletedEvent
extends RTEEvent,
GDataSendCompletedEvent {
    public VariableAccess getEventSource();

    public void setEventSource(VariableAccess var1);
}

