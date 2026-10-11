/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.IOperationHistory
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.MultiRule
 *  org.eclipse.emf.common.command.BasicCommandStack
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain
 *  org.eclipse.emf.edit.domain.EditingDomain
 *  org.eclipse.emf.edit.provider.IWrapperItemProvider
 *  org.eclipse.emf.transaction.RunnableWithResult
 *  org.eclipse.emf.transaction.RunnableWithResult$Impl
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.emf.transaction.util.TransactionUtil
 *  org.eclipse.emf.workspace.AbstractEMFOperation
 *  org.eclipse.emf.workspace.util.WorkspaceSynchronizer
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 *  org.eclipse.sphinx.platform.util.ReflectUtil
 *  org.eclipse.sphinx.platform.util.StatusUtil
 */
package org.eclipse.sphinx.emf.util;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.emf.common.command.BasicCommandStack;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.provider.IWrapperItemProvider;
import org.eclipse.emf.transaction.RunnableWithResult;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.util.TransactionUtil;
import org.eclipse.emf.workspace.AbstractEMFOperation;
import org.eclipse.emf.workspace.util.WorkspaceSynchronizer;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.edit.TransientItemProvider;
import org.eclipse.sphinx.emf.internal.messages.Messages;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.model.ModelDescriptorRegistry;
import org.eclipse.sphinx.emf.resource.ModelResourceDescriptor;
import org.eclipse.sphinx.emf.saving.SaveIndicatorUtil;
import org.eclipse.sphinx.emf.util.EcoreResourceUtil;
import org.eclipse.sphinx.emf.util.WorkspaceEditingDomainUtil;
import org.eclipse.sphinx.emf.util.WorkspaceTransactionUtil;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.eclipse.sphinx.platform.util.ReflectUtil;
import org.eclipse.sphinx.platform.util.StatusUtil;
import org.xml.sax.SAXException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class EcorePlatformUtil {
    private EcorePlatformUtil() {
    }

    public static URI createURI(IPath path) {
        Assert.isNotNull((Object)path);
        URI uri = URI.createURI((String)path.toString(), (boolean)true);
        URI convertedURI = EcoreResourceUtil.convertToPlatformResourceURI(uri);
        if (!convertedURI.isPlatformResource()) {
            convertedURI = EcoreResourceUtil.convertToAbsoluteFileURI(convertedURI);
        }
        return convertedURI;
    }

    public static IPath createPath(URI uri) {
        Assert.isNotNull((Object)uri);
        if (uri.isPlatform()) {
            return new Path(uri.toPlatformString(true)).removeTrailingSeparator();
        }
        if (uri.isFile()) {
            return new Path(uri.toFileString()).removeTrailingSeparator();
        }
        return new Path(uri.toString()).removeTrailingSeparator();
    }

    public static URI createAbsoluteFileURI(IPath path) {
        URI uri = EcorePlatformUtil.createURI(path);
        return EcoreResourceUtil.convertToAbsoluteFileURI(uri);
    }

    public static IPath createAbsoluteFileLocation(URI uri) {
        String uriString = (uri = EcoreResourceUtil.convertToAbsoluteFileURI(uri)).isFile() ? uri.toFileString() : uri.toString();
        return new Path(uriString).removeTrailingSeparator();
    }

    public static IPath convertToAbsoluteFileLocation(IPath path) {
        URI uri = EcorePlatformUtil.createAbsoluteFileURI(path);
        String uriString = uri.isFile() ? uri.toFileString() : uri.toString();
        return new Path(uriString).removeTrailingSeparator();
    }

    public static String readModelNamespace(IFile file) {
        if (file != null && file.isAccessible()) {
            URI uri = EcorePlatformUtil.createURI(file.getFullPath());
            return EcoreResourceUtil.readModelNamespace(null, uri);
        }
        return null;
    }

    public static String readTargetNamespace(IFile file) {
        return EcorePlatformUtil.readTargetNamespace(file, null);
    }

    public static String readTargetNamespace(IFile file, String ... targetNamespaceExcludePatterns) {
        if (file != null && file.isAccessible()) {
            URI uri = EcorePlatformUtil.createURI(file.getFullPath());
            return EcoreResourceUtil.readTargetNamespace(null, uri, targetNamespaceExcludePatterns);
        }
        return null;
    }

    public static Collection<String> readRootElementComments(IFile file) {
        if (file != null && file.isAccessible()) {
            URI uri = EcorePlatformUtil.createURI(file.getFullPath());
            return EcoreResourceUtil.readRootElementComments(null, uri);
        }
        return Collections.emptyList();
    }

    public static EObject getModelRoot(IFile file) {
        TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain(file);
        if (editingDomain != null) {
            return EcorePlatformUtil.getModelRoot(editingDomain, file);
        }
        return null;
    }

    public static EObject getModelRoot(final TransactionalEditingDomain editingDomain, final IFile file) {
        if (editingDomain != null && file != null) {
            try {
                return (EObject)TransactionUtil.runExclusive((TransactionalEditingDomain)editingDomain, (RunnableWithResult)new RunnableWithResult.Impl<EObject>(){

                    public void run() {
                        URI uri = EcorePlatformUtil.createURI(file.getFullPath());
                        this.setResult(EcoreResourceUtil.getModelRoot(editingDomain.getResourceSet(), uri));
                    }
                });
            }
            catch (InterruptedException ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
        }
        return null;
    }

    public static EObject loadModelRoot(IFile file) {
        return EcorePlatformUtil.loadModelRoot(file, EcoreResourceUtil.getDefaultLoadOptions());
    }

    public static EObject loadModelRoot(IFile file, Map<?, ?> options) {
        TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain(file);
        if (editingDomain != null) {
            return EcorePlatformUtil.loadModelRoot(editingDomain, file, options);
        }
        return null;
    }

    public static EObject loadModelRoot(TransactionalEditingDomain editingDomain, IFile file) {
        return EcorePlatformUtil.loadModelRoot(editingDomain, file, EcoreResourceUtil.getDefaultLoadOptions());
    }

    public static EObject loadModelRoot(final TransactionalEditingDomain editingDomain, final IFile file, final Map<?, ?> options) {
        if (editingDomain != null && file != null) {
            try {
                return (EObject)TransactionUtil.runExclusive((TransactionalEditingDomain)editingDomain, (RunnableWithResult)new RunnableWithResult.Impl<EObject>(){

                    public void run() {
                        URI uri = EcorePlatformUtil.createURI(file.getFullPath());
                        this.setResult(EcoreResourceUtil.loadModelRoot(editingDomain.getResourceSet(), uri, options));
                    }
                });
            }
            catch (InterruptedException ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
        }
        return null;
    }

    public static boolean isResourceLoaded(final TransactionalEditingDomain editingDomain, final Resource resource) {
        if (editingDomain != null && resource != null) {
            try {
                return (Boolean)TransactionUtil.runExclusive((TransactionalEditingDomain)editingDomain, (RunnableWithResult)new RunnableWithResult.Impl<Boolean>(){

                    public void run() {
                        this.setResult(EcoreResourceUtil.isResourceLoaded(editingDomain.getResourceSet(), resource.getURI()));
                    }
                });
            }
            catch (InterruptedException ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
        }
        return false;
    }

    public static boolean isFileLoaded(IFile file) {
        return WorkspaceEditingDomainUtil.getCurrentEditingDomain(file) != null;
    }

    public static boolean isFileLoaded(final TransactionalEditingDomain editingDomain, final IFile file) {
        if (editingDomain != null && file != null) {
            try {
                return (Boolean)TransactionUtil.runExclusive((TransactionalEditingDomain)editingDomain, (RunnableWithResult)new RunnableWithResult.Impl<Boolean>(){

                    public void run() {
                        URI uri = EcorePlatformUtil.createURI(file.getFullPath());
                        this.setResult(EcoreResourceUtil.isResourceLoaded(editingDomain.getResourceSet(), uri));
                    }
                });
            }
            catch (InterruptedException ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
        }
        return false;
    }

    public static IFile getFile(Object object) {
        if (object instanceof IFile) {
            return (IFile)object;
        }
        if (object instanceof URI) {
            return EcorePlatformUtil.getFile((URI)object);
        }
        if (object instanceof Resource) {
            return EcorePlatformUtil.getFile((Resource)object);
        }
        if (object instanceof EObject) {
            return EcorePlatformUtil.getFile((EObject)object);
        }
        if (object instanceof IWrapperItemProvider) {
            return EcorePlatformUtil.getFile((IWrapperItemProvider)object);
        }
        if (object instanceof FeatureMap.Entry) {
            return EcorePlatformUtil.getFile((FeatureMap.Entry)object);
        }
        if (object instanceof TransientItemProvider) {
            return EcorePlatformUtil.getFile((TransientItemProvider)((Object)object));
        }
        return null;
    }

    public static IFile getFile(URI uri) {
        if (uri != null && Platform.isRunning()) {
            try {
                return (IFile)ReflectUtil.invokeInvisibleMethod(WorkspaceSynchronizer.class, (String)"getFile", (Object[])new Object[]{uri, EcoreResourceUtil.getURIConverter(), false});
            }
            catch (Exception exception) {}
        }
        return null;
    }

    public static IFile getFile(Resource resource) {
        if (resource != null && Platform.isRunning()) {
            return WorkspaceSynchronizer.getFile((Resource)resource);
        }
        return null;
    }

    public static IFile getFile(EObject eObject) {
        if (eObject != null) {
            return EcorePlatformUtil.getFile(eObject.eResource());
        }
        return null;
    }

    public static IFile getFile(IWrapperItemProvider provider) {
        if (provider != null) {
            Object owner = provider.getOwner();
            if (owner instanceof EObject) {
                return EcorePlatformUtil.getFile((EObject)owner);
            }
            Object unwrapped = AdapterFactoryEditingDomain.unwrap((Object)provider);
            return EcorePlatformUtil.getFile(unwrapped);
        }
        return null;
    }

    public static IFile getFile(FeatureMap.Entry entry) {
        Object unwrapped = AdapterFactoryEditingDomain.unwrap((Object)entry);
        return EcorePlatformUtil.getFile(unwrapped);
    }

    public static IFile getFile(TransientItemProvider provider) {
        Notifier target;
        if (provider != null && (target = provider.getTarget()) instanceof EObject) {
            return EcorePlatformUtil.getFile((EObject)target);
        }
        return null;
    }

    public static Resource getResource(Object object) {
        if (object instanceof IFile) {
            return EcorePlatformUtil.getResource((IFile)object);
        }
        if (object instanceof URI) {
            return EcorePlatformUtil.getResource((URI)object);
        }
        if (object instanceof Resource) {
            return (Resource)object;
        }
        if (object instanceof EObject) {
            return EcorePlatformUtil.getResource((EObject)object);
        }
        if (object instanceof IWrapperItemProvider) {
            return EcorePlatformUtil.getResource((IWrapperItemProvider)object);
        }
        if (object instanceof FeatureMap.Entry) {
            return EcorePlatformUtil.getResource((FeatureMap.Entry)object);
        }
        if (object instanceof TransientItemProvider) {
            return EcorePlatformUtil.getResource((TransientItemProvider)((Object)object));
        }
        return null;
    }

    public static Resource getResource(final IFile file) {
        final TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getCurrentEditingDomain(file);
        if (editingDomain != null) {
            try {
                return (Resource)TransactionUtil.runExclusive((TransactionalEditingDomain)editingDomain, (RunnableWithResult)new RunnableWithResult.Impl<Resource>(){

                    public void run() {
                        URI uri = EcorePlatformUtil.createURI(file.getFullPath());
                        this.setResult(editingDomain.getResourceSet().getResource(uri, false));
                    }
                });
            }
            catch (InterruptedException ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
        }
        return null;
    }

    public static Resource getResource(final URI uri) {
        IFile file = EcorePlatformUtil.getFile(uri);
        final TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getCurrentEditingDomain(file);
        if (editingDomain != null) {
            try {
                return (Resource)TransactionUtil.runExclusive((TransactionalEditingDomain)editingDomain, (RunnableWithResult)new RunnableWithResult.Impl<Resource>(){

                    public void run() {
                        this.setResult(editingDomain.getResourceSet().getResource(uri.trimFragment(), false));
                    }
                });
            }
            catch (InterruptedException ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
        }
        return null;
    }

    public static Resource getResource(EObject eObject) {
        return EcoreResourceUtil.getResource(eObject);
    }

    public static Resource getResource(IWrapperItemProvider provider) {
        return EcoreResourceUtil.getResource(provider);
    }

    public static Resource getResource(FeatureMap.Entry entry) {
        return EcoreResourceUtil.getResource(entry);
    }

    public static Resource getResource(TransientItemProvider provider) {
        return EcoreResourceUtil.getResource(provider);
    }

    public static Collection<Resource> getResourcesInModel(Object contextObject, boolean includeReferencedModels) {
        if (contextObject instanceof IModelDescriptor) {
            return EcorePlatformUtil.getResourcesInModel((IModelDescriptor)contextObject, includeReferencedModels);
        }
        if (contextObject instanceof IFile) {
            return EcorePlatformUtil.getResourcesInModel((IFile)contextObject, includeReferencedModels);
        }
        if (contextObject instanceof URI) {
            return EcorePlatformUtil.getResourcesInModel((URI)contextObject, includeReferencedModels);
        }
        if (contextObject instanceof Resource) {
            return EcorePlatformUtil.getResourcesInModel((Resource)contextObject, includeReferencedModels);
        }
        if (contextObject instanceof EObject) {
            return EcorePlatformUtil.getResourcesInModel((EObject)contextObject, includeReferencedModels);
        }
        if (contextObject instanceof IWrapperItemProvider) {
            return EcorePlatformUtil.getResourcesInModel((IWrapperItemProvider)contextObject, includeReferencedModels);
        }
        if (contextObject instanceof FeatureMap.Entry) {
            return EcorePlatformUtil.getResourcesInModel((FeatureMap.Entry)contextObject, includeReferencedModels);
        }
        if (contextObject instanceof TransientItemProvider) {
            return EcorePlatformUtil.getResourcesInModel((TransientItemProvider)((Object)contextObject), includeReferencedModels);
        }
        return Collections.emptyList();
    }

    public static Collection<Resource> getResourcesInModel(IModelDescriptor modelDescriptor, boolean includeReferencedModels) {
        if (modelDescriptor != null) {
            return modelDescriptor.getLoadedResources(includeReferencedModels);
        }
        return Collections.emptySet();
    }

    public static Collection<Resource> getResourcesInModel(IFile contextFile, boolean includeReferencedModels) {
        IModelDescriptor modelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(contextFile);
        if (modelDescriptor != null) {
            return modelDescriptor.getLoadedResources(includeReferencedModels);
        }
        return EcorePlatformUtil.getResourcesInContext(contextFile);
    }

    public static Collection<Resource> getResourcesInModel(URI contextURI, boolean includeReferencedModels) {
        Resource contextResource = EcorePlatformUtil.getResource(contextURI);
        return EcorePlatformUtil.getResourcesInModel(contextResource, includeReferencedModels);
    }

    public static Collection<Resource> getResourcesInModel(Resource contextResource, boolean includeReferencedModels) {
        IModelDescriptor modelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(contextResource);
        if (modelDescriptor != null) {
            return modelDescriptor.getLoadedResources(includeReferencedModels);
        }
        return EcorePlatformUtil.getResourcesInContext(contextResource);
    }

    public static Collection<Resource> getResourcesInModel(EObject contextEObject, boolean includeReferencedModels) {
        Resource contextResource = contextEObject.eResource();
        return EcorePlatformUtil.getResourcesInModel(contextResource, includeReferencedModels);
    }

    public static Collection<Resource> getResourcesInModel(IWrapperItemProvider contextProvider, boolean includeReferencedModels) {
        Resource contextResource = EcorePlatformUtil.getResource(contextProvider);
        return EcorePlatformUtil.getResourcesInModel(contextResource, includeReferencedModels);
    }

    public static Collection<Resource> getResourcesInModel(FeatureMap.Entry contextEntry, boolean includeReferencedModels) {
        Resource contextResource = EcorePlatformUtil.getResource(contextEntry);
        return EcorePlatformUtil.getResourcesInModel(contextResource, includeReferencedModels);
    }

    public static Collection<Resource> getResourcesInModel(TransientItemProvider contextProvider, boolean includeReferencedModels) {
        Resource contextResource = EcorePlatformUtil.getResource(contextProvider);
        return EcorePlatformUtil.getResourcesInModel(contextResource, includeReferencedModels);
    }

    public static Collection<Resource> getResourcesInModels(IContainer contextContainer, IMetaModelDescriptor mmDescriptor, boolean includeReferencedModels) {
        HashSet<Resource> resourcesInModels = new HashSet<Resource>();
        Collection<IModelDescriptor> modelDescriptors = ModelDescriptorRegistry.INSTANCE.getModels(contextContainer, mmDescriptor);
        for (IModelDescriptor modelDescriptor : modelDescriptors) {
            resourcesInModels.addAll(modelDescriptor.getLoadedResources(includeReferencedModels));
        }
        return resourcesInModels;
    }

    public static Collection<Resource> getResourcesInScope(Object contextObject, boolean includeReferencedScopes) {
        if (contextObject instanceof IModelDescriptor) {
            return EcorePlatformUtil.getResourcesInScope((IModelDescriptor)contextObject, includeReferencedScopes);
        }
        if (contextObject instanceof IFile) {
            return EcorePlatformUtil.getResourcesInScope((IFile)contextObject, includeReferencedScopes);
        }
        if (contextObject instanceof URI) {
            return EcorePlatformUtil.getResourcesInScope((URI)contextObject, includeReferencedScopes);
        }
        if (contextObject instanceof Resource) {
            return EcorePlatformUtil.getResourcesInScope((Resource)contextObject, includeReferencedScopes);
        }
        if (contextObject instanceof EObject) {
            return EcorePlatformUtil.getResourcesInScope((EObject)contextObject, includeReferencedScopes);
        }
        if (contextObject instanceof IWrapperItemProvider) {
            return EcorePlatformUtil.getResourcesInScope((IWrapperItemProvider)contextObject, includeReferencedScopes);
        }
        if (contextObject instanceof FeatureMap.Entry) {
            return EcorePlatformUtil.getResourcesInScope((FeatureMap.Entry)contextObject, includeReferencedScopes);
        }
        if (contextObject instanceof TransientItemProvider) {
            return EcorePlatformUtil.getResourcesInScope((TransientItemProvider)((Object)contextObject), includeReferencedScopes);
        }
        return Collections.emptyList();
    }

    public static Collection<Resource> getResourcesInScope(IModelDescriptor modelDescriptor, boolean includeReferencedScopes) {
        if (modelDescriptor != null) {
            TransactionalEditingDomain editingDomain = modelDescriptor.getEditingDomain();
            return modelDescriptor.getScope().getLoadedResources(editingDomain, includeReferencedScopes);
        }
        return Collections.emptySet();
    }

    public static Collection<Resource> getResourcesInScope(IFile contextFile, boolean includeReferencedScopes) {
        IModelDescriptor modelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(contextFile);
        if (modelDescriptor != null) {
            return EcorePlatformUtil.getResourcesInScope(modelDescriptor, includeReferencedScopes);
        }
        return EcorePlatformUtil.getResourcesInContext(contextFile);
    }

    public static Collection<Resource> getResourcesInScope(URI contextURI, boolean includeReferencedScopes) {
        Resource contextResource = EcorePlatformUtil.getResource(contextURI);
        return EcorePlatformUtil.getResourcesInScope(contextResource, includeReferencedScopes);
    }

    public static Collection<Resource> getResourcesInScope(Resource contextResource, boolean includeReferencedScopes) {
        IModelDescriptor modelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(contextResource);
        if (modelDescriptor != null) {
            return EcorePlatformUtil.getResourcesInScope(modelDescriptor, includeReferencedScopes);
        }
        return EcorePlatformUtil.getResourcesInContext(contextResource);
    }

    public static Collection<Resource> getResourcesInScope(EObject contextEObject, boolean includeReferencedScopes) {
        Resource contextResource = contextEObject.eResource();
        return EcorePlatformUtil.getResourcesInScope(contextResource, includeReferencedScopes);
    }

    public static Collection<Resource> getResourcesInScope(IWrapperItemProvider contextProvider, boolean includeReferencedScopes) {
        Resource contextResource = EcorePlatformUtil.getResource(contextProvider);
        return EcorePlatformUtil.getResourcesInScope(contextResource, includeReferencedScopes);
    }

    public static Collection<Resource> getResourcesInScope(FeatureMap.Entry contextEntry, boolean includeReferencedScopes) {
        Resource contextResource = EcorePlatformUtil.getResource(contextEntry);
        return EcorePlatformUtil.getResourcesInScope(contextResource, includeReferencedScopes);
    }

    public static Collection<Resource> getResourcesInScope(TransientItemProvider contextProvider, boolean includeReferencedScopes) {
        Resource contextResource = EcorePlatformUtil.getResource(contextProvider);
        return EcorePlatformUtil.getResourcesInScope(contextResource, includeReferencedScopes);
    }

    public static Collection<Resource> getResourcesInScopes(IContainer contextContainer, boolean includeReferencedScopes) {
        HashSet<Resource> resourcesInScopes = new HashSet<Resource>();
        Collection<IModelDescriptor> modelDescriptors = ModelDescriptorRegistry.INSTANCE.getModels(contextContainer);
        for (IModelDescriptor modelDescriptor : modelDescriptors) {
            resourcesInScopes.addAll(EcorePlatformUtil.getResourcesInScope(modelDescriptor, includeReferencedScopes));
        }
        return resourcesInScopes;
    }

    private static Collection<Resource> getResourcesInContext(Object contextObject) {
        Resource resource = EcoreResourceUtil.getResource(contextObject);
        if (resource != null) {
            ResourceSet resourceSet = resource.getResourceSet();
            if (resourceSet != null) {
                return resourceSet.getResources();
            }
            return Collections.singletonList(resource);
        }
        return Collections.emptySet();
    }

    public static ISchedulingRule createSaveNewSchedulingRule(Collection<ModelResourceDescriptor> modelResourceDescriptors) {
        if (modelResourceDescriptors != null) {
            HashSet<IPath> paths = new HashSet<IPath>();
            for (ModelResourceDescriptor descriptor : modelResourceDescriptors) {
                paths.add(descriptor.getPath());
            }
            return ExtendedPlatform.createSaveNewSchedulingRule(paths);
        }
        return null;
    }

    public static ISchedulingRule createSaveSchedulingRule(Resource resource) {
        if (resource != null) {
            IFile modelFile = EcorePlatformUtil.getFile(resource);
            return ExtendedPlatform.createSaveSchedulingRule((IResource)modelFile);
        }
        return null;
    }

    public static ISchedulingRule createSaveSchedulingRule(Collection<Resource> resources) {
        if (resources != null) {
            if (resources.size() < 500) {
                HashSet<ISchedulingRule> rules = new HashSet<ISchedulingRule>();
                for (Resource resource : resources) {
                    ISchedulingRule schedulingRule = EcorePlatformUtil.createSaveSchedulingRule(resource);
                    if (schedulingRule == null) continue;
                    rules.add(schedulingRule);
                }
                return MultiRule.combine((ISchedulingRule[])rules.toArray(new ISchedulingRule[rules.size()]));
            }
            return ResourcesPlugin.getWorkspace().getRoot();
        }
        return null;
    }

    private static ISchedulingRule createSaveSchedulingRule(Map<TransactionalEditingDomain, Collection<Resource>> resources) {
        if (resources != null) {
            HashSet<Resource> allResources = new HashSet<Resource>();
            for (Collection<Resource> resourcesInEditingDomain : resources.values()) {
                allResources.addAll(resourcesInEditingDomain);
            }
            return EcorePlatformUtil.createSaveSchedulingRule(allResources);
        }
        return null;
    }

    public static void addNewModelResource(TransactionalEditingDomain editingDomain, IPath path, String contentTypeId, EObject modelRoot, boolean async, IProgressMonitor monitor) {
        EcorePlatformUtil.addNewModelResources(editingDomain, Collections.singletonList(new ModelResourceDescriptor(modelRoot, path, contentTypeId)), async, monitor);
    }

    public static void addNewModelResources(final TransactionalEditingDomain editingDomain, final Collection<ModelResourceDescriptor> modelResourceDescriptors, boolean async, IProgressMonitor monitor) {
        if (modelResourceDescriptors != null && editingDomain != null && modelResourceDescriptors.size() > 0) {
            ISchedulingRule rule = EcorePlatformUtil.createSaveNewSchedulingRule(modelResourceDescriptors);
            if (async) {
                Job job = new Job(modelResourceDescriptors.size() == 1 ? Messages.job_addingNewModelResource : Messages.job_addingNewModelResources){

                    public IStatus run(IProgressMonitor monitor) {
                        try {
                            EcorePlatformUtil.runAddNewModelResources(editingDomain, modelResourceDescriptors, monitor);
                            return Status.OK_STATUS;
                        }
                        catch (CoreException ex) {
                            return ex.getStatus();
                        }
                    }
                };
                job.setRule(rule);
                job.setPriority(40);
                job.schedule();
            } else {
                IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

                    public void run(IProgressMonitor monitor) throws CoreException {
                        EcorePlatformUtil.runAddNewModelResources(editingDomain, modelResourceDescriptors, monitor);
                    }
                };
                try {
                    ResourcesPlugin.getWorkspace().run(runnable, rule, 0, monitor);
                }
                catch (CoreException ex) {
                    PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)((Object)ex));
                }
            }
        }
    }

    private static void runAddNewModelResources(final TransactionalEditingDomain editingDomain, final Collection<ModelResourceDescriptor> modelResourceDescriptors, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull((Object)editingDomain);
        Assert.isNotNull(modelResourceDescriptors);
        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (String)(modelResourceDescriptors.size() == 1 ? Messages.task_addingNewModelResource : Messages.task_addingNewModelResources), (int)1);
        Map<String, Object> transactionOptions = WorkspaceTransactionUtil.getDefaultSaveNewTransactionOptions();
        String label = modelResourceDescriptors.size() == 1 ? Messages.operation_addingNewModelResource : Messages.operation_addingNewModelResources;
        AbstractEMFOperation operation = new AbstractEMFOperation(editingDomain, label, transactionOptions){

            protected IStatus doExecute(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
                IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

                    public void run(IProgressMonitor monitor) throws CoreException {
                        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)modelResourceDescriptors.size());
                        for (ModelResourceDescriptor descriptor : modelResourceDescriptors) {
                            progress.subTask(NLS.bind((String)Messages.subtask_addingResource, (Object)descriptor.getPath().toString()));
                            URI uri = URI.createPlatformResourceURI((String)descriptor.getPath().toString(), (boolean)true);
                            EcoreResourceUtil.addNewModelResource(editingDomain.getResourceSet(), uri, descriptor.getContentTypeId(), descriptor.getModelRoot());
                            progress.worked(1);
                        }
                    }
                };
                try {
                    ResourcesPlugin.getWorkspace().run(runnable, null, 1, monitor);
                    return Status.OK_STATUS;
                }
                catch (CoreException ex) {
                    return ex.getStatus();
                }
            }

            public boolean canUndo() {
                return false;
            }
        };
        IOperationHistory history = WorkspaceTransactionUtil.getOperationHistory(editingDomain);
        try {
            history.execute((IUndoableOperation)operation, (IProgressMonitor)progress.newChild(1), null);
        }
        catch (ExecutionException ex) {
            IStatus status = StatusUtil.createErrorStatus((Plugin)Activator.getPlugin(), (Object)((Object)ex));
            throw new CoreException(status);
        }
    }

    public static void saveNewModelResource(TransactionalEditingDomain editingDomain, IPath path, String contentTypeId, EObject modelRoot, boolean async, IProgressMonitor monitor) {
        EcorePlatformUtil.saveNewModelResources(editingDomain, Collections.singletonList(new ModelResourceDescriptor(modelRoot, path, contentTypeId)), EcoreResourceUtil.getDefaultSaveOptions(), async, monitor);
    }

    public static void saveNewModelResources(TransactionalEditingDomain editingDomain, Collection<ModelResourceDescriptor> modelResourceDescriptors, boolean async, IProgressMonitor monitor) {
        EcorePlatformUtil.saveNewModelResources(editingDomain, modelResourceDescriptors, EcoreResourceUtil.getDefaultSaveOptions(), async, monitor);
    }

    public static void saveNewModelResource(TransactionalEditingDomain editingDomain, IPath path, String contentTypeId, EObject modelRoot, Map<?, ?> options, boolean async, IProgressMonitor monitor) {
        EcorePlatformUtil.saveNewModelResources(editingDomain, Collections.singletonList(new ModelResourceDescriptor(modelRoot, path, contentTypeId)), options, async, monitor);
    }

    public static void saveNewModelResources(final TransactionalEditingDomain editingDomain, final Collection<ModelResourceDescriptor> modelResourceDescriptors, final Map<?, ?> options, boolean async, IProgressMonitor monitor) {
        if (modelResourceDescriptors != null && editingDomain != null && modelResourceDescriptors.size() > 0) {
            ISchedulingRule rule = EcorePlatformUtil.createSaveNewSchedulingRule(modelResourceDescriptors);
            if (async) {
                Job job = new Job(modelResourceDescriptors.size() == 1 ? Messages.job_savingNewModelResource : Messages.job_savingNewModelResources){

                    public IStatus run(IProgressMonitor monitor) {
                        try {
                            EcorePlatformUtil.runSaveNewModelResources(editingDomain, modelResourceDescriptors, options, monitor);
                            return Status.OK_STATUS;
                        }
                        catch (CoreException ex) {
                            return ex.getStatus();
                        }
                    }
                };
                job.setRule(rule);
                job.setPriority(40);
                job.schedule();
            } else {
                IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

                    public void run(IProgressMonitor monitor) throws CoreException {
                        EcorePlatformUtil.runSaveNewModelResources(editingDomain, modelResourceDescriptors, options, monitor);
                    }
                };
                try {
                    ResourcesPlugin.getWorkspace().run(runnable, rule, 0, monitor);
                }
                catch (CoreException ex) {
                    PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)((Object)ex));
                }
            }
        }
    }

    private static void runSaveNewModelResources(final TransactionalEditingDomain editingDomain, final Collection<ModelResourceDescriptor> modelResourceDescriptors, final Map<?, ?> options, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull((Object)editingDomain);
        Assert.isNotNull(modelResourceDescriptors);
        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (String)(modelResourceDescriptors.size() == 1 ? Messages.task_savingNewModelResource : Messages.task_savingNewModelResources), (int)1);
        Map<String, Object> transactionOptions = WorkspaceTransactionUtil.getDefaultSaveNewTransactionOptions();
        String label = modelResourceDescriptors.size() == 1 ? Messages.operation_savingNewModelResource : Messages.operation_savingNewModelResources;
        AbstractEMFOperation operation = new AbstractEMFOperation(editingDomain, label, transactionOptions){

            protected IStatus doExecute(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
                IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

                    public void run(IProgressMonitor monitor) throws CoreException {
                        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)modelResourceDescriptors.size());
                        for (ModelResourceDescriptor descriptor : modelResourceDescriptors) {
                            progress.subTask(NLS.bind((String)Messages.subtask_savingResource, (Object)descriptor.getPath().toString()));
                            URI uri = URI.createPlatformResourceURI((String)descriptor.getPath().toString(), (boolean)true);
                            try {
                                EcoreResourceUtil.saveNewModelResource(editingDomain.getResourceSet(), uri, descriptor.getContentTypeId(), descriptor.getModelRoot(), options);
                                SaveIndicatorUtil.setSaved((EditingDomain)editingDomain, descriptor.getModelRoot().eResource());
                            }
                            catch (Exception ex) {
                                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                            }
                            progress.worked(1);
                        }
                    }
                };
                try {
                    ResourcesPlugin.getWorkspace().run(runnable, null, 1, monitor);
                    return Status.OK_STATUS;
                }
                catch (CoreException ex) {
                    return ex.getStatus();
                }
            }

            public boolean canUndo() {
                return false;
            }
        };
        IOperationHistory history = WorkspaceTransactionUtil.getOperationHistory(editingDomain);
        try {
            history.execute((IUndoableOperation)operation, (IProgressMonitor)progress.newChild(1), null);
        }
        catch (ExecutionException ex) {
            IStatus status = StatusUtil.createErrorStatus((Plugin)Activator.getPlugin(), (Object)((Object)ex));
            throw new CoreException(status);
        }
    }

    public static void saveModel(Object contextObject, boolean async, IProgressMonitor monitor) {
        EcorePlatformUtil.saveModel(contextObject, EcoreResourceUtil.getDefaultSaveOptions(), async, monitor);
    }

    public static void saveModel(Object contextObject, final Map<?, ?> options, boolean async, IProgressMonitor monitor) {
        if (contextObject instanceof IProject) {
            EcorePlatformUtil.saveProject((IProject)contextObject, options, async, monitor);
            return;
        }
        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)100);
        ArrayList<Resource> resourcesInModel = new ArrayList<Resource>(EcorePlatformUtil.getResourcesInModel(contextObject, true));
        final Map<TransactionalEditingDomain, Collection<Resource>> resourcesToSave = EcorePlatformUtil.detectResourcesToSave(resourcesInModel, (IProgressMonitor)progress.newChild(async ? 100 : 5));
        if (resourcesToSave.size() > 0) {
            ISchedulingRule rule = EcorePlatformUtil.createSaveSchedulingRule(resourcesToSave);
            if (async) {
                Job job = new Job(Messages.job_savingModel){

                    public IStatus run(IProgressMonitor monitor) {
                        try {
                            EcorePlatformUtil.runSaveModelResources(resourcesToSave, options, monitor);
                            return Status.OK_STATUS;
                        }
                        catch (CoreException ex) {
                            return ex.getStatus();
                        }
                    }
                };
                job.setRule(rule);
                job.setPriority(40);
                job.schedule();
            } else {
                IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

                    public void run(IProgressMonitor monitor) throws CoreException {
                        EcorePlatformUtil.runSaveModelResources(resourcesToSave, options, monitor);
                    }
                };
                try {
                    ResourcesPlugin.getWorkspace().run(runnable, rule, 0, (IProgressMonitor)progress.newChild(95));
                }
                catch (CoreException ex) {
                    PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)((Object)ex));
                }
            }
        }
    }

    public static void saveProject(IProject project, boolean async, IProgressMonitor monitor) {
        EcorePlatformUtil.saveProject(project, EcoreResourceUtil.getDefaultSaveOptions(), async, monitor);
    }

    public static void saveProject(IProject project, final Map<?, ?> options, boolean async, IProgressMonitor monitor) {
        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)100);
        ArrayList<Resource> resourcesInProject = new ArrayList<Resource>(EcorePlatformUtil.getResourcesInScopes((IContainer)project, true));
        final Map<TransactionalEditingDomain, Collection<Resource>> resourcesToSave = EcorePlatformUtil.detectResourcesToSave(resourcesInProject, (IProgressMonitor)progress.newChild(async ? 100 : 5));
        if (resourcesToSave.size() > 0) {
            ISchedulingRule rule = EcorePlatformUtil.createSaveSchedulingRule(resourcesToSave);
            if (async) {
                Job job = new Job(resourcesToSave.size() == 1 ? Messages.job_savingModel : Messages.job_savingModels){

                    public IStatus run(IProgressMonitor monitor) {
                        try {
                            EcorePlatformUtil.runSaveModelResources(resourcesToSave, options, monitor);
                            return Status.OK_STATUS;
                        }
                        catch (CoreException ex) {
                            return ex.getStatus();
                        }
                    }
                };
                job.setRule(rule);
                job.setPriority(40);
                job.schedule();
            } else {
                IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

                    public void run(IProgressMonitor monitor) throws CoreException {
                        EcorePlatformUtil.runSaveModelResources(resourcesToSave, options, monitor);
                    }
                };
                try {
                    ResourcesPlugin.getWorkspace().run(runnable, rule, 0, (IProgressMonitor)progress.newChild(95));
                }
                catch (CoreException ex) {
                    PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)((Object)ex));
                }
            }
        }
    }

    private static Map<TransactionalEditingDomain, Collection<Resource>> detectResourcesToSave(Collection<Resource> resources, IProgressMonitor monitor) {
        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)resources.size());
        HashMap<TransactionalEditingDomain, Collection<Resource>> resourcesToSave = new HashMap<TransactionalEditingDomain, Collection<Resource>>();
        for (Resource resource : resources) {
            TransactionalEditingDomain editingDomain = TransactionUtil.getEditingDomain((Resource)resource);
            if (editingDomain != null && EcorePlatformUtil.isResourceToSave(editingDomain, resource)) {
                HashSet<Resource> resourcesToSaveInEditingDomain = (HashSet<Resource>)resourcesToSave.get(editingDomain);
                if (resourcesToSaveInEditingDomain == null) {
                    resourcesToSaveInEditingDomain = new HashSet<Resource>();
                    resourcesToSave.put(editingDomain, resourcesToSaveInEditingDomain);
                }
                resourcesToSaveInEditingDomain.add(resource);
            }
            progress.worked(1);
        }
        return resourcesToSave;
    }

    private static boolean isResourceToSave(TransactionalEditingDomain editingDomain, Resource contextResource) {
        Assert.isNotNull((Object)editingDomain);
        return !editingDomain.isReadOnly(contextResource) && SaveIndicatorUtil.isDirty((EditingDomain)editingDomain, contextResource);
    }

    private static void runSaveModelResources(final Map<TransactionalEditingDomain, Collection<Resource>> resourcesToSave, final Map<?, ?> options, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull(resourcesToSave);
        final SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)resourcesToSave.size());
        for (final TransactionalEditingDomain editingDomain : resourcesToSave.keySet()) {
            progress.setTaskName(resourcesToSave.get(editingDomain).size() == 1 ? Messages.task_savingModelResource : Messages.task_savingModelResources);
            Map<String, Object> transactionOptions = WorkspaceTransactionUtil.getDefaultSaveTransactionOptions();
            String label = resourcesToSave.get(editingDomain).size() == 1 ? Messages.operation_savingModelResource : Messages.operation_savingModelResources;
            AbstractEMFOperation operation = new AbstractEMFOperation(editingDomain, label, transactionOptions){

                protected IStatus doExecute(IProgressMonitor monitor, IAdaptable info) throws ExecutionException {
                    IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

                        public void run(IProgressMonitor monitor) throws CoreException {
                            SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)((Collection)resourcesToSave.get(editingDomain)).size());
                            for (Resource resource : (Collection)resourcesToSave.get(editingDomain)) {
                                progress.subTask(NLS.bind((String)Messages.subtask_savingResource, (Object)resource.getURI().toString()));
                                try {
                                    EcoreResourceUtil.saveModelResource(resource, options);
                                    SaveIndicatorUtil.setSaved((EditingDomain)editingDomain, resource);
                                }
                                catch (Exception exception) {}
                                progress.worked(1);
                            }
                            ((BasicCommandStack)editingDomain.getCommandStack()).saveIsDone();
                        }
                    };
                    try {
                        ResourcesPlugin.getWorkspace().run(runnable, null, 1, (IProgressMonitor)progress.newChild(1));
                        return Status.OK_STATUS;
                    }
                    catch (CoreException ex) {
                        return ex.getStatus();
                    }
                }

                public boolean canUndo() {
                    return false;
                }
            };
            IOperationHistory history = WorkspaceTransactionUtil.getOperationHistory(editingDomain);
            try {
                history.execute((IUndoableOperation)operation, (IProgressMonitor)progress.newChild(1), null);
            }
            catch (ExecutionException ex) {
                IStatus status = StatusUtil.createErrorStatus((Plugin)Activator.getPlugin(), (Object)((Object)ex));
                throw new CoreException(status);
            }
        }
    }

    public static void unloadFile(IFile file) {
        Collection<TransactionalEditingDomain> editingDomains = WorkspaceEditingDomainUtil.getAllEditingDomains();
        for (TransactionalEditingDomain editingDomain : editingDomains) {
            if (!EcorePlatformUtil.isFileLoaded(editingDomain, file)) continue;
            EcorePlatformUtil.unloadFile(editingDomain, file);
        }
    }

    public static void unloadFile(final TransactionalEditingDomain editingDomain, final IFile file) {
        if (editingDomain != null && file != null) {
            try {
                editingDomain.runExclusive(new Runnable(){

                    public void run() {
                        try {
                            URI uri = EcorePlatformUtil.createURI(file.getFullPath());
                            EcoreResourceUtil.unloadResource(editingDomain.getResourceSet(), uri);
                        }
                        catch (RuntimeException ex) {
                            PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                        }
                    }
                });
            }
            catch (InterruptedException ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
        }
    }

    public static void unloadFiles(final TransactionalEditingDomain editingDomain, final Collection<IFile> files, final boolean memoryOptimized, IProgressMonitor monitor) throws OperationCanceledException {
        if (editingDomain != null && files != null && files.size() > 0) {
            final SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.task_unloadingModelFiles, (int)files.size());
            if (progress.isCanceled()) {
                throw new OperationCanceledException();
            }
            try {
                editingDomain.runExclusive(new Runnable(){

                    public void run() {
                        for (IFile file : files) {
                            progress.subTask(NLS.bind((String)Messages.subtask_unloadingModelFile, (Object)file.getFullPath().toString()));
                            try {
                                URI uri = EcorePlatformUtil.createURI(file.getFullPath());
                                EcoreResourceUtil.unloadResource(editingDomain.getResourceSet(), uri, memoryOptimized);
                            }
                            catch (RuntimeException ex) {
                                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                            }
                            progress.worked(1);
                            if (progress.isCanceled()) {
                                throw new OperationCanceledException();
                            }
                            editingDomain.yield();
                        }
                    }
                });
            }
            catch (InterruptedException ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
        }
    }

    public static void unloadResources(final TransactionalEditingDomain editingDomain, final Collection<Resource> resources, final boolean memoryOptimized, IProgressMonitor monitor) throws OperationCanceledException {
        if (editingDomain != null && resources != null && resources.size() > 0) {
            final SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.task_unloadingModelResources, (int)resources.size());
            if (progress.isCanceled()) {
                throw new OperationCanceledException();
            }
            try {
                editingDomain.runExclusive(new Runnable(){

                    public void run() {
                        ArrayList safeResources = new ArrayList(resources);
                        for (Resource resource : safeResources) {
                            progress.subTask(NLS.bind((String)Messages.subtask_unloadingModelResource, (Object)resource.getURI().toString()));
                            try {
                                if (editingDomain.getResourceSet().getResources().contains((Object)resource)) {
                                    EcoreResourceUtil.unloadResource(resource, memoryOptimized);
                                }
                            }
                            catch (RuntimeException ex) {
                                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                            }
                            progress.worked(1);
                            if (progress.isCanceled()) {
                                throw new OperationCanceledException();
                            }
                            editingDomain.yield();
                        }
                    }
                });
            }
            catch (InterruptedException ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
        }
    }

    public static void unloadAllResources(final TransactionalEditingDomain editingDomain, IProgressMonitor monitor) throws OperationCanceledException {
        if (editingDomain != null) {
            final SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.task_unloadingModelResources, (int)editingDomain.getResourceSet().getResources().size());
            if (progress.isCanceled()) {
                throw new OperationCanceledException();
            }
            try {
                editingDomain.runExclusive(new Runnable(){

                    public void run() {
                        ArrayList safeResources = new ArrayList(editingDomain.getResourceSet().getResources());
                        for (Resource resource : safeResources) {
                            progress.subTask(NLS.bind((String)Messages.subtask_unloadingModelResource, (Object)resource.getURI().toString()));
                            try {
                                EcoreResourceUtil.unloadResource(resource, true);
                            }
                            catch (RuntimeException ex) {
                                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                            }
                            progress.worked(1);
                            if (progress.isCanceled()) {
                                throw new OperationCanceledException();
                            }
                            editingDomain.yield();
                        }
                    }
                });
            }
            catch (InterruptedException ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
        }
    }

    public static void validate(IFile file, URL schemaURL) throws SAXException, IOException {
        Assert.isNotNull((Object)file);
        URI uri = EcorePlatformUtil.createURI(file.getFullPath());
        EcoreResourceUtil.validate(uri, schemaURL);
    }
}

