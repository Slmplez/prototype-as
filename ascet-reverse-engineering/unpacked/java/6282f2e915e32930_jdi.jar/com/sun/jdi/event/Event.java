/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.event;

import com.sun.jdi.Mirror;
import com.sun.jdi.request.EventRequest;

public interface Event
extends Mirror {
    public EventRequest request();
}

