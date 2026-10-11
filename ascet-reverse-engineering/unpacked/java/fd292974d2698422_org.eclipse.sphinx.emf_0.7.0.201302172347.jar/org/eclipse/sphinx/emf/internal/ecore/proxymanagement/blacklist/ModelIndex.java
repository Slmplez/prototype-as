/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.sphinx.emf.internal.ecore.proxymanagement.blacklist;

import java.util.Collection;
import java.util.Collections;
import org.eclipse.core.resources.IProject;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.sphinx.emf.internal.ecore.proxymanagement.blacklist.MapModelIndex;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Deprecated
public class ModelIndex {
    private MapModelIndex mapModelIndex = new MapModelIndex();
    private boolean enabled = true;

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public void clearAll() {
        if (this.enabled) {
            this.mapModelIndex.clearAll();
        }
    }

    public void dispose() {
        this.mapModelIndex.dispose();
    }

    public boolean exists(URI fragmentUri) {
        if (this.enabled) {
            return this.mapModelIndex.exists(fragmentUri);
        }
        return false;
    }

    public boolean existsProxyURI(URI proxyURI) {
        if (this.enabled) {
            return this.mapModelIndex.existsProxyURI(proxyURI);
        }
        return false;
    }

    public boolean addProxyURI(URI proxyURI) {
        if (this.enabled) {
            return this.mapModelIndex.addProxyURI(proxyURI);
        }
        return false;
    }

    public boolean removeProxyURI(URI proxyURI) {
        if (this.enabled) {
            return this.mapModelIndex.removeProxyURI(proxyURI);
        }
        return false;
    }

    public void updateIndexOnResourceLoaded(Resource notifier) {
        if (this.enabled) {
            this.mapModelIndex.updateIndexOnResourceLoaded(notifier);
        }
    }

    public void updateIndexOnResourceUnloaded(Resource notifier) {
        if (this.enabled) {
            this.mapModelIndex.updateIndexOnResourceUnloaded(notifier);
        }
    }

    public Collection<URI> findInstances(EClass eClass, IProject scope) {
        if (this.enabled) {
            return this.mapModelIndex.findInstances(eClass, scope);
        }
        return Collections.emptySet();
    }

    public Collection<URI> findReferencesTo(EObject object, IProject scope) {
        if (this.enabled) {
            return this.mapModelIndex.findReferencesTo(object, scope);
        }
        return Collections.emptySet();
    }

    public void reIndex() throws Exception {
        if (this.enabled) {
            this.mapModelIndex.reIndex();
        }
    }
}

