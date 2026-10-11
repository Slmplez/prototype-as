/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.IObjectManager;
import org.eclipse.core.internal.registry.RegistryObject;

public abstract class Handle {
    protected IObjectManager objectManager;
    private int objectId;

    public int getId() {
        return this.objectId;
    }

    Handle(IObjectManager objectManager, int value) {
        this.objectId = value;
        this.objectManager = objectManager;
    }

    abstract RegistryObject getObject();

    public boolean equals(Object object) {
        if (object instanceof Handle) {
            return this.objectId == ((Handle)object).objectId;
        }
        return false;
    }

    public int hashCode() {
        return this.objectId;
    }
}

