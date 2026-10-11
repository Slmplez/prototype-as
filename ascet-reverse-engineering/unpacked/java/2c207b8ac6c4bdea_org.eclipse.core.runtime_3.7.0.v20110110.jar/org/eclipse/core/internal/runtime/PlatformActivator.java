/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.app.CommandLineArgs
 *  org.osgi.framework.BundleActivator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.core.internal.runtime;

import org.eclipse.core.internal.runtime.InternalPlatform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.equinox.internal.app.CommandLineArgs;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class PlatformActivator
extends Plugin
implements BundleActivator {
    private static BundleContext context;

    public static BundleContext getContext() {
        return context;
    }

    public void start(BundleContext runtimeContext) throws Exception {
        context = runtimeContext;
        InternalPlatform.getDefault().start(runtimeContext);
        this.startAppContainer();
        InternalPlatform.getDefault().setRuntimeInstance(this);
        super.start(runtimeContext);
    }

    public void stop(BundleContext runtimeContext) {
        InternalPlatform.getDefault().stop(runtimeContext);
        InternalPlatform.getDefault().setRuntimeInstance(null);
    }

    private void startAppContainer() {
        CommandLineArgs.getApplicationArgs();
    }
}

