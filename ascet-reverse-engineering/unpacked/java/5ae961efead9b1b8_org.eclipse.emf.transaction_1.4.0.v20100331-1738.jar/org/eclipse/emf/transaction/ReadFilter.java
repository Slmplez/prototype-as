/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.emf.transaction;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.impl.ResourceSetManager;

class ReadFilter
extends NotificationFilter {
    ReadFilter() {
    }

    public boolean matches(Notification notification) {
        switch (notification.getEventType()) {
            case 9: {
                return true;
            }
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: 
            case 6: {
                Object notifier = notification.getNotifier();
                if (notifier instanceof Resource) {
                    return this.checkResource(notification);
                }
                if (notifier instanceof EObject) {
                    EObject eobject = (EObject)notifier;
                    Object feature = notification.getFeature();
                    if (feature instanceof EReference && ((EReference)feature).isContainer()) {
                        return true;
                    }
                    return this.isLoadingOrUnloading(eobject.eResource());
                }
                return true;
            }
        }
        return true;
    }

    private boolean checkResource(Notification notification) {
        switch (notification.getFeatureID(null)) {
            case 2: {
                return this.isLoadingOrUnloading((Resource)notification.getNotifier());
            }
        }
        return true;
    }

    private boolean isLoadingOrUnloading(Resource res) {
        return ResourceSetManager.getInstance().isLoading(res) || ResourceSetManager.getInstance().isUnloading(res);
    }
}

