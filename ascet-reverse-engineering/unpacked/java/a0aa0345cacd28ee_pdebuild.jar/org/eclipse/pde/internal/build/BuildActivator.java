/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Plugin
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.pde.internal.build;

import org.eclipse.core.runtime.Plugin;
import org.eclipse.pde.internal.build.BundleHelper;
import org.osgi.framework.BundleContext;

public class BuildActivator
extends Plugin {
    public void start(BundleContext ctx) throws Exception {
        new BundleHelper(ctx);
    }

    public void stop(BundleContext ctx) throws Exception {
        BundleHelper.close();
    }
}

