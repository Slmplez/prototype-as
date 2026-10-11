/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterImpl
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.util;

import java.util.Collection;
import java.util.Iterator;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterImpl;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.InternalEList;

public class EContentAdapter
extends AdapterImpl {
    public void notifyChanged(Notification notification) {
        this.selfAdapt(notification);
        super.notifyChanged(notification);
    }

    protected void selfAdapt(Notification notification) {
        EReference eReference;
        Object feature;
        Object notifier = notification.getNotifier();
        if (notifier instanceof ResourceSet) {
            if (notification.getFeatureID(ResourceSet.class) == 0) {
                this.handleContainment(notification);
            }
        } else if (notifier instanceof Resource) {
            if (notification.getFeatureID(Resource.class) == 2) {
                this.handleContainment(notification);
            }
        } else if (notifier instanceof EObject && (feature = notification.getFeature()) instanceof EReference && (eReference = (EReference)feature).isContainment()) {
            this.handleContainment(notification);
        }
    }

    protected void handleContainment(Notification notification) {
        switch (notification.getEventType()) {
            case 9: {
                Notifier oldValue = (Notifier)notification.getOldValue();
                if (!oldValue.eAdapters().contains((Object)this)) break;
                this.removeAdapter(oldValue);
                Notifier newValue = (Notifier)notification.getNewValue();
                this.addAdapter(newValue);
                break;
            }
            case 2: {
                Notifier newValue;
                Object oldValue = notification.getOldValue();
                if (oldValue == Boolean.TRUE || oldValue == Boolean.FALSE) break;
                if (oldValue != null) {
                    this.removeAdapter((Notifier)oldValue);
                }
                if ((newValue = (Notifier)notification.getNewValue()) == null) break;
                this.addAdapter(newValue);
                break;
            }
            case 1: {
                Notifier newValue;
                Notifier oldValue = (Notifier)notification.getOldValue();
                if (oldValue != null) {
                    this.removeAdapter(oldValue);
                }
                if ((newValue = (Notifier)notification.getNewValue()) == null) break;
                this.addAdapter(newValue);
                break;
            }
            case 3: {
                Notifier newValue = (Notifier)notification.getNewValue();
                if (newValue == null) break;
                this.addAdapter(newValue);
                break;
            }
            case 5: {
                Collection newValues = (Collection)notification.getNewValue();
                for (Notifier newValue : newValues) {
                    this.addAdapter(newValue);
                }
                break;
            }
            case 4: {
                Notifier oldValue = (Notifier)notification.getOldValue();
                if (oldValue == null) break;
                this.removeAdapter(oldValue);
                break;
            }
            case 6: {
                Collection oldValues = (Collection)notification.getOldValue();
                for (Notifier oldContentValue : oldValues) {
                    this.removeAdapter(oldContentValue);
                }
                break;
            }
        }
    }

    public void setTarget(Notifier target) {
        if (target instanceof EObject) {
            this.setTarget((EObject)target);
        } else if (target instanceof Resource) {
            this.setTarget((Resource)target);
        } else if (target instanceof ResourceSet) {
            this.setTarget((ResourceSet)target);
        } else {
            this.basicSetTarget(target);
        }
    }

    protected void basicSetTarget(Notifier target) {
        super.setTarget(target);
    }

    protected void setTarget(EObject target) {
        this.basicSetTarget(target);
        Iterator i = this.resolve() ? target.eContents().iterator() : ((InternalEList)target.eContents()).basicIterator();
        while (i.hasNext()) {
            Notifier notifier = (Notifier)i.next();
            this.addAdapter(notifier);
        }
    }

    protected void setTarget(Resource target) {
        this.basicSetTarget(target);
        EList<EObject> contents = target.getContents();
        int i = 0;
        int size = contents.size();
        while (i < size) {
            Notifier notifier = (Notifier)contents.get(i);
            this.addAdapter(notifier);
            ++i;
        }
    }

    protected void setTarget(ResourceSet target) {
        this.basicSetTarget(target);
        EList<Resource> resources = target.getResources();
        int i = 0;
        while (i < resources.size()) {
            Notifier notifier = (Notifier)resources.get(i);
            this.addAdapter(notifier);
            ++i;
        }
    }

    public void unsetTarget(Notifier target) {
        this.unsetTarget((Object)target);
    }

    protected void basicUnsetTarget(Notifier target) {
        super.unsetTarget(target);
    }

    @Deprecated
    protected void unsetTarget(Object target) {
        if (target instanceof EObject) {
            this.unsetTarget((EObject)target);
        } else if (target instanceof Resource) {
            this.unsetTarget((Resource)target);
        } else if (target instanceof ResourceSet) {
            this.unsetTarget((ResourceSet)target);
        } else {
            this.basicUnsetTarget((Notifier)target);
        }
    }

    protected void unsetTarget(EObject target) {
        this.basicUnsetTarget(target);
        Iterator i = this.resolve() ? target.eContents().iterator() : ((InternalEList)target.eContents()).basicIterator();
        while (i.hasNext()) {
            Notifier notifier = (Notifier)i.next();
            this.removeAdapter(notifier);
        }
    }

    protected void unsetTarget(Resource target) {
        this.basicUnsetTarget(target);
        EList<EObject> contents = target.getContents();
        int i = 0;
        int size = contents.size();
        while (i < size) {
            Notifier notifier = (Notifier)contents.get(i);
            this.removeAdapter(notifier);
            ++i;
        }
    }

    protected void unsetTarget(ResourceSet target) {
        this.basicUnsetTarget(target);
        EList<Resource> resources = target.getResources();
        int i = 0;
        while (i < resources.size()) {
            Notifier notifier = (Notifier)resources.get(i);
            this.removeAdapter(notifier);
            ++i;
        }
    }

    protected void addAdapter(Notifier notifier) {
        notifier.eAdapters().add((Object)this);
    }

    protected void removeAdapter(Notifier notifier) {
        notifier.eAdapters().remove((Object)this);
    }

    protected boolean resolve() {
        return true;
    }
}

