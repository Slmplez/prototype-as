/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.metadata.repository;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class Activator
implements BundleActivator {
    public static final String ID = "org.eclipse.equinox.p2.metadata.repository";
    public static final String REPO_PROVIDER_XPT = "org.eclipse.equinox.p2.metadata.repository.metadataRepositories";
    private static BundleContext bundleContext;

    public static BundleContext getContext() {
        return bundleContext;
    }

    public void start(BundleContext aContext) throws Exception {
        bundleContext = aContext;
    }

    public void stop(BundleContext aContext) throws Exception {
        bundleContext = null;
    }
}

