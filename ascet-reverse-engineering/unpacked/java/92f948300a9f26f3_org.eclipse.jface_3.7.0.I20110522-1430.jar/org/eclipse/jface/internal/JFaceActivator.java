/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.jface.internal;

import org.eclipse.jface.internal.InternalPolicy;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class JFaceActivator
implements BundleActivator {
    private static BundleContext bundleContext;

    public void start(BundleContext context) throws Exception {
        bundleContext = context;
        InternalPolicy.OSGI_AVAILABLE = true;
    }

    public void stop(BundleContext context) throws Exception {
        InternalPolicy.OSGI_AVAILABLE = false;
        bundleContext = null;
    }

    public static BundleContext getBundleContext() {
        return bundleContext;
    }

    public static Bundle getBundle() {
        return bundleContext == null ? null : bundleContext.getBundle();
    }
}

