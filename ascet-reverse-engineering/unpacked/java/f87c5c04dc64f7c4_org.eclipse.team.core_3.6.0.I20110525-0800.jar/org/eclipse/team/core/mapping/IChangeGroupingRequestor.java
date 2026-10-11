/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.team.core.mapping;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;

public interface IChangeGroupingRequestor {
    public void ensureChangesGrouped(IProject var1, IFile[] var2, String var3) throws CoreException;

    public boolean isModified(IFile var1) throws CoreException;
}

