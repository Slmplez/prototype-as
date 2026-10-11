/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.mapping;

import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.mapping.ISynchronizationScope;

public interface ISynchronizationScopeManager {
    public ISynchronizationScope getScope();

    public boolean isInitialized();

    public void initialize(IProgressMonitor var1) throws CoreException;

    public ResourceTraversal[] refresh(ResourceMapping[] var1, IProgressMonitor var2) throws CoreException;

    public void dispose();
}

