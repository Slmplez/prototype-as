/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
 *  org.eclipse.emf.transaction.NotificationFilter
 *  org.eclipse.emf.transaction.ResourceSetChangeEvent
 *  org.eclipse.emf.transaction.ResourceSetListenerImpl
 */
package org.eclipse.sphinx.emf.internal.resource;

import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.ResourceSetListenerImpl;

public class URIResourceCacheUpdater
extends ResourceSetListenerImpl {
    public URIResourceCacheUpdater() {
        super(NotificationFilter.createFeatureFilter((EClassifier)EcorePackage.eINSTANCE.getEResource(), (int)1));
    }

    public void resourceSetChanged(ResourceSetChangeEvent event) {
        for (Notification notification : event.getNotifications()) {
            this.handleModelResourceMoved((Resource)notification.getNotifier(), (URI)notification.getOldValue(), (URI)notification.getNewValue());
        }
    }

    private void handleModelResourceMoved(Resource resource, URI oldURI, URI newURI) {
        Map uriResourceMap;
        ResourceSet resourceSet = resource.getResourceSet();
        if (resourceSet instanceof ResourceSetImpl && (uriResourceMap = ((ResourceSetImpl)resourceSet).getURIResourceMap()) != null && uriResourceMap.remove(oldURI) != null) {
            uriResourceMap.put(newURI, resource);
        }
    }

    public boolean isPostcommitOnly() {
        return true;
    }
}

