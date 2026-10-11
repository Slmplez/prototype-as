/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.pde.internal.publishing;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class Activator
implements BundleActivator {
    private static BundleContext context;
    public static String ID;

    static {
        ID = "org.eclipse.equinox.p2.publisher.eclipse";
    }

    public static BundleContext getContext() {
        return context;
    }

    public void start(BundleContext bundleContext) throws Exception {
        context = bundleContext;
    }

    public void stop(BundleContext bundleContext) throws Exception {
        context = null;
    }
}

