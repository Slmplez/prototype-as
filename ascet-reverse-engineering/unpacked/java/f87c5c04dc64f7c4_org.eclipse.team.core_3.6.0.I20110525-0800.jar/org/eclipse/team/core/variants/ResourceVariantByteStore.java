/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.variants;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.TeamException;

public abstract class ResourceVariantByteStore {
    public abstract void dispose();

    public abstract byte[] getBytes(IResource var1) throws TeamException;

    public abstract boolean setBytes(IResource var1, byte[] var2) throws TeamException;

    public abstract boolean flushBytes(IResource var1, int var2) throws TeamException;

    public abstract boolean deleteBytes(IResource var1) throws TeamException;

    public abstract IResource[] members(IResource var1) throws TeamException;

    protected boolean equals(byte[] syncBytes1, byte[] syncBytes2) {
        if (syncBytes1 == null) {
            return syncBytes2 == null;
        }
        if (syncBytes2 == null) {
            return false;
        }
        if (syncBytes1.length != syncBytes2.length) {
            return false;
        }
        int i = 0;
        while (i < syncBytes1.length) {
            if (syncBytes1[i] != syncBytes2[i]) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public void run(IResource root, IWorkspaceRunnable runnable, IProgressMonitor monitor) throws TeamException {
        try {
            runnable.run(monitor);
        }
        catch (CoreException e) {
            throw TeamException.asTeamException(e);
        }
    }
}

