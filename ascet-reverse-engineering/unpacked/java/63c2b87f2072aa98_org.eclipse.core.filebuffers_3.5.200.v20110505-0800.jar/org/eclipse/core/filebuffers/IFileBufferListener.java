/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.filebuffers;

import org.eclipse.core.filebuffers.IFileBuffer;
import org.eclipse.core.runtime.IPath;

public interface IFileBufferListener {
    public void bufferCreated(IFileBuffer var1);

    public void bufferDisposed(IFileBuffer var1);

    public void bufferContentAboutToBeReplaced(IFileBuffer var1);

    public void bufferContentReplaced(IFileBuffer var1);

    public void stateChanging(IFileBuffer var1);

    public void dirtyStateChanged(IFileBuffer var1, boolean var2);

    public void stateValidationChanged(IFileBuffer var1, boolean var2);

    public void underlyingFileMoved(IFileBuffer var1, IPath var2);

    public void underlyingFileDeleted(IFileBuffer var1);

    public void stateChangeFailed(IFileBuffer var1);
}

