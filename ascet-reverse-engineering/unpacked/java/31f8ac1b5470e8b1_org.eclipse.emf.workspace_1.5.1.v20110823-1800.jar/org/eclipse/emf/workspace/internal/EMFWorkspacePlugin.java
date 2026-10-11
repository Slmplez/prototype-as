/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.EMFPlugin
 *  org.eclipse.emf.common.EMFPlugin$EclipsePlugin
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.emf.workspace.internal;

import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.util.ResourceLocator;
import org.osgi.framework.BundleContext;

public class EMFWorkspacePlugin
extends EMFPlugin {
    public static final String OPTION_OWNING_OPERATION = "_owning_operation";
    public static final EMFWorkspacePlugin INSTANCE = new EMFWorkspacePlugin();
    private static Implementation plugin;

    public EMFWorkspacePlugin() {
        super(new ResourceLocator[0]);
    }

    public ResourceLocator getPluginResourceLocator() {
        return plugin;
    }

    public static Implementation getPlugin() {
        return plugin;
    }

    public static String getPluginId() {
        return EMFWorkspacePlugin.getPlugin().getBundle().getSymbolicName();
    }

    static /* synthetic */ Implementation access$0() {
        return plugin;
    }

    public static class Implementation
    extends EMFPlugin.EclipsePlugin {
        public Implementation() {
            plugin = this;
        }

        public void start(BundleContext context) throws Exception {
            super.start(context);
        }

        public void stop(BundleContext context) throws Exception {
            super.stop(context);
            plugin = null;
        }
    }
}

