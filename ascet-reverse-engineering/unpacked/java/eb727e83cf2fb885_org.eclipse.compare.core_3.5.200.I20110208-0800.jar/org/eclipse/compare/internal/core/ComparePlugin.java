/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.Status
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.compare.internal.core;

import org.eclipse.compare.internal.core.Messages;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Status;
import org.osgi.framework.BundleContext;

public class ComparePlugin
extends Plugin {
    public static final String PLUGIN_ID = "org.eclipse.compare.core";
    private static ComparePlugin plugin;
    private boolean cappingDisabled;

    public void start(BundleContext context) throws Exception {
        super.start(context);
        plugin = this;
    }

    public void stop(BundleContext context) throws Exception {
        plugin = null;
        super.stop(context);
    }

    public static ComparePlugin getDefault() {
        return plugin;
    }

    public static void log(Throwable e) {
        ComparePlugin.log((IStatus)new Status(4, PLUGIN_ID, 0, Messages.Activator_1, e));
    }

    public static void log(IStatus status) {
        ComparePlugin.getDefault().getLog().log(status);
    }

    public void setCappingDisabled(boolean disable) {
        this.cappingDisabled = disable;
    }

    public boolean isCappingDisabled() {
        return this.cappingDisabled;
    }
}

