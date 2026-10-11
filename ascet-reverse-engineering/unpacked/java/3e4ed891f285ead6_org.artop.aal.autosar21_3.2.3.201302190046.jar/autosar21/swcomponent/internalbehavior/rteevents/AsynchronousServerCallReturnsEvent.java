/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GAsynchronousServerCallReturnsEvent
 */
package autosar21.swcomponent.internalbehavior.rteevents;

import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import autosar21.swcomponent.internalbehavior.servercall.AsynchronousServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GAsynchronousServerCallReturnsEvent;

public interface AsynchronousServerCallReturnsEvent
extends RTEEvent,
GAsynchronousServerCallReturnsEvent {
    public AsynchronousServerCallPoint getEventSource();

    public void setEventSource(AsynchronousServerCallPoint var1);
}

