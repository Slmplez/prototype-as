/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.core;

import java.net.URI;

public interface IAgentLocation {
    public static final String SERVICE_NAME;

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.equinox.p2.core.IAgentLocation");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        SERVICE_NAME = clazz.getName();
    }

    public URI getDataArea(String var1);

    public URI getRootLocation();
}

