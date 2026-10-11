/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.core;

public interface IProvisioningAgent {
    public static final String SERVICE_NAME;
    public static final String INSTALLER_AGENT = "org.eclipse.equinox.p2.installer.agent";
    public static final String INSTALLER_PROFILEID = "org.eclipse.equinox.p2.installer.profile.id";
    public static final String SERVICE_CURRENT = "agent.current";

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.equinox.p2.core.IProvisioningAgent");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        SERVICE_NAME = clazz.getName();
    }

    public Object getService(String var1);

    public void registerService(String var1, Object var2);

    public void stop();

    public void unregisterService(String var1, Object var2);
}

