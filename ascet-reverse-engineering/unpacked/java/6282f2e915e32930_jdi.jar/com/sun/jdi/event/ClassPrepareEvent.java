/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.event;

import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.event.Event;

public interface ClassPrepareEvent
extends Event {
    public ReferenceType referenceType();

    public ThreadReference thread();
}

