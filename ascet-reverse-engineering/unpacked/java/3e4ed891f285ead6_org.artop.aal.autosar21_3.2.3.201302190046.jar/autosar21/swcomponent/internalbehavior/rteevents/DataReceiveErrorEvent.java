/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceiveErrorEvent
 */
package autosar21.swcomponent.internalbehavior.rteevents;

import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import autosar21.swcomponent.internalbehavior.rteevents.instanceref.DataReceiveErrorEventData;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceiveErrorEvent;

public interface DataReceiveErrorEvent
extends RTEEvent,
GDataReceiveErrorEvent {
    public DataReceiveErrorEventData getData();

    public void setData(DataReceiveErrorEventData var1);
}

