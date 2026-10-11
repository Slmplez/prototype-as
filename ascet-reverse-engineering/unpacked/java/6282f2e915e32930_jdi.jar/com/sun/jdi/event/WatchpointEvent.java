/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.event;

import com.sun.jdi.Field;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.Value;
import com.sun.jdi.event.LocatableEvent;

public interface WatchpointEvent
extends LocatableEvent {
    public Field field();

    public ObjectReference object();

    public Value valueCurrent();
}

