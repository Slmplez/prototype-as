/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.event;

import com.sun.jdi.Method;
import com.sun.jdi.Value;
import com.sun.jdi.event.LocatableEvent;

public interface MethodExitEvent
extends LocatableEvent {
    public Method method();

    public Value returnValue();
}

