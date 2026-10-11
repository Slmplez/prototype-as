/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceRegistration
 */
package org.eclipse.equinox.internal.p2.core;

import java.net.URI;
import java.util.Dictionary;
import java.util.Hashtable;
import org.eclipse.equinox.internal.p2.core.ProvisioningAgent;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.IProvisioningAgentProvider;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceRegistration;

public class DefaultAgentProvider
implements IProvisioningAgentProvider {
    private BundleContext context;
    static /* synthetic */ Class class$0;

    public void activate(BundleContext aContext) {
        this.context = aContext;
    }

    public IProvisioningAgent createAgent(URI location) {
        Class<?> clazz;
        ProvisioningAgent result = new ProvisioningAgent();
        result.setBundleContext(this.context);
        result.setLocation(location);
        IAgentLocation agentLocation = (IAgentLocation)result.getService(IAgentLocation.SERVICE_NAME);
        Hashtable<String, Object> properties = new Hashtable<String, Object>(5);
        if (agentLocation != null) {
            ((Dictionary)properties).put("locationURI", String.valueOf(agentLocation.getRootLocation()));
        }
        if (location == null) {
            ((Dictionary)properties).put("service.ranking", new Integer(100));
            ((Dictionary)properties).put("agent.current", Boolean.TRUE.toString());
        }
        if ((clazz = class$0) == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.core.IProvisioningAgent");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceRegistration reg = this.context.registerService((Class)clazz, (Object)result, properties);
        result.setServiceRegistration((ServiceRegistration<IProvisioningAgent>)reg);
        return result;
    }
}

