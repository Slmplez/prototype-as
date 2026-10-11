/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.repository;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class Activator
implements BundleActivator {
    public static final String ID = "org.eclipse.equinox.p2.repository";
    private static BundleContext context;

    public void start(BundleContext aContext) throws Exception {
        context = aContext;
    }

    public void stop(BundleContext aContext) throws Exception {
        context = aContext;
    }

    public static BundleContext getContext() {
        return context;
    }
}

