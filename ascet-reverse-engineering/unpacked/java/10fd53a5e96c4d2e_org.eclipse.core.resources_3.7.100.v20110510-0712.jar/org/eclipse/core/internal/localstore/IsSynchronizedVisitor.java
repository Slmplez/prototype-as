/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.internal.localstore;

import org.eclipse.core.internal.localstore.CollectSyncStatusVisitor;
import org.eclipse.core.internal.localstore.UnifiedTreeNode;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;

public class IsSynchronizedVisitor
extends CollectSyncStatusVisitor {
    public IsSynchronizedVisitor(IProgressMonitor monitor) {
        super("", monitor);
    }

    protected void changed(Resource target) {
        throw new ResourceChangedException(target);
    }

    protected void fileToFolder(UnifiedTreeNode node, Resource target) {
        this.changed((Resource)((Object)this.workspace.getRoot().getFolder(target.getFullPath())));
    }

    protected void folderToFile(UnifiedTreeNode node, Resource target) {
        this.changed((Resource)((Object)this.workspace.getRoot().getFile(target.getFullPath())));
    }

    static class ResourceChangedException
    extends RuntimeException {
        private static final long serialVersionUID = 1L;
        public final IResource target;

        public ResourceChangedException(IResource target) {
            this.target = target;
        }
    }
}

