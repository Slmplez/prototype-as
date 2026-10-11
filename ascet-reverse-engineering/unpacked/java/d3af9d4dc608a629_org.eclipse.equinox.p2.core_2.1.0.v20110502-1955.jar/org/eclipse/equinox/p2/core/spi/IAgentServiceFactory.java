/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.core.spi;

import org.eclipse.equinox.p2.core.IProvisioningAgent;

public interface IAgentServiceFactory {
    public static final String SERVICE_NAME;
    public static final String PROP_CREATED_SERVICE_NAME = "p2.agent.servicename";

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.equinox.p2.core.spi.IAgentServiceFactory");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        SERVICE_NAME = clazz.getName();
    }

    public Object createService(IProvisioningAgent var1);
}

