/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GAsynchronousServerCallReturnsEvent
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents;

import autosar3x.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar3x.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GAsynchronousServerCallReturnsEvent;

public interface AsynchronousServerCallReturnsEvent
extends RTEEvent,
GAsynchronousServerCallReturnsEvent {
    public AsynchronousServerCallPoint getEventSource();

    public void setEventSource(AsynchronousServerCallPoint var1);
}

