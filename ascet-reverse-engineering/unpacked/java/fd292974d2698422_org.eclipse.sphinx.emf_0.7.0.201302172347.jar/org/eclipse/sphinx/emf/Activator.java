/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.emf.common.EMFPlugin
 *  org.eclipse.emf.common.EMFPlugin$EclipsePlugin
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.sphinx.emf;

import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.sphinx.emf.internal.ecore.proxymanagement.ProxyHelperAdapterFactory;
import org.eclipse.sphinx.emf.internal.model.ModelDescriptorRegistryInitializer;
import org.eclipse.sphinx.emf.internal.model.ModelDescriptorSynchronizer;
import org.eclipse.sphinx.emf.scoping.ResourceScopeMarkerSynchronizer;
import org.osgi.framework.BundleContext;

public final class Activator
extends EMFPlugin {
    public static final Activator INSTANCE = new Activator();
    private static Implementation plugin;

    public Activator() {
        super(new ResourceLocator[0]);
    }

    public ResourceLocator getPluginResourceLocator() {
        return plugin;
    }

    public static Implementation getPlugin() {
        return plugin;
    }

    public static Implementation getDefault() {
        return plugin;
    }

    public static class Implementation
    extends EMFPlugin.EclipsePlugin {
        private InstanceScope instanceScope;

        public Implementation() {
            plugin = this;
        }

        public void start(BundleContext context) throws Exception {
            super.start(context);
            this.startWorkspaceSynchronizing();
            ProxyHelperAdapterFactory.INSTANCE.start();
            new ModelDescriptorRegistryInitializer().schedule();
        }

        public void stop(BundleContext context) throws Exception {
            ProxyHelperAdapterFactory.INSTANCE.stop();
            this.stopWorkspaceSynchronizing();
            super.stop(context);
        }

        public InstanceScope getInstanceScope() {
            if (this.instanceScope == null) {
                this.instanceScope = new InstanceScope();
            }
            return this.instanceScope;
        }

        public void startWorkspaceSynchronizing() {
            ModelDescriptorSynchronizer.INSTANCE.start();
            ResourceScopeMarkerSynchronizer.INSTANCE.start();
        }

        public void stopWorkspaceSynchronizing() {
            ModelDescriptorSynchronizer.INSTANCE.stop();
            ResourceScopeMarkerSynchronizer.INSTANCE.stop();
        }
    }
}

