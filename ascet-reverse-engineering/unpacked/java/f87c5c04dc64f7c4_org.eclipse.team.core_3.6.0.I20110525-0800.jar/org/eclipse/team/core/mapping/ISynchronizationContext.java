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
import org.eclipse.team.core.ICache;
import org.eclipse.team.core.mapping.IResourceDiffTree;
import org.eclipse.team.core.mapping.ISynchronizationScope;

public interface ISynchronizationContext {
    public static final int TWO_WAY = 2;
    public static final int THREE_WAY = 3;

    public ISynchronizationScope getScope();

    public IResourceDiffTree getDiffTree();

    public int getType();

    public ICache getCache();

    public void dispose();

    public void refresh(ResourceTraversal[] var1, int var2, IProgressMonitor var3) throws CoreException;

    public void refresh(ResourceMapping[] var1, IProgressMonitor var2) throws CoreException;
}

