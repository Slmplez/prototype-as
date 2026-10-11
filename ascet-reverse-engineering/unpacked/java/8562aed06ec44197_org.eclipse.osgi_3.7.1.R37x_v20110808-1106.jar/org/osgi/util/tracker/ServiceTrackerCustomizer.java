/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.util.tracker;

import org.osgi.framework.ServiceReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ServiceTrackerCustomizer<S, T> {
    public T addingService(ServiceReference<S> var1);

    public void modifiedService(ServiceReference<S> var1, T var2);

    public void removedService(ServiceReference<S> var1, T var2);
}

