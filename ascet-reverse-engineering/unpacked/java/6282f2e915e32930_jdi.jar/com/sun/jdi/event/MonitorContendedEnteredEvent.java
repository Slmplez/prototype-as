/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.event;

import com.sun.jdi.ObjectReference;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.event.LocatableEvent;

public interface MonitorContendedEnteredEvent
extends LocatableEvent {
    public ThreadReference thread();

    public ObjectReference monitor();
}

