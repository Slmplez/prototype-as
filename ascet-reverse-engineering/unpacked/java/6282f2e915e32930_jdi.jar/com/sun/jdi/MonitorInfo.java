/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi;

import com.sun.jdi.Mirror;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ThreadReference;

public interface MonitorInfo
extends Mirror {
    public ObjectReference monitor();

    public int stackDepth();

    public ThreadReference thread();
}

