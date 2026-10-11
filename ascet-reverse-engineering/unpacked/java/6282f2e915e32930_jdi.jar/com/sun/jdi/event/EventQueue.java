/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.event;

import com.sun.jdi.Mirror;
import com.sun.jdi.event.EventSet;

public interface EventQueue
extends Mirror {
    public EventSet remove() throws InterruptedException;

    public EventSet remove(long var1) throws InterruptedException;
}

