/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.spi.IRegistryProvider;

public final class RegistryProviderFactory {
    private static IRegistryProvider defaultRegistryProvider;

    public static IRegistryProvider getDefault() {
        return defaultRegistryProvider;
    }

    public static void setDefault(IRegistryProvider provider) throws CoreException {
        if (defaultRegistryProvider != null) {
            Status status = new Status(4, "org.eclipse.equinox.registry", 1, RegistryMessages.registry_default_exists, null);
            throw new CoreException((IStatus)status);
        }
        defaultRegistryProvider = provider;
    }

    public static void releaseDefault() {
        defaultRegistryProvider = null;
    }
}

