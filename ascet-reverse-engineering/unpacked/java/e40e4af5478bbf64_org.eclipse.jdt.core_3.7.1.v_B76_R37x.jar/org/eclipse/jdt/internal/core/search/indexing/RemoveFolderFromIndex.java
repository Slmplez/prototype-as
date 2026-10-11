/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core.search.indexing;

import java.io.IOException;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.indexing.IndexRequest;
import org.eclipse.jdt.internal.core.search.indexing.ReadWriteMonitor;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Util;

class RemoveFolderFromIndex
extends IndexRequest {
    IPath folderPath;
    char[][] inclusionPatterns;
    char[][] exclusionPatterns;

    public RemoveFolderFromIndex(IPath folderPath, char[][] inclusionPatterns, char[][] exclusionPatterns, IProject project, IndexManager manager) {
        super(project.getFullPath(), manager);
        this.folderPath = folderPath;
        this.inclusionPatterns = inclusionPatterns;
        this.exclusionPatterns = exclusionPatterns;
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
                monitor.enterRead();
                String containerRelativePath = Util.relativePath(this.folderPath, this.containerPath.segmentCount());
                String[] paths = index.queryDocumentNames(containerRelativePath);
                if (paths != null) {
                    if (this.exclusionPatterns == null && this.inclusionPatterns == null) {
                        int i = 0;
                        int max = paths.length;
                        while (i < max) {
                            this.manager.remove(paths[i], this.containerPath);
                            ++i;
                        }
                    } else {
                        int i = 0;
                        int max = paths.length;
                        while (i < max) {
                            String documentPath = String.valueOf(this.containerPath.toString()) + '/' + paths[i];
                            if (!Util.isExcluded((IPath)new Path(documentPath), this.inclusionPatterns, this.exclusionPatterns, false)) {
                                this.manager.remove(paths[i], this.containerPath);
                            }
                            ++i;
                        }
                    }
                }
            }
            catch (IOException e) {
                if (JobManager.VERBOSE) {
                    Util.verbose("-> failed to remove " + this.folderPath + " from index because of the following exception:", System.err);
                    e.printStackTrace();
                }
                monitor.exitRead();
                return false;
            }
        }
        finally {
            monitor.exitRead();
        }
        return true;
    }

    public String toString() {
        return "removing " + this.folderPath + " from index " + this.containerPath;
    }
}

