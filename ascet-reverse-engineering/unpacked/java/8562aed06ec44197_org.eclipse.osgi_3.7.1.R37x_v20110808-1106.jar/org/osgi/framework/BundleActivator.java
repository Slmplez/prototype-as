/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework;

import org.osgi.framework.BundleContext;

public interface BundleActivator {
    public void start(BundleContext var1) throws Exception;

    public void stop(BundleContext var1) throws Exception;
}

