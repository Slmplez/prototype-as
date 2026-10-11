/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.diff;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.diff.IDiffChangeEvent;
import org.eclipse.team.core.diff.IDiffTree;

public interface IDiffChangeListener {
    public void diffsChanged(IDiffChangeEvent var1, IProgressMonitor var2);

    public void propertyChanged(IDiffTree var1, int var2, IPath[] var3);
}

