/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.eclipse.sphinx.emf.internal.ecore.proxymanagement.blacklist;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.internal.ecore.proxymanagement.blacklist.MapResourceDeltaVisitor;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MapModelIndex
implements IResourceChangeListener {
    private Map<String, Object> index = new WeakHashMap<String, Object>();
    private Set<URI> proxyURIs = new HashSet<URI>();
    private MapResourceDeltaVisitor resourceDeltaVisitor = new MapResourceDeltaVisitor();

    public MapModelIndex() {
        this.startListening();
    }

    public void startListening() {
        if (Platform.isRunning()) {
            ResourcesPlugin.getWorkspace().addResourceChangeListener((IResourceChangeListener)this);
        }
    }

    public void stopListening() {
        if (Platform.isRunning()) {
            ResourcesPlugin.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this);
        }
    }

    public void clearAll() {
        this.index.clear();
        this.proxyURIs.clear();
    }

    public void dispose() {
        this.stopListening();
        this.index.clear();
        this.proxyURIs.clear();
    }

    public boolean exists(URI fragmentUri) {
        return false;
    }

    public boolean existsProxyURI(URI proxyURI) {
        return this.proxyURIs.contains(proxyURI);
    }

    public boolean addProxyURI(URI proxyURI) {
        return this.proxyURIs.add(proxyURI);
    }

    public boolean removeProxyURI(URI proxyURI) {
        return this.proxyURIs.remove(proxyURI);
    }

    public void updateIndexOnResourceLoaded(Resource resource) {
        if (resource != null && !resource.getContents().isEmpty()) {
            for (URI proxyURI : new ArrayList<URI>(this.proxyURIs)) {
                try {
                    if (proxyURI.segmentCount() != 0 && !resource.getURI().equals((Object)proxyURI.trimFragment()) || resource.getEObject(proxyURI.fragment()) == null) continue;
                    this.removeProxyURI(proxyURI);
                }
                catch (Exception exception) {}
            }
        }
    }

    public void updateIndexOnResourceUnloaded(Resource resource) {
        if (resource != null) {
            TreeIterator iterator = resource.getAllContents();
            while (iterator.hasNext()) {
                EObject currentObject = (EObject)iterator.next();
                if (!currentObject.eIsProxy() || !this.existsProxyURI(((InternalEObject)currentObject).eProxyURI())) continue;
                this.removeProxyURI(((InternalEObject)currentObject).eProxyURI());
            }
        }
    }

    public Collection<URI> findInstances(EClass class1, IProject scope) {
        return null;
    }

    public Collection<URI> findReferencesTo(EObject object, IProject scope) {
        return null;
    }

    public void resourceChanged(IResourceChangeEvent event) {
        try {
            IResourceDelta delta = event.getDelta();
            if (delta != null) {
                delta.accept((IResourceDeltaVisitor)this.resourceDeltaVisitor);
            }
        }
        catch (CoreException exc) {
            PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)("Error indexing models" + (Object)((Object)exc)));
        }
    }

    public void reIndex() throws Exception {
    }
}

