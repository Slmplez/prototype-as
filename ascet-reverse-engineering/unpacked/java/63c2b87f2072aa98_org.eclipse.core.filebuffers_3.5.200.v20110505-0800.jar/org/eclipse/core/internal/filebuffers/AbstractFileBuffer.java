/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.internal.filebuffers;

import org.eclipse.core.filebuffers.IFileBuffer;
import org.eclipse.core.filebuffers.IStateValidationSupport;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.filebuffers.TextFileBufferManager;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;

public abstract class AbstractFileBuffer
implements IFileBuffer,
IStateValidationSupport {
    protected IFileStore fFileStore;
    protected final TextFileBufferManager fManager;

    public AbstractFileBuffer(TextFileBufferManager manager) {
        this.fManager = manager;
    }

    public abstract void create(IPath var1, IProgressMonitor var2) throws CoreException;

    public abstract void connect();

    public abstract void disconnect() throws CoreException;

    protected abstract boolean isDisconnected();

    protected void dispose() {
    }

    public void validationStateAboutToBeChanged() {
        this.fManager.fireStateChanging(this);
    }

    public void validationStateChangeFailed() {
        this.fManager.fireStateChangeFailed(this);
    }

    public long getModificationStamp() {
        IFileInfo info = this.fFileStore.fetchInfo();
        return info.exists() ? info.getLastModified() : -1L;
    }

    public IFileStore getFileStore() {
        return this.fFileStore;
    }
}

