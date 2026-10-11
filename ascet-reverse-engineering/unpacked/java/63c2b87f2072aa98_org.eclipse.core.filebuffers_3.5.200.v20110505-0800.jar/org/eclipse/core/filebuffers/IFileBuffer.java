/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.core.filebuffers;

import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.jobs.ISchedulingRule;

public interface IFileBuffer {
    public IPath getLocation();

    public IFileStore getFileStore();

    public boolean isShared();

    public boolean isSynchronized();

    public long getModificationStamp();

    public boolean isCommitable();

    public ISchedulingRule computeCommitRule();

    public void commit(IProgressMonitor var1, boolean var2) throws CoreException;

    public void revert(IProgressMonitor var1) throws CoreException;

    public boolean isDirty();

    public void setDirty(boolean var1);

    public ISchedulingRule computeValidateStateRule();

    public void validateState(IProgressMonitor var1, Object var2) throws CoreException;

    public boolean isStateValidated();

    public void resetStateValidation();

    public IStatus getStatus();

    public void requestSynchronizationContext();

    public void releaseSynchronizationContext();

    public boolean isSynchronizationContextRequested();

    public IContentType getContentType() throws CoreException;
}

