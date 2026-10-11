/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.event;

import com.sun.jdi.event.Event;

public interface ClassUnloadEvent
extends Event {
    public String className();

    public String classSignature();
}

