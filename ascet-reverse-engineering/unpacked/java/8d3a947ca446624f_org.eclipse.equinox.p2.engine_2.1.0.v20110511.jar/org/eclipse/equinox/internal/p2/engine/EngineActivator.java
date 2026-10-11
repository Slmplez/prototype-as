/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.engine;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class EngineActivator
implements BundleActivator {
    private static BundleContext context;
    public static final String ID = "org.eclipse.equinox.p2.engine";
    public static final String PROP_PROFILE_FORMAT = "eclipse.p2.profileFormat";
    public static final String PROFILE_FORMAT_UNCOMPRESSED = "uncompressed";
    public static final String PROP_UNSIGNED_POLICY = "eclipse.p2.unsignedPolicy";
    public static final String UNSIGNED_PROMPT = "prompt";
    public static final String UNSIGNED_FAIL = "fail";
    public static final String UNSIGNED_ALLOW = "allow";

    public static BundleContext getContext() {
        return context;
    }

    public void start(BundleContext aContext) throws Exception {
        context = aContext;
    }

    public void stop(BundleContext aContext) throws Exception {
        context = null;
    }
}

