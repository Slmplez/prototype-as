/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.spi.IAgentServiceFactory
 */
package org.eclipse.equinox.internal.p2.engine;

import org.eclipse.equinox.internal.p2.engine.Engine;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.spi.IAgentServiceFactory;

public class EngineComponent
implements IAgentServiceFactory {
    public Object createService(IProvisioningAgent agent) {
        agent.getService("org.eclipse.equinox.internal.p2.garbagecollector.GarbageCollector");
        return new Engine(agent);
    }
}

