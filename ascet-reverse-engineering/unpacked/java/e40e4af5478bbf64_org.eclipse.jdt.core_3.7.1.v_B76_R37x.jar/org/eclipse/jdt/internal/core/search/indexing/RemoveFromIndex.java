/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core.search.indexing;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.indexing.IndexRequest;
import org.eclipse.jdt.internal.core.search.indexing.ReadWriteMonitor;

class RemoveFromIndex
extends IndexRequest {
    String resourceName;

    public RemoveFromIndex(String resourceName, IPath containerPath, IndexManager manager) {
        super(containerPath, manager);
        this.resourceName = resourceName;
    }

    public boolean execute(IProgressMonitor progressMonitor) {
        if (this.isCancelled || progressMonitor != null && progressMonitor.isCanceled()) {
            return true;
        }
        Index index = this.manager.getIndex(this.containerPath, true, false);
        if (index == null) {
            return true;
        }
        ReadWriteMonitor monitor = index.monitor;
        if (monitor == null) {
            return true;
        }
        try {
            monitor.enterWrite();
            index.remove(this.resourceName);
        }
        finally {
            monitor.exitWrite();
        }
        return true;
    }

    public String toString() {
        return "removing " + this.resourceName + " from index " + this.containerPath;
    }
}

