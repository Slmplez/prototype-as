/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.transaction.RunnableWithResult
 *  org.eclipse.emf.transaction.RunnableWithResult$Impl
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.emf.transaction.util.TransactionUtil
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.eclipse.sphinx.emf.model;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.transaction.RunnableWithResult;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.util.TransactionUtil;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.resource.ScopingResourceSet;
import org.eclipse.sphinx.emf.scoping.IResourceScope;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModelDescriptor
extends PlatformObject
implements IModelDescriptor {
    protected TransactionalEditingDomain fEditingDomain;
    protected IMetaModelDescriptor fMMDescriptor;
    protected IResourceScope fResourceScope;

    public ModelDescriptor(IMetaModelDescriptor mmDescriptor, TransactionalEditingDomain editingDomain, IResourceScope resourceScope) {
        Assert.isNotNull((Object)mmDescriptor);
        Assert.isNotNull((Object)editingDomain);
        Assert.isNotNull((Object)resourceScope);
        this.fMMDescriptor = mmDescriptor;
        this.fEditingDomain = editingDomain;
        this.fResourceScope = resourceScope;
    }

    @Override
    public IMetaModelDescriptor getMetaModelDescriptor() {
        return this.fMMDescriptor;
    }

    @Override
    public TransactionalEditingDomain getEditingDomain() {
        return this.fEditingDomain;
    }

    @Override
    public IResource getRoot() {
        return this.fResourceScope.getRoot();
    }

    @Override
    public Collection<IResource> getReferencedRoots() {
        return this.fResourceScope.getReferencedRoots();
    }

    @Override
    public IResourceScope getScope() {
        return this.fResourceScope;
    }

    @Override
    public boolean belongsTo(IFile file, boolean includeReferencedScopes) {
        IMetaModelDescriptor mmDescriptor;
        if (file != null && this.fMMDescriptor.equals(mmDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(file))) {
            return this.fResourceScope.belongsTo(file, includeReferencedScopes);
        }
        return false;
    }

    @Override
    public boolean belongsTo(URI uri, boolean includeReferencedScopes) {
        if (uri != null) {
            Resource resource = EcorePlatformUtil.getResource(uri);
            if (resource != null) {
                return this.belongsTo(resource, includeReferencedScopes);
            }
            IFile file = EcorePlatformUtil.getFile(uri);
            return this.belongsTo(file, includeReferencedScopes);
        }
        return false;
    }

    @Override
    public boolean belongsTo(Resource resource, boolean includeReferencedScopes) {
        IMetaModelDescriptor mmDescriptor;
        if (resource != null && this.fMMDescriptor.equals(mmDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(resource))) {
            return this.fResourceScope.belongsTo(resource, includeReferencedScopes);
        }
        return false;
    }

    @Override
    public boolean didBelongTo(IFile file, boolean includeReferencedScopes) {
        IMetaModelDescriptor oldMMDescriptor;
        if (file != null && this.fMMDescriptor.equals(oldMMDescriptor = MetaModelDescriptorRegistry.INSTANCE.getOldDescriptor(file))) {
            return this.fResourceScope.didBelongTo(file, includeReferencedScopes);
        }
        return false;
    }

    @Override
    public boolean didBelongTo(URI uri, boolean includeReferencedScopes) {
        if (uri != null) {
            Resource resource = EcorePlatformUtil.getResource(uri);
            if (resource != null) {
                return this.didBelongTo(resource, includeReferencedScopes);
            }
            IFile file = EcorePlatformUtil.getFile(uri);
            return this.didBelongTo(file, includeReferencedScopes);
        }
        return false;
    }

    @Override
    public boolean didBelongTo(Resource resource, boolean includeReferencedScopes) {
        IMetaModelDescriptor mmDescriptor;
        if (resource != null && this.fMMDescriptor.equals(mmDescriptor = MetaModelDescriptorRegistry.INSTANCE.getOldDescriptor(resource))) {
            return this.fResourceScope.didBelongTo(resource, includeReferencedScopes);
        }
        return false;
    }

    @Override
    public Collection<Resource> getLoadedResources(final boolean includeReferencedScopes) {
        try {
            return (Collection)TransactionUtil.runExclusive((TransactionalEditingDomain)this.fEditingDomain, (RunnableWithResult)new RunnableWithResult.Impl<List<Resource>>(){

                public void run() {
                    ResourceSet resourceSet = ModelDescriptor.this.fEditingDomain.getResourceSet();
                    if (resourceSet instanceof ScopingResourceSet) {
                        this.setResult(((ScopingResourceSet)resourceSet).getResourcesInModel(ModelDescriptor.this, includeReferencedScopes));
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

    public boolean equals(Object object) {
        if (object instanceof ModelDescriptor) {
            ModelDescriptor otherModelDescriptor = (ModelDescriptor)object;
            return this.fMMDescriptor.equals(otherModelDescriptor.fMMDescriptor) && this.fEditingDomain.equals(otherModelDescriptor.fEditingDomain) && this.fResourceScope.equals(otherModelDescriptor.getScope());
        }
        return false;
    }

    public int hashCode() {
        return this.fMMDescriptor.hashCode() + this.fEditingDomain.hashCode() + this.fResourceScope.getRoot().hashCode();
    }

    public String toString() {
        return this.fMMDescriptor + "@" + this.fResourceScope.getRoot().getName();
    }

    @Override
    public Collection<IFile> getPersistedFiles(boolean includeReferencedScopes) {
        HashSet<IFile> persistedFiles = new HashSet<IFile>();
        for (IFile file : this.fResourceScope.getPersistedFiles(includeReferencedScopes)) {
            IMetaModelDescriptor descriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(file);
            if (!this.fMMDescriptor.equals(descriptor)) continue;
            persistedFiles.add(file);
        }
        return Collections.unmodifiableCollection(persistedFiles);
    }

    @Override
    public Collection<IResource> getReferencingRoots() {
        return this.fResourceScope.getReferencingRoots();
    }
}

