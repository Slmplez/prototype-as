/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.core;

import org.eclipse.equinox.internal.p2.core.ProvisioningEventBus;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.spi.IAgentServiceFactory;

public class EventBusComponent
implements IAgentServiceFactory {
    public Object createService(IProvisioningAgent agent) {
        return new ProvisioningEventBus();
    }
}

