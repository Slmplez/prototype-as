/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.ui.plugin.AbstractUIPlugin
 *  org.eclipse.ui.preferences.ScopedPreferenceStore
 *  org.osgi.framework.BundleContext
 */
package com.etas.ascet.importer.a2a.ui;

import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.ui.preferences.ScopedPreferenceStore;
import org.osgi.framework.BundleContext;

public class Activator
extends AbstractUIPlugin {
    public static final String PLUGIN_ID = "com.etas.ascet.importer.a2a.ui";
    private static Activator plugin;
    private ScopedPreferenceStore preferenceStore;

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

    public IPreferenceStore getPreferenceStore() {
        if (this.preferenceStore == null) {
            this.preferenceStore = new ScopedPreferenceStore(InstanceScope.INSTANCE, "com.etas.ascet.importer.a2a");
        }
        return this.preferenceStore;
    }

    public static ImageDescriptor getImageDescriptor(String path) {
        return Activator.imageDescriptorFromPlugin((String)PLUGIN_ID, (String)path);
    }
}

