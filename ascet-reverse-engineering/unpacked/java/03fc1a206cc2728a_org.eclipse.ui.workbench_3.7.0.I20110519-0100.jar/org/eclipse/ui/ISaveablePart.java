/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.IProgressMonitor;

public interface ISaveablePart {
    public static final int PROP_DIRTY = 257;

    public void doSave(IProgressMonitor var1);

    public void doSaveAs();

    public boolean isDirty();

    public boolean isSaveAsAllowed();

    public boolean isSaveOnCloseNeeded();
}

