/*
 * Decompiled with CFR 0.152.
 */
package gautosar.gswcomponents.gswcinternalbehavior.grteevents;

import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GAsynchronousServerCallPoint;

public interface GAsynchronousServerCallReturnsEvent
extends GRTEEvent {
    public GAsynchronousServerCallPoint gGetEventSource();

    public void gSetEventSource(GAsynchronousServerCallPoint var1);
}

