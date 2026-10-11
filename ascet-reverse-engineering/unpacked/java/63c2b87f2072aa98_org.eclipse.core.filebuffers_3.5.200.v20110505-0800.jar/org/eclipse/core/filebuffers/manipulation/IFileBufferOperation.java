/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.core.filebuffers.manipulation;

import org.eclipse.core.filebuffers.IFileBuffer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;

public interface IFileBufferOperation {
    public String getOperationName();

    public void run(IFileBuffer var1, IProgressMonitor var2) throws CoreException, OperationCanceledException;
}

