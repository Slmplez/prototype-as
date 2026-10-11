/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IWorkbench;

public interface IWorkbenchListener {
    public boolean preShutdown(IWorkbench var1, boolean var2);

    public void postShutdown(IWorkbench var1);
}

