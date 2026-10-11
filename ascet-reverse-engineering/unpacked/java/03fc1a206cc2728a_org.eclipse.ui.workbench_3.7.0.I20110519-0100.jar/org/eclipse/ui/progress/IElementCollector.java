/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.ui.progress;

import org.eclipse.core.runtime.IProgressMonitor;

public interface IElementCollector {
    public void add(Object var1, IProgressMonitor var2);

    public void add(Object[] var1, IProgressMonitor var2);

    public void done();
}

