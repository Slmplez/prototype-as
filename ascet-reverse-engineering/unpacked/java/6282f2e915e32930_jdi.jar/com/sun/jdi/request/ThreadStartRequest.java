/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.request;

import com.sun.jdi.ThreadReference;
import com.sun.jdi.request.EventRequest;

public interface ThreadStartRequest
extends EventRequest {
    public void addThreadFilter(ThreadReference var1);
}

