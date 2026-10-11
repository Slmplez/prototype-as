/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceivedEvent
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents;

import autosar3x.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.DataReceivedEventData;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceivedEvent;

public interface DataReceivedEvent
extends RTEEvent,
GDataReceivedEvent {
    public DataReceivedEventData getData();

    public void setData(DataReceivedEventData var1);
}

