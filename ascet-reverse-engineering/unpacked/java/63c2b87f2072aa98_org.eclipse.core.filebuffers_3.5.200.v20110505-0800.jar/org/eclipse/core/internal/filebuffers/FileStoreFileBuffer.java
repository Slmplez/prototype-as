/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.core.internal.filebuffers;

import java.net.URI;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.filebuffers.AbstractFileBuffer;
import org.eclipse.core.internal.filebuffers.TextFileBufferManager;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.ISchedulingRule;

public abstract class FileStoreFileBuffer
extends AbstractFileBuffer {
    protected IPath fLocation;
    protected int fReferenceCount;
    protected boolean fCanBeSaved = false;
    protected IStatus fStatus;
    protected long fSynchronizationStamp = -1L;
    protected int fSynchronizationContextCount;

    public FileStoreFileBuffer(TextFileBufferManager manager) {
        super(manager);
    }

    protected abstract void addFileBufferContentListeners();

    protected abstract void removeFileBufferContentListeners();

    protected abstract void initializeFileBufferContent(IProgressMonitor var1) throws CoreException;

    protected abstract void commitFileBufferContent(IProgressMonitor var1, boolean var2) throws CoreException;

    public void create(IFileStore fileStore, IProgressMonitor monitor) throws CoreException {
        IFileInfo info = fileStore.fetchInfo();
        this.fFileStore = fileStore;
        if (this.fLocation == null) {
            this.fLocation = URIUtil.toPath((URI)fileStore.toURI());
        }
        this.initializeFileBufferContent(monitor);
        if (info.exists()) {
            this.fSynchronizationStamp = info.getLastModified();
        }
        this.addFileBufferContentListeners();
    }

    public void create(IPath location, IProgressMonitor monitor) throws CoreException {
        this.fLocation = location;
        this.create(EFS.getStore((URI)URIUtil.toURI((IPath)this.getLocation())), monitor);
    }

    public void connect() {
        ++this.fReferenceCount;
        if (this.fReferenceCount == 1) {
            this.connected();
        }
    }

    protected void connected() {
    }

    public void disconnect() throws CoreException {
        --this.fReferenceCount;
        if (this.fReferenceCount <= 0) {
            this.disconnected();
        }
    }

    protected void disconnected() {
    }

    protected boolean isDisconnected() {
        return this.fReferenceCount <= 0;
    }

    public IPath getLocation() {
        return this.fLocation;
    }

    public void commit(IProgressMonitor monitor, boolean overwrite) throws CoreException {
        if (!this.isDisconnected() && this.fCanBeSaved) {
            this.fManager.fireStateChanging(this);
            try {
                this.commitFileBufferContent(monitor, overwrite);
            }
            catch (CoreException x) {
                this.fManager.fireStateChangeFailed(this);
                throw x;
            }
            catch (RuntimeException x) {
                this.fManager.fireStateChangeFailed(this);
                throw x;
            }
            this.fCanBeSaved = false;
            this.addFileBufferContentListeners();
            this.fManager.fireDirtyStateChanged(this, this.fCanBeSaved);
        }
    }

    public ISchedulingRule computeCommitRule() {
        return null;
    }

    public boolean isDirty() {
        return this.fCanBeSaved;
    }

    public void setDirty(boolean isDirty) {
        this.fCanBeSaved = isDirty;
    }

    public boolean isShared() {
        return this.fReferenceCount > 1;
    }

    public ISchedulingRule computeValidateStateRule() {
        return null;
    }

    public void validateState(IProgressMonitor monitor, Object computationContext) throws CoreException {
    }

    public boolean isStateValidated() {
        return true;
    }

    public void resetStateValidation() {
    }

    public boolean isSynchronized() {
        return this.fSynchronizationStamp == this.getModificationStamp();
    }

    public void requestSynchronizationContext() {
        ++this.fSynchronizationContextCount;
    }

    public void releaseSynchronizationContext() {
        --this.fSynchronizationContextCount;
    }

    public boolean isSynchronizationContextRequested() {
        return this.fSynchronizationContextCount > 0;
    }

    public boolean isCommitable() {
        IFileInfo info = this.fFileStore.fetchInfo();
        return info.exists() && !info.getAttribute(2);
    }

    public void validationStateChanged(boolean validationState, IStatus status) {
    }
}

