/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.BasicEMap
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.common.util.UniqueEList$FastCompare
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EStructuralFeature$Internal
 *  org.eclipse.emf.ecore.EStructuralFeature$Setting
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectEList
 *  org.eclipse.emf.ecore.util.EcoreEMap
 *  org.eclipse.emf.ecore.util.EcoreUtil$Copier
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.util.FeatureMapUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.ecore.change.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.BasicEMap;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.change.ChangeDescription;
import org.eclipse.emf.ecore.change.ChangePackage;
import org.eclipse.emf.ecore.change.FeatureChange;
import org.eclipse.emf.ecore.change.ListChange;
import org.eclipse.emf.ecore.change.ResourceChange;
import org.eclipse.emf.ecore.change.impl.EObjectToChangesMapEntryImpl;
import org.eclipse.emf.ecore.change.impl.FeatureChangeImpl;
import org.eclipse.emf.ecore.change.impl.ResourceChangeImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectEList;
import org.eclipse.emf.ecore.util.EcoreEMap;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ChangeDescriptionImpl
extends EObjectImpl
implements ChangeDescription {
    protected EMap<EObject, EList<FeatureChange>> objectChanges;
    protected EList<EObject> objectsToDetach;
    protected EList<EObject> objectsToAttach;
    protected EList<ResourceChange> resourceChanges;
    protected Map<EObject, OldContainmentInformation> oldContainmentInformation;

    protected ChangeDescriptionImpl() {
    }

    protected EClass eStaticClass() {
        return ChangePackage.Literals.CHANGE_DESCRIPTION;
    }

    @Override
    public EMap<EObject, EList<FeatureChange>> getObjectChanges() {
        if (this.objectChanges == null) {
            this.objectChanges = new EcoreEMap(ChangePackage.Literals.EOBJECT_TO_CHANGES_MAP_ENTRY, EObjectToChangesMapEntryImpl.class, (InternalEObject)this, 0);
        }
        return this.objectChanges;
    }

    public EList<EObject> getObjectsToDetachGen() {
        if (this.objectsToDetach == null) {
            this.objectsToDetach = new EObjectEList(EObject.class, (InternalEObject)this, 1);
        }
        return this.objectsToDetach;
    }

    protected static List<EObject> getContainedEObjects(List<FeatureMap.Entry> featureMapEntries) {
        ArrayList<EObject> result = new ArrayList<EObject>();
        for (FeatureMap.Entry entry : featureMapEntries) {
            EStructuralFeature feature = entry.getEStructuralFeature();
            if (!(feature instanceof EReference) || !((EReference)feature).isContainment()) continue;
            result.add((EObject)entry.getValue());
        }
        return result;
    }

    @Override
    public EList<EObject> getObjectsToDetach() {
        UniqueEList.FastCompare objectsBeforeChange = new UniqueEList.FastCompare();
        UniqueEList.FastCompare objectsAfterChange = new UniqueEList.FastCompare();
        if (!this.getObjectChanges().isEmpty()) {
            this.preApply(false);
            for (Map.Entry entry : this.getObjectChanges()) {
                EObject objectToChange = (EObject)entry.getKey();
                for (FeatureChange featureChange : (EList)entry.getValue()) {
                    List afterValue;
                    List beforeValue;
                    EStructuralFeature feature = featureChange.getFeature();
                    if (feature != null && FeatureMapUtil.isFeatureMap((EStructuralFeature)feature)) {
                        beforeValue = (List)featureChange.getValue();
                        objectsBeforeChange.addAll(ChangeDescriptionImpl.getContainedEObjects(beforeValue));
                        afterValue = (List)objectToChange.eGet(feature);
                        objectsAfterChange.addAll(ChangeDescriptionImpl.getContainedEObjects(afterValue));
                        continue;
                    }
                    if (!(feature instanceof EReference) || !((EReference)feature).isContainment()) continue;
                    if (feature.isMany()) {
                        beforeValue = (List)featureChange.getValue();
                        objectsBeforeChange.addAll(beforeValue);
                        afterValue = (List)objectToChange.eGet(feature);
                        objectsAfterChange.addAll(afterValue);
                        continue;
                    }
                    Object value = featureChange.getValue();
                    if (value != null) {
                        objectsBeforeChange.add((EObject)value);
                    }
                    if ((value = objectToChange.eGet(feature)) == null) continue;
                    objectsAfterChange.add((EObject)value);
                }
            }
        }
        if (!this.getResourceChanges().isEmpty()) {
            for (ResourceChange resourceChange : this.getResourceChanges()) {
                Resource resource = resourceChange.getResource();
                if (resource == null) {
                    resource = this.eResource();
                }
                if (resource == null) continue;
                BasicEList currentContentCopy = new BasicEList((Collection)resource.getContents());
                for (ListChange listChange : resourceChange.getListChanges()) {
                    BasicEList list = currentContentCopy;
                    listChange.apply((EList<Object>)list);
                }
                objectsBeforeChange.addAll(currentContentCopy);
                objectsAfterChange.addAll(resource.getContents());
            }
        }
        objectsAfterChange.removeAll((Collection<?>)objectsBeforeChange);
        this.getObjectsToDetachGen().retainAll((Collection)objectsAfterChange);
        this.getObjectsToDetachGen().addAll((Collection)objectsAfterChange);
        return this.getObjectsToDetachGen();
    }

    @Override
    public EList<EObject> getObjectsToAttach() {
        if (this.objectsToAttach == null) {
            this.objectsToAttach = new EObjectContainmentEList(EObject.class, (InternalEObject)this, 2);
        }
        return this.objectsToAttach;
    }

    @Override
    public EList<ResourceChange> getResourceChanges() {
        if (this.resourceChanges == null) {
            this.resourceChanges = new EObjectContainmentEList(ResourceChange.class, (InternalEObject)this, 3);
        }
        return this.resourceChanges;
    }

    @Override
    public void apply() {
        this.preApply(false);
        for (Map.Entry entry : this.getObjectChanges()) {
            EObject objectToChange = (EObject)entry.getKey();
            for (FeatureChange featureChange : (EList)entry.getValue()) {
                featureChange.apply(objectToChange);
            }
        }
        for (ResourceChange resourceChange : this.getResourceChanges()) {
            resourceChange.apply();
        }
        this.getObjectsToAttach().clear();
        this.getObjectChanges().clear();
        this.getResourceChanges().clear();
        this.oldContainmentInformation = null;
    }

    @Override
    public void applyAndReverse() {
        this.preApply(true);
        UniqueEList.FastCompare objectsBeforeApply = new UniqueEList.FastCompare();
        UniqueEList.FastCompare objectsAfterApply = new UniqueEList.FastCompare();
        for (Map.Entry entry : this.getObjectChanges()) {
            EObject objectToChange = (EObject)entry.getKey();
            for (FeatureChange featureChange : (EList)entry.getValue()) {
                Object value;
                EStructuralFeature feature = featureChange.getFeature();
                int featureKind = feature != null && FeatureMapUtil.isFeatureMap((EStructuralFeature)feature) ? 3 : (feature instanceof EReference && ((EReference)feature).isContainment() ? (feature.isMany() ? 1 : 2) : 0);
                switch (featureKind) {
                    case 1: {
                        List beforeValue = (List)objectToChange.eGet(feature);
                        objectsBeforeApply.addAll(beforeValue);
                        break;
                    }
                    case 2: {
                        value = objectToChange.eGet(feature);
                        if (value == null) break;
                        objectsBeforeApply.add((EObject)objectToChange.eGet(feature));
                        break;
                    }
                    case 3: {
                        List beforeValue = (List)objectToChange.eGet(feature);
                        objectsBeforeApply.addAll(ChangeDescriptionImpl.getContainedEObjects(beforeValue));
                    }
                }
                featureChange.applyAndReverse(objectToChange);
                switch (featureKind) {
                    case 1: {
                        List afterValue = (List)objectToChange.eGet(feature);
                        objectsAfterApply.addAll(afterValue);
                        break;
                    }
                    case 2: {
                        value = objectToChange.eGet(feature);
                        if (value == null) break;
                        objectsAfterApply.add((EObject)objectToChange.eGet(feature));
                        break;
                    }
                    case 3: {
                        List afterValue = (List)objectToChange.eGet(feature);
                        objectsAfterApply.addAll(ChangeDescriptionImpl.getContainedEObjects(afterValue));
                    }
                }
            }
        }
        for (ResourceChange resourceChange : this.getResourceChanges()) {
            Resource resource = resourceChange.getResource();
            if (resource != null) {
                objectsBeforeApply.addAll(resource.getContents());
            }
            resourceChange.applyAndReverse();
            if (resource == null) continue;
            objectsAfterApply.addAll(resource.getContents());
        }
        objectsBeforeApply.removeAll((Collection<?>)objectsAfterApply);
        this.getObjectsToAttach().clear();
        for (EObject eObject : objectsBeforeApply) {
            if (eObject.eContainer() != null || eObject.eResource() != null) continue;
            this.getObjectsToAttach().add((Object)eObject);
        }
        this.oldContainmentInformation = null;
    }

    @Override
    public void copyAndReverse(final Map<EObject, URI> eObjectToProxyURIMap) {
        EList<EObject> objectToDetach = this.getObjectsToDetach();
        this.preApply(true);
        EcoreUtil.Copier copier = new EcoreUtil.Copier(){
            private static final long serialVersionUID = 1L;

            public EObject copy(EObject eObject) {
                EObject result = (EObject)this.get(eObject);
                if (result != null) {
                    return result;
                }
                URI proxyURI = (URI)eObjectToProxyURIMap.get(eObject);
                if (proxyURI != null) {
                    InternalEObject copyEObject = (InternalEObject)this.createCopy(eObject);
                    copyEObject.eSetProxyURI(proxyURI);
                    this.put(eObject, copyEObject);
                    return copyEObject;
                }
                return super.copy(eObject);
            }
        };
        Collection newObjectsToAttach = copier.copyAll(objectToDetach);
        HashSet<EObject> potentialOrphans = new HashSet<EObject>();
        for (EObject eObject : newObjectsToAttach) {
            TreeIterator i = eObject.eAllContents();
            while (i.hasNext()) {
                potentialOrphans.add((EObject)i.next());
            }
        }
        BasicEMap oldObjectChanges = new BasicEMap();
        oldObjectChanges.putAll(this.getObjectChanges());
        for (Map.Entry entry : oldObjectChanges) {
            EObject objectToChange = (EObject)entry.getKey();
            EObject copiedObjectToChange = (EObject)copier.get((Object)objectToChange);
            for (FeatureChange featureChange : (EList)entry.getValue()) {
                if (copiedObjectToChange != null && !copiedObjectToChange.eIsProxy()) {
                    featureChange.applyAndReverse(copiedObjectToChange);
                } else {
                    featureChange.reverse(objectToChange);
                }
                EObject referenceValue = featureChange.getReferenceValue();
                if (referenceValue != null) {
                    EObject copiedReferenceValue = (EObject)copier.get((Object)referenceValue);
                    if (copiedReferenceValue == null) {
                        copiedReferenceValue = copier.copy(referenceValue);
                    }
                    featureChange.setReferenceValue(copiedReferenceValue);
                    continue;
                }
                for (ListChange listChange : featureChange.getListChanges()) {
                    ListIterator referenceValues = listChange.getReferenceValues().listIterator();
                    while (referenceValues.hasNext()) {
                        referenceValue = (EObject)referenceValues.next();
                        EObject copiedReferenceValue = (EObject)copier.get((Object)referenceValue);
                        if (copiedReferenceValue == null) {
                            copiedReferenceValue = copier.copy(referenceValue);
                        }
                        referenceValues.set(copiedReferenceValue);
                    }
                }
            }
            this.objectChanges.remove((Object)objectToChange);
            if (copiedObjectToChange == null) {
                copiedObjectToChange = copier.copy(objectToChange);
            }
            this.objectChanges.put((Object)copiedObjectToChange, (Object)((EList)entry.getValue()));
        }
        for (ResourceChange resourceChange : this.getResourceChanges()) {
            resourceChange.reverse();
            for (ListChange listChange : resourceChange.getListChanges()) {
                ListIterator referenceValues = listChange.getReferenceValues().listIterator();
                while (referenceValues.hasNext()) {
                    EObject referenceValue = (EObject)referenceValues.next();
                    EObject copiedReferenceValue = (EObject)copier.get((Object)referenceValue);
                    if (copiedReferenceValue == null) {
                        copiedReferenceValue = copier.copy(referenceValue);
                    }
                    referenceValues.set(copiedReferenceValue);
                }
            }
        }
        copier.copyReferences();
        for (EObject eObject : potentialOrphans) {
            if (eObject.eContainer() == null && !eObject.eIsProxy()) {
                newObjectsToAttach.add(eObject);
                continue;
            }
            newObjectsToAttach.remove(eObject);
        }
        this.getObjectsToAttach().clear();
        this.getObjectsToAttach().addAll(newObjectsToAttach);
        this.oldContainmentInformation = null;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getObjectChanges()).basicRemove((Object)otherEnd, msgs);
            }
            case 2: {
                return ((InternalEList)this.getObjectsToAttach()).basicRemove((Object)otherEnd, msgs);
            }
            case 3: {
                return ((InternalEList)this.getResourceChanges()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    protected void preApply(boolean reverse) {
        for (Map.Entry entry : this.getObjectChanges()) {
            EObject objectToChange = (EObject)entry.getKey();
            EList value = (EList)entry.getValue();
            for (FeatureChangeImpl featureChange : value) {
                EStructuralFeature.Internal internalFeature;
                featureChange.preApply(objectToChange, reverse);
                if (!reverse && !featureChange.isSet() || (internalFeature = (EStructuralFeature.Internal)featureChange.getFeature()) == null || !internalFeature.isFeatureMap() && (!internalFeature.isMany() || internalFeature.getEOpposite() == null && !internalFeature.isContainment())) continue;
                if (reverse) {
                    BasicEList applyToList = new BasicEList((Collection)((EList)objectToChange.eGet((EStructuralFeature)internalFeature)));
                    for (ListChange listChange : featureChange.getListChanges()) {
                        listChange.applyAndReverse((EList<Object>)applyToList);
                    }
                    featureChange.setValue(applyToList);
                    continue;
                }
                featureChange.getValue();
            }
        }
        if (this.resourceChanges != null) {
            EList<ResourceChange> resourceChanges = this.getResourceChanges();
            for (ResourceChangeImpl resourceChange : resourceChanges) {
                Resource resource = resourceChange.getResource();
                if (resource == null) continue;
                resourceChange.preApply(reverse);
                if (reverse) {
                    BasicEList applyToList = new BasicEList((Collection)resourceChange.getResource().getContents());
                    for (ListChange listChange : resourceChange.getListChanges()) {
                        listChange.applyAndReverse((EList<Object>)applyToList);
                    }
                    resourceChange.setValue((EList<Object>)applyToList);
                    continue;
                }
                resourceChange.getValue();
            }
        }
    }

    protected Map<EObject, OldContainmentInformation> getOldContainmentInformation() {
        if (this.oldContainmentInformation == null) {
            HashMap<EObject, OldContainmentInformation> containmentInformation = new HashMap<EObject, OldContainmentInformation>();
            for (Map.Entry entry : this.getObjectChanges()) {
                List featureChanges = (List)entry.getValue();
                for (FeatureChange featureChange : featureChanges) {
                    EObject container;
                    EStructuralFeature feature = featureChange.getFeature();
                    if (FeatureMapUtil.isFeatureMap((EStructuralFeature)feature)) {
                        container = (EObject)entry.getKey();
                        List featureMap = (List)featureChange.getValue();
                        for (FeatureMap.Entry featureMapEntry : featureMap) {
                            EObject eObject;
                            EStructuralFeature featureMapEntryFeature = featureMapEntry.getEStructuralFeature();
                            if (!(featureMapEntryFeature instanceof EReference) || !((EReference)featureMapEntryFeature).isContainment() || (eObject = (EObject)featureMapEntry.getValue()) == null || eObject.eContainer() == container && eObject.eContainmentFeature() == featureMapEntryFeature) continue;
                            containmentInformation.put(eObject, new OldContainmentInformation(container, (EReference)featureMapEntryFeature));
                        }
                        continue;
                    }
                    if (!(feature instanceof EReference) || !((EReference)feature).isContainment()) continue;
                    container = (EObject)entry.getKey();
                    if (feature.isMany()) {
                        List list = (List)featureChange.getValue();
                        for (EObject eObject : list) {
                            if (eObject.eContainer() == container && eObject.eContainmentFeature() == feature) continue;
                            containmentInformation.put(eObject, new OldContainmentInformation(container, (EReference)feature));
                        }
                        continue;
                    }
                    EObject eObject = (EObject)featureChange.getValue();
                    if (eObject == null || eObject.eContainer() == container && eObject.eContainmentFeature() == feature) continue;
                    containmentInformation.put(eObject, new OldContainmentInformation(container, (EReference)feature));
                }
            }
            for (EObject eObject : this.getObjectsToDetach()) {
                containmentInformation.put(eObject, new OldContainmentInformation(null, null));
            }
            this.oldContainmentInformation = containmentInformation;
        }
        return this.oldContainmentInformation;
    }

    public EObject getOldContainer(EObject eObject) {
        OldContainmentInformation oldContainmentInformation = this.getOldContainmentInformation().get(eObject);
        if (oldContainmentInformation == null) {
            return eObject.eContainer();
        }
        return oldContainmentInformation.container;
    }

    public EReference getOldContainmentFeature(EObject eObject) {
        OldContainmentInformation oldContainmentInformation = this.getOldContainmentInformation().get(eObject);
        if (oldContainmentInformation == null) {
            return eObject.eContainmentFeature();
        }
        return oldContainmentInformation.containmentFeature;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                if (coreType) {
                    return this.getObjectChanges();
                }
                return this.getObjectChanges().map();
            }
            case 1: {
                return this.getObjectsToDetach();
            }
            case 2: {
                return this.getObjectsToAttach();
            }
            case 3: {
                return this.getResourceChanges();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                ((EStructuralFeature.Setting)this.getObjectChanges()).set(newValue);
                return;
            }
            case 1: {
                this.getObjectsToDetach().clear();
                this.getObjectsToDetach().addAll((Collection)newValue);
                return;
            }
            case 2: {
                this.getObjectsToAttach().clear();
                this.getObjectsToAttach().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.getResourceChanges().clear();
                this.getResourceChanges().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getObjectChanges().clear();
                return;
            }
            case 1: {
                this.getObjectsToDetach().clear();
                return;
            }
            case 2: {
                this.getObjectsToAttach().clear();
                return;
            }
            case 3: {
                this.getResourceChanges().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.objectChanges != null && !this.objectChanges.isEmpty();
            }
            case 1: {
                return this.objectsToDetach != null && !this.objectsToDetach.isEmpty();
            }
            case 2: {
                return this.objectsToAttach != null && !this.objectsToAttach.isEmpty();
            }
            case 3: {
                return this.resourceChanges != null && !this.resourceChanges.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    protected static class OldContainmentInformation {
        public EObject container;
        public EReference containmentFeature;

        public OldContainmentInformation(EObject container, EReference containmentFeature) {
            this.container = container;
            this.containmentFeature = containmentFeature;
        }
    }
}

