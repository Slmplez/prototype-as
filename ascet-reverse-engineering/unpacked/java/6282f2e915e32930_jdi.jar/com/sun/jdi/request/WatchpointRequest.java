/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.request;

import com.sun.jdi.Field;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.request.EventRequest;

public interface WatchpointRequest
extends EventRequest {
    public void addClassExclusionFilter(String var1);

    public void addClassFilter(ReferenceType var1);

    public void addClassFilter(String var1);

    public void addInstanceFilter(ObjectReference var1);

    public void addThreadFilter(ThreadReference var1);

    public Field field();
}

