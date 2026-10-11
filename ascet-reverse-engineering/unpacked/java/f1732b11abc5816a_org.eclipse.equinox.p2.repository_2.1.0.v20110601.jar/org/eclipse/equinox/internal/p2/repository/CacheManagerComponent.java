/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus
 *  org.eclipse.equinox.p2.core.IAgentLocation
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.spi.IAgentServiceFactory
 */
package org.eclipse.equinox.internal.p2.repository;

import org.eclipse.equinox.internal.p2.repository.CacheManager;
import org.eclipse.equinox.internal.p2.repository.Transport;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.spi.IAgentServiceFactory;

public class CacheManagerComponent
implements IAgentServiceFactory {
    public Object createService(IProvisioningAgent agent) {
        IProvisioningEventBus eventBus = (IProvisioningEventBus)agent.getService(IProvisioningEventBus.SERVICE_NAME);
        CacheManager cache = new CacheManager((IAgentLocation)agent.getService(IAgentLocation.SERVICE_NAME), (Transport)agent.getService(Transport.SERVICE_NAME));
        cache.setEventBus(eventBus);
        return cache;
    }
}

