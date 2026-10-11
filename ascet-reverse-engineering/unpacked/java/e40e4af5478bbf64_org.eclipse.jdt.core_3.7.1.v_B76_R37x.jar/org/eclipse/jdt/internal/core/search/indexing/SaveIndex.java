/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core.search.indexing;

import java.io.IOException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.indexing.IndexRequest;
import org.eclipse.jdt.internal.core.search.indexing.ReadWriteMonitor;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Util;

public class SaveIndex
extends IndexRequest {
    public SaveIndex(IPath containerPath, IndexManager manager) {
        super(containerPath, manager);
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
            try {
                monitor.enterWrite();
                this.manager.saveIndex(index);
            }
            catch (IOException e) {
                if (JobManager.VERBOSE) {
                    Util.verbose("-> failed to save index " + this.containerPath + " because of the following exception:", System.err);
                    e.printStackTrace();
                }
                monitor.exitWrite();
                return false;
            }
        }
        finally {
            monitor.exitWrite();
        }
        return true;
    }

    public String toString() {
        return "saving index for " + this.containerPath;
    }
}

