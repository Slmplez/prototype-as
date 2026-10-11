/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.filebuffers;

import org.eclipse.core.filebuffers.IFileBuffer;
import org.eclipse.core.filebuffers.IFileBufferListener;
import org.eclipse.core.filebuffers.ISynchronizationContext;
import org.eclipse.core.filebuffers.LocationKind;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IFileBufferManager {
    public void connect(IPath var1, IProgressMonitor var2) throws CoreException;

    public void connect(IPath var1, LocationKind var2, IProgressMonitor var3) throws CoreException;

    public void connectFileStore(IFileStore var1, IProgressMonitor var2) throws CoreException;

    public void disconnect(IPath var1, IProgressMonitor var2) throws CoreException;

    public void disconnect(IPath var1, LocationKind var2, IProgressMonitor var3) throws CoreException;

    public void disconnectFileStore(IFileStore var1, IProgressMonitor var2) throws CoreException;

    public IFileBuffer getFileBuffer(IPath var1);

    public IFileBuffer getFileBuffer(IPath var1, LocationKind var2);

    public IFileBuffer getFileStoreFileBuffer(IFileStore var1);

    public IFileBuffer[] getFileBuffers();

    public IFileBuffer[] getFileStoreFileBuffers();

    public void setSynchronizationContext(ISynchronizationContext var1);

    public void execute(Runnable var1);

    public void requestSynchronizationContext(IPath var1);

    public void releaseSynchronizationContext(IPath var1);

    public void addFileBufferListener(IFileBufferListener var1);

    public void removeFileBufferListener(IFileBufferListener var1);

    public void validateState(IFileBuffer[] var1, IProgressMonitor var2, Object var3) throws CoreException;
}

