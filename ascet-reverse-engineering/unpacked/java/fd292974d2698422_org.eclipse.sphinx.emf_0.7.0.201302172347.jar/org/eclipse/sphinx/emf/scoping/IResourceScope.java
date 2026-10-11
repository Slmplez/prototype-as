/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 */
package org.eclipse.sphinx.emf.scoping;

import java.util.Collection;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.transaction.TransactionalEditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IResourceScope {
    public IResource getRoot();

    public boolean exists();

    public boolean belongsTo(IFile var1, boolean var2);

    public boolean belongsTo(Resource var1, boolean var2);

    public boolean belongsTo(URI var1, boolean var2);

    public boolean didBelongTo(IFile var1, boolean var2);

    public boolean didBelongTo(Resource var1, boolean var2);

    public boolean didBelongTo(URI var1, boolean var2);

    public Collection<IResource> getReferencedRoots();

    public Collection<IResource> getReferencingRoots();

    public Collection<IFile> getPersistedFiles(boolean var1);

    public Collection<Resource> getLoadedResources(TransactionalEditingDomain var1, boolean var2);
}

