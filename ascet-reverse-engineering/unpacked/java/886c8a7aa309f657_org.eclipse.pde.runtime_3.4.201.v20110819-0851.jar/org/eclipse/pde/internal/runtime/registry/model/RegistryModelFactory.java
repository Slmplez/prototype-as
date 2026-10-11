/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.runtime.registry.model;

import org.eclipse.pde.internal.runtime.registry.model.LocalRegistryBackend;
import org.eclipse.pde.internal.runtime.registry.model.RegistryModel;

public class RegistryModelFactory {
    public static RegistryModel getRegistryModel(String uri) {
        return new RegistryModel(new LocalRegistryBackend());
    }
}

