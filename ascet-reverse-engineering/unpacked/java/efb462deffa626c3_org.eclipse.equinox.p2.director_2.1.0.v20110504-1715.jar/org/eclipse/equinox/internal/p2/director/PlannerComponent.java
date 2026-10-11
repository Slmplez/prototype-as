/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.spi.IAgentServiceFactory
 */
package org.eclipse.equinox.internal.p2.director;

import org.eclipse.equinox.internal.p2.director.SimplePlanner;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.spi.IAgentServiceFactory;

public class PlannerComponent
implements IAgentServiceFactory {
    public Object createService(IProvisioningAgent agent) {
        return new SimplePlanner(agent);
    }
}

