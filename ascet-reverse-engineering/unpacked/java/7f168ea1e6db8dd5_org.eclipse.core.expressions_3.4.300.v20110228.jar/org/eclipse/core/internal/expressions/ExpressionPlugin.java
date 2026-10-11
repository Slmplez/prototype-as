/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Plugin
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleListener
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.core.runtime.Plugin;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleListener;

public class ExpressionPlugin
extends Plugin {
    private static ExpressionPlugin fgDefault;
    static BundleListener fgBundleListener;
    private BundleContext fBundleContext;

    public ExpressionPlugin() {
        fgDefault = this;
    }

    public static ExpressionPlugin getDefault() {
        return fgDefault;
    }

    public static String getPluginId() {
        return "org.eclipse.core.expressions";
    }

    public void start(BundleContext context) throws Exception {
        super.start(context);
        this.fBundleContext = context;
    }

    public void stop(BundleContext context) throws Exception {
        if (fgBundleListener != null) {
            context.removeBundleListener(fgBundleListener);
        }
        fgBundleListener = null;
        super.stop(context);
    }

    public BundleContext getBundleContext() {
        return this.fBundleContext;
    }
}

