/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.runtime.registry.model;

import org.eclipse.pde.internal.runtime.registry.model.RegistryModel;

public abstract class ModelObject {
    protected RegistryModel model;

    public void setModel(RegistryModel model) {
        this.model = model;
    }
}

