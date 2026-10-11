/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 */
package org.eclipse.sphinx.emf.model;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.model.IModelDescriptorChangeListener;
import org.eclipse.sphinx.emf.model.ModelDescriptor;
import org.eclipse.sphinx.emf.scoping.IResourceScope;
import org.eclipse.sphinx.emf.scoping.IResourceScopeProvider;
import org.eclipse.sphinx.emf.scoping.ResourceScopeProviderRegistry;
import org.eclipse.sphinx.emf.util.WorkspaceEditingDomainUtil;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModelDescriptorRegistry {
    private ListenerList modelDescriptorChangeListeners = new ListenerList();
    public static ModelDescriptorRegistry INSTANCE = new ModelDescriptorRegistry();
    protected Map<IMetaModelDescriptor, Set<IModelDescriptor>> modelDescriptors = Collections.synchronizedMap(new HashMap());

    private ModelDescriptorRegistry() {
    }

    public void addModel(IFile file) {
        IModelDescriptor modelDescriptor;
        boolean isSynchronized;
        if (!ResourceScopeProviderRegistry.INSTANCE.isNotInAnyScope(file) && (isSynchronized = ExtendedPlatform.isSynchronized((IResource)file)) && (modelDescriptor = this.internalGetModel(file)) == null) {
            this.internalAddModel(file);
        }
    }

    private void internalAddModel(IFile file) {
        IMetaModelDescriptor nativeMMDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(file);
        TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain(file);
        IMetaModelDescriptor effectiveMMDescriptor = MetaModelDescriptorRegistry.INSTANCE.getEffectiveDescriptor(file);
        IResourceScopeProvider resourceScopeProvider = ResourceScopeProviderRegistry.INSTANCE.getResourceScopeProvider(effectiveMMDescriptor);
        IResourceScope resourceScope = null;
        if (resourceScopeProvider != null) {
            resourceScope = resourceScopeProvider.getScope((IResource)file);
        }
        this.internalAddModel(nativeMMDescriptor, editingDomain, resourceScopeProvider, resourceScope);
    }

    public void addModel(Resource resource) {
        IModelDescriptor modelDescriptor = this.internalGetModel(resource);
        if (modelDescriptor == null) {
            this.internalAddModel(resource);
        }
    }

    private void internalAddModel(Resource resource) {
        IMetaModelDescriptor nativeMMDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(resource);
        TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain(resource);
        IMetaModelDescriptor effectiveMMDescriptor = MetaModelDescriptorRegistry.INSTANCE.getEffectiveDescriptor(resource);
        IResourceScopeProvider resourceScopeProvider = ResourceScopeProviderRegistry.INSTANCE.getResourceScopeProvider(effectiveMMDescriptor);
        IResourceScope resourceScope = null;
        if (resourceScopeProvider != null) {
            resourceScope = resourceScopeProvider.getScope(resource);
        }
        this.internalAddModel(nativeMMDescriptor, editingDomain, resourceScopeProvider, resourceScope);
    }

    public void addModel(IMetaModelDescriptor mmDescriptor, TransactionalEditingDomain editingDomain, IResource root) {
        IResourceScopeProvider resourceScopeProvider = ResourceScopeProviderRegistry.INSTANCE.getResourceScopeProvider(mmDescriptor);
        IResourceScope resourceScope = null;
        if (resourceScopeProvider != null) {
            resourceScope = resourceScopeProvider.getScope(root);
        }
        this.internalAddModel(mmDescriptor, editingDomain, resourceScopeProvider, resourceScope);
    }

    private void internalAddModel(IMetaModelDescriptor mmDescriptor, TransactionalEditingDomain editingDomain, IResourceScopeProvider resourceScopeProvider, IResourceScope resourceScope) {
        if (mmDescriptor != null && editingDomain != null && resourceScope != null) {
            this.internalAddModel(mmDescriptor, editingDomain, resourceScope);
            for (IResource referencingRoot : resourceScope.getReferencingRoots()) {
                IResourceScope referencingResourceScope;
                IModelDescriptor referencedModelDescriptor = this.internalGetModel(referencingRoot, mmDescriptor);
                if (referencedModelDescriptor != null || (referencingResourceScope = resourceScopeProvider.getScope(referencingRoot)) == null) continue;
                this.internalAddModel(mmDescriptor, editingDomain, referencingResourceScope);
            }
        }
    }

    private void internalAddModel(IMetaModelDescriptor mmDescriptor, TransactionalEditingDomain editingDomain, IResourceScope resourceScope) {
        ModelDescriptor modelDescriptor;
        Assert.isNotNull((Object)mmDescriptor);
        Assert.isNotNull((Object)editingDomain);
        Assert.isNotNull((Object)resourceScope);
        Set<IModelDescriptor> modelDescriptorsForMetaModelDescriptor = this.modelDescriptors.get(mmDescriptor);
        if (modelDescriptorsForMetaModelDescriptor == null) {
            modelDescriptorsForMetaModelDescriptor = Collections.synchronizedSet(new HashSet(2));
            this.modelDescriptors.put(mmDescriptor, modelDescriptorsForMetaModelDescriptor);
        }
        if (modelDescriptorsForMetaModelDescriptor.add(modelDescriptor = new ModelDescriptor(mmDescriptor, editingDomain, resourceScope))) {
            this.fireModelAdded(modelDescriptor);
        }
    }

    public void addModels(IProject project) {
        if (project != null) {
            Collection files = ExtendedPlatform.getAllFiles((IProject)project, (boolean)false);
            for (IFile file : files) {
                this.addModel(file);
            }
        }
    }

    public IModelDescriptor getModel(IFile file) {
        if (!ResourceScopeProviderRegistry.INSTANCE.isNotInAnyScope(file)) {
            IModelDescriptor model = this.internalGetModel(file);
            if (model == null && this.getOldModel(file) == null) {
                this.internalAddModel(file);
                model = this.internalGetModel(file);
            }
            return model;
        }
        return null;
    }

    private IModelDescriptor internalGetModel(IFile file) {
        Set<IModelDescriptor> modelDescriptorsForMMDescriptor;
        IMetaModelDescriptor mmDescriptor;
        if (file != null && (mmDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(file)) != null && (modelDescriptorsForMMDescriptor = this.modelDescriptors.get(mmDescriptor)) != null) {
            HashSet<IModelDescriptor> unsynchronizedModelDescriptorsForMMDescriptor = new HashSet<IModelDescriptor>(modelDescriptorsForMMDescriptor);
            for (IModelDescriptor modelDescriptor : unsynchronizedModelDescriptorsForMMDescriptor) {
                if (!modelDescriptor.belongsTo(file, false)) continue;
                return modelDescriptor;
            }
        }
        return null;
    }

    public IModelDescriptor getModel(Resource resource) {
        IModelDescriptor model = this.internalGetModel(resource);
        if (model == null && this.getOldModel(resource) == null) {
            this.internalAddModel(resource);
            model = this.internalGetModel(resource);
        }
        return model;
    }

    private IModelDescriptor internalGetModel(Resource resource) {
        Set<IModelDescriptor> modelDescriptorsForMMDescriptor;
        IMetaModelDescriptor mmDescriptor;
        if (resource != null && (mmDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(resource)) != null && (modelDescriptorsForMMDescriptor = this.modelDescriptors.get(mmDescriptor)) != null) {
            HashSet<IModelDescriptor> unsynchronizedModelDescriptorsForMMDescriptor = new HashSet<IModelDescriptor>(modelDescriptorsForMMDescriptor);
            for (IModelDescriptor modelDescriptor : unsynchronizedModelDescriptorsForMMDescriptor) {
                if (!modelDescriptor.belongsTo(resource, false)) continue;
                return modelDescriptor;
            }
        }
        return null;
    }

    public IModelDescriptor getOldModel(IFile file) {
        Set<IModelDescriptor> modelDescriptorsForOldMMDescriptor;
        IMetaModelDescriptor oldMMDescriptor;
        if (file != null && (oldMMDescriptor = MetaModelDescriptorRegistry.INSTANCE.getOldDescriptor(file)) != null && (modelDescriptorsForOldMMDescriptor = this.modelDescriptors.get(oldMMDescriptor)) != null) {
            HashSet<IModelDescriptor> unsynchronizedModelDescriptorsForOldMMDescriptor = new HashSet<IModelDescriptor>(modelDescriptorsForOldMMDescriptor);
            for (IModelDescriptor modelDescriptor : unsynchronizedModelDescriptorsForOldMMDescriptor) {
                if (!modelDescriptor.didBelongTo(file, false)) continue;
                return modelDescriptor;
            }
        }
        return null;
    }

    public IModelDescriptor getOldModel(Resource resource) {
        Set<IModelDescriptor> modelDescriptorsForMMDescriptor;
        IMetaModelDescriptor mmDescriptor;
        if (resource != null && (mmDescriptor = MetaModelDescriptorRegistry.INSTANCE.getOldDescriptor(resource)) != null && (modelDescriptorsForMMDescriptor = this.modelDescriptors.get(mmDescriptor)) != null) {
            HashSet<IModelDescriptor> unsynchronizedModelDescriptorsForMMDescriptor = new HashSet<IModelDescriptor>(modelDescriptorsForMMDescriptor);
            for (IModelDescriptor modelDescriptor : unsynchronizedModelDescriptorsForMMDescriptor) {
                if (!modelDescriptor.didBelongTo(resource, false)) continue;
                return modelDescriptor;
            }
        }
        return null;
    }

    public Collection<IModelDescriptor> getModels(IContainer container) {
        if (container instanceof IFolder) {
            return this.getModels((IFolder)container);
        }
        if (container instanceof IProject) {
            return this.getModels((IProject)container);
        }
        if (container instanceof IWorkspaceRoot) {
            return this.getModels((IWorkspaceRoot)container);
        }
        return Collections.emptyList();
    }

    public Collection<IModelDescriptor> getModels(IContainer container, IMetaModelDescriptor mmFilter) {
        HashSet<IModelDescriptor> filteredModels = new HashSet<IModelDescriptor>();
        for (IModelDescriptor model : this.getModels(container)) {
            IMetaModelDescriptor metaModelDescriptor = model.getMetaModelDescriptor();
            if (metaModelDescriptor == null || !mmFilter.getClass().isInstance(metaModelDescriptor)) continue;
            filteredModels.add(model);
        }
        return filteredModels;
    }

    public Collection<IModelDescriptor> getAllModels() {
        return this.getModels(ResourcesPlugin.getWorkspace().getRoot());
    }

    public Collection<IModelDescriptor> getAllModels(IMetaModelDescriptor mmDescriptor) {
        Set<IModelDescriptor> result = this.modelDescriptors.get(mmDescriptor);
        if (result == null || result.isEmpty()) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableCollection(result);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private IModelDescriptor internalGetModel(IResource root, IMetaModelDescriptor mmDescriptor) {
        if (root != null && mmDescriptor != null) {
            Map<IMetaModelDescriptor, Set<IModelDescriptor>> map;
            Set<IModelDescriptor> modelDescriptorsForMetaModelDescriptor = this.modelDescriptors.get(mmDescriptor);
            if (modelDescriptorsForMetaModelDescriptor == null) {
                map = this.modelDescriptors;
                synchronized (map) {
                    modelDescriptorsForMetaModelDescriptor = new HashSet<IModelDescriptor>();
                    for (IMetaModelDescriptor metaModelDescriptor : this.modelDescriptors.keySet()) {
                        if (!mmDescriptor.getClass().isInstance(metaModelDescriptor)) continue;
                        modelDescriptorsForMetaModelDescriptor.addAll((Collection<IModelDescriptor>)this.modelDescriptors.get(metaModelDescriptor));
                    }
                }
            }
            if (modelDescriptorsForMetaModelDescriptor != null) {
                map = this.modelDescriptors;
                synchronized (map) {
                    for (IModelDescriptor modelDescriptor : modelDescriptorsForMetaModelDescriptor) {
                        if (!modelDescriptor.getRoot().equals((Object)root)) continue;
                        return modelDescriptor;
                    }
                }
            }
        }
        return null;
    }

    private Collection<IModelDescriptor> getModels(IFolder folder) {
        if (folder != null) {
            HashSet<IModelDescriptor> modelDescriptors = new HashSet<IModelDescriptor>(1);
            this.collectModels(folder, modelDescriptors);
            return Collections.unmodifiableCollection(modelDescriptors);
        }
        return Collections.emptyList();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private Collection<IModelDescriptor> getModels(IProject project) {
        if (project != null) {
            HashSet<IModelDescriptor> modelDescriptorsForRoot = new HashSet<IModelDescriptor>();
            Map<IMetaModelDescriptor, Set<IModelDescriptor>> map = this.modelDescriptors;
            synchronized (map) {
                for (Set<IModelDescriptor> modelDescriptorsForMetaModel : this.modelDescriptors.values()) {
                    for (IModelDescriptor modelDescriptor : modelDescriptorsForMetaModel) {
                        if (!modelDescriptor.getRoot().getProject().equals((Object)project)) continue;
                        modelDescriptorsForRoot.add(modelDescriptor);
                    }
                }
                return Collections.unmodifiableCollection(new HashSet(modelDescriptorsForRoot));
            }
        }
        return Collections.emptySet();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private Collection<IModelDescriptor> getModels(IWorkspaceRoot workspaceRoot) {
        HashSet<IModelDescriptor> allModels = new HashSet<IModelDescriptor>();
        Map<IMetaModelDescriptor, Set<IModelDescriptor>> map = this.modelDescriptors;
        synchronized (map) {
            for (Set<IModelDescriptor> modelDescriptorsForMetaModelDescriptor : this.modelDescriptors.values()) {
                allModels.addAll(modelDescriptorsForMetaModelDescriptor);
            }
        }
        return Collections.unmodifiableCollection(allModels);
    }

    private void collectModels(IFolder folder, Set<IModelDescriptor> modelDescriptors) {
        Assert.isNotNull(modelDescriptors);
        IResource[] iResourceArray = ExtendedPlatform.getMembersSafely((IContainer)folder);
        int n = iResourceArray.length;
        int n2 = 0;
        while (n2 < n) {
            IResource resource = iResourceArray[n2];
            switch (resource.getType()) {
                case 1: {
                    IFile file = (IFile)resource;
                    IModelDescriptor modelDescriptor = this.internalGetModel(file);
                    if (modelDescriptor == null) break;
                    modelDescriptors.add(modelDescriptor);
                    break;
                }
                case 2: {
                    this.collectModels((IFolder)resource, modelDescriptors);
                }
            }
            ++n2;
        }
    }

    public void moveModels(IProject oldProject, IProject newProject) {
        for (IModelDescriptor modelDescriptor : this.getModels(oldProject)) {
            this.internalRemoveModel(modelDescriptor);
            this.internalAddModel(modelDescriptor.getMetaModelDescriptor(), modelDescriptor.getEditingDomain(), modelDescriptor.getScope());
        }
    }

    public void removeModel(IFile file) {
        if (ResourceScopeProviderRegistry.INSTANCE.hasApplicableFileExtension(file)) {
            IModelDescriptor modelDescriptor = this.internalGetModel(file);
            if (modelDescriptor == null) {
                modelDescriptor = this.getOldModel(file);
            }
            if (modelDescriptor != null) {
                this.removeModel(modelDescriptor);
            }
        }
    }

    public void removeModel(Resource resource) {
        IModelDescriptor modelDescriptor = this.internalGetModel(resource);
        if (modelDescriptor == null) {
            modelDescriptor = this.getOldModel(resource);
        }
        if (modelDescriptor != null) {
            this.removeModel(modelDescriptor);
        }
    }

    public void removeModel(IModelDescriptor modelDescriptor) {
        if (modelDescriptor != null && (this.isModelEmpty(modelDescriptor) || !modelDescriptor.getScope().exists())) {
            this.internalRemoveModel(modelDescriptor);
            Collection<IResource> referencingRoots = modelDescriptor.getReferencingRoots();
            for (IResource referencingRoot : referencingRoots) {
                IModelDescriptor referencingModelDescriptor = this.internalGetModel(referencingRoot, modelDescriptor.getMetaModelDescriptor());
                if (referencingModelDescriptor == null) continue;
                this.removeModel(referencingModelDescriptor);
            }
        }
    }

    public void removeModels(IContainer container) {
        Collection<IModelDescriptor> modelDescriptorsForContainer = this.getModels(container);
        if (modelDescriptorsForContainer != null) {
            HashSet<IModelDescriptor> modelDescriptorsInProjectSnapshot = new HashSet<IModelDescriptor>(modelDescriptorsForContainer);
            for (IModelDescriptor modelDescriptor : modelDescriptorsInProjectSnapshot) {
                this.removeModel(modelDescriptor);
            }
        }
    }

    private void internalRemoveModel(IModelDescriptor modelDescriptor) {
        Assert.isNotNull((Object)modelDescriptor);
        Set<IModelDescriptor> modelDescriptorsForMetaModelDescriptor = this.modelDescriptors.get(modelDescriptor.getMetaModelDescriptor());
        if (modelDescriptorsForMetaModelDescriptor != null && modelDescriptorsForMetaModelDescriptor.remove(modelDescriptor)) {
            this.fireModelRemoved(modelDescriptor);
            if (modelDescriptorsForMetaModelDescriptor.isEmpty()) {
                this.modelDescriptors.remove(modelDescriptor.getMetaModelDescriptor());
            }
        }
    }

    private boolean isModelEmpty(IModelDescriptor modelDescriptor) {
        if (!modelDescriptor.getRoot().isAccessible()) {
            return true;
        }
        return modelDescriptor.getLoadedResources(true).isEmpty() && modelDescriptor.getPersistedFiles(true).isEmpty();
    }

    private void fireModelAdded(IModelDescriptor modelDescriptor) {
        Object[] objectArray = this.modelDescriptorChangeListeners.getListeners();
        int n = objectArray.length;
        int n2 = 0;
        while (n2 < n) {
            Object listener = objectArray[n2];
            ((IModelDescriptorChangeListener)listener).handleModelAdded(modelDescriptor);
            ++n2;
        }
    }

    private void fireModelRemoved(IModelDescriptor modelDescriptor) {
        Object[] objectArray = this.modelDescriptorChangeListeners.getListeners();
        int n = objectArray.length;
        int n2 = 0;
        while (n2 < n) {
            Object listener = objectArray[n2];
            ((IModelDescriptorChangeListener)listener).handleModelRemoved(modelDescriptor);
            ++n2;
        }
    }

    public void addModelDescriptorChangeListener(IModelDescriptorChangeListener listener) {
        this.modelDescriptorChangeListeners.add((Object)listener);
    }

    public void removeModelDescriptorChangeListener(IModelDescriptorChangeListener listener) {
        this.modelDescriptorChangeListeners.remove((Object)listener);
    }
}

