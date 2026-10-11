/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.CoreException;

public class WorkspaceLock {
    public WorkspaceLock(IWorkspace workspace) throws CoreException {
    }

    public boolean acquire() throws InterruptedException {
        return false;
    }

    protected Thread getCurrentOperationThread() {
        return null;
    }

    public void release() {
    }

    protected boolean isTreeLocked() {
        return true;
    }
}

