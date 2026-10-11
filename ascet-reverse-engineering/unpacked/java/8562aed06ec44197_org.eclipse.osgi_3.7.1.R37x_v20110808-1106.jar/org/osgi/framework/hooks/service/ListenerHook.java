/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.hooks.service;

import java.util.Collection;
import org.osgi.framework.BundleContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ListenerHook {
    public void added(Collection<ListenerInfo> var1);

    public void removed(Collection<ListenerInfo> var1);

    public static interface ListenerInfo {
        public BundleContext getBundleContext();

        public String getFilter();

        public boolean isRemoved();

        public boolean equals(Object var1);

        public int hashCode();
    }
}

