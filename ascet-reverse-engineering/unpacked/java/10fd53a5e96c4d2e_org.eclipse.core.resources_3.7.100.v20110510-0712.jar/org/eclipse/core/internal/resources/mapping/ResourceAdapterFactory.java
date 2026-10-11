/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdapterFactory
 */
package org.eclipse.core.internal.resources.mapping;

import org.eclipse.core.internal.resources.mapping.SimpleResourceMapping;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.mapping.ResourceMapping;
import org.eclipse.core.runtime.IAdapterFactory;

public class ResourceAdapterFactory
implements IAdapterFactory {
    public Object getAdapter(Object adaptableObject, Class adapterType) {
        if (adapterType == ResourceMapping.class && adaptableObject instanceof IResource) {
            return new SimpleResourceMapping((IResource)adaptableObject);
        }
        return null;
    }

    public Class[] getAdapterList() {
        return new Class[]{ResourceMapping.class};
    }
}

