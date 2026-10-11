/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.model.IStreamMonitor;

public interface IFlushableStreamMonitor
extends IStreamMonitor {
    public void flushContents();

    public void setBuffered(boolean var1);

    public boolean isBuffered();
}

