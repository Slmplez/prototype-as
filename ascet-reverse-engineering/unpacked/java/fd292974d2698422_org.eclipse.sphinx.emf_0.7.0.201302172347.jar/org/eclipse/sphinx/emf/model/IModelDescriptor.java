/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 */
package org.eclipse.sphinx.emf.model;

import java.util.Collection;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.scoping.IResourceScope;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IModelDescriptor
extends IAdaptable {
    public IMetaModelDescriptor getMetaModelDescriptor();

    public TransactionalEditingDomain getEditingDomain();

    public IResource getRoot();

    public IResourceScope getScope();

    public Collection<IResource> getReferencedRoots();

    public Collection<IResource> getReferencingRoots();

    public boolean belongsTo(IFile var1, boolean var2);

    public boolean belongsTo(URI var1, boolean var2);

    public boolean belongsTo(Resource var1, boolean var2);

    public boolean didBelongTo(IFile var1, boolean var2);

    public boolean didBelongTo(URI var1, boolean var2);

    public boolean didBelongTo(Resource var1, boolean var2);

    public Collection<Resource> getLoadedResources(boolean var1);

    public Collection<IFile> getPersistedFiles(boolean var1);
}

