/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.diff.DiffFilter;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.history.IFileRevision;
import org.eclipse.team.core.mapping.provider.ResourceDiffTree;
import org.eclipse.team.internal.core.mapping.SyncInfoToDiffConverter;
import org.eclipse.team.internal.core.subscribers.ContentComparator;

public class ContentComparisonDiffFilter
extends DiffFilter {
    ContentComparator criteria = new ContentComparator(false);

    public ContentComparisonDiffFilter() {
        this(false);
    }

    public ContentComparisonDiffFilter(boolean ignoreWhitespace) {
        this.criteria = new ContentComparator(ignoreWhitespace);
    }

    public boolean compareContents(IFile local, IFileRevision remote, IProgressMonitor monitor) {
        Assert.isNotNull((Object)local);
        Assert.isNotNull((Object)remote);
        return this.criteria.compare(local, remote, monitor);
    }

    public boolean select(IDiff diff, IProgressMonitor monitor) {
        IFileRevision remote = SyncInfoToDiffConverter.getRemote(diff);
        IResource local = ResourceDiffTree.getResourceFor(diff);
        if (local == null || local.getType() != 1) {
            return true;
        }
        if (remote == null) {
            return !local.exists();
        }
        if (!local.exists()) {
            return false;
        }
        return this.compareContents((IFile)local, remote, monitor);
    }
}

