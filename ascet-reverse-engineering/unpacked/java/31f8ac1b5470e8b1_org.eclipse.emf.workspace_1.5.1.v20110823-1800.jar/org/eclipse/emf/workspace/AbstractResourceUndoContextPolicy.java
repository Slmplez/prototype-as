/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 */
package org.eclipse.emf.workspace;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.workspace.IResourceUndoContextPolicy;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractResourceUndoContextPolicy
implements IResourceUndoContextPolicy {
    protected AbstractResourceUndoContextPolicy() {
    }

    @Override
    public Set<Resource> getContextResources(IUndoableOperation operation, List<? extends Notification> notifications) {
        Set<Resource> result;
        if (notifications.isEmpty()) {
            result = Collections.emptySet();
        } else {
            result = new HashSet();
            for (Notification notification : notifications) {
                if (!this.isAbstractChange(notification)) continue;
                Object notifier = notification.getNotifier();
                if (notifier instanceof Resource) {
                    this.resourceChange(result, (Resource)notifier, notification);
                    continue;
                }
                if (notifier instanceof EObject) {
                    this.objectChange(result, (EObject)notifier, notification);
                    continue;
                }
                if (!(notifier instanceof ResourceSet)) continue;
                this.resourceSetChange(result, (ResourceSet)notifier, notification);
            }
        }
        return result;
    }

    protected boolean isAbstractChange(Notification notification) {
        return !notification.isTouch();
    }

    protected boolean pessimisticCrossReferences() {
        return true;
    }

    protected boolean considerAllResourceChanges() {
        return false;
    }

    protected void resourceChange(Set<Resource> resources, Resource resource, Notification notification) {
        if (this.considerAllResourceChanges() || notification.getFeatureID(Resource.class) == 2 || notification.getFeatureID(Resource.class) == 1) {
            resources.add(resource);
        }
    }

    protected void objectChange(Set<Resource> resources, EObject object, Notification notification) {
        Object feature;
        Resource resource = object.eResource();
        if (resource != null) {
            resources.add(resource);
        }
        if (this.pessimisticCrossReferences() && (feature = notification.getFeature()) instanceof EReference && ((EReference)feature).getEOpposite() == null) {
            this.crossResourceReference(resources, object, notification);
        }
    }

    protected void resourceSetChange(Set<Resource> resources, ResourceSet resourceSet, Notification notification) {
    }

    protected void crossResourceReference(Set<Resource> resources, EObject owner, Notification notification) {
        Object oldValue = notification.getOldValue();
        Object newValue = notification.getNewValue();
        switch (notification.getEventType()) {
            case 1: 
            case 2: {
                Resource resource;
                if (oldValue instanceof EObject && (resource = ((EObject)oldValue).eResource()) != null) {
                    resources.add(resource);
                }
                if (!(newValue instanceof EObject) || (resource = ((EObject)newValue).eResource()) == null) break;
                resources.add(resource);
                break;
            }
            case 3: {
                Resource resource = ((EObject)newValue).eResource();
                if (resource == null) break;
                resources.add(resource);
                break;
            }
            case 5: {
                Collection newReferences = (Collection)newValue;
                for (EObject next : newReferences) {
                    Resource resource = next.eResource();
                    if (resource == null) continue;
                    resources.add(resource);
                }
                break;
            }
            case 4: {
                Resource resource = ((EObject)oldValue).eResource();
                if (resource == null) break;
                resources.add(resource);
                break;
            }
            case 6: {
                Collection oldReferences = (Collection)oldValue;
                for (EObject next : oldReferences) {
                    Resource resource = next.eResource();
                    if (resource == null) continue;
                    resources.add(resource);
                }
                break;
            }
        }
    }
}

