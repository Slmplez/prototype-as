/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.event;

import com.sun.jdi.event.Event;
import java.util.Iterator;

public interface EventIterator
extends Iterator {
    public Event nextEvent();
}

