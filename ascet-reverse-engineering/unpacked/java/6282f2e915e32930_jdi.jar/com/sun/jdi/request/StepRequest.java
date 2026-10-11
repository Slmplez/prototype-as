/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.request;

import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.request.EventRequest;

public interface StepRequest
extends EventRequest {
    public static final int STEP_INTO = 1;
    public static final int STEP_OVER = 2;
    public static final int STEP_OUT = 3;
    public static final int STEP_MIN = -1;
    public static final int STEP_LINE = -2;

    public void addClassExclusionFilter(String var1);

    public void addClassFilter(ReferenceType var1);

    public void addClassFilter(String var1);

    public void addInstanceFilter(ObjectReference var1);

    public int depth();

    public int size();

    public ThreadReference thread();
}

