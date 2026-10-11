/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.mapping.ResourceMapping
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.team.core.mapping.ISynchronizationScope;
import org.eclipse.team.core.mapping.ISynchronizationScopeChangeListener;

public abstract class AbstractSynchronizationScope
implements ISynchronizationScope {
    private ListenerList listeners = new ListenerList(1);

    public IResource[] getRoots() {
        ArrayList result = new ArrayList();
        ResourceTraversal[] traversals = this.getTraversals();
        int i = 0;
        while (i < traversals.length) {
            ResourceTraversal traversal = traversals[i];
            IResource[] resources = traversal.getResources();
            int j = 0;
            while (j < resources.length) {
                IResource resource = resources[j];
                this.accumulateRoots(result, resource);
                ++j;
            }
            ++i;
        }
        return result.toArray(new IResource[result.size()]);
    }

    public boolean contains(IResource resource) {
        ResourceTraversal[] traversals = this.getTraversals();
        int i = 0;
        while (i < traversals.length) {
            ResourceTraversal traversal = traversals[i];
            if (traversal.contains(resource)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private void accumulateRoots(List roots, IResource resource) {
        IPath resourcePath = resource.getFullPath();
        Iterator iter = roots.iterator();
        while (iter.hasNext()) {
            IResource root = (IResource)iter.next();
            IPath rootPath = root.getFullPath();
            if (rootPath.isPrefixOf(resourcePath)) {
                return;
            }
            if (!resourcePath.isPrefixOf(rootPath)) continue;
            iter.remove();
        }
        roots.add(resource);
    }

    public void fireTraversalsChangedEvent(final ResourceTraversal[] newTraversals, final ResourceMapping[] newMappings) {
        Object[] allListeners = this.listeners.getListeners();
        int i = 0;
        while (i < allListeners.length) {
            final Object listener = allListeners[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void run() throws Exception {
                    ((ISynchronizationScopeChangeListener)listener).scopeChanged(AbstractSynchronizationScope.this, newMappings, newTraversals);
                }

                public void handleException(Throwable exception) {
                }
            });
            ++i;
        }
    }

    public void addScopeChangeListener(ISynchronizationScopeChangeListener listener) {
        this.listeners.add((Object)listener);
    }

    public void removeScopeChangeListener(ISynchronizationScopeChangeListener listener) {
        this.listeners.remove((Object)listener);
    }
}

