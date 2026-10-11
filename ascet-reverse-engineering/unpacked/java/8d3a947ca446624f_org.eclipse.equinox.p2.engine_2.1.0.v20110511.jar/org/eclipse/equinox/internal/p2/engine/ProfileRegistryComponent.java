/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus
 *  org.eclipse.equinox.p2.core.IAgentLocation
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.spi.IAgentServiceFactory
 */
package org.eclipse.equinox.internal.p2.engine;

import org.eclipse.equinox.internal.p2.engine.SimpleProfileRegistry;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.spi.IAgentServiceFactory;

public class ProfileRegistryComponent
implements IAgentServiceFactory {
    public Object createService(IProvisioningAgent agent) {
        IAgentLocation location = (IAgentLocation)agent.getService(IAgentLocation.SERVICE_NAME);
        SimpleProfileRegistry registry = new SimpleProfileRegistry(agent, SimpleProfileRegistry.getDefaultRegistryDirectory(location));
        registry.setEventBus((IProvisioningEventBus)agent.getService(IProvisioningEventBus.SERVICE_NAME));
        return registry;
    }
}

