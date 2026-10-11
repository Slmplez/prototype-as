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
import org.eclipse.team.core.diff.FastDiffFilter;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.diff.IDiffChangeListener;
import org.eclipse.team.core.diff.IDiffVisitor;

public interface IDiffTree {
    public static final int P_BUSY_HINT = 1;
    public static final int P_HAS_DESCENDANT_CONFLICTS = 2;

    public void addDiffChangeListener(IDiffChangeListener var1);

    public void removeDiffChangeListener(IDiffChangeListener var1);

    public void accept(IPath var1, IDiffVisitor var2, int var3);

    public IDiff getDiff(IPath var1);

    public IPath[] getChildren(IPath var1);

    public int size();

    public boolean isEmpty();

    public long countFor(int var1, int var2);

    public void setBusy(IDiff[] var1, IProgressMonitor var2);

    public boolean getProperty(IPath var1, int var2);

    public void clearBusy(IProgressMonitor var1);

    public boolean hasMatchingDiffs(IPath var1, FastDiffFilter var2);
}

