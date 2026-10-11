/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.hooks.service;

import java.util.Collection;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FindHook {
    public void find(BundleContext var1, String var2, String var3, boolean var4, Collection<ServiceReference<?>> var5);
}

