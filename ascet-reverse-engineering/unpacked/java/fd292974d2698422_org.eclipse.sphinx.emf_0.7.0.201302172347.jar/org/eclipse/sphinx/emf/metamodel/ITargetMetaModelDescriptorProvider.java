/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.sphinx.emf.metamodel;

import org.eclipse.core.resources.IFile;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;

public interface ITargetMetaModelDescriptorProvider {
    public IMetaModelDescriptor getDescriptor(IFile var1);

    public IMetaModelDescriptor getDescriptor(Resource var1);
}

