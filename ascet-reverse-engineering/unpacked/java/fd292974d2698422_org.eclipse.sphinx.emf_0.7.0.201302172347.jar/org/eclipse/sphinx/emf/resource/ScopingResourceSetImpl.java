/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.xmi.XMIException
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.eclipse.sphinx.emf.resource;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.internal.messages.Messages;
import org.eclipse.sphinx.emf.internal.resource.ResourceProblemMarkerService;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.model.ModelDescriptorRegistry;
import org.eclipse.sphinx.emf.resource.ExtendedResourceSetImpl;
import org.eclipse.sphinx.emf.resource.ProxyURIIntegrityException;
import org.eclipse.sphinx.emf.resource.ScopingResourceSet;
import org.eclipse.sphinx.emf.scoping.IResourceScope;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.emf.util.EcoreResourceUtil;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ScopingResourceSetImpl
extends ExtendedResourceSetImpl
implements ScopingResourceSet {
    @Override
    public List<Resource> getResourcesInModel(Object contextObject) {
        return this.getResourcesInScope(contextObject, true, false);
    }

    @Override
    public List<Resource> getResourcesInModel(Object contextObject, boolean includeReferencedScopes) {
        return this.getResourcesInScope(contextObject, includeReferencedScopes, false);
    }

    @Override
    public List<Resource> getResourcesInScope(Object contextObject) {
        return this.getResourcesInScope(contextObject, true, true);
    }

    @Override
    public List<Resource> getResourcesInScope(Object contextObject, boolean includeReferencedScopes) {
        return this.getResourcesInScope(contextObject, includeReferencedScopes, true);
    }

    protected List<Resource> getResourcesInScope(Object contextObject, boolean includeReferencedScopes, boolean ignoreMetaModel) {
        Resource contextResource = this.getResource(contextObject);
        if (contextResource == null || this.isPlatformResource(contextResource)) {
            Map<IResourceScope, Set<IMetaModelDescriptor>> contextResourceScopes = this.getResourceScopes(contextObject, contextResource);
            HashSet<Resource> resourcesInScope = new HashSet<Resource>();
            ArrayList<Resource> safeResources = new ArrayList<Resource>((Collection<Resource>)this.getResources());
            block0: for (Resource resource : safeResources) {
                for (IResourceScope contextResourceScope : contextResourceScopes.keySet()) {
                    if (!contextResourceScope.belongsTo(resource, includeReferencedScopes) || !ignoreMetaModel && !this.hasMatchingMetaModel(contextResourceScopes.get(contextResourceScope), resource)) continue;
                    resourcesInScope.add(resource);
                    continue block0;
                }
            }
            return Collections.unmodifiableList(new ArrayList(resourcesInScope));
        }
        IMetaModelDescriptor contextMMDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(contextResource);
        HashSet<Resource> resourcesInScope = new HashSet<Resource>();
        ArrayList<Resource> safeResources = new ArrayList<Resource>((Collection<Resource>)this.getResources());
        for (Resource resource : safeResources) {
            if (this.isPlatformResource(resource) || !ignoreMetaModel && !this.hasMatchingMetaModel(Collections.singleton(contextMMDescriptor), resource)) continue;
            resourcesInScope.add(resource);
        }
        return Collections.unmodifiableList(new ArrayList(resourcesInScope));
    }

    protected Resource getResource(Object object) {
        URI uri = null;
        if (object instanceof IFile) {
            uri = EcorePlatformUtil.createURI(((IFile)object).getFullPath());
        } else if (object instanceof URI) {
            uri = (URI)object;
        }
        Resource resource = null;
        resource = uri != null ? this.getResource(uri.trimFragment(), false) : EcoreResourceUtil.getResource(object);
        return resource;
    }

    protected boolean isPlatformResource(Resource resource) {
        return resource.getURI().isPlatformResource();
    }

    protected Map<IResourceScope, Set<IMetaModelDescriptor>> getResourceScopes(Object object, Resource containerResource) {
        HashMap<IResourceScope, Set<IMetaModelDescriptor>> resourceScopes = new HashMap<IResourceScope, Set<IMetaModelDescriptor>>(1);
        if (object instanceof IContainer) {
            IContainer container = (IContainer)object;
            for (IModelDescriptor modelDescriptor : ModelDescriptorRegistry.INSTANCE.getModels(container)) {
                IResourceScope resourceScope = modelDescriptor.getScope();
                HashSet<IMetaModelDescriptor> mmDescriptors = (HashSet<IMetaModelDescriptor>)resourceScopes.get(resourceScope);
                if (mmDescriptors == null) {
                    mmDescriptors = new HashSet<IMetaModelDescriptor>(1);
                    resourceScopes.put(resourceScope, mmDescriptors);
                }
                mmDescriptors.add(modelDescriptor.getMetaModelDescriptor());
            }
        } else if (object instanceof IModelDescriptor) {
            IModelDescriptor modelDescriptor = (IModelDescriptor)object;
            resourceScopes.put(modelDescriptor.getScope(), Collections.singleton(modelDescriptor.getMetaModelDescriptor()));
        } else if (object instanceof IResourceScope) {
            resourceScopes.put((IResourceScope)object, Collections.singleton(MetaModelDescriptorRegistry.ANY_MM));
        } else {
            IModelDescriptor modelDescriptor = ModelDescriptorRegistry.INSTANCE.getModel(containerResource);
            if (modelDescriptor != null) {
                resourceScopes.put(modelDescriptor.getScope(), Collections.singleton(modelDescriptor.getMetaModelDescriptor()));
            }
        }
        return resourceScopes;
    }

    protected boolean hasMatchingMetaModel(Set<IMetaModelDescriptor> mmDescriptors, Resource resource) {
        Assert.isNotNull(mmDescriptors);
        IMetaModelDescriptor resourceMMDescriptor = MetaModelDescriptorRegistry.INSTANCE.getDescriptor(resource);
        if (resourceMMDescriptor != null) {
            for (IMetaModelDescriptor mmDescriptor : mmDescriptors) {
                if (!mmDescriptor.equals(resourceMMDescriptor) && MetaModelDescriptorRegistry.ANY_MM != mmDescriptor) continue;
                return true;
            }
        }
        return false;
    }

    public EObject getEObject(URI uri, boolean loadOnDemand) {
        return this.getEObjectInScope(uri, loadOnDemand, null);
    }

    @Override
    public EObject getEObjectInScope(URI uri, boolean loadOnDemand, EObject contextObject) {
        if (uri == null) {
            return null;
        }
        if (uri.segmentCount() == 0) {
            List<Resource> resources = this.getResourcesToSearchIn(uri, loadOnDemand, contextObject);
            return this.findEObject(uri, loadOnDemand, resources);
        }
        Resource resource = this.getResource(uri.trimFragment(), false);
        if ((resource == null || !resource.isLoaded()) && loadOnDemand) {
            try {
                resource = this.getResource(uri.trimFragment(), true);
            }
            catch (Exception ex) {
                try {
                    resource = this.getResource(uri.trimFragment(), false);
                    if (resource != null) {
                        EcoreResourceUtil.unloadResource(resource, true);
                        if (EcoreResourceUtil.exists(resource.getURI())) {
                            Throwable cause = ex.getCause();
                            if (cause instanceof XMIException) {
                                resource.getErrors().add((Object)((XMIException)cause));
                            } else {
                                Exception causeEx = cause instanceof Exception ? (Exception)cause : null;
                                resource.getErrors().add((Object)new XMIException(NLS.bind((String)Messages.error_problemOccurredWhenLoadingResource, (Object)uri.toString()), causeEx, uri.toString(), 1, 1));
                            }
                        }
                    } else {
                        PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                    }
                }
                catch (Exception exception) {
                    PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                }
            }
        }
        if (resource != null) {
            block18: {
                if (resource.isLoaded()) {
                    try {
                        if (contextObject != null) {
                            List<Resource> resourcesInScope = this.getResourcesInScope(contextObject, true, true);
                            if (resourcesInScope.contains(resource)) {
                                return resource.getEObject(uri.fragment());
                            }
                            break block18;
                        }
                        return resource.getEObject(uri.fragment());
                    }
                    catch (Exception ex) {
                        resource.getErrors().add((Object)new ProxyURIIntegrityException(NLS.bind((String)Messages.error_problemOccurredWhenResolvingProxyURI, (Object)uri), ex));
                    }
                }
            }
            ResourceProblemMarkerService.INSTANCE.updateProblemMarkers(resource, null);
        }
        return null;
    }

    protected List<Resource> getResourcesToSearchIn(URI uri, boolean loadOnDemand, EObject contextObject) {
        if (contextObject != null) {
            return this.getResourcesInScope(contextObject);
        }
        return Collections.unmodifiableList(this.getResources());
    }

    protected EObject findEObject(URI uri, boolean loadOnDemand, List<Resource> resources) {
        if (uri == null) {
            return null;
        }
        EObject resolvedEObject = null;
        for (Resource resource : resources) {
            try {
                EObject eObject = resource.getEObject(uri.fragment());
                if (eObject == null) continue;
                resolvedEObject = eObject;
                break;
            }
            catch (Exception ex) {
                resource.getErrors().add((Object)new ProxyURIIntegrityException(NLS.bind((String)Messages.error_problemOccurredWhenResolvingProxyURI, (Object)uri), ex));
            }
        }
        ResourceProblemMarkerService.INSTANCE.updateProblemMarkers(resources, null);
        return resolvedEObject;
    }
}

