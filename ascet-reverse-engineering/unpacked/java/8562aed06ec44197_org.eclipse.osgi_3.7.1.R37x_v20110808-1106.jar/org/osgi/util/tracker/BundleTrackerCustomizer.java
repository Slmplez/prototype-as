/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.util.tracker;

import org.osgi.framework.Bundle;
import org.osgi.framework.BundleEvent;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BundleTrackerCustomizer<T> {
    public T addingBundle(Bundle var1, BundleEvent var2);

    public void modifiedBundle(Bundle var1, BundleEvent var2, T var3);

    public void removedBundle(Bundle var1, BundleEvent var2, T var3);
}

