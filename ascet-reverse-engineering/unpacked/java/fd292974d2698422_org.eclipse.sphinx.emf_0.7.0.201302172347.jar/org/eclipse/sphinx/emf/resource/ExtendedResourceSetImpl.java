/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
 *  org.eclipse.emf.ecore.resource.impl.ResourceSetImpl$ResourcesEList
 */
package org.eclipse.sphinx.emf.resource;

import java.io.IOException;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;
import org.eclipse.sphinx.emf.internal.resource.URIResourceCacheUpdater;
import org.eclipse.sphinx.emf.util.EcoreResourceUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedResourceSetImpl
extends ResourceSetImpl {
    protected URIResourceCacheUpdater resourceChangeListener = new URIResourceCacheUpdater();

    public ExtendedResourceSetImpl() {
        this.uriResourceMap = new WeakHashMap();
    }

    public Resource getResource(URI uri, boolean loadOnDemand) {
        Resource resource = (Resource)this.getURIResourceMap().get(uri);
        if (resource != null) {
            if (loadOnDemand && !resource.isLoaded()) {
                this.demandLoadHelper(resource);
            }
            return resource;
        }
        Resource delegatedResource = this.delegatedGetResource(uri, loadOnDemand);
        if (delegatedResource != null) {
            this.getURIResourceMap().put(uri, delegatedResource);
            return delegatedResource;
        }
        if (loadOnDemand) {
            resource = this.demandCreateResource(uri);
            if (resource == null) {
                throw new RuntimeException("Cannot create a resource for '" + uri + "'; a registered resource factory is needed");
            }
            this.demandLoadHelper(resource);
            this.getURIResourceMap().put(uri, resource);
            return resource;
        }
        return null;
    }

    protected Resource demandCreateResource(URI uri) {
        String contentTypeId = EcoreResourceUtil.getContentTypeId(uri);
        return this.createResource(uri, contentTypeId);
    }

    protected void demandLoad(Resource resource) throws IOException {
        ArrayList creationErrors = new ArrayList(resource.getErrors());
        ArrayList creationWarnings = new ArrayList(resource.getWarnings());
        super.demandLoad(resource);
        resource.getErrors().addAll(creationErrors);
        resource.getWarnings().addAll(creationWarnings);
    }

    public EList<Resource> getResources() {
        if (this.resources == null) {
            this.resources = new ExtendedResourcesEList();
        }
        return this.resources;
    }

    public int getModCount() {
        return ((ExtendedResourcesEList)this.getResources()).getModCount();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class ExtendedResourcesEList<E>
    extends ResourceSetImpl.ResourcesEList<E> {
        private static final long serialVersionUID = 1L;

        protected ExtendedResourcesEList() {
            super((ResourceSetImpl)ExtendedResourceSetImpl.this);
        }

        public boolean add(E object) {
            return super.add(object);
        }

        public void add(int index, E object) {
            super.add(index, object);
        }

        protected void didAdd(int index, E newObject) {
            super.didAdd(index, newObject);
            ExtendedResourceSetImpl.this.getURIResourceMap().put(((Resource)newObject).getURI(), newObject);
        }

        protected void didRemove(int index, E oldObject) {
            ExtendedResourceSetImpl.this.getURIResourceMap().remove(oldObject);
            super.didRemove(index, oldObject);
        }

        protected void didSet(int index, E newObject, E oldObject) {
            if (newObject != null) {
                ExtendedResourceSetImpl.this.getURIResourceMap().put(((Resource)newObject).getURI(), newObject);
            }
            if (oldObject != null) {
                ExtendedResourceSetImpl.this.getURIResourceMap().remove(oldObject);
            }
        }

        protected void didClear(int size, Object[] oldObjects) {
            ExtendedResourceSetImpl.this.getURIResourceMap().clear();
        }

        protected int getModCount() {
            return this.modCount;
        }
    }
}

