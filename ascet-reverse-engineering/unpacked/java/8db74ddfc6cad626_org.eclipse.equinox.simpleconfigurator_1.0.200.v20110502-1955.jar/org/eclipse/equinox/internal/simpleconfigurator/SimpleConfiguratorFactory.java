/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceFactory
 *  org.osgi.framework.ServiceRegistration
 */
package org.eclipse.equinox.internal.simpleconfigurator;

import org.eclipse.equinox.internal.simpleconfigurator.SimpleConfiguratorImpl;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceFactory;
import org.osgi.framework.ServiceRegistration;

public class SimpleConfiguratorFactory
implements ServiceFactory {
    private BundleContext context;

    public SimpleConfiguratorFactory(BundleContext context) {
        this.context = context;
    }

    public Object getService(Bundle bundle, ServiceRegistration registration) {
        return new SimpleConfiguratorImpl(this.context, bundle);
    }

    public void ungetService(Bundle bundle, ServiceRegistration registration, Object service) {
    }
}

