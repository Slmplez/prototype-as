/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.history;

import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.history.IFileHistory;
import org.eclipse.team.core.history.IFileRevision;

public interface IFileHistoryProvider {
    public static final int NONE = 0;
    public static final int SINGLE_REVISION = 1;
    public static final int SINGLE_LINE_OF_DESCENT = 2;

    public IFileHistory getFileHistoryFor(IResource var1, int var2, IProgressMonitor var3);

    public IFileRevision getWorkspaceFileRevision(IResource var1);

    public IFileHistory getFileHistoryFor(IFileStore var1, int var2, IProgressMonitor var3);
}

