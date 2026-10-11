/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.event;

import com.sun.jdi.Method;
import com.sun.jdi.event.LocatableEvent;

public interface MethodEntryEvent
extends LocatableEvent {
    public Method method();
}

