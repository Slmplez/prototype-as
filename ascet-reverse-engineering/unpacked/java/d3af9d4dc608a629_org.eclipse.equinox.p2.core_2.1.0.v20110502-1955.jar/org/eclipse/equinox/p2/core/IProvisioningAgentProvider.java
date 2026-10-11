/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.core;

import java.net.URI;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;

public interface IProvisioningAgentProvider {
    public static final String SERVICE_NAME;

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.equinox.p2.core.IProvisioningAgentProvider");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        SERVICE_NAME = clazz.getName();
    }

    public IProvisioningAgent createAgent(URI var1) throws ProvisionException;
}

