/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.EMFPlugin
 *  org.eclipse.emf.common.EMFPlugin$EclipsePlugin
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.emf.transaction.internal;

import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.util.ResourceLocator;
import org.osgi.framework.BundleContext;

public class EMFTransactionPlugin
extends EMFPlugin {
    public static final EMFTransactionPlugin INSTANCE = new EMFTransactionPlugin();
    private static Implementation plugin;

    public EMFTransactionPlugin() {
        super(new ResourceLocator[0]);
    }

    public ResourceLocator getPluginResourceLocator() {
        return plugin;
    }

    public static Implementation getPlugin() {
        return plugin;
    }

    public static String getPluginId() {
        if (!EMFPlugin.IS_ECLIPSE_RUNNING) {
            return "org.eclipse.emf.transaction";
        }
        return EMFTransactionPlugin.getPlugin().getBundle().getSymbolicName();
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

