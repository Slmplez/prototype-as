/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.EMFPlugin
 *  org.eclipse.emf.common.EMFPlugin$EclipsePlugin
 *  org.eclipse.emf.common.util.ResourceLocator
 */
package org.eclipse.emf.ecore.xmi;

import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.util.ResourceLocator;

public final class XMIPlugin
extends EMFPlugin {
    public static final XMIPlugin INSTANCE = new XMIPlugin();
    private static Implementation plugin;

    private XMIPlugin() {
        super(new ResourceLocator[0]);
    }

    public ResourceLocator getPluginResourceLocator() {
        return plugin;
    }

    public static Implementation getPlugin() {
        return plugin;
    }

    public static class Implementation
    extends EMFPlugin.EclipsePlugin {
        public Implementation() {
            plugin = this;
        }
    }
}

