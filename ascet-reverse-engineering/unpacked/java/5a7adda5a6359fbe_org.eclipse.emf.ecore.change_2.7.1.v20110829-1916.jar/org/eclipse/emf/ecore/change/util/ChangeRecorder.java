/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter$Internal
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.BasicEList$FastCompare
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.Resource$Internal
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.ecore.change.util;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.change.ChangeDescription;
import org.eclipse.emf.ecore.change.FeatureChange;
import org.eclipse.emf.ecore.change.ResourceChange;
import org.eclipse.emf.ecore.change.util.BasicChangeRecorder;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ChangeRecorder
extends BasicChangeRecorder
implements Adapter.Internal {
    protected List<Notifier> targetObjects = new BasicEList.FastCompare();
    protected List<Notifier> originalTargetObjects = new BasicEList.FastCompare();
    protected boolean loadingTargets;
    protected boolean resolveProxies;
    protected Map<EObject, URI> eObjectToProxyURIMap;

    public ChangeRecorder() {
    }

    public ChangeRecorder(EObject rootObject) {
        this.beginRecording(Collections.singleton(rootObject));
    }

    public ChangeRecorder(Resource resource) {
        this.beginRecording(Collections.singleton(resource));
    }

    public ChangeRecorder(ResourceSet resourceSet) {
        this.beginRecording(Collections.singleton(resourceSet));
    }

    public ChangeRecorder(Collection<?> rootObjects) {
        this.beginRecording(rootObjects);
    }

    public boolean isResolveProxies() {
        return this.resolveProxies;
    }

    public void setResolveProxies(boolean resolveProxies) {
        this.resolveProxies = resolveProxies;
    }

    public Map<EObject, URI> getEObjectToProxyURIMap() {
        return this.eObjectToProxyURIMap;
    }

    public void setEObjectToProxyURIMap(Map<EObject, URI> eObjectToProxyURIMap) {
        this.eObjectToProxyURIMap = eObjectToProxyURIMap;
    }

    @Override
    public void dispose() {
        this.setRecording(false);
        Notifier[] notifiers = this.targetObjects.toArray(new Notifier[this.targetObjects.size()]);
        this.targetObjects.clear();
        int i = 0;
        int length = notifiers.length;
        while (i < length) {
            this.removeAdapter(notifiers[i]);
            ++i;
        }
        this.originalTargetObjects.clear();
        super.dispose();
    }

    protected void removeAdapter(Notifier notifier) {
        notifier.eAdapters().remove((Object)this);
    }

    public void beginRecording(Collection<?> rootObjects) {
        this.beginRecording(null, rootObjects);
    }

    public void beginRecording(ChangeDescription changeDescription, Collection<?> rootObjects) {
        EList<EObject> insertedObjects;
        EList<EObject> eList = insertedObjects = changeDescription == null ? null : changeDescription.getObjectsToDetach();
        if (changeDescription == null) {
            changeDescription = this.createChangeDescription();
        }
        this.setChangeDescription(changeDescription);
        this.loadingTargets = true;
        for (Object rootObject : rootObjects) {
            Notifier notifier = (Notifier)rootObject;
            this.addAdapter(notifier);
        }
        this.loadingTargets = false;
        if (changeDescription != null) {
            this.prepareChangeDescriptionForResume();
        }
        if (insertedObjects != null) {
            this.originalTargetObjects.removeAll((Collection<?>)insertedObjects);
        }
        this.setRecording(true);
    }

    protected void prepareChangeDescriptionForResume() {
        this.loadingTargets = true;
        ChangeDescription changeDescription = this.getChangeDescription();
        for (Notifier notifier : changeDescription.getObjectsToAttach()) {
            this.addAdapter(notifier);
        }
        this.loadingTargets = false;
        changeDescription.getObjectsToAttach().clear();
        for (List featureChanges : changeDescription.getObjectChanges().values()) {
            for (FeatureChange featureChange : featureChanges) {
                featureChange.getValue();
            }
        }
        for (ResourceChange resourceChange : changeDescription.getResourceChanges()) {
            resourceChange.getValue();
        }
    }

    @Override
    protected void consolidateChanges() {
        ChangeDescription changeDescription = this.getChangeDescription();
        EList<EObject> orphanedObjects = changeDescription.getObjectsToAttach();
        for (Notifier target : this.targetObjects) {
            EObject eObject;
            if (!(target instanceof EObject) || !this.isOrphan(eObject = (EObject)target)) continue;
            if (this.originalTargetObjects.contains(eObject)) {
                orphanedObjects.add(eObject);
                continue;
            }
            changeDescription.getObjectChanges().removeKey((Object)eObject);
        }
        super.consolidateChanges();
    }

    protected boolean isOrphan(EObject eObject) {
        return ((InternalEObject)eObject).eInternalContainer() == null && eObject.eResource() == null;
    }

    public void notifyChanged(Notification notification) {
        block16: {
            Object notifier;
            block17: {
                block15: {
                    notifier = notification.getNotifier();
                    if (!(notifier instanceof EObject)) break block15;
                    Object feature = notification.getFeature();
                    if (feature instanceof EReference) {
                        EReference eReference;
                        this.handleFeature((EStructuralFeature)eReference, (EReference)((eReference = (EReference)feature).isContainment() ? eReference : null), notification, (EObject)notifier);
                    } else if (feature != null) {
                        this.handleFeature((EStructuralFeature)feature, null, notification, (EObject)notifier);
                    }
                    break block16;
                }
                if (!(notifier instanceof Resource)) break block17;
                int featureID = notification.getFeatureID(Resource.class);
                switch (featureID) {
                    case 2: {
                        if (!((Resource.Internal)notification.getNotifier()).isLoading()) {
                            this.handleResource(notification);
                            break;
                        }
                        break block16;
                    }
                    case 4: {
                        this.loadingTargets = true;
                        EList contents = ((Resource)notification.getNotifier()).getContents();
                        for (InternalEObject content : contents) {
                            if (content.eDirectResource() == null) continue;
                            this.addAdapter((Notifier)content);
                        }
                        this.loadingTargets = false;
                    }
                }
                break block16;
            }
            if (notifier instanceof ResourceSet && notification.getFeatureID(ResourceSet.class) == 0) {
                switch (notification.getEventType()) {
                    case 1: 
                    case 3: {
                        Resource resource = (Resource)notification.getNewValue();
                        this.loadingTargets = true;
                        this.addAdapter((Notifier)resource);
                        this.loadingTargets = false;
                        break;
                    }
                    case 5: {
                        Collection resources = (Collection)notification.getNewValue();
                        this.loadingTargets = true;
                        for (Resource resource : resources) {
                            this.addAdapter((Notifier)resource);
                        }
                        this.loadingTargets = false;
                    }
                }
            }
        }
    }

    protected boolean shouldRecord(EStructuralFeature feature, EReference containment, Notification notification, EObject eObject) {
        return this.shouldRecord(feature, eObject) && notification.getEventType() != 9;
    }

    protected void handleFeature(EStructuralFeature feature, EReference containment, Notification notification, EObject eObject) {
        boolean shouldRecord = this.shouldRecord(feature, containment, notification, eObject);
        List<FeatureChange> changes = null;
        FeatureChange change = null;
        if (shouldRecord) {
            changes = this.getFeatureChanges(eObject);
            change = this.getFeatureChange(changes, feature);
        }
        switch (notification.getEventType()) {
            case 1: 
            case 2: 
            case 9: {
                Object newValue;
                if (change == null && changes != null) {
                    Object oldValue;
                    if (feature.isMany()) {
                        oldValue = new BasicEList((Collection)eObject.eGet(feature));
                        int index = notification.getPosition();
                        if (index != -1) {
                            oldValue.set(index, notification.getOldValue());
                        }
                        change = this.createFeatureChange(eObject, feature, oldValue, notification.wasSet());
                    } else {
                        oldValue = notification.getOldValue();
                        change = this.createFeatureChange(eObject, feature, oldValue, notification.wasSet());
                    }
                    ((InternalEList)changes).addUnique((Object)change);
                }
                if (containment == null || (newValue = notification.getNewValue()) == null || newValue == Boolean.TRUE || newValue == Boolean.FALSE) break;
                this.addAdapter((Notifier)newValue);
                break;
            }
            case 3: {
                if (change == null && changes != null) {
                    BasicEList oldValue = new BasicEList((Collection)eObject.eGet(feature));
                    oldValue.remove(notification.getPosition());
                    change = this.createFeatureChange(eObject, feature, oldValue, notification.wasSet());
                    ((InternalEList)changes).addUnique((Object)change);
                }
                if (containment == null) break;
                Notifier newValue = (Notifier)notification.getNewValue();
                this.addAdapter(newValue);
                break;
            }
            case 5: {
                if (change == null && changes != null) {
                    BasicEList oldValue = new BasicEList((Collection)eObject.eGet(feature));
                    int position = notification.getPosition();
                    int i = ((Collection)notification.getNewValue()).size();
                    while (--i >= 0) {
                        oldValue.remove(position);
                    }
                    change = this.createFeatureChange(eObject, feature, oldValue, notification.wasSet());
                    ((InternalEList)changes).addUnique((Object)change);
                }
                if (containment == null) break;
                Collection newValues = (Collection)notification.getNewValue();
                for (Notifier newValue : newValues) {
                    this.addAdapter(newValue);
                }
                break;
            }
            case 4: {
                if (change != null || changes == null) break;
                BasicEList oldValue = new BasicEList((Collection)eObject.eGet(feature));
                int position = notification.getPosition();
                if (position == -1) {
                    position = 0;
                }
                oldValue.add(position, notification.getOldValue());
                change = this.createFeatureChange(eObject, feature, oldValue, notification.wasSet());
                ((InternalEList)changes).addUnique((Object)change);
                break;
            }
            case 6: {
                if (change != null || changes == null) break;
                List removedValues = (List)notification.getOldValue();
                BasicEList oldValue = new BasicEList((Collection)eObject.eGet(feature));
                int[] positions = (int[])notification.getNewValue();
                if (positions == null) {
                    oldValue.addAll(removedValues);
                } else {
                    int i = 0;
                    while (i < positions.length) {
                        oldValue.add(positions[i], removedValues.get(i));
                        ++i;
                    }
                }
                change = this.createFeatureChange(eObject, feature, oldValue, notification.wasSet());
                ((InternalEList)changes).addUnique((Object)change);
                break;
            }
            case 7: {
                if (change != null || changes == null) break;
                BasicEList oldValue = new BasicEList((Collection)eObject.eGet(feature));
                int position = notification.getPosition();
                int oldPosition = (Integer)notification.getOldValue();
                oldValue.move(oldPosition, position);
                change = this.createFeatureChange(eObject, feature, oldValue, notification.wasSet());
                ((InternalEList)changes).addUnique((Object)change);
            }
        }
    }

    protected void handleResource(Notification notification) {
        Resource resource = null;
        ResourceChange change = null;
        if (this.isRecording()) {
            resource = (Resource)notification.getNotifier();
            change = this.getResourceChange(resource);
        }
        int eventType = notification.getEventType();
        switch (eventType) {
            case 1: 
            case 2: {
                if (change != null || resource == null) break;
                BasicEList oldValue = new BasicEList((Collection)resource.getContents());
                int index = notification.getPosition();
                if (index != -1) {
                    oldValue.set(index, notification.getOldValue());
                }
                change = this.createResourceChange(resource, (EList<Object>)oldValue);
                this.getResourceChanges().add((Object)change);
                Notifier newValue = (Notifier)notification.getNewValue();
                if (newValue == null) break;
                this.addAdapter(newValue);
                break;
            }
            case 3: {
                if (change == null && resource != null) {
                    BasicEList oldValue = new BasicEList((Collection)resource.getContents());
                    oldValue.remove(notification.getPosition());
                    change = this.createResourceChange(resource, (EList<Object>)oldValue);
                    this.getResourceChanges().add((Object)change);
                }
                Notifier newValue = (Notifier)notification.getNewValue();
                this.addAdapter(newValue);
                break;
            }
            case 5: {
                if (change == null && resource != null) {
                    BasicEList oldValue = new BasicEList((Collection)resource.getContents());
                    int position = notification.getPosition();
                    int i = ((Collection)notification.getNewValue()).size();
                    while (--i >= 0) {
                        oldValue.remove(position);
                    }
                    change = this.createResourceChange(resource, (EList<Object>)oldValue);
                    this.getResourceChanges().add((Object)change);
                }
                Collection newValues = (Collection)notification.getNewValue();
                for (Notifier newValue : newValues) {
                    this.addAdapter(newValue);
                }
                break;
            }
            case 4: {
                if (change != null || resource == null) break;
                BasicEList oldValue = new BasicEList((Collection)resource.getContents());
                int position = notification.getPosition();
                if (position == -1) {
                    position = 0;
                }
                oldValue.add(position, notification.getOldValue());
                change = this.createResourceChange(resource, (EList<Object>)oldValue);
                this.getResourceChanges().add((Object)change);
                break;
            }
            case 6: {
                if (change != null || resource == null) break;
                List removedValues = (List)notification.getOldValue();
                BasicEList oldValue = new BasicEList((Collection)resource.getContents());
                int[] positions = (int[])notification.getNewValue();
                if (positions == null) {
                    oldValue.addAll((Collection)removedValues);
                } else {
                    int i = 0;
                    while (i < positions.length) {
                        oldValue.add(positions[i], removedValues.get(i));
                        ++i;
                    }
                }
                change = this.createResourceChange(resource, (EList<Object>)oldValue);
                this.getResourceChanges().add((Object)change);
                break;
            }
            case 7: {
                if (change != null || resource == null) break;
                BasicEList oldValue = new BasicEList((Collection)resource.getContents());
                int position = notification.getPosition();
                int oldPosition = (Integer)notification.getOldValue();
                oldValue.move(oldPosition, position);
                change = this.createResourceChange(resource, (EList<Object>)oldValue);
                this.getResourceChanges().add((Object)change);
            }
        }
    }

    public void setTarget(Notifier target) {
        if (!this.targetObjects.add(target)) {
            throw new IllegalStateException("The target should not be set more than once");
        }
        if (this.loadingTargets) {
            this.originalTargetObjects.add(target);
        }
        if (target instanceof EObject) {
            EObject targetEObject = (EObject)target;
            if (this.resolveProxies) {
                for (EObject eObject : targetEObject.eContents()) {
                    this.addAdapter((Notifier)eObject);
                }
            } else {
                Iterator contents = ((InternalEList)targetEObject.eContents()).basicIterator();
                while (contents.hasNext()) {
                    EObject eObject = (EObject)contents.next();
                    if (eObject.eIsProxy()) continue;
                    this.addAdapter((Notifier)eObject);
                }
            }
            this.handleTarget(targetEObject);
        } else {
            Iterator contents;
            Iterator iterator = target instanceof ResourceSet ? ((ResourceSet)target).getResources().iterator() : (contents = target instanceof Resource ? ((Resource)target).getContents().iterator() : null);
            if (contents != null) {
                while (contents.hasNext()) {
                    Notifier notifier = (Notifier)contents.next();
                    this.addAdapter(notifier);
                }
            }
        }
    }

    protected void handleTarget(EObject targetEObject) {
        if (this.loadingTargets && this.eObjectToProxyURIMap != null) {
            this.eObjectToProxyURIMap.put(targetEObject, EcoreUtil.getURI((EObject)targetEObject));
        }
    }

    public void unsetTarget(Notifier oldTarget) {
        this.targetObjects.remove(oldTarget);
    }

    protected void addAdapter(Notifier notifier) {
        EList eAdapters;
        if (notifier != this.getChangeDescription() && !(eAdapters = notifier.eAdapters()).contains((Object)this)) {
            eAdapters.add((Object)this);
        }
    }

    public Notifier getTarget() {
        return null;
    }

    public boolean isAdapterForType(Object type) {
        return false;
    }
}

