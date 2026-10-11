/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.emf.common.EMFPlugin
 *  org.eclipse.emf.common.EMFPlugin$EclipsePlugin
 *  org.eclipse.emf.common.util.ResourceLocator
 */
package org.artop.aal.common;

import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.util.ResourceLocator;

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

        public InstanceScope getInstanceScope() {
            if (this.instanceScope == null) {
                this.instanceScope = new InstanceScope();
            }
            return this.instanceScope;
        }
    }
}

