/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core.search.indexing;

import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.processing.IJob;

public abstract class IndexRequest
implements IJob {
    protected boolean isCancelled = false;
    protected IPath containerPath;
    protected IndexManager manager;

    public IndexRequest(IPath containerPath, IndexManager manager) {
        this.containerPath = containerPath;
        this.manager = manager;
    }

    public boolean belongsTo(String projectNameOrJarPath) {
        return projectNameOrJarPath.equals(this.containerPath.segment(0)) || projectNameOrJarPath.equals(this.containerPath.toString());
    }

    public void cancel() {
        this.manager.jobWasCancelled(this.containerPath);
        this.isCancelled = true;
    }

    public void ensureReadyToRun() {
        this.manager.aboutToUpdateIndex(this.containerPath, this.updatedIndexState());
    }

    public String getJobFamily() {
        return this.containerPath.toString();
    }

    protected Integer updatedIndexState() {
        return IndexManager.UPDATING_STATE;
    }
}

