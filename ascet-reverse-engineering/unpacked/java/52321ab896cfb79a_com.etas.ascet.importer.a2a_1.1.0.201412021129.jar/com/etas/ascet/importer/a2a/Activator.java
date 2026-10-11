/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Plugin
 *  org.osgi.framework.BundleContext
 */
package com.etas.ascet.importer.a2a;

import org.eclipse.core.runtime.Plugin;
import org.osgi.framework.BundleContext;

public class Activator
extends Plugin {
    private static Activator plugin;
    public static final String PLUGIN_ID = "com.etas.ascet.importer.a2a";

    public void start(BundleContext context) throws Exception {
        super.start(context);
        plugin = this;
    }

    public void stop(BundleContext context) throws Exception {
        plugin = null;
        super.stop(context);
    }

    public static Activator getDefault() {
        return plugin;
    }
}

