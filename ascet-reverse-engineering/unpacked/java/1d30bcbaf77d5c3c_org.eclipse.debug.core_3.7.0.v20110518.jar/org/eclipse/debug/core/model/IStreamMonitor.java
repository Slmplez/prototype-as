/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.IStreamListener;

public interface IStreamMonitor {
    public void addListener(IStreamListener var1);

    public String getContents();

    public void removeListener(IStreamListener var1);
}

