/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import org.eclipse.pde.internal.core.PDEExtensionRegistry;
import org.eclipse.pde.internal.core.PDERegistryStrategy;

public class TargetPDERegistryStrategy
extends PDERegistryStrategy {
    public TargetPDERegistryStrategy(File[] storageDirs, boolean[] cacheReadOnly, Object key, PDEExtensionRegistry registry) {
        super(storageDirs, cacheReadOnly, key, registry);
    }

    protected void init() {
    }
}

