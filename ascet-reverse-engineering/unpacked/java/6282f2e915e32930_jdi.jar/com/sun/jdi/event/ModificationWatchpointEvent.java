/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.event;

import com.sun.jdi.Value;
import com.sun.jdi.event.WatchpointEvent;

public interface ModificationWatchpointEvent
extends WatchpointEvent {
    public Value valueToBe();
}

