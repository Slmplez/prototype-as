/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.filebuffers.manipulation;

import org.eclipse.core.filebuffers.IFileBuffer;
import org.eclipse.core.filebuffers.IFileBufferManager;
import org.eclipse.core.filebuffers.manipulation.GenericFileBufferOperationRunner;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;

public class FileBufferOperationRunner
extends GenericFileBufferOperationRunner {
    public FileBufferOperationRunner(IFileBufferManager fileBufferManager, Object validationContext) {
        super(fileBufferManager, validationContext);
    }

    protected void commit(final IFileBuffer[] fileBuffers, final IProgressMonitor progressMonitor) throws CoreException {
        IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

            public void run(IProgressMonitor monitor) throws CoreException {
                FileBufferOperationRunner.this.doCommit(fileBuffers, progressMonitor);
            }
        };
        ResourcesPlugin.getWorkspace().run(runnable, this.computeCommitRule(fileBuffers), 1, progressMonitor);
    }
}

