/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class Activator
implements BundleActivator {
    public static final String ID = "org.eclipse.equinox.p2.touchpoint.eclipse";
    private static BundleContext context = null;

    public void start(BundleContext ctx) throws Exception {
        context = ctx;
    }

    public void stop(BundleContext ctx) throws Exception {
        context = null;
    }

    public static BundleContext getContext() {
        return context;
    }
}

