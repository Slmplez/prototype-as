/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.framework.eventmgr.EventDispatcher
 */
package org.eclipse.equinox.internal.provisional.p2.core.eventbus;

import java.util.EventObject;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.ProvisioningListener;
import org.eclipse.osgi.framework.eventmgr.EventDispatcher;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IProvisioningEventBus
extends EventDispatcher<ProvisioningListener, ProvisioningListener, EventObject> {
    public static final String SERVICE_NAME;

    static {
        Class<?> clazz;
        try {
            clazz = Class.forName("org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        SERVICE_NAME = clazz.getName();
    }

    public void addListener(ProvisioningListener var1);

    public void removeListener(ProvisioningListener var1);

    public void publishEvent(EventObject var1);

    public void close();
}

