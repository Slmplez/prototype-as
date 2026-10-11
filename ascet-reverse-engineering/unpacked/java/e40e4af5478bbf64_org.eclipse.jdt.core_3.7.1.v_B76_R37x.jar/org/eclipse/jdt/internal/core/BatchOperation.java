/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaModelOperation;
import org.eclipse.jdt.internal.core.JavaModelStatus;

public class BatchOperation
extends JavaModelOperation {
    protected IWorkspaceRunnable runnable;

    public BatchOperation(IWorkspaceRunnable runnable) {
        this.runnable = runnable;
    }

    protected boolean canModifyRoots() {
        return true;
    }

    protected void executeOperation() throws JavaModelException {
        try {
            this.runnable.run(this.progressMonitor);
        }
        catch (CoreException ce) {
            Throwable e;
            if (ce instanceof JavaModelException) {
                throw (JavaModelException)ce;
            }
            if (ce.getStatus().getCode() == 76 && (e = ce.getStatus().getException()) instanceof JavaModelException) {
                throw (JavaModelException)((Object)e);
            }
            throw new JavaModelException(ce);
        }
    }

    protected IJavaModelStatus verify() {
        return JavaModelStatus.VERIFIED_OK;
    }
}

