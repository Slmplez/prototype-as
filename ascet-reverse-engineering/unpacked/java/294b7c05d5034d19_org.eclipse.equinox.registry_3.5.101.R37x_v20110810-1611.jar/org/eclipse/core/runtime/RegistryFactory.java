/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.runtime;

import java.io.File;
import org.eclipse.core.internal.registry.ExtensionRegistry;
import org.eclipse.core.internal.registry.RegistryProviderFactory;
import org.eclipse.core.internal.registry.osgi.RegistryStrategyOSGI;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.spi.IRegistryProvider;
import org.eclipse.core.runtime.spi.RegistryStrategy;

public final class RegistryFactory {
    public static IExtensionRegistry createRegistry(RegistryStrategy strategy, Object masterToken, Object userToken) {
        return new ExtensionRegistry(strategy, masterToken, userToken);
    }

    public static IExtensionRegistry getRegistry() {
        IRegistryProvider defaultRegistryProvider = RegistryProviderFactory.getDefault();
        if (defaultRegistryProvider == null) {
            return null;
        }
        return defaultRegistryProvider.getRegistry();
    }

    public static RegistryStrategy createOSGiStrategy(File[] storageDirs, boolean[] cacheReadOnly, Object token) {
        return new RegistryStrategyOSGI(storageDirs, cacheReadOnly, token);
    }

    public static void setDefaultRegistryProvider(IRegistryProvider provider) throws CoreException {
        RegistryProviderFactory.setDefault(provider);
    }
}

