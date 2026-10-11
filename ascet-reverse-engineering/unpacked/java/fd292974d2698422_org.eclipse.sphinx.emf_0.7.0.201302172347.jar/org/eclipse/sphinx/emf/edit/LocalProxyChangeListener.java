/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.transaction.NotificationFilter
 *  org.eclipse.emf.transaction.ResourceSetChangeEvent
 *  org.eclipse.emf.transaction.ResourceSetListenerImpl
 */
package org.eclipse.sphinx.emf.edit;

import java.util.List;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.ResourceSetChangeEvent;
import org.eclipse.emf.transaction.ResourceSetListenerImpl;
import org.eclipse.sphinx.emf.util.EObjectUtil;

public class LocalProxyChangeListener
extends ResourceSetListenerImpl {
    public LocalProxyChangeListener() {
        super(NotificationFilter.createEventTypeFilter((int)5).or(NotificationFilter.createEventTypeFilter((int)6).or(NotificationFilter.createEventTypeFilter((int)3).or(NotificationFilter.createEventTypeFilter((int)4).or(NotificationFilter.createEventTypeFilter((int)1).or(NotificationFilter.createEventTypeFilter((int)2)))))));
    }

    public void resourceSetChanged(ResourceSetChangeEvent event) {
        block8: for (Notification notification : event.getNotifications()) {
            if (!(notification.getNotifier() instanceof EObject)) continue;
            EObject object = (EObject)notification.getNotifier();
            if (!(notification.getFeature() instanceof EReference)) continue;
            EReference reference = (EReference)notification.getFeature();
            switch (notification.getEventType()) {
                case 4: {
                    List values;
                    if (!reference.isContainment()) break;
                    if (reference.isMany()) {
                        values = (List)object.eGet((EStructuralFeature)reference);
                        if (values.contains(notification.getOldValue())) break;
                        EObjectUtil.proxify(object, (EStructuralFeature)reference, (EObject)notification.getOldValue());
                        break;
                    }
                    if (object.eGet((EStructuralFeature)reference) != null) break;
                    EObjectUtil.proxify(object, (EStructuralFeature)reference, (EObject)notification.getOldValue());
                    break;
                }
                case 6: {
                    if (!reference.isContainment()) break;
                    List values = (List)object.eGet((EStructuralFeature)reference);
                    List oldValues = (List)notification.getOldValue();
                    for (Object oldValue : oldValues) {
                        if (values.contains(oldValue)) continue;
                        EObjectUtil.proxify(object, (EStructuralFeature)reference, (EObject)oldValue);
                    }
                    continue block8;
                }
                case 3: {
                    if (!reference.isContainment()) break;
                    if (reference.isMany()) {
                        List references = (List)object.eGet((EStructuralFeature)reference);
                        if (!references.contains(notification.getNewValue())) break;
                        EObjectUtil.deproxify((EObject)notification.getNewValue());
                        break;
                    }
                    if (object.eGet((EStructuralFeature)reference) == null) break;
                    EObjectUtil.deproxify((EObject)notification.getNewValue());
                    break;
                }
                case 5: {
                    if (!reference.isContainment()) break;
                    List values = (List)object.eGet((EStructuralFeature)reference);
                    List newValues = (List)notification.getNewValue();
                    for (Object newValue : newValues) {
                        if (!values.contains(newValue)) continue;
                        EObjectUtil.deproxify((EObject)newValue);
                    }
                    continue block8;
                }
                case 1: {
                    if (!reference.isContainer() || object.eContainer() == null || !object.eIsProxy()) continue block8;
                    EObjectUtil.deproxify(object);
                    break;
                }
                case 2: {
                    if (!reference.isContainer() || object.eContainer() != null || notification.getOldValue() == null || object.eIsProxy()) continue block8;
                    EObjectUtil.proxify((EObject)notification.getOldValue(), (EStructuralFeature)reference, object);
                }
            }
        }
    }

    public boolean isPostcommitOnly() {
        return true;
    }
}

