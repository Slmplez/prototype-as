/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.request;

import com.sun.jdi.request.EventRequest;

public interface ClassUnloadRequest
extends EventRequest {
    public void addClassExclusionFilter(String var1);

    public void addClassFilter(String var1);
}

