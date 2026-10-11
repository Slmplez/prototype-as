/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 */
package org.eclipse.sphinx.emf.internal.metamodel;

import org.eclipse.core.resources.IFile;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;

public interface IFileMetaModelDescriptorCache {
    public void addDescriptor(IFile var1, IMetaModelDescriptor var2);

    public void moveDescriptor(IFile var1, IFile var2);

    public void removeDescriptor(IFile var1);

    public void clearOldDescriptors();
}

