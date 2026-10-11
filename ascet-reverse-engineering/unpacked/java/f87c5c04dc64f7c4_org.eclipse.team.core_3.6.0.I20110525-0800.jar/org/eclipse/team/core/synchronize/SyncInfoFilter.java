/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.synchronize;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.variants.IResourceVariant;
import org.eclipse.team.internal.core.subscribers.ContentComparator;

public abstract class SyncInfoFilter {
    public abstract boolean select(SyncInfo var1, IProgressMonitor var2);

    public static class ContentComparisonSyncInfoFilter
    extends SyncInfoFilter {
        ContentComparator criteria = new ContentComparator(false);

        public ContentComparisonSyncInfoFilter() {
            this(false);
        }

        public ContentComparisonSyncInfoFilter(boolean ignoreWhitespace) {
            this.criteria = new ContentComparator(ignoreWhitespace);
        }

        public boolean select(SyncInfo info, IProgressMonitor monitor) {
            IResourceVariant remote = info.getRemote();
            IResource local = info.getLocal();
            if (local.getType() != 1) {
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

        public boolean compareContents(IFile local, IResourceVariant remote, IProgressMonitor monitor) {
            Assert.isNotNull((Object)local);
            Assert.isNotNull((Object)remote);
            return this.criteria.compare(local, remote, monitor);
        }
    }
}

