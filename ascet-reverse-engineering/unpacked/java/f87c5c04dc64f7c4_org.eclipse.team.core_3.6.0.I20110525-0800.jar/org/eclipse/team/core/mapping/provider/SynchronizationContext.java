/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.team.core.mapping.provider;

import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.team.core.ICache;
import org.eclipse.team.core.mapping.IResourceDiffTree;
import org.eclipse.team.core.mapping.ISynchronizationContext;
import org.eclipse.team.core.mapping.ISynchronizationScope;
import org.eclipse.team.core.mapping.ISynchronizationScopeManager;
import org.eclipse.team.internal.core.Cache;
import org.eclipse.team.internal.core.Policy;

public abstract class SynchronizationContext
extends PlatformObject
implements ISynchronizationContext {
    private final int type;
    private final IResourceDiffTree diffTree;
    private Cache cache;
    private final ISynchronizationScopeManager manager;

    protected SynchronizationContext(ISynchronizationScopeManager manager, int type, IResourceDiffTree diffTree) {
        this.manager = manager;
        this.type = type;
        this.diffTree = diffTree;
    }

    public ISynchronizationScope getScope() {
        return this.getScopeManager().getScope();
    }

    public ISynchronizationScopeManager getScopeManager() {
        return this.manager;
    }

    public int getType() {
        return this.type;
    }

    public void dispose() {
        if (this.cache != null) {
            this.cache.dispose();
        }
        this.manager.dispose();
    }

    public synchronized ICache getCache() {
        if (this.cache == null) {
            this.cache = new Cache();
        }
        return this.cache;
    }

    public IResourceDiffTree getDiffTree() {
        return this.diffTree;
    }

    public void refresh(ResourceMapping[] mappings, IProgressMonitor monitor) throws CoreException {
        monitor.beginTask(null, 100);
        ISynchronizationScopeManager manager = this.getScopeManager();
        if (manager == null) {
            this.refresh(this.getScope().getTraversals(), 0, Policy.subMonitorFor(monitor, 50));
        } else {
            ResourceTraversal[] traversals = manager.refresh(mappings, Policy.subMonitorFor(monitor, 50));
            if (traversals.length > 0) {
                this.refresh(traversals, 0, Policy.subMonitorFor(monitor, 50));
            }
        }
        monitor.done();
    }
}

