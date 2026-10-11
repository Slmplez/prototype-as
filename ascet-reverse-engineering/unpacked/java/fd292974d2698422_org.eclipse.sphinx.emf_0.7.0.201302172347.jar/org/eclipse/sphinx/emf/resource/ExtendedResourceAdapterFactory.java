/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.sphinx.emf.resource;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.sphinx.emf.resource.ExtendedResource;
import org.eclipse.sphinx.emf.resource.ExtendedResourceAdapter;

public class ExtendedResourceAdapterFactory
extends AdapterFactoryImpl {
    public static ExtendedResourceAdapterFactory INSTANCE = new ExtendedResourceAdapterFactory();

    protected ExtendedResourceAdapterFactory() {
    }

    public boolean isFactoryForType(Object type) {
        return type == ExtendedResource.class;
    }

    public ExtendedResource adapt(Notifier target) {
        if (target != null) {
            return (ExtendedResource)this.adapt(target, ExtendedResource.class);
        }
        return null;
    }

    protected Adapter createAdapter(Notifier target) {
        if (target instanceof Resource) {
            return new ExtendedResourceAdapter();
        }
        return null;
    }
}

