/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core;

import org.eclipse.debug.core.DebugEvent;

public interface IDebugEventFilter {
    public DebugEvent[] filterDebugEvents(DebugEvent[] var1);
}

