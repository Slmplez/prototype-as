/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.director;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class DirectorActivator
implements BundleActivator {
    public static final String PI_DIRECTOR = "org.eclipse.equinox.p2.director";
    public static BundleContext context;

    public void start(BundleContext ctx) throws Exception {
        context = ctx;
    }

    public void stop(BundleContext ctx) throws Exception {
        context = null;
    }
}

