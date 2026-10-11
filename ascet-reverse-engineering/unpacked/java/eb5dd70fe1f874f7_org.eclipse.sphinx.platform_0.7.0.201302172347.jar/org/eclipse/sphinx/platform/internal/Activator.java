/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Plugin
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.sphinx.platform.internal;

import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.sphinx.platform.internal.util.ContentTypeIdCachePurger;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.osgi.framework.BundleContext;

public class Activator
extends Plugin {
    public static final String PLUGIN_ID = "org.eclipse.sphinx.platform";
    private static Activator plugin;
    private static BundleContext context;
    private IResourceChangeListener contentTypeIdPropertyInvalidator;

    public static Activator getDefault() {
        return plugin;
    }

    public static BundleContext getContext() {
        return context;
    }

    public void start(BundleContext bundleContext) throws Exception {
        super.start(bundleContext);
        plugin = this;
        context = bundleContext;
        System.setProperty("org.eclipse.platform.featureVersion", ExtendedPlatform.getFeatureVersion());
        this.contentTypeIdPropertyInvalidator = new ContentTypeIdCachePurger();
        ResourcesPlugin.getWorkspace().addResourceChangeListener(this.contentTypeIdPropertyInvalidator);
    }

    public void stop(BundleContext bundleContext) throws Exception {
        ResourcesPlugin.getWorkspace().removeResourceChangeListener(this.contentTypeIdPropertyInvalidator);
        plugin = null;
        context = null;
        super.stop(bundleContext);
    }
}

