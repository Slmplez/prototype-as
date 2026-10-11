/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.metadata;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class MetadataActivator
implements BundleActivator {
    public static final String PI_METADATA = "org.eclipse.equinox.p2.metadata";
    public static MetadataActivator instance;
    private BundleContext context;

    public static BundleContext getContext() {
        MetadataActivator activator = instance;
        return activator == null ? null : activator.context;
    }

    public void start(BundleContext aContext) throws Exception {
        this.context = aContext;
        instance = this;
    }

    public void stop(BundleContext aContext) throws Exception {
        instance = null;
    }
}

