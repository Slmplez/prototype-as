/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.sphinx.platform.resources.syncing.AbstractResourceSynchronizer
 *  org.eclipse.sphinx.platform.resources.syncing.IResourceSynchronizerDelegate
 */
package org.eclipse.sphinx.emf.internal.model;

import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.sphinx.emf.internal.model.BasicModelDescriptorSynchronizerDelegate;
import org.eclipse.sphinx.emf.internal.model.IModelDescriptorSyncRequest;
import org.eclipse.sphinx.emf.internal.model.ModelDescriptorSyncRequest;
import org.eclipse.sphinx.platform.resources.syncing.AbstractResourceSynchronizer;
import org.eclipse.sphinx.platform.resources.syncing.IResourceSynchronizerDelegate;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModelDescriptorSynchronizer
extends AbstractResourceSynchronizer<IModelDescriptorSyncRequest> {
    public static final ModelDescriptorSynchronizer INSTANCE = new ModelDescriptorSynchronizer();

    public void start() {
        ResourcesPlugin.getWorkspace().addResourceChangeListener((IResourceChangeListener)this, 31);
    }

    public void stop() {
        ResourcesPlugin.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this);
    }

    protected ModelDescriptorSynchronizer() {
        BasicModelDescriptorSynchronizerDelegate delegate = new BasicModelDescriptorSynchronizerDelegate();
        this.addDelegate((IResourceSynchronizerDelegate)delegate);
    }

    protected IModelDescriptorSyncRequest createSyncRequest() {
        return new ModelDescriptorSyncRequest();
    }
}

