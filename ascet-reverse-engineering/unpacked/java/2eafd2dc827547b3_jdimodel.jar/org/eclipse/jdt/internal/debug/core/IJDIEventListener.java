/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.event.Event
 *  com.sun.jdi.event.EventSet
 */
package org.eclipse.jdt.internal.debug.core;

import com.sun.jdi.event.Event;
import com.sun.jdi.event.EventSet;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;

public interface IJDIEventListener {
    public boolean handleEvent(Event var1, JDIDebugTarget var2, boolean var3, EventSet var4);

    public void eventSetComplete(Event var1, JDIDebugTarget var2, boolean var3, EventSet var4);
}

