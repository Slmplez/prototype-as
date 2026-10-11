/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.request;

import com.sun.jdi.Locatable;
import com.sun.jdi.Location;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.request.EventRequest;

public interface BreakpointRequest
extends EventRequest,
Locatable {
    public void addThreadFilter(ThreadReference var1);

    public void addInstanceFilter(ObjectReference var1);

    public Location location();
}

