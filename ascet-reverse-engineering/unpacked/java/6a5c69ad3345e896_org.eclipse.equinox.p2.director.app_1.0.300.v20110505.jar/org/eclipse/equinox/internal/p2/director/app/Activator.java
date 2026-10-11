/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.director.app;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class Activator
implements BundleActivator {
    public static final String ID = "org.eclipse.equinox.p2.director.app";
    private static BundleContext bundleContext;

    public static BundleContext getContext() {
        return bundleContext;
    }

    public void start(BundleContext context) throws Exception {
        bundleContext = context;
    }

    public void stop(BundleContext context) throws Exception {
        bundleContext = null;
    }
}

