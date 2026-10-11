/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.sphinx.emf.metamodel.providers;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.metamodel.providers.IMetaModelDescriptorProvider;

public class EObjectMetaModelDescriptorProvider
implements IMetaModelDescriptorProvider {
    private EObject fContextEObject;

    private EObjectMetaModelDescriptorProvider(EObject contextEObject) {
        this.fContextEObject = contextEObject;
    }

    public static IMetaModelDescriptorProvider createMetaModelDescriptorProviderFor(EObject contextEObject) {
        return new EObjectMetaModelDescriptorProvider(contextEObject);
    }

    public IMetaModelDescriptor getMetaModelDescriptor() {
        return MetaModelDescriptorRegistry.INSTANCE.getDescriptor(this.fContextEObject);
    }
}

