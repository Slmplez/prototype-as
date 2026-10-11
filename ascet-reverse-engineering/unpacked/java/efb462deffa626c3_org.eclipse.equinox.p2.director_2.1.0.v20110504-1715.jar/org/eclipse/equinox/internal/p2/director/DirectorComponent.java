/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.spi.IAgentServiceFactory
 *  org.eclipse.equinox.p2.engine.IEngine
 */
package org.eclipse.equinox.internal.p2.director;

import org.eclipse.equinox.internal.p2.director.SimpleDirector;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.spi.IAgentServiceFactory;
import org.eclipse.equinox.p2.engine.IEngine;
import org.eclipse.equinox.p2.planner.IPlanner;

public class DirectorComponent
implements IAgentServiceFactory {
    public Object createService(IProvisioningAgent agent) {
        IEngine engine = (IEngine)agent.getService(IEngine.SERVICE_NAME);
        IPlanner planner = (IPlanner)agent.getService(IPlanner.SERVICE_NAME);
        return new SimpleDirector(engine, planner);
    }
}

