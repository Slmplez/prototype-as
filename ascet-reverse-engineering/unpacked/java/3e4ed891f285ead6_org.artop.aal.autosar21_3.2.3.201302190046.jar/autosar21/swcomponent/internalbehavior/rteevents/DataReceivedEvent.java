/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceivedEvent
 */
package autosar21.swcomponent.internalbehavior.rteevents;

import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.DataReceivedEventData;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceivedEvent;

public interface DataReceivedEvent
extends RTEEvent,
GDataReceivedEvent {
    public DataReceivedEventData getData();

    public void setData(DataReceivedEventData var1);
}

