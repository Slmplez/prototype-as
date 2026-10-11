/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.event;

import com.sun.jdi.Mirror;
import com.sun.jdi.event.EventIterator;
import java.util.Collection;

public interface EventSet
extends Mirror,
Collection {
    public EventIterator eventIterator();

    public void resume();

    public int suspendPolicy();
}

