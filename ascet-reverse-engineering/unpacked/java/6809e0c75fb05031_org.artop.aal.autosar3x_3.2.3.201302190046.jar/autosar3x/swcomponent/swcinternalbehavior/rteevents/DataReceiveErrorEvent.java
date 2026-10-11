/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceiveErrorEvent
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents;

import autosar3x.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.DataReceiveErrorEventData;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceiveErrorEvent;

public interface DataReceiveErrorEvent
extends RTEEvent,
GDataReceiveErrorEvent {
    public DataReceiveErrorEventData getData();

    public void setData(DataReceiveErrorEventData var1);
}

