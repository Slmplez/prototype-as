/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.event;

import com.sun.jdi.Location;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.event.LocatableEvent;

public interface ExceptionEvent
extends LocatableEvent {
    public Location catchLocation();

    public ObjectReference exception();
}

