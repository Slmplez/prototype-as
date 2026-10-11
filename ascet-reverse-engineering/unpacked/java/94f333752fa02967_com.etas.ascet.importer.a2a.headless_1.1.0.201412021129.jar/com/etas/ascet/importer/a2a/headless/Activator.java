/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 */
package com.etas.ascet.importer.a2a.headless;

import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class Activator
implements BundleActivator {
    private static BundleContext context;
    private static Activator plugin;

    static BundleContext getContext() {
        return context;
    }

    public void start(BundleContext bundleContext) throws Exception {
        context = bundleContext;
        plugin = this;
    }

    public void stop(BundleContext bundleContext) throws Exception {
        context = null;
        plugin = null;
    }

    public static Activator getDefault() {
        return plugin;
    }

    public IEclipsePreferences getPreferenceStore() {
        return InstanceScope.INSTANCE.getNode("com.etas.ascet.importer.a2a");
    }
}

