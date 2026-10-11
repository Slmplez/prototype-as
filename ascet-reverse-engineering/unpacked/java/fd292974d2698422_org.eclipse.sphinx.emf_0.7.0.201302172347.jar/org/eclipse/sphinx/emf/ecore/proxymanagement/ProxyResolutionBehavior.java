/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package org.eclipse.sphinx.emf.ecore.proxymanagement;

import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.sphinx.emf.internal.ecore.proxymanagement.ProxyHelper;
import org.eclipse.sphinx.emf.internal.ecore.proxymanagement.ProxyHelperAdapterFactory;
import org.eclipse.sphinx.emf.resource.ScopingResourceSet;

public class ProxyResolutionBehavior {
    public static final ProxyResolutionBehavior INSTANCE = new ProxyResolutionBehavior();

    protected ProxyResolutionBehavior() {
    }

    public EObject eResolveProxy(EObject contextObject, EObject proxy) {
        ResourceSet resourceSet;
        if (proxy == null) {
            return null;
        }
        if (this.isNoProxy(proxy)) {
            return proxy;
        }
        Resource resource = contextObject.eResource();
        if (resource != null && (resourceSet = resource.getResourceSet()) != null) {
            return this.eResolveProxyInResourceSet(resourceSet, contextObject, proxy);
        }
        return EcoreUtil.resolve((EObject)proxy, (EObject)contextObject);
    }

    protected boolean isNoProxy(EObject proxy) {
        return ((InternalEObject)proxy).eProxyURI() == null;
    }

    protected EObject eResolveProxyInResourceSet(ResourceSet resourceSet, EObject contextObject, EObject proxy) {
        EObject resolvedEObject;
        Assert.isNotNull((Object)resourceSet);
        Assert.isNotNull((Object)proxy);
        URI proxyURI = ((InternalEObject)proxy).eProxyURI();
        ProxyHelper proxyHelper = ProxyHelperAdapterFactory.INSTANCE.adapt((Notifier)resourceSet);
        if (proxyHelper != null) {
            if (proxyHelper.getBlackList().existsProxyURI(proxyURI)) {
                return proxy;
            }
            if (proxyURI.segmentCount() == 0) {
                if (proxyURI.segmentCount() == 0 && proxyHelper.getLookupResolver().isAvailable() && (resolvedEObject = proxyHelper.getLookupResolver().get(proxyURI)) != null) {
                    return resolvedEObject;
                }
                if (proxyHelper.isIgnoreFragmentBasedProxies()) {
                    return proxy;
                }
            }
        }
        if (resourceSet instanceof ScopingResourceSet ? (resolvedEObject = ((ScopingResourceSet)resourceSet).getEObjectInScope(proxyURI, true, contextObject)) != null : (resolvedEObject = resourceSet.getEObject(proxyURI, true)) != proxy) {
            return resolvedEObject;
        }
        if (proxyHelper != null) {
            proxyHelper.getBlackList().addProxyURI(proxyURI);
        }
        return proxy;
    }
}

