/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GAsynchronousServerCallReturnsEvent
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents;

import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallResultPoint;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GAsynchronousServerCallReturnsEvent;

public interface AsynchronousServerCallReturnsEvent
extends RTEEvent,
GAsynchronousServerCallReturnsEvent {
    public AsynchronousServerCallResultPoint getEventSource();

    public void setEventSource(AsynchronousServerCallResultPoint var1);
}

