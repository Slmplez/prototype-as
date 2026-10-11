/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.runtime.registry.model;

import org.eclipse.pde.internal.runtime.registry.model.Bundle;
import org.eclipse.pde.internal.runtime.registry.model.Extension;
import org.eclipse.pde.internal.runtime.registry.model.ExtensionPoint;
import org.eclipse.pde.internal.runtime.registry.model.ServiceRegistration;

public interface BackendChangeListener {
    public void addBundle(Bundle var1);

    public void removeBundle(Bundle var1);

    public void updateBundle(Bundle var1, int var2);

    public void addService(ServiceRegistration var1);

    public void removeService(ServiceRegistration var1);

    public void updateService(ServiceRegistration var1);

    public void addExtensions(Extension[] var1);

    public void removeExtensions(Extension[] var1);

    public void addExtensionPoints(ExtensionPoint[] var1);

    public void removeExtensionPoints(ExtensionPoint[] var1);
}

