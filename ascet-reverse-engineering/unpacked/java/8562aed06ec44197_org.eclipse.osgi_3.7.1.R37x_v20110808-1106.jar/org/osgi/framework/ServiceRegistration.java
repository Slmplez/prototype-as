/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework;

import java.util.Dictionary;
import org.osgi.framework.ServiceReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ServiceRegistration<S> {
    public ServiceReference<S> getReference();

    public void setProperties(Dictionary<String, ?> var1);

    public void unregister();
}

