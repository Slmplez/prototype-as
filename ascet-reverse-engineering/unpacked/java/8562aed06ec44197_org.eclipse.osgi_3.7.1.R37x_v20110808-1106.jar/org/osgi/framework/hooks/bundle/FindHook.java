/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.hooks.bundle;

import java.util.Collection;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FindHook {
    public void find(BundleContext var1, Collection<Bundle> var2);
}

