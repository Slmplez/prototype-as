/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.team.internal.core.mapping;

import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Platform;
import org.eclipse.team.core.history.IFileRevision;
import org.eclipse.team.core.history.provider.FileRevision;
import org.eclipse.team.core.variants.IResourceVariant;

public class ResourceVariantFileRevision
extends FileRevision
implements IAdaptable {
    private final IResourceVariant variant;
    static /* synthetic */ Class class$0;

    public ResourceVariantFileRevision(IResourceVariant variant) {
        this.variant = variant;
    }

    public IStorage getStorage(IProgressMonitor monitor) throws CoreException {
        return this.variant.getStorage(monitor);
    }

    public String getName() {
        return this.variant.getName();
    }

    public String getContentIdentifier() {
        return this.variant.getContentIdentifier();
    }

    public IResourceVariant getVariant() {
        return this.variant;
    }

    public boolean isPropertyMissing() {
        return false;
    }

    public IFileRevision withAllProperties(IProgressMonitor monitor) throws CoreException {
        return this;
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.team.core.variants.IResourceVariant");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return this.variant;
        }
        Object object = Platform.getAdapterManager().getAdapter((Object)this, adapter);
        if (object != null) {
            return object;
        }
        if (this.variant instanceof IAdaptable) {
            IAdaptable adaptable = (IAdaptable)this.variant;
            return adaptable.getAdapter(adapter);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ResourceVariantFileRevision) {
            ResourceVariantFileRevision fileRevision = (ResourceVariantFileRevision)obj;
            return fileRevision.getVariant().equals(this.getVariant());
        }
        return false;
    }

    public int hashCode() {
        return this.getVariant().hashCode();
    }
}

