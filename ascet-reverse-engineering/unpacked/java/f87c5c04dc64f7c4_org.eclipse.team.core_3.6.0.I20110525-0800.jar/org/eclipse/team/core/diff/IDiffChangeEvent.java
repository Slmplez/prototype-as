/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.team.core.diff;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.diff.IDiffTree;

public interface IDiffChangeEvent {
    public IDiffTree getTree();

    public IDiff[] getAdditions();

    public IPath[] getRemovals();

    public IDiff[] getChanges();

    public IStatus[] getErrors();
}

