/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.sphinx.emf.internal.metamodel;

import org.eclipse.core.resources.IFile;
import org.eclipse.sphinx.emf.internal.metamodel.IFileMetaModelDescriptorCache;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;

public final class InternalMetaModelDescriptorRegistry {
    public static final InternalMetaModelDescriptorRegistry INSTANCE = new InternalMetaModelDescriptorRegistry();

    private InternalMetaModelDescriptorRegistry() {
    }

    public void addCachedDescriptor(IFile file, IMetaModelDescriptor mmDescriptor) {
        IFileMetaModelDescriptorCache cache = (IFileMetaModelDescriptorCache)MetaModelDescriptorRegistry.INSTANCE.getAdapter(IFileMetaModelDescriptorCache.class);
        cache.addDescriptor(file, mmDescriptor);
    }

    public void moveCachedDescriptor(IFile oldFile, IFile newFile) {
        IFileMetaModelDescriptorCache cache = (IFileMetaModelDescriptorCache)MetaModelDescriptorRegistry.INSTANCE.getAdapter(IFileMetaModelDescriptorCache.class);
        cache.moveDescriptor(oldFile, newFile);
    }

    public void removeCachedDescriptor(IFile file) {
        IFileMetaModelDescriptorCache cache = (IFileMetaModelDescriptorCache)MetaModelDescriptorRegistry.INSTANCE.getAdapter(IFileMetaModelDescriptorCache.class);
        cache.removeDescriptor(file);
    }

    public void clearCachedOldDescriptors() {
        IFileMetaModelDescriptorCache cache = (IFileMetaModelDescriptorCache)MetaModelDescriptorRegistry.INSTANCE.getAdapter(IFileMetaModelDescriptorCache.class);
        cache.clearOldDescriptors();
    }
}

