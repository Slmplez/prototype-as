/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.core.internal.resources.mapping;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.PlatformObject;

public class ShallowContainer
extends PlatformObject {
    private IContainer container;

    public ShallowContainer(IContainer container) {
        this.container = container;
    }

    public IContainer getResource() {
        return this.container;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ShallowContainer) {
            ShallowContainer other = (ShallowContainer)((Object)obj);
            return other.getResource().equals(this.getResource());
        }
        return false;
    }

    public int hashCode() {
        return this.getResource().hashCode();
    }

    public Object getAdapter(Class adapter) {
        if (adapter == IResource.class || adapter == IContainer.class) {
            return this.container;
        }
        return super.getAdapter(adapter);
    }
}

