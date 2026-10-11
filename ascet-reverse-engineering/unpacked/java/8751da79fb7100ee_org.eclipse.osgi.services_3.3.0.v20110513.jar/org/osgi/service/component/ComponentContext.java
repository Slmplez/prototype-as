/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 */
package org.osgi.service.component;

import java.util.Dictionary;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.service.component.ComponentInstance;

public interface ComponentContext {
    public Dictionary getProperties();

    public Object locateService(String var1);

    public Object locateService(String var1, ServiceReference var2);

    public Object[] locateServices(String var1);

    public BundleContext getBundleContext();

    public Bundle getUsingBundle();

    public ComponentInstance getComponentInstance();

    public void enableComponent(String var1);

    public void disableComponent(String var1);

    public ServiceReference getServiceReference();
}

