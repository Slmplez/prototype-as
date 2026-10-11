/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.TeamException;

public interface IProjectSetSerializer {
    public String[] asReference(IProject[] var1, Object var2, IProgressMonitor var3) throws TeamException;

    public IProject[] addToWorkspace(String[] var1, String var2, Object var3, IProgressMonitor var4) throws TeamException;
}

