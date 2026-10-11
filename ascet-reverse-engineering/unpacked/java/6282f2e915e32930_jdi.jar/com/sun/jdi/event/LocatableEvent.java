/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.event;

import com.sun.jdi.Locatable;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.event.Event;

public interface LocatableEvent
extends Event,
Locatable {
    public ThreadReference thread();
}

