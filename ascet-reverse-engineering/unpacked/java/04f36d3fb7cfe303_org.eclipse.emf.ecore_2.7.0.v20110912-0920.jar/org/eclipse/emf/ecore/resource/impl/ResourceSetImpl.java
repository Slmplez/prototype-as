/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.NotifierImpl
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.common.util.WrappedException
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.NotifierImpl;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EPackageRegistryImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.resource.impl.ExtensibleURIConverterImpl;
import org.eclipse.emf.ecore.resource.impl.ResourceFactoryRegistryImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.util.NotifyingInternalEListImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceSetImpl
extends NotifierImpl
implements ResourceSet {
    protected EList<Resource> resources;
    protected EList<AdapterFactory> adapterFactories;
    protected Map<Object, Object> loadOptions;
    protected Resource.Factory.Registry resourceFactoryRegistry;
    protected URIConverter uriConverter;
    protected EPackage.Registry packageRegistry;
    protected Map<URI, Resource> uriResourceMap;

    public Map<URI, Resource> getURIResourceMap() {
        return this.uriResourceMap;
    }

    public void setURIResourceMap(Map<URI, Resource> uriResourceMap) {
        this.uriResourceMap = uriResourceMap;
    }

    @Override
    public EList<Resource> getResources() {
        if (this.resources == null) {
            this.resources = new ResourcesEList<Resource>();
        }
        return this.resources;
    }

    @Override
    public TreeIterator<Notifier> getAllContents() {
        TreeIterator result = EcoreUtil.getAllContents(Collections.singleton(this));
        result.next();
        return result;
    }

    @Override
    public EList<AdapterFactory> getAdapterFactories() {
        if (this.adapterFactories == null) {
            this.adapterFactories = new BasicEList<AdapterFactory>(){
                private static final long serialVersionUID = 1L;

                protected boolean useEquals() {
                    return false;
                }

                protected boolean isUnique() {
                    return true;
                }

                protected Object[] newData(int capacity) {
                    return new AdapterFactory[capacity];
                }
            };
        }
        return this.adapterFactories;
    }

    @Override
    public Map<Object, Object> getLoadOptions() {
        if (this.loadOptions == null) {
            this.loadOptions = new HashMap<Object, Object>();
        }
        return this.loadOptions;
    }

    @Override
    public EObject getEObject(URI uri, boolean loadOnDemand) {
        Resource resource = this.getResource(uri.trimFragment(), loadOnDemand);
        if (resource != null) {
            return resource.getEObject(uri.fragment());
        }
        return null;
    }

    protected Resource demandCreateResource(URI uri) {
        return this.createResource(uri, "");
    }

    protected void demandLoad(Resource resource) throws IOException {
        resource.load(this.getLoadOptions());
    }

    protected void demandLoadHelper(Resource resource) {
        try {
            this.demandLoad(resource);
        }
        catch (IOException exception) {
            this.handleDemandLoadException(resource, exception);
        }
    }

    protected void handleDemandLoadException(Resource resource, IOException exception) throws RuntimeException {
        String location = resource.getURI() == null ? null : resource.getURI().toString();
        IOException cause = exception instanceof Resource.IOWrappedException ? (Exception)exception.getCause() : exception;
        class DiagnosticWrappedException
        extends WrappedException
        implements Resource.Diagnostic {
            private static final long serialVersionUID = 1L;
            private final /* synthetic */ String val$location;

            public DiagnosticWrappedException(Exception exception, String string) {
                this.val$location = string;
                super(exception);
            }

            public String getLocation() {
                return this.val$location;
            }

            public int getColumn() {
                return 0;
            }

            public int getLine() {
                return 0;
            }
        }
        DiagnosticWrappedException wrappedException = new DiagnosticWrappedException(cause, location);
        if (resource.getErrors().isEmpty()) {
            resource.getErrors().add((Object)(exception instanceof Resource.Diagnostic ? (Resource.Diagnostic)((Object)exception) : wrappedException));
        }
        throw wrappedException;
    }

    protected Resource delegatedGetResource(URI uri, boolean loadOnDemand) {
        EPackage ePackage = this.getPackageRegistry().getEPackage(uri.toString());
        return ePackage == null ? null : ePackage.eResource();
    }

    @Override
    public Resource getResource(URI uri, boolean loadOnDemand) {
        Resource resource;
        Map<URI, Resource> map = this.getURIResourceMap();
        if (map != null && (resource = map.get(uri)) != null) {
            if (loadOnDemand && !resource.isLoaded()) {
                this.demandLoadHelper(resource);
            }
            return resource;
        }
        URIConverter theURIConverter = this.getURIConverter();
        URI normalizedURI = theURIConverter.normalize(uri);
        for (Resource resource2 : this.getResources()) {
            if (!theURIConverter.normalize(resource2.getURI()).equals((Object)normalizedURI)) continue;
            if (loadOnDemand && !resource2.isLoaded()) {
                this.demandLoadHelper(resource2);
            }
            if (map != null) {
                map.put(uri, resource2);
            }
            return resource2;
        }
        Resource delegatedResource = this.delegatedGetResource(uri, loadOnDemand);
        if (delegatedResource != null) {
            if (map != null) {
                map.put(uri, delegatedResource);
            }
            return delegatedResource;
        }
        if (loadOnDemand) {
            Resource resource3 = this.demandCreateResource(uri);
            if (resource3 == null) {
                throw new RuntimeException("Cannot create a resource for '" + uri + "'; a registered resource factory is needed");
            }
            this.demandLoadHelper(resource3);
            if (map != null) {
                map.put(uri, resource3);
            }
            return resource3;
        }
        return null;
    }

    @Override
    public Resource createResource(URI uri) {
        return this.createResource(uri, null);
    }

    @Override
    public Resource createResource(URI uri, String contentType) {
        Resource.Factory resourceFactory = this.getResourceFactoryRegistry().getFactory(uri, contentType);
        if (resourceFactory != null) {
            Resource result = resourceFactory.createResource(uri);
            this.getResources().add((Object)result);
            return result;
        }
        return null;
    }

    @Override
    public Resource.Factory.Registry getResourceFactoryRegistry() {
        if (this.resourceFactoryRegistry == null) {
            this.resourceFactoryRegistry = new ResourceFactoryRegistryImpl(){

                @Override
                protected Resource.Factory delegatedGetFactory(URI uri, String contentTypeIdentifier) {
                    return 2.convert(this.getFactory(uri, Resource.Factory.Registry.INSTANCE.getProtocolToFactoryMap(), Resource.Factory.Registry.INSTANCE.getExtensionToFactoryMap(), Resource.Factory.Registry.INSTANCE.getContentTypeToFactoryMap(), contentTypeIdentifier, false));
                }

                @Override
                protected URIConverter getURIConverter() {
                    return ResourceSetImpl.this.getURIConverter();
                }

                @Override
                protected Map<?, ?> getContentDescriptionOptions() {
                    return ResourceSetImpl.this.getLoadOptions();
                }
            };
        }
        return this.resourceFactoryRegistry;
    }

    @Override
    public void setResourceFactoryRegistry(Resource.Factory.Registry resourceFactoryRegistry) {
        this.resourceFactoryRegistry = resourceFactoryRegistry;
    }

    @Override
    public URIConverter getURIConverter() {
        if (this.uriConverter == null) {
            this.uriConverter = new ExtensibleURIConverterImpl();
        }
        return this.uriConverter;
    }

    @Override
    public void setURIConverter(URIConverter uriConverter) {
        this.uriConverter = uriConverter;
    }

    @Override
    public EPackage.Registry getPackageRegistry() {
        if (this.packageRegistry == null) {
            this.packageRegistry = new EPackageRegistryImpl(EPackage.Registry.INSTANCE);
        }
        return this.packageRegistry;
    }

    @Override
    public void setPackageRegistry(EPackage.Registry packageRegistry) {
        this.packageRegistry = packageRegistry;
    }

    public String toString() {
        return String.valueOf(this.getClass().getName()) + '@' + Integer.toHexString(this.hashCode()) + " resources=" + (this.resources == null ? "[]" : this.resources.toString());
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class ResourcesEList<E>
    extends NotifyingInternalEListImpl<E>
    implements InternalEList<E> {
        private static final long serialVersionUID = 1L;

        protected ResourcesEList() {
        }

        protected boolean isNotificationRequired() {
            return ResourceSetImpl.this.eNotificationRequired();
        }

        protected Object[] newData(int capacity) {
            return new Resource[capacity];
        }

        public Object getNotifier() {
            return ResourceSetImpl.this;
        }

        public int getFeatureID() {
            return 0;
        }

        protected boolean useEquals() {
            return false;
        }

        protected boolean hasInverse() {
            return true;
        }

        protected boolean isUnique() {
            return true;
        }

        protected NotificationChain inverseAdd(E object, NotificationChain notifications) {
            Resource.Internal resource = (Resource.Internal)object;
            return resource.basicSetResourceSet(ResourceSetImpl.this, notifications);
        }

        protected NotificationChain inverseRemove(E object, NotificationChain notifications) {
            Resource.Internal resource = (Resource.Internal)object;
            Map<URI, Resource> map = ResourceSetImpl.this.getURIResourceMap();
            if (map != null) {
                Iterator<Resource> i = map.values().iterator();
                while (i.hasNext()) {
                    if (resource != i.next()) continue;
                    i.remove();
                }
            }
            return resource.basicSetResourceSet(null, notifications);
        }

        public boolean contains(Object object) {
            return this.size <= 4 ? super.contains(object) : object instanceof Resource && ((Resource)object).getResourceSet() == ResourceSetImpl.this;
        }
    }
}

