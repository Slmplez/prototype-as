/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework;

import org.osgi.framework.Bundle;
import org.osgi.framework.ServiceRegistration;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ServiceFactory<S> {
    public S getService(Bundle var1, ServiceRegistration<S> var2);

    public void ungetService(Bundle var1, ServiceRegistration<S> var2, S var3);
}

