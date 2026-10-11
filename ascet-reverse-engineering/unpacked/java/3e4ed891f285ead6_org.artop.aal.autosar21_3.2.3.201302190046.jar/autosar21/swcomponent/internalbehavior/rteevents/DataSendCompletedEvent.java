/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataSendCompletedEvent
 */
package autosar21.swcomponent.internalbehavior.rteevents;

import autosar21.swcomponent.internalbehavior.dataelements.DataSendPoint;
import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataSendCompletedEvent;

public interface DataSendCompletedEvent
extends RTEEvent,
GDataSendCompletedEvent {
    public DataSendPoint getEventSource();

    public void setEventSource(DataSendPoint var1);
}

