/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.transaction.RunnableWithResult
 *  org.eclipse.emf.transaction.RunnableWithResult$Impl
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.emf.transaction.util.TransactionUtil
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.eclipse.sphinx.emf.scoping;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.transaction.RunnableWithResult;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.util.TransactionUtil;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.resource.ScopingResourceSet;
import org.eclipse.sphinx.emf.scoping.IResourceScope;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractResourceScope
implements IResourceScope {
    @Override
    public boolean exists() {
        return this.getRoot() != null && this.getRoot().isAccessible();
    }

    @Override
    public Collection<Resource> getLoadedResources(final TransactionalEditingDomain editingDomain, final boolean includeReferencedScopes) {
        try {
            return (Collection)TransactionUtil.runExclusive((TransactionalEditingDomain)editingDomain, (RunnableWithResult)new RunnableWithResult.Impl<List<Resource>>(){

                public void run() {
                    ResourceSet resourceSet = editingDomain.getResourceSet();
                    if (resourceSet instanceof ScopingResourceSet) {
                        this.setResult(((ScopingResourceSet)resourceSet).getResourcesInScope(AbstractResourceScope.this, includeReferencedScopes));
                    } else {
                        this.setResult(resourceSet.getResources());
                    }
                }
            });
        }
        catch (InterruptedException ex) {
            PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            return Collections.emptyList();
        }
    }

    @Override
    public Collection<IFile> getPersistedFiles(boolean includeReferencedScopes) {
        HashSet<IFile> files = new HashSet<IFile>();
        files.addAll(this.getFilesUnderRoot(this.getRoot()));
        if (includeReferencedScopes) {
            Collection<IResource> dependingRoots = this.getReferencedRoots();
            for (IResource dependingRoot : dependingRoots) {
                files.addAll(this.getFilesUnderRoot(dependingRoot));
            }
        }
        return Collections.unmodifiableCollection(files);
    }

    protected Collection<IFile> getFilesUnderRoot(IResource root) {
        HashSet<IFile> files = new HashSet<IFile>();
        if (root instanceof IProject) {
            IProject project = (IProject)root;
            files.addAll(ExtendedPlatform.getAllFiles((IProject)project, (boolean)false));
        } else if (root instanceof IFile) {
            files.add((IFile)root);
        } else if (root instanceof IFolder) {
            IFolder folder = (IFolder)root;
            files.addAll(ExtendedPlatform.getAllFiles((IFolder)folder));
        }
        return files;
    }

    public boolean equals(Object object) {
        if (object instanceof IResourceScope) {
            return ((IResourceScope)object).getRoot().equals((Object)this.getRoot()) && object.getClass().equals(this.getClass());
        }
        return false;
    }

    public int hashCode() {
        return this.getRoot().hashCode() + this.getClass().hashCode();
    }

    public String toString() {
        return String.valueOf(this.getClass().getName()) + "[" + this.getRoot().getName() + "]";
    }
}

