/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.sphinx.platform.resources.syncing.AbstractResourceSynchronizer
 */
package org.eclipse.sphinx.emf.scoping;

import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.sphinx.emf.internal.scoping.ResourceScopeMarkerSyncRequest;
import org.eclipse.sphinx.emf.scoping.IResourceScopeMarkerSyncRequest;
import org.eclipse.sphinx.platform.resources.syncing.AbstractResourceSynchronizer;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceScopeMarkerSynchronizer
extends AbstractResourceSynchronizer<IResourceScopeMarkerSyncRequest> {
    public static final ResourceScopeMarkerSynchronizer INSTANCE = new ResourceScopeMarkerSynchronizer();

    protected ResourceScopeMarkerSynchronizer() {
    }

    public void start() {
        ResourcesPlugin.getWorkspace().addResourceChangeListener((IResourceChangeListener)this, 31);
    }

    public void stop() {
        ResourcesPlugin.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this);
    }

    protected IResourceScopeMarkerSyncRequest createSyncRequest() {
        return new ResourceScopeMarkerSyncRequest();
    }
}

