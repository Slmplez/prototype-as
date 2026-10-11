/*
 * Decompiled with CFR 0.152.
 */
package com.sun.jdi.request;

import com.sun.jdi.Mirror;
import com.sun.jdi.request.InvalidRequestStateException;

public interface EventRequest
extends Mirror {
    public static final int SUSPEND_NONE = 0;
    public static final int SUSPEND_EVENT_THREAD = 1;
    public static final int SUSPEND_ALL = 2;

    public void addCountFilter(int var1) throws InvalidRequestStateException;

    public void disable();

    public void enable();

    public Object getProperty(Object var1);

    public boolean isEnabled();

    public void putProperty(Object var1, Object var2);

    public void setEnabled(boolean var1);

    public void setSuspendPolicy(int var1);

    public int suspendPolicy();
}

